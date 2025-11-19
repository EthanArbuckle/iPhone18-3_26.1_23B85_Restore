uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::print(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 40))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80));
  v18 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  result = mlir::SymbolRefAttr::getRootReference(&v18);
  v7 = *a1;
  v8 = (*(*a1 + 44) >> 23) & 1;
  if (result != *(*a1 + 16 * v8 + 72))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 3uLL)
    {
      *v10 = 544432416;
      v9[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v9, " as ", 4uLL);
    }

    v18 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
    Value = mlir::StringAttr::getValue(&v18);
    result = (*(*a2 + 88))(a2, Value, v12);
    v7 = *a1;
    v8 = (*(*a1 + 44) >> 23) & 1;
  }

  v18 = *(v7 + 16 * v8 + 64);
  if (v18)
  {
    v13 = mlir::StringAttr::getValue(&v18);
    v15 = v14;
    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if ((v16[3] - v17) > 5)
    {
      *(v17 + 4) = 8301;
      *v17 = 1869768224;
      v16[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v16, " from ", 6uLL);
    }

    return (*(*a2 + 80))(a2, v13, v15);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::parse(mlir::ODIE::Compiler::CoreML::ImportOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  v13 = 0;
  if (!sub_1001F2D08(this, &v13, 0))
  {
    return 0;
  }

  v4[2] = v13;
  if ((*(*this + 408))(this, "as", 2))
  {
    v9 = 0;
    if ((sub_1002985C0(this) & 1) == 0)
    {
      return 0;
    }

    v4[1] = v9;
  }

  else
  {
    v4[1] = mlir::SymbolRefAttr::getRootReference(&v13);
  }

  if ((*(*this + 408))(this, "from", 4))
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v5 = sub_10017F4BC(this, __p);
    if (v5)
    {
      v6 = (*(*this + 32))(this);
      v10 = 260;
      v9 = __p;
      *v4 = mlir::Builder::getStringAttr(v6, &v9, v7);
      if (SHIBYTE(v12) < 0)
      {
        goto LABEL_12;
      }
    }

    else if (SHIBYTE(v12) < 0)
    {
LABEL_12:
      operator delete(__p[0]);
      return (v5 & 1) != 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1001F2D08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    v4 = sub_100151E80(*this);
  }

  else
  {
    v4 = 0;
  }

  sub_1001F1540(v3, v4, 0, 0, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ClassOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001F1F90(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_10019D838(*a1);
  if (!sub_1001F1F90(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 44) >> 23) & 1));
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1));
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::StringAttr::getValue(&AttrDictionary);
  (*(*a2 + 88))(a2, Value, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 14880;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " : ", 3uLL);
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v10 = mlir::TypeAttr::getValue(&AttrDictionary);
  (*(*a2 + 32))(a2, v10);
  v11 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v12 = *(v11 + 88);
  if (v12)
  {
    v13 = *(v11 + 96);
    v14 = sub_10026D274(v12);
    if (v14)
    {
      v15 = v14;
      v16 = (*(*a2 + 16))(a2);
      v17 = v16[4];
      if ((v16[3] - v17) > 2)
      {
        *(v17 + 2) = 32;
        *v17 = 15648;
        v16[4] += 3;
        if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          goto LABEL_11;
        }
      }

      else
      {
        llvm::raw_ostream::write(v16, " = ", 3uLL);
        if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
LABEL_11:
          (*(*a2 + 48))(a2, v15);
          goto LABEL_14;
        }
      }

      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v15);
    }
  }

LABEL_14:
  v36 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v36)
  {
    mlir::IntegerAttr::getValue(&v36, &AttrDictionary);
    if (v38 >= 0x41)
    {
      v18 = AttrDictionary;
    }

    else
    {
      v18 = &AttrDictionary;
    }

    v19 = *v18;
    if (v38 >= 0x41 && AttrDictionary)
    {
      operator delete[]();
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = v20[4];
    if (v20[3] - v21 > 0xCuLL)
    {
      qmemcpy(v21, " alignInBits(", 13);
      v20[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v20, " alignInBits(", 0xDuLL);
    }

    v22 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v22, v19);
    v23 = (*(*a2 + 16))(a2);
    v24 = v23[4];
    if (v23[3] == v24)
    {
      llvm::raw_ostream::write(v23, ")", 1uLL);
    }

    else
    {
      *v24 = 41;
      ++v23[4];
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v27 = v26;
  v36 = *(*(*(*this + 6) + 96) + 8);
  AttrDictionary = mlir::StringAttr::getValue(&v36);
  v38 = v28;
  v35 = *(*(*(*this + 6) + 96) + 24);
  v39 = mlir::StringAttr::getValue(&v35);
  v40 = v29;
  v34 = **(*(*this + 6) + 96);
  v41 = mlir::StringAttr::getValue(&v34);
  v42 = v30;
  v33 = *(*(*(*this + 6) + 96) + 16);
  v43 = mlir::StringAttr::getValue(&v33);
  v44 = v31;
  return (*(*a2 + 200))(a2, v25, v27, &AttrDictionary, 4);
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::parse(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14 = 0;
  v15 = 0;
  if ((sub_1002985C0(this) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || ((*(*this + 536))(this, &v14) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttribute::NamedAttribute(&v16, *(*(*(a2 + 1) + 96) + 8), v15);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  v5 = *(*(*(a2 + 1) + 96) + 16);
  v6 = mlir::TypeAttr::get(v14);
  mlir::NamedAttribute::NamedAttribute(&v16, v5, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  if ((*(*this + 144))(this))
  {
    v13[0] = 0;
    v13[1] = 0;
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, v13) & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttribute::NamedAttribute(&v16, *(*(*(a2 + 1) + 96) + 24), v13[0]);
    mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  }

  if (((*(*this + 408))(this, "alignInBits", 11) & 1) == 0)
  {
    return (*(*this + 496))(this, a2 + 112) & 1;
  }

  v16 = 0;
  if ((*(*this + 280))(this) & 1) != 0 && (sub_1001F3B98(this, &v16) & 1) != 0 && ((*(*this + 296))(this))
  {
    v7 = **(*(a2 + 1) + 96);
    v8 = (*(*this + 32))(this);
    v9 = (*(*this + 32))(this);
    IntegerType = mlir::Builder::getIntegerType(v9, 64, 0);
    IntegerAttr = mlir::Builder::getIntegerAttr(v8, IntegerType, v16);
    sub_1001F3B5C(a2, v7, IntegerAttr);
    return (*(*this + 496))(this, a2 + 112) & 1;
  }

  return 0;
}

uint64_t sub_1001F3B98(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v16[0] = a1;
  v5 = sub_10026F47C(a1, a2, v16);
  if ((v5 & 0x100) == 0)
  {
    v14 = "expected integer value";
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
            v7 = sub_10005BEF4(v7 - 1);
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
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verify(mlir::Operation **this)
{
  v2 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v2 + 88);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 96);
  v5 = sub_10026D274(v3);
  if (!v5)
  {
    return 1;
  }

  v23[0] = v5;
  v23[1] = v6;
  v24 = 1;
  Type = mlir::TypedAttr::getType(v23);
  v28[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  if (Type == mlir::TypeAttr::getValue(v28))
  {
    return 1;
  }

  v22[16] = 257;
  mlir::OpState::emitError(this, v22, v28);
  if (v28[0])
  {
    v25 = 3;
    v26 = "default value type and member type must match";
    v27 = 45;
    v10 = &v25;
    v11 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v25 && v29 + 24 * v30 > &v25)
      {
        v21 = &v25 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v11 = v29;
        v10 = (v29 + v21);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v10 = &v25;
        v11 = v29;
      }
    }

    v12 = &v11[24 * v30];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v30;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v38 == 1)
  {
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
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
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
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 8233;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ") ", 2uLL);
  }

  v8 = sub_1001F42DC(this);
  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v20[0] = v10;
  if (v10)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v20);
LABEL_12:
    (*(*a2 + 40))(a2, Value);
    goto LABEL_13;
  }

  Value = v8;
  if (!v8 || v9 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_12;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v8);
LABEL_13:
  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if ((v12[3] - v13) > 2)
  {
    *(v13 + 2) = 32;
    *v13 = 14880;
    v12[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, " : ", 3uLL);
  }

  mlir::OpAsmPrinter::printFunctionalType(a2, *this);
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  v14 = mlir::DictionaryAttr::getValue(v20);
  v16 = v15;
  v19 = **(*(*this + 6) + 96);
  v20[0] = mlir::StringAttr::getValue(&v19);
  v20[1] = v17;
  return (*(*a2 + 200))(a2, v14, v16, v20, 1);
}

void *sub_1001F42DC(uint64_t a1)
{
  result = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
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

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::parse(mlir::ODIE::Compiler::CoreML::GetMemberOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v39 = v41;
  v40 = &_mh_execute_header;
  if (((*(*this + 720))(this, &v39, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_36;
  }

  v34 = 0;
  v35 = 0;
  if (((*(*this + 160))(this) & 1) == 0)
  {
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v34) & 1) == 0)
    {
      goto LABEL_36;
    }

    v33 = 0;
    if (!sub_1001F4A24(this, &v33))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  v36 = 0;
  if (!sub_1001F47C4(this, &v36, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  v5 = v36;
  if (!v36)
  {
    goto LABEL_21;
  }

  v6 = *v36;
  {
    sub_1002A30CC();
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_8:
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
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_21;
  }

  v16 = v10[1];
LABEL_22:
  v34 = v5;
  v35 = v16;
  v33 = 0;
  if (!sub_1001F4A24(this, &v33))
  {
LABEL_36:
    v30 = 0;
    goto LABEL_37;
  }

LABEL_23:
  if (((*(*this + 496))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36 = v38;
  v37 = 0x600000000;
  Inputs = mlir::FunctionType::getInputs(&v33);
  if (v40 && v18)
  {
    v19 = Inputs;
    v20 = v39;
    v21 = 8 * v18 - 8;
    v22 = 32 * v40 - 32;
    while (((*(*this + 728))(this, v20, *v19, &v36) & 1) != 0)
    {
      if (v22)
      {
        v20 += 32;
        ++v19;
        v23 = v21;
        v21 -= 8;
        v22 -= 32;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    v30 = 0;
    v31 = v36;
    if (v36 != v38)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_30:
    mlir::NamedAttribute::NamedAttribute(&v42, **(*(a2 + 1) + 96), v34);
    mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
    mlir::ValueRange::ValueRange(&v42, v36, v37);
    mlir::OperationState::addOperands(a2, v42, v43);
    Results = mlir::FunctionType::getResults(&v33);
    v26 = v25;
    v27 = 8 * v25;
    v28 = *(a2 + 18);
    v29 = v28 + ((8 * v25) >> 3);
    if (v29 > *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v29, 8);
      LODWORD(v28) = *(a2 + 18);
    }

    if (v26)
    {
      memcpy((*(a2 + 8) + 8 * v28), Results, v27);
      LODWORD(v28) = *(a2 + 18);
    }

    *(a2 + 18) = v28 + (v27 >> 3);
    v30 = 1;
    v31 = v36;
    if (v36 != v38)
    {
LABEL_41:
      free(v31);
    }
  }

LABEL_37:
  if (v39 != v41)
  {
    free(v39);
  }

  return v30;
}

BOOL sub_1001F47C4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  if (((*(*a1 + 440))(a1, &v19, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

BOOL sub_1001F4A24(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  if (((*(*a1 + 576))(a1, &v17) & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v15 = "invalid kind of type specified";
  v16 = 259;
  (*(*a1 + 24))(v18, a1, v4, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  v7 = result;
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
    result = v7;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v24;
      v10 = __p;
      if (v24 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v24 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v21;
    if (v21)
    {
      v12 = v22;
      v13 = v21;
      if (v22 != v21)
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
        v13 = v21;
      }

      v22 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001F42DC(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v82 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v82);
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

  v82 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v82);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v78 = v9;
  if (v9)
  {
    ParentOp = *this;
    do
    {
      ParentOp = *(ParentOp + 2);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v11 = ParentOp;
    v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v78);
    if (v12)
    {
      v13 = v12;
      v14 = *(*(v12 + 48) + 16);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v75 = v15;
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id)
      {
        v16 = sub_1001F42DC(this);
        if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v82 = v17;
        if (v17)
        {
          Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v82);
          v20 = v19;
        }

        else
        {
          v20 = 0;
          Binds = 0;
        }

        v53 = *(v13 + 24);
        v54 = *(*this + 3);
        do
        {
          do
          {
            v13 = mlir::Block::getParentOp(*(v13 + 16));
          }

          while (!sub_10019D838(v13));
          v55 = sub_10019D838(v13);
        }

        while (!v13);
        (*(v55 + 16))(&v82);
        v56 = v82;
        v57 = v83;
        v76[0] = *(v15 + 16 * ((*(v15 + 44) >> 23) & 1) + 80);
        Value = mlir::TypeAttr::getValue(v76);
        v76[0] = this;
        v76[1] = &v75;
        v32 = sub_1001F54C0(v53, v54, v56, v57, Binds, v20, Value, v59, sub_10026F80C, v76);
        v60 = v82;
        if (v82 == &v84)
        {
          return v32;
        }

LABEL_105:
        free(v60);
        return v32;
      }
    }

    else
    {
      v75 = 0;
    }

    RootReference = mlir::SymbolRefAttr::getRootReference(&v78);
    if (mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, RootReference))
    {
      return 1;
    }

    v77 = 257;
    mlir::OpState::emitError(this, v76, &v82);
    if (v82)
    {
      v79 = 3;
      v80 = "could not resolve ";
      v81 = 18;
      v33 = &v79;
      v34 = v85;
      if (v86 >= v87)
      {
        if (v85 <= &v79 && v85 + 24 * v86 > &v79)
        {
          v72 = &v79 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v34 = v85;
          v33 = (v85 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v33 = &v79;
          v34 = v85;
        }
      }

      v35 = &v34[24 * v86];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      ++v86;
      if (v82)
      {
        v37 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v78);
        v38 = v85;
        if (v86 >= v87)
        {
          if (v85 <= &v79 && v85 + 24 * v86 > &v79)
          {
            v73 = &v79 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v38 = v85;
            v37 = (v85 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v37 = &v79;
            v38 = v85;
          }
        }

        v39 = &v38[24 * v86];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        v41 = ++v86;
        if (v82)
        {
          v79 = 3;
          v80 = " to a class or import";
          v81 = 21;
          v42 = &v79;
          v43 = v85;
          if (v41 >= v87)
          {
            if (v85 <= &v79 && v85 + 24 * v41 > &v79)
            {
              v74 = &v79 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v41 + 1, 24);
              v43 = v85;
              v42 = (v85 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v41 + 1, 24);
              v42 = &v79;
              v43 = v85;
            }
          }

          v44 = &v43[24 * v86];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v86;
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
    if (v82)
    {
      mlir::InFlightDiagnostic::report(&v82);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v92;
        v48 = __p;
        if (v92 != __p)
        {
          do
          {
            v47 = sub_10005BEF4(v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v92 = v46;
        operator delete(v48);
      }

      v49 = v89;
      if (v89)
      {
        v50 = v90;
        v51 = v89;
        if (v90 != v89)
        {
          do
          {
            v52 = *--v50;
            *v50 = 0;
            if (v52)
            {
              operator delete[]();
            }
          }

          while (v50 != v49);
LABEL_102:
          v51 = v89;
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      goto LABEL_104;
    }

    return v32;
  }

  v21 = *sub_1001F42DC(this);
  {
    v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (!v24)
    {
      goto LABEL_83;
    }
  }

  else
  {
    sub_1002AAC64();
    v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (!v24)
    {
      goto LABEL_83;
    }
  }

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
  if (v25 != &v23[2 * v24] && *v25 == v22 && v25[1])
  {
    return 1;
  }

LABEL_83:
  v77 = 257;
  mlir::OpState::emitError(this, v76, &v82);
  if (v82)
  {
    v79 = 3;
    v80 = "expected a parameter attribute if the callee is not resolved";
    v81 = 60;
    v61 = &v79;
    v62 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v79 && v85 + 24 * v86 > &v79)
      {
        v71 = &v79 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v62 = v85;
        v61 = (v85 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v61 = &v79;
        v62 = v85;
      }
    }

    v63 = &v62[24 * v86];
    v64 = *v61;
    *(v63 + 2) = *(v61 + 2);
    *v63 = v64;
    ++v86;
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v65 = __p;
    if (__p)
    {
      v66 = v92;
      v67 = __p;
      if (v92 != __p)
      {
        do
        {
          v66 = sub_10005BEF4(v66 - 1);
        }

        while (v66 != v65);
        v67 = __p;
      }

      v92 = v65;
      operator delete(v67);
    }

    v49 = v89;
    if (v89)
    {
      v68 = v90;
      v51 = v89;
      if (v90 != v89)
      {
        do
        {
          v69 = *--v68;
          *v68 = 0;
          if (v69)
          {
            operator delete[]();
          }
        }

        while (v68 != v49);
        goto LABEL_102;
      }

LABEL_103:
      v90 = v49;
      operator delete(v51);
    }

LABEL_104:
    v60 = v85;
    if (v85 == v88)
    {
      return v32;
    }

    goto LABEL_105;
  }

  return v32;
}

uint64_t sub_1001F54C0(uint64_t a1, uint64_t a2, mlir::ODIE::Compiler::CoreML::ParamDeclAttr *a3, uint64_t a4, mlir::TypedAttr *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t *), uint64_t a10)
{
  v75 = a3;
  v76 = a4;
  v73 = a5;
  v74 = a6;
  v72 = 0;
  v70 = 0u;
  *v71 = 0u;
  *v68 = 0u;
  *__p = 0u;
  v92 = off_1002DE6A8;
  v93[0] = &v75;
  v93[1] = &v73;
  v94 = &v92;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement(v68, &v92);
  if (v94 == &v92)
  {
    (*(*v94 + 32))(v94);
    v13 = v74;
    if (!v74)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v94)
  {
    (*(*v94 + 40))();
  }

  v13 = v74;
  if (v74)
  {
LABEL_7:
    v14 = v73;
    v15 = v75;
    v16 = 8 * v76;
    v17 = 16 * v13;
    do
    {
      if (!v16)
      {
        break;
      }

      Type = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getType(v15);
      v19 = mlir::AttrTypeReplacer::replace(v68, Type);
      if (mlir::TypedAttr::getType(v14) != v19)
      {
        mlir::emitError(a2, &v80);
        if (v80)
        {
          v77 = 3;
          v78 = "got binding of type ";
          v79 = 20;
          v33 = &v77;
          v34 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v63 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v34 = v82;
              v33 = (v82 + v63);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v33 = &v77;
              v34 = v82;
            }
          }

          v35 = &v34[24 * v83];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v83;
        }

        v37 = mlir::TypedAttr::getType(v14);
        if (v80)
        {
          v38 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v37);
          v39 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v77 && v82 + 24 * v83 > &v77)
            {
              v64 = &v77 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v39 = v82;
              v38 = (v82 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v38 = &v77;
              v39 = v82;
            }
          }

          v40 = &v39[24 * v83];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          v42 = ++v83;
          if (v80)
          {
            v77 = 3;
            v78 = " for decl ";
            v79 = 10;
            v43 = &v77;
            v44 = v82;
            if (v42 >= v84)
            {
              if (v82 <= &v77 && v82 + 24 * v42 > &v77)
              {
                v65 = &v77 - v82;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v42 + 1, 24);
                v44 = v82;
                v43 = (v82 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v42 + 1, 24);
                v43 = &v77;
                v44 = v82;
              }
            }

            v45 = &v44[24 * v83];
            v46 = *v43;
            *(v45 + 2) = *(v43 + 2);
            *v45 = v46;
            ++v83;
          }
        }

        Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(v15);
        if (v80)
        {
          mlir::Diagnostic::operator<<(&v81, Name);
          if (v80)
          {
            v77 = 3;
            v78 = " of type ";
            v79 = 9;
            v48 = &v77;
            v49 = v82;
            if (v83 >= v84)
            {
              if (v82 <= &v77 && v82 + 24 * v83 > &v77)
              {
                v66 = &v77 - v82;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
                v49 = v82;
                v48 = (v82 + v66);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
                v48 = &v77;
                v49 = v82;
              }
            }

            v50 = &v49[24 * v83];
            v51 = *v48;
            *(v50 + 2) = *(v48 + 2);
            *v50 = v51;
            ++v83;
            if (v80)
            {
              v52 = &v77;
              mlir::DiagnosticArgument::DiagnosticArgument(&v77, v19);
              v53 = v82;
              if (v83 >= v84)
              {
                if (v82 <= &v77 && v82 + 24 * v83 > &v77)
                {
                  v67 = &v77 - v82;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
                  v53 = v82;
                  v52 = (v82 + v67);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
                  v52 = &v77;
                  v53 = v82;
                }
              }

              v54 = &v53[24 * v83];
              v55 = *v52;
              *(v54 + 2) = *(v52 + 2);
              *v54 = v55;
              ++v83;
            }
          }
        }

        sub_10006BAFC(&v92, &v80);
        if (v80)
        {
          mlir::InFlightDiagnostic::report(&v80);
        }

        if (v91 == 1)
        {
          if (v90 != &v91)
          {
            free(v90);
          }

          v56 = v88;
          if (v88)
          {
            v57 = v89;
            v58 = v88;
            if (v89 != v88)
            {
              do
              {
                v57 = sub_10005BEF4(v57 - 1);
              }

              while (v57 != v56);
              v58 = v88;
            }

            v89 = v56;
            operator delete(v58);
          }

          v59 = v86;
          if (v86)
          {
            v60 = v87;
            v61 = v86;
            if (v87 != v86)
            {
              do
              {
                v62 = *--v60;
                *v60 = 0;
                if (v62)
                {
                  operator delete[]();
                }
              }

              while (v60 != v59);
              v61 = v86;
            }

            v87 = v59;
            operator delete(v61);
          }

          if (v82 != v85)
          {
            free(v82);
          }
        }

        mlir::Diagnostic::attachNote(v93, a1, 1);
      }

      v14 = (v14 + 16);
      v15 = (v15 + 8);
      v16 -= 8;
      v17 -= 16;
    }

    while (v17);
  }

LABEL_11:
  v20 = mlir::AttrTypeReplacer::replace(v68, a7);
  v21 = a9(a10, v20);
  llvm::deallocate_buffer(v71[0], (16 * v72), 8uLL);
  v22 = __p[1];
  if (__p[1])
  {
    v23 = v70;
    v24 = __p[1];
    if (v70 != __p[1])
    {
      v25 = v70 - 32;
      do
      {
        v26 = *(v23 - 1);
        v23 -= 32;
        if (v23 == v26)
        {
          (*(*v26 + 32))(v26);
        }

        else if (v26)
        {
          (*(*v26 + 40))(v26);
        }

        v25 -= 32;
      }

      while (v23 != v22);
      v24 = __p[1];
    }

    *&v70 = v22;
    operator delete(v24);
  }

  v27 = v68[0];
  if (v68[0])
  {
    v28 = v68[1];
    v29 = v68[0];
    if (v68[1] != v68[0])
    {
      v30 = v68[1] - 32;
      do
      {
        v31 = *(v28 - 1);
        v28 -= 32;
        if (v28 == v31)
        {
          (*(*v31 + 32))(v31);
        }

        else if (v31)
        {
          (*(*v31 + 40))(v31);
        }

        v30 -= 32;
      }

      while (v28 != v27);
      v29 = v68[0];
    }

    v68[1] = v27;
    operator delete(v29);
  }

  return v21;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::parse(mlir::ODIE::Compiler::CoreML::SetMemberOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v33 = v35;
  v34 = &_mh_execute_header;
  if (((*(*this + 720))(this, &v33, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_16;
  }

  v24 = 0;
  v25 = 0;
  if (((*(*this + 160))(this) & 1) == 0)
  {
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v24))
    {
      goto LABEL_25;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v27 = 0;
  if (!sub_1001F47C4(this, &v27, 0) || ((*(*this + 168))(this) & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = v27;
  if (v27)
  {
    v6 = *v27;
    {
      v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_23;
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
        goto LABEL_23;
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
      v18 = v10[1];
      goto LABEL_24;
    }
  }

LABEL_23:
  v18 = 0;
LABEL_24:
  v24 = v5;
  v25 = v18;
LABEL_25:
  v30 = v32;
  v31 = 0x200000000;
  if ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &v30) & 1) != 0 && ((*(*this + 496))(this, a2 + 112))
  {
    v27 = v29;
    v28 = 0x600000000;
    if (v34 && v31)
    {
      v19 = v33;
      v20 = v30;
      v21 = 8 * v31 - 8;
      v22 = 32 * v34 - 32;
      while (((*(*this + 728))(this, v19, *v20, &v27) & 1) != 0)
      {
        if (v22)
        {
          v19 += 32;
          ++v20;
          v23 = v21;
          v21 -= 8;
          v22 -= 32;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_34;
      }

      v16 = 0;
    }

    else
    {
LABEL_34:
      sub_1001F3B5C(a2, **(*(a2 + 1) + 96), v24);
      mlir::ValueRange::ValueRange(v26, v27, v28);
      mlir::OperationState::addOperands(a2, v26[0], v26[1]);
      v16 = 1;
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v30 != v32)
  {
    free(v30);
  }

LABEL_17:
  if (v33 != v35)
  {
    free(v33);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  Ref = sub_1001F42DC(this);
  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = Ref;
  }

  else
  {
    v5 = 0;
  }

  v82 = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v82);
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

  v82 = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v82);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v78 = v9;
  if (v9)
  {
    ParentOp = *this;
    do
    {
      ParentOp = *(ParentOp + 2);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v11 = ParentOp;
    v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v78);
    if (v12)
    {
      v13 = v12;
      v14 = *(*(v12 + 48) + 16);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v75 = v15;
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id)
      {
        v16 = sub_1001F42DC(this);
        if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v82 = v17;
        if (v17)
        {
          Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v82);
          v20 = v19;
        }

        else
        {
          v20 = 0;
          Binds = 0;
        }

        v53 = *(v13 + 24);
        v54 = *(*this + 3);
        do
        {
          do
          {
            v13 = mlir::Block::getParentOp(*(v13 + 16));
          }

          while (!sub_10019D838(v13));
          v55 = sub_10019D838(v13);
        }

        while (!v13);
        (*(v55 + 16))(&v82);
        v56 = v82;
        v57 = v83;
        v76[0] = *(v15 + 16 * ((*(v15 + 44) >> 23) & 1) + 80);
        Value = mlir::TypeAttr::getValue(v76);
        v76[0] = this;
        v76[1] = &v75;
        v32 = sub_1001F54C0(v53, v54, v56, v57, Binds, v20, Value, v59, sub_10026FCD0, v76);
        v60 = v82;
        if (v82 == &v84)
        {
          return v32;
        }

LABEL_105:
        free(v60);
        return v32;
      }
    }

    else
    {
      v75 = 0;
    }

    RootReference = mlir::SymbolRefAttr::getRootReference(&v78);
    if (mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, RootReference))
    {
      return 1;
    }

    v77 = 257;
    mlir::OpState::emitError(this, v76, &v82);
    if (v82)
    {
      v79 = 3;
      v80 = "could not resolve ";
      v81 = 18;
      v33 = &v79;
      v34 = v85;
      if (v86 >= v87)
      {
        if (v85 <= &v79 && v85 + 24 * v86 > &v79)
        {
          v72 = &v79 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v34 = v85;
          v33 = (v85 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
          v33 = &v79;
          v34 = v85;
        }
      }

      v35 = &v34[24 * v86];
      v36 = *v33;
      *(v35 + 2) = *(v33 + 2);
      *v35 = v36;
      ++v86;
      if (v82)
      {
        v37 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v78);
        v38 = v85;
        if (v86 >= v87)
        {
          if (v85 <= &v79 && v85 + 24 * v86 > &v79)
          {
            v73 = &v79 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v38 = v85;
            v37 = (v85 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v37 = &v79;
            v38 = v85;
          }
        }

        v39 = &v38[24 * v86];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        v41 = ++v86;
        if (v82)
        {
          v79 = 3;
          v80 = " to a class or import";
          v81 = 21;
          v42 = &v79;
          v43 = v85;
          if (v41 >= v87)
          {
            if (v85 <= &v79 && v85 + 24 * v41 > &v79)
            {
              v74 = &v79 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v41 + 1, 24);
              v43 = v85;
              v42 = (v85 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v41 + 1, 24);
              v42 = &v79;
              v43 = v85;
            }
          }

          v44 = &v43[24 * v86];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v86;
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
    if (v82)
    {
      mlir::InFlightDiagnostic::report(&v82);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v92;
        v48 = __p;
        if (v92 != __p)
        {
          do
          {
            v47 = sub_10005BEF4(v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v92 = v46;
        operator delete(v48);
      }

      v49 = v89;
      if (v89)
      {
        v50 = v90;
        v51 = v89;
        if (v90 != v89)
        {
          do
          {
            v52 = *--v50;
            *v50 = 0;
            if (v52)
            {
              operator delete[]();
            }
          }

          while (v50 != v49);
LABEL_102:
          v51 = v89;
          goto LABEL_103;
        }

        goto LABEL_103;
      }

      goto LABEL_104;
    }

    return v32;
  }

  v21 = *sub_1001F42DC(this);
  {
    v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (!v24)
    {
      goto LABEL_83;
    }
  }

  else
  {
    sub_1002AAC64();
    v22 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (!v24)
    {
      goto LABEL_83;
    }
  }

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
  if (v25 != &v23[2 * v24] && *v25 == v22 && v25[1])
  {
    return 1;
  }

LABEL_83:
  v77 = 257;
  mlir::OpState::emitError(this, v76, &v82);
  if (v82)
  {
    v79 = 3;
    v80 = "expected a parameter attribute if the callee is not resolved";
    v81 = 60;
    v61 = &v79;
    v62 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v79 && v85 + 24 * v86 > &v79)
      {
        v71 = &v79 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v62 = v85;
        v61 = (v85 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v61 = &v79;
        v62 = v85;
      }
    }

    v63 = &v62[24 * v86];
    v64 = *v61;
    *(v63 + 2) = *(v61 + 2);
    *v63 = v64;
    ++v86;
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v65 = __p;
    if (__p)
    {
      v66 = v92;
      v67 = __p;
      if (v92 != __p)
      {
        do
        {
          v66 = sub_10005BEF4(v66 - 1);
        }

        while (v66 != v65);
        v67 = __p;
      }

      v92 = v65;
      operator delete(v67);
    }

    v49 = v89;
    if (v89)
    {
      v68 = v90;
      v51 = v89;
      if (v90 != v89)
      {
        do
        {
          v69 = *--v68;
          *v68 = 0;
          if (v69)
          {
            operator delete[]();
          }
        }

        while (v68 != v49);
        goto LABEL_102;
      }

LABEL_103:
      v90 = v49;
      operator delete(v51);
    }

LABEL_104:
    v60 = v85;
    if (v85 == v88)
    {
      return v32;
    }

    goto LABEL_105;
  }

  return v32;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  Value = *(*this + 2 * v5 + 9);
  LOBYTE(v17) = Value != 0;
  if (Value)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = v6[4];
    if (v6[3] == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++v6[4];
    }

    v8 = (*(*a2 + 16))(a2);
    v9 = v8[4];
    if ((v8[3] - v9) > 5)
    {
      *(v9 + 4) = 28274;
      *v9 = 1702131813;
      v8[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v8, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&Value, a2);
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 11))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if ((v10[3] - v11) > 8)
    {
      *(v11 + 8) = 101;
      *v11 = *" noinline";
      v10[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " noinline", 9uLL);
    }
  }

  v12 = *this;
  v13 = sub_100005CD8(*this);
  v15 = *(*(*(*this + 6) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v15);
  v17 = v14;
  sub_1001F6CCC(v12, v13, &Value, 1uLL, a2);
}

void sub_1001F6CCC(mlir::Operation *a1, uint64_t a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v40 = a1;
  v41 = a2;
  v43 = v45;
  v44 = 0x300000000;
  if (a4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, a4, 16);
    v8 = v44;
    v9 = v43;
LABEL_5:
    memcpy(&v9[16 * v8], a3, 16 * a4);
    v10 = v44;
    goto LABEL_6;
  }

  if (a4)
  {
    v8 = 0;
    v9 = v45;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  LODWORD(v44) = v10 + a4;
  v11 = (*(*a5 + 16))(a5);
  v12 = v11[4];
  if (v11[3] == v12)
  {
    llvm::raw_ostream::write(v11, " ", 1uLL);
  }

  else
  {
    *v12 = 32;
    ++v11[4];
  }

  v42[0] = mlir::FunctionOpInterface::getNameAttr(&v40);
  Value = mlir::StringAttr::getValue(v42);
  (*(*a5 + 88))(a5, Value, v14);
  v15 = v44;
  if (v44 >= HIDWORD(v44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44 + 1, 16);
    v15 = v44;
  }

  v16 = v43 + 16 * v15;
  *v16 = "sym_name";
  v16[1] = 8;
  LODWORD(v44) = v44 + 1;
  v17 = v40;
  if (sub_10019D838(v40) && v17)
  {
    v18 = sub_10019D838(v17);
    (*(v18 + 32))(v18, v17, a5);
    v19 = v44;
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v44 + 1, 16);
      v19 = v44;
    }

    v20 = v43 + 16 * v19;
    *v20 = "param_decls";
    v20[1] = 11;
    LODWORD(v44) = v44 + 1;
  }

  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v40);
  v21 = v40;
  v22 = v41;
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v25 = v24;
  Results = mlir::FunctionType::getResults(&FunctionType);
  v28 = v27;
  v42[0] = v21;
  v42[1] = v22;
  mlir::TypeRange::TypeRange(v47, Inputs, v25);
  ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v42);
  mlir::TypeRange::TypeRange(v46, Results, v28);
  ResAttrsAttr = mlir::FunctionOpInterface::getResAttrsAttr(v42);
  mlir::call_interface_impl::printFunctionSignature(a5, v47[0], v47[1], ArgAttrsAttr, 0, v46[0], v46[1], ResAttrsAttr, (((v42[0] + 16 * ((*(v42[0] + 44) >> 23) & 1) + ((*(v42[0] + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v42[0] + 40)), 0);
  v31 = v44;
  v32 = v44 + 3;
  if (v32 > HIDWORD(v44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v32, 16);
    v31 = v44;
  }

  v33 = v43 + 16 * v31;
  *v33 = off_1002DE6E0;
  v33[1] = *&off_1002DE6F0;
  v33[2] = off_1002DE700;
  LODWORD(v44) = v44 + 3;
  v42[0] = mlir::Operation::getAttrDictionary(v40);
  v34 = mlir::DictionaryAttr::getValue(v42);
  (*(*a5 + 200))(a5, v34, v35, v43, v44);
  v36 = (*(*a5 + 16))(a5);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, " ", 1uLL);
  }

  else
  {
    *v37 = 32;
    ++v36[4];
  }

  v38 = (((v40 + 16 * ((*(v40 + 11) >> 23) & 1) + ((*(v40 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v40 + 10));
  if (*v38 != v38)
  {
    (*(*a5 + 224))(a5);
  }

  if (v43 != v45)
  {
    free(v43);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::parse(mlir::ODIE::Compiler::CoreML::FuncOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  if ((*(*this + 408))(this, "extern", 6))
  {
    result = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(this);
    if (!result)
    {
      return result;
    }

    mlir::NamedAttribute::NamedAttribute(&v10, *(*(*(a2 + 1) + 96) + 8), result);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
  }

  if ((*(*this + 408))(this, "noinline", 8))
  {
    v6 = *(*(*(a2 + 1) + 96) + 24);
    v7 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v7, v8);
    mlir::NamedAttribute::NamedAttribute(&v10, v6, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
  }

  return sub_1001F72CC(this, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList);
}

BOOL sub_1001F72CC(mlir::AsmParser *a1, uint64_t a2, uint64_t (*a3)(uint64_t, mlir::AsmParser *, uint64_t), uint64_t a4)
{
  v107 = 0;
  v8 = (*(*a1 + 40))(a1);
  if ((sub_1002985C0(a1) & 1) == 0)
  {
    v114 = 257;
    (*(*a1 + 24))(&v128, a1, v8, &v111);
    if (v128)
    {
      LODWORD(v125) = 3;
      v126 = "expected valid symbol name.";
      v127[0] = 27;
      v21 = &v125;
      v22 = v130;
      if (v131 >= v132)
      {
        if (v130 <= &v125 && v130 + 24 * v131 > &v125)
        {
          v98 = &v125 - v130;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v22 = v130;
          v21 = (v130 + v98);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v21 = &v125;
          v22 = v130;
        }
      }

      v23 = &v22[24 * v131];
      v24 = *v21;
      *(v23 + 2) = v21[2];
      *v23 = v24;
      ++v131;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
    if (v128)
    {
      mlir::InFlightDiagnostic::report(&v128);
    }

    if (v139 == 1)
    {
      if (v138 != &v139)
      {
        free(v138);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v137;
        v28 = __p;
        if (v137 != __p)
        {
          do
          {
            v27 = sub_10005BEF4(v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v137 = v26;
        operator delete(v28);
      }

      v29 = v134;
      if (v134)
      {
        v30 = v135;
        v31 = v134;
        if (v135 != v134)
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
          v31 = v134;
        }

        v135 = v29;
        operator delete(v31);
      }

      v73 = v130;
      if (v130 != v133)
      {
        goto LABEL_134;
      }
    }

    return v25;
  }

  Context = mlir::Attribute::getContext(a2);
  LOWORD(v131) = 261;
  v128 = "sym_name";
  v129 = 8;
  v11 = mlir::StringAttr::get(Context, &v128, v10);
  mlir::NamedAttribute::NamedAttribute(&v111, v11, v107);
  mlir::NamedAttrList::push_back(a2 + 112, v111, v112);
  {
    sub_1002A4B50();
  }

  v12 = *(a2 + 8);
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  if (v14)
  {
    v15 = *(v12 + 32);
    v16 = v14;
    do
    {
      v17 = v16 >> 1;
      v18 = &v15[2 * (v16 >> 1)];
      v20 = *v18;
      v19 = v18 + 2;
      v16 += ~(v16 >> 1);
      if (v20 < mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id)
      {
        v15 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    while (v16);
    if (v15 != (v13 + 16 * v14) && *v15 == mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id && v15[1] && (a3(a4, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v33 = *(v12 + 32);
  }

  v125 = v127;
  v126 = &_mh_execute_header;
  v106 = 0;
  v122 = v124;
  v123 = 0x600000000;
  v119 = v121;
  v120 = 0x600000000;
  v34 = (*(*a1 + 40))(a1);
  if (mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, 0, &v125, &v106, &v122, &v119))
  {
    v35 = (*(*a1 + 32))(a1);
    v36 = v125;
    v37 = v126;
    v38 = v119;
    v39 = v120;
    v40 = mlir::AsmParser::getContext(a1);
    LOWORD(v131) = 262;
    v128 = "arg_attrs";
    v129 = 9;
    v42 = mlir::StringAttr::get(v40, &v128, v41);
    v43 = mlir::AsmParser::getContext(a1);
    v114 = 262;
    v111 = "res_attrs";
    v112 = 9;
    v45 = mlir::StringAttr::get(v43, &v111, v44);
    mlir::call_interface_impl::addArgAndResultAttrs(v35, a2, v36, v37, v38, v39, v42, v45);
    v116 = v118;
    v117 = 0x600000000;
    v46 = v126;
    if (v126 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v118, v126, 8);
      v46 = v126;
    }

    if (v46)
    {
      v47 = v117;
      v48 = (v125 + 32);
      v49 = v46 << 6;
      do
      {
        v50 = *v48;
        if (v47 >= HIDWORD(v117))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v118, v47 + 1, 8);
          v47 = v117;
        }

        *(v116 + v47) = v50;
        v47 = v117 + 1;
        LODWORD(v117) = v117 + 1;
        v48 += 8;
        v49 -= 64;
      }

      while (v49);
    }

    v62 = (*(*a1 + 32))(a1);
    mlir::TypeRange::TypeRange(&v128, v116, v117);
    mlir::TypeRange::TypeRange(&v111, v122, v123);
    FunctionType = mlir::Builder::getFunctionType(v62, v128, v129, v111, v112);
    if (FunctionType)
    {
      v64 = mlir::TypeAttr::get(FunctionType);
      v65 = mlir::Attribute::getContext(a2);
      LOWORD(v131) = 261;
      v128 = "function_type";
      v129 = 13;
      v67 = mlir::StringAttr::get(v65, &v128, v66);
      mlir::NamedAttribute::NamedAttribute(&v111, v67, v64);
      mlir::NamedAttrList::push_back(a2 + 112, v111, v112);
      v111 = v113;
      v112 = 0x400000000;
      v115 = 4;
      v68 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 496))(a1, &v111))
      {
        Attrs = mlir::NamedAttrList::getAttrs(&v111);
        v71 = v69;
        *(a2 + 192) = 0;
        v72 = *(a2 + 120);
        if (v69 + v72 > *(a2 + 124))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v69 + v72, 16);
          LODWORD(v72) = *(a2 + 120);
        }

        if (v71)
        {
          memcpy((*(a2 + 112) + 16 * v72), Attrs, 16 * v71);
          LODWORD(v72) = *(a2 + 120);
        }

        *(a2 + 120) = v72 + v71;
        mlir::OperationState::addRegion(a2);
      }

      v105 = 257;
      (*(*a1 + 24))(&v128, a1, v68, &v102);
      if (v128)
      {
        v108 = 3;
        v109 = "failed to parse the attribute dictionary";
        v110 = 40;
        v85 = &v108;
        v86 = v130;
        if (v131 >= v132)
        {
          if (v130 <= &v108 && v130 + 24 * v131 > &v108)
          {
            v101 = &v108 - v130;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v86 = v130;
            v85 = (v130 + v101);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v85 = &v108;
            v86 = v130;
          }
        }

        v87 = &v86[24 * v131];
        v88 = *v85;
        *(v87 + 2) = *(v85 + 2);
        *v87 = v88;
        ++v131;
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
      if (v128)
      {
        mlir::InFlightDiagnostic::report(&v128);
      }

      if (v139 == 1)
      {
        if (v138 != &v139)
        {
          free(v138);
        }

        v89 = __p;
        if (__p)
        {
          v90 = v137;
          v91 = __p;
          if (v137 != __p)
          {
            do
            {
              v90 = sub_10005BEF4(v90 - 1);
            }

            while (v90 != v89);
            v91 = __p;
          }

          v137 = v89;
          operator delete(v91);
        }

        v92 = v134;
        if (v134)
        {
          v93 = v135;
          v94 = v134;
          if (v135 != v134)
          {
            do
            {
              v95 = *--v93;
              *v93 = 0;
              if (v95)
              {
                operator delete[]();
              }
            }

            while (v93 != v92);
            v94 = v134;
          }

          v135 = v92;
          operator delete(v94);
        }

        if (v130 != v133)
        {
          free(v130);
        }
      }

      if (v111 != v113)
      {
        free(v111);
      }
    }

    else
    {
      v114 = 257;
      (*(*a1 + 24))(&v128, a1, v34, &v111);
      if (v128)
      {
        v102 = 3;
        v103 = "failed to construct function type";
        v104 = 33;
        v74 = &v102;
        v75 = v130;
        if (v131 >= v132)
        {
          if (v130 <= &v102 && v130 + 24 * v131 > &v102)
          {
            v100 = &v102 - v130;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v75 = v130;
            v74 = (v130 + v100);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
            v74 = &v102;
            v75 = v130;
          }
        }

        v76 = &v75[24 * v131];
        v77 = *v74;
        *(v76 + 2) = *(v74 + 2);
        *v76 = v77;
        ++v131;
      }

      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
      if (v128)
      {
        mlir::InFlightDiagnostic::report(&v128);
      }

      if (v139 == 1)
      {
        if (v138 != &v139)
        {
          free(v138);
        }

        v78 = __p;
        if (__p)
        {
          v79 = v137;
          v80 = __p;
          if (v137 != __p)
          {
            do
            {
              v79 = sub_10005BEF4(v79 - 1);
            }

            while (v79 != v78);
            v80 = __p;
          }

          v137 = v78;
          operator delete(v80);
        }

        v81 = v134;
        if (v134)
        {
          v82 = v135;
          v83 = v134;
          if (v135 != v134)
          {
            do
            {
              v84 = *--v82;
              *v82 = 0;
              if (v84)
              {
                operator delete[]();
              }
            }

            while (v82 != v81);
            v83 = v134;
          }

          v135 = v81;
          operator delete(v83);
        }

        if (v130 != v133)
        {
          free(v130);
        }
      }
    }

    v96 = v116;
    if (v116 != v118)
    {
LABEL_128:
      free(v96);
    }
  }

  else
  {
    v114 = 257;
    (*(*a1 + 24))(&v128, a1, v34, &v111);
    if (v128)
    {
      LODWORD(v116) = 3;
      v117 = "failed to parse the function signature";
      v118[0] = 38;
      v51 = &v116;
      v52 = v130;
      if (v131 >= v132)
      {
        if (v130 <= &v116 && v130 + 24 * v131 > &v116)
        {
          v99 = &v116 - v130;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v52 = v130;
          v51 = (v130 + v99);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v133, v131 + 1, 24);
          v51 = &v116;
          v52 = v130;
        }
      }

      v53 = &v52[24 * v131];
      v54 = *v51;
      *(v53 + 2) = v51[2];
      *v53 = v54;
      ++v131;
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v128);
    if (v128)
    {
      mlir::InFlightDiagnostic::report(&v128);
    }

    if (v139 == 1)
    {
      if (v138 != &v139)
      {
        free(v138);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v137;
        v57 = __p;
        if (v137 != __p)
        {
          do
          {
            v56 = sub_10005BEF4(v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v137 = v55;
        operator delete(v57);
      }

      v58 = v134;
      if (v134)
      {
        v59 = v135;
        v60 = v134;
        if (v135 != v134)
        {
          do
          {
            v61 = *--v59;
            *v59 = 0;
            if (v61)
            {
              operator delete[]();
            }
          }

          while (v59 != v58);
          v60 = v134;
        }

        v135 = v58;
        operator delete(v60);
      }

      v96 = v130;
      if (v130 != v133)
      {
        goto LABEL_128;
      }
    }
  }

  if (v119 != v121)
  {
    free(v119);
  }

  if (v122 != v124)
  {
    free(v122);
  }

  v73 = v125;
  if (v125 != v127)
  {
LABEL_134:
    free(v73);
  }

  return v25;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001F1F90(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_10019D838(*a1);
  if (!sub_1001F1F90(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 44) >> 23) & 1) + 32);
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32);
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v46 = a2;
  v47 = v2;
  v59 = *(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&v59);
  sub_1001AFC70(&v47, &v62);
  v4 = sub_100200BB8(&v46);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v45 = v5;
  if (v5)
  {
    mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    if (v6 != v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "not enough parameters provided by ";
        v61 = 34;
        v26 = &v59;
        v27 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v42 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v27 = v49;
            v26 = (v49 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v26 = &v59;
            v27 = v49;
          }
        }

        v28 = &v27[24 * v50];
        v29 = *v26;
        *(v28 + 2) = v26[2];
        *v28 = v29;
        ++v50;
        if (v48)
        {
          v30 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v45);
          v31 = v49;
          if (v50 >= v51)
          {
            if (v49 <= &v59 && v49 + 24 * v50 > &v59)
            {
              v44 = &v59 - v49;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v31 = v49;
              v30 = (v49 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v30 = &v59;
              v31 = v49;
            }
          }

          v32 = &v31[24 * v50];
          v33 = *v30;
          *(v32 + 2) = v30[2];
          *v32 = v33;
          ++v50;
        }
      }

      sub_10006BAFC(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v56;
          v36 = __p;
          if (v56 != __p)
          {
            do
            {
              v35 = sub_10005BEF4(v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v56 = v34;
          operator delete(v36);
        }

        v37 = v53;
        if (v53)
        {
          v38 = v54;
          v39 = v53;
          if (v54 != v53)
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
            v39 = v53;
          }

          v54 = v37;
          operator delete(v39);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v7 = v6;
    v8 = *(v47 + 24);
    v9 = *(v46 + 24);
    v10 = v62;
    Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    v59 = &v46;
    v60 = &v47;
    v14 = sub_1001F54C0(v8, v9, v10, v7, Binds, v12, Value, v13, sub_1002A9A94, &v59);
  }

  else
  {
    if (v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "no bindings provided";
        v61 = 20;
        v15 = &v59;
        v16 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v43 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v16 = v49;
            v15 = (v49 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v15 = &v59;
            v16 = v49;
          }
        }

        v17 = &v16[24 * v50];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v50;
      }

      sub_10006BAFC(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v56;
          v21 = __p;
          if (v56 != __p)
          {
            do
            {
              v20 = sub_10005BEF4(v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v56 = v19;
          operator delete(v21);
        }

        v22 = v53;
        if (v53)
        {
          v23 = v54;
          v24 = v53;
          if (v54 != v53)
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
            v24 = v53;
          }

          v54 = v22;
          operator delete(v24);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v14 = 1;
  }

  if (v62 != &v64)
  {
    free(v62);
  }

  return v14;
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::canDiscardOnUseEmpty(mlir::ODIE::Compiler::CoreML::FuncOp *this)
{
  v1 = *(*this + 44);
  v2 = *this + 64 + 16 * ((v1 >> 23) & 1);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  return *v3 != v3 && *(v2 + 8) == 0;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getInputIntents(mlir::ODIE::Compiler::CoreML::FuncOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_100005CD8(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001F8E8C(a3, a2, v4, v7);
}

void sub_1001F8E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  mlir::FunctionOpInterface::getArgumentTypes(&v35);
  v7 = v6;
  v8 = v6;
  v44 = v46;
  v45 = 0x600000000;
  if (v6 < 7uLL)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = 8 * v6;
    v9 = v46;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v6, 8);
    v9 = v44;
    v10 = 8 * v8;
  }

  bzero(v9, v10);
LABEL_6:
  LODWORD(v45) = v7;
  mlir::FunctionOpInterface::getArgumentTypes(&v35);
  if (v11)
  {
    for (i = 0; i < v13; ++i)
    {
      __src = mlir::function_interface_impl::getArgAttrDict(v35, v36, i);
      if (__src)
      {
        v14 = mlir::DictionaryAttr::get(&__src, "coreml.intent", 0xDuLL);
        if (v14)
        {
          if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
          {
            *(v44 + i) = v14;
          }
        }
      }

      mlir::FunctionOpInterface::getArgumentTypes(&v35);
    }
  }

  v15 = v45;
  __dst = v43;
  v42 = 0x600000000;
  if (v45 < 7)
  {
    if (!v45)
    {
      goto LABEL_18;
    }

    v17 = 8 * v45;
    v16 = v43;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v43, v45, 8);
    v16 = __dst;
    v17 = 8 * v15;
  }

  bzero(v16, v17);
LABEL_18:
  LODWORD(v42) = v15;
  v18 = v35;
  v19 = (((v35 + 16 * ((*(v35 + 44) >> 23) & 1) + ((*(v35 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v35 + 40));
  if (*v19 == v19)
  {
    goto LABEL_36;
  }

  v20 = v19[1];
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  sub_1001FE998(&__src, a2, v21);
  if (v40 == 1)
  {
    v22 = v38;
    v23 = v42;
    if (v42 >= v38)
    {
      if (v38)
      {
        memmove(__dst, __src, 8 * v38);
      }

      goto LABEL_32;
    }

    if (HIDWORD(v42) >= v38)
    {
      if (v42)
      {
        memmove(__dst, __src, 8 * v42);
        v24 = v38 - v23;
        if (v38 == v23)
        {
LABEL_32:
          LODWORD(v42) = v22;
          if ((v40 & 1) != 0 && __src != &v39)
          {
            free(__src);
          }

          goto LABEL_35;
        }
      }

      else
      {
        v23 = 0;
        v24 = v38;
        if (!v38)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      LODWORD(v42) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v43, v38, 8);
      v23 = 0;
      v24 = v38;
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    memcpy(__dst + 8 * v23, __src + 8 * v23, 8 * v24);
    goto LABEL_32;
  }

LABEL_35:
  v18 = v35;
LABEL_36:
  Context = mlir::Attribute::getContext((v18 + 24));
  v26 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 3uLL);
  v27 = v45;
  if (!v45)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    goto LABEL_48;
  }

  v28 = v44;
  v29 = __dst;
  do
  {
    if (!*v28)
    {
      v30 = *v29;
      if (!*v29)
      {
        v30 = v26;
      }

      *v28 = v30;
    }

    ++v29;
    ++v28;
    --v27;
  }

  while (v27);
  v31 = v45;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (!v31 || &v44 == a1)
  {
LABEL_48:
    *(a1 + 64) = 1;
    v33 = __dst;
    if (__dst == v43)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v44 == v46)
  {
    v34 = v31;
    if (v31 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v31, 8), (v34 = v45) != 0))
    {
      memcpy(*a1, v44, 8 * v34);
    }

    *(a1 + 8) = v31;
  }

  else
  {
    *a1 = v44;
    v32 = HIDWORD(v45);
    *(a1 + 8) = v31;
    *(a1 + 12) = v32;
    v44 = v46;
    HIDWORD(v45) = 0;
  }

  LODWORD(v45) = 0;
  *(a1 + 64) = 1;
  v33 = __dst;
  if (__dst != v43)
  {
LABEL_49:
    free(v33);
  }

LABEL_50:
  if (v44 != v46)
  {
    free(v44);
  }
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getOutputIntents(unsigned int **this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_100005CD8(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001F92F0(a3, a2, v4, v7);
}

void sub_1001F92F0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  mlir::FunctionOpInterface::getResultTypes(&v34);
  v7 = v6;
  v8 = v6;
  __src = v45;
  v44 = 0x600000000;
  if (v6 < 7uLL)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = 8 * v6;
    v9 = v45;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v45, v6, 8);
    v9 = __src;
    v10 = 8 * v8;
  }

  bzero(v9, v10);
LABEL_6:
  LODWORD(v44) = v7;
  mlir::FunctionOpInterface::getResultTypes(&v34);
  if (v11)
  {
    for (i = 0; i < v13; ++i)
    {
      ResultAttrDict = mlir::function_interface_impl::getResultAttrDict(v34, v35, i);
      if (ResultAttrDict)
      {
        v14 = mlir::DictionaryAttr::get(&ResultAttrDict, "coreml.intent", 0xDuLL);
        if (v14)
        {
          if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
          {
            *(__src + i) = v14;
          }
        }
      }

      mlir::FunctionOpInterface::getResultTypes(&v34);
    }
  }

  v15 = v44;
  __dst = v42;
  v41 = 0x600000000;
  if (v44 < 7)
  {
    if (!v44)
    {
      goto LABEL_18;
    }

    v17 = 8 * v44;
    v16 = v42;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v42, v44, 8);
    v16 = __dst;
    v17 = 8 * v15;
  }

  bzero(v16, v17);
LABEL_18:
  LODWORD(v41) = v15;
  v18 = (((&v34[4 * ((v34[11] >> 23) & 1) + 17] + ((v34[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v34[10]);
  if (*v18 != v18)
  {
    v29 = v18[1];
    if (v29)
    {
      v30 = (v29 - 8);
    }

    else
    {
      v30 = 0;
    }

    sub_1002A732C(&ResultAttrDict, a2, v30);
    if (v39 != 1)
    {
      goto LABEL_57;
    }

    v31 = v37;
    v32 = v41;
    if (v41 >= v37)
    {
      if (v37)
      {
        memmove(__dst, ResultAttrDict, 8 * v37);
      }

      goto LABEL_54;
    }

    if (HIDWORD(v41) >= v37)
    {
      if (v41)
      {
        memmove(__dst, ResultAttrDict, 8 * v41);
        goto LABEL_52;
      }
    }

    else
    {
      LODWORD(v41) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v42, v37, 8);
    }

    v32 = 0;
LABEL_52:
    if (v37 != v32)
    {
      memcpy(__dst + 8 * v32, ResultAttrDict + 8 * v32, 8 * (v37 - v32));
    }

LABEL_54:
    LODWORD(v41) = v31;
    if ((v39 & 1) != 0 && ResultAttrDict != &v38)
    {
      free(ResultAttrDict);
    }

LABEL_57:
    Context = mlir::Attribute::getContext((v34 + 6));
    v20 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
    v21 = v44;
    if (v44)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

  v19 = mlir::Attribute::getContext((v34 + 6));
  v20 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v19, 0);
  v21 = v44;
  if (v44)
  {
LABEL_20:
    v22 = __src;
    v23 = __dst;
    do
    {
      if (!*v22)
      {
        v24 = *v23;
        if (!*v23)
        {
          v24 = v20;
        }

        *v22 = v24;
      }

      ++v23;
      ++v22;
      --v21;
    }

    while (v21);
    v25 = v44;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v25 && &__src != a1)
    {
      if (__src == v45)
      {
        v27 = v25;
        if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v25, 8), (v27 = v44) != 0))
        {
          memcpy(*a1, __src, 8 * v27);
        }

        *(a1 + 8) = v25;
      }

      else
      {
        *a1 = __src;
        v26 = HIDWORD(v44);
        *(a1 + 8) = v25;
        *(a1 + 12) = v26;
        __src = v45;
        HIDWORD(v44) = 0;
      }

      LODWORD(v44) = 0;
    }

    *(a1 + 64) = 1;
    v28 = __dst;
    if (__dst != v42)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

LABEL_58:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  *(a1 + 64) = 1;
  v28 = __dst;
  if (__dst != v42)
  {
LABEL_36:
    free(v28);
  }

LABEL_37:
  if (__src != v45)
  {
    free(__src);
  }
}

void mlir::ODIE::Compiler::CoreML::GraphOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 13))
  {
LABEL_4:
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] - v5 <= 7uLL)
  {
    llvm::raw_ostream::write(v4, " private", 8uLL);
    goto LABEL_4;
  }

  *v5 = 0x6574617669727020;
  v4[4] += 8;
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 0xB)
  {
    *(v7 + 8) = 1702521196;
    *v7 = *" externalize";
    v6[4] += 12;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  llvm::raw_ostream::write(v6, " externalize", 0xCuLL);
LABEL_9:
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
  {
    goto LABEL_15;
  }

LABEL_12:
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 8)
  {
    *(v9 + 8) = 101;
    *v9 = *" noinline";
    v8[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v8, " noinline", 9uLL);
  }

LABEL_15:
  v10 = *this;
  v11 = sub_100005CD8(*this);
  v17 = *(*(*(*this + 6) + 96) + 40);
  v18[0] = mlir::StringAttr::getValue(&v17);
  v18[1] = v12;
  v16 = *(*(*(*this + 6) + 96) + 8);
  v18[2] = mlir::StringAttr::getValue(&v16);
  v18[3] = v13;
  v15 = *(*(*(*this + 6) + 96) + 24);
  v18[4] = mlir::StringAttr::getValue(&v15);
  v18[5] = v14;
  v18[6] = "sym_visibility";
  v18[7] = 14;
  sub_1001F6CCC(v10, v11, v18, 4uLL, a2);
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::parse(mlir::ODIE::Compiler::CoreML::GraphOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14 = 0;
  v15 = 0;
  v16 = off_1002DE5D8;
  v17 = *&off_1002DE5E8;
  for (i = off_1002DE5F8; ((*(*this + 424))(this, &v14, &v16, 3) & 1) != 0; i = off_1002DE5F8)
  {
    v9 = *(*(a2 + 1) + 96);
    if (v15 == 11)
    {
      if (*v14 == 0x6C616E7265747865 && *(v14 + 3) == 0x657A696C616E7265)
      {
        v11 = v9 + 1;
        goto LABEL_22;
      }
    }

    else if (v15 == 8)
    {
      if (*v14 == 0x656E696C6E696F6ELL)
      {
        v11 = v9 + 3;
        goto LABEL_22;
      }
    }

    else if (v15 == 7 && *v14 == 1986622064 && *(v14 + 3) == 1702125942)
    {
      v11 = v9 + 5;
LABEL_22:
      v5 = *v11;
      goto LABEL_5;
    }

    v5 = 0;
LABEL_5:
    v6 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    mlir::NamedAttribute::NamedAttribute(&v16, v5, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(&v16 + 1));
    v16 = off_1002DE5D8;
    v17 = *&off_1002DE5E8;
  }

  return sub_1001F72CC(this, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setVisibility(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    llvm::report_fatal_error("GraphOp has no concept of 'nested' visibility", 1);
  }

  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (a2 == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    result = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 104) = result;
  }

  else
  {
    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPrivate(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getUnitAttr(&Context, v2);
  *(v1 + 104) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v46 = a2;
  v47 = v2;
  v59 = *(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&v59);
  sub_1001B6850(&v47, &v62);
  v4 = sub_100202BFC(&v46);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v45 = v5;
  if (v5)
  {
    mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    if (v6 != v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "not enough parameters provided by ";
        v61 = 34;
        v26 = &v59;
        v27 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v42 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v27 = v49;
            v26 = (v49 + v42);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v26 = &v59;
            v27 = v49;
          }
        }

        v28 = &v27[24 * v50];
        v29 = *v26;
        *(v28 + 2) = v26[2];
        *v28 = v29;
        ++v50;
        if (v48)
        {
          v30 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, v45);
          v31 = v49;
          if (v50 >= v51)
          {
            if (v49 <= &v59 && v49 + 24 * v50 > &v59)
            {
              v44 = &v59 - v49;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v31 = v49;
              v30 = (v49 + v44);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
              v30 = &v59;
              v31 = v49;
            }
          }

          v32 = &v31[24 * v50];
          v33 = *v30;
          *(v32 + 2) = v30[2];
          *v32 = v33;
          ++v50;
        }
      }

      sub_10006BAFC(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v34 = __p;
        if (__p)
        {
          v35 = v56;
          v36 = __p;
          if (v56 != __p)
          {
            do
            {
              v35 = sub_10005BEF4(v35 - 1);
            }

            while (v35 != v34);
            v36 = __p;
          }

          v56 = v34;
          operator delete(v36);
        }

        v37 = v53;
        if (v53)
        {
          v38 = v54;
          v39 = v53;
          if (v54 != v53)
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
            v39 = v53;
          }

          v54 = v37;
          operator delete(v39);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v7 = v6;
    v8 = *(v47 + 24);
    v9 = *(v46 + 24);
    v10 = v62;
    Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v45);
    v59 = &v46;
    v60 = &v47;
    v14 = sub_1001F54C0(v8, v9, v10, v7, Binds, v12, Value, v13, sub_1002AA2A8, &v59);
  }

  else
  {
    if (v63)
    {
      mlir::emitError(*(v46 + 24), &v48);
      if (v48)
      {
        LODWORD(v59) = 3;
        v60 = "no bindings provided";
        v61 = 20;
        v15 = &v59;
        v16 = v49;
        if (v50 >= v51)
        {
          if (v49 <= &v59 && v49 + 24 * v50 > &v59)
          {
            v43 = &v59 - v49;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v16 = v49;
            v15 = (v49 + v43);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v49, v52, v50 + 1, 24);
            v15 = &v59;
            v16 = v49;
          }
        }

        v17 = &v16[24 * v50];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v50;
      }

      sub_10006BAFC(&v59, &v48);
      if (v48)
      {
        mlir::InFlightDiagnostic::report(&v48);
      }

      if (v58 == 1)
      {
        if (v57 != &v58)
        {
          free(v57);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v56;
          v21 = __p;
          if (v56 != __p)
          {
            do
            {
              v20 = sub_10005BEF4(v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v56 = v19;
          operator delete(v21);
        }

        v22 = v53;
        if (v53)
        {
          v23 = v54;
          v24 = v53;
          if (v54 != v53)
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
            v24 = v53;
          }

          v54 = v22;
          operator delete(v24);
        }

        if (v49 != v52)
        {
          free(v49);
        }
      }

      mlir::Diagnostic::attachNote(&v60, *(v47 + 24), 1);
    }

    v14 = 1;
  }

  if (v62 != &v64)
  {
    free(v62);
  }

  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verify(mlir::Operation **this)
{
  v2 = *this;
  if (*(*this + 47) && (InherentAttr = mlir::Operation::getInherentAttr(*this, "sym_visibility", 14), (v4 & 1) != 0))
  {
    if (InherentAttr)
    {
LABEL_4:
      LOWORD(v185) = 257;
      mlir::OpState::emitError(this, &v183, &Value);
      if (Value)
      {
        LODWORD(v199) = 3;
        v200 = "graphs do not allow the default symbol visibility attr";
        v201[0] = 54;
        v5 = &v199;
        v6 = v204;
        if (v205 >= v206)
        {
          if (v204 <= &v199 && v204 + 24 * v205 > &v199)
          {
            v165 = &v199 - v204;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v6 = v204;
            v5 = (v204 + v165);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v5 = &v199;
            v6 = v204;
          }
        }

        v7 = &v6[24 * v205];
        v8 = *v5;
        *(v7 + 2) = v5[2];
        *v7 = v8;
        ++v205;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v213 != 1)
      {
        return Results;
      }

      if (v212 != &v213)
      {
        free(v212);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v211;
        v12 = __p;
        if (v211 != __p)
        {
          do
          {
            v11 = sub_10005BEF4(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v211 = v10;
        operator delete(v12);
      }

      v13 = v208;
      if (!v208)
      {
        goto LABEL_93;
      }

      v14 = v209;
      v15 = v208;
      if (v209 == v208)
      {
        goto LABEL_92;
      }

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
      goto LABEL_91;
    }
  }

  else if (mlir::DictionaryAttr::contains(v2 + 56, "sym_visibility", 0xEuLL))
  {
    goto LABEL_4;
  }

  v17 = *this;
  v18 = *(*this + 11);
  v19 = *this + 16 * ((v18 >> 23) & 1) + 64;
  if (*(v19 + 40))
  {
    if (*(v19 + 8))
    {
      LOWORD(v185) = 257;
      mlir::OpState::emitError(this, &v183, &Value);
      if (Value)
      {
        LODWORD(v199) = 3;
        v200 = "graphs marked 'externalize' must not be private";
        v201[0] = 47;
        v20 = &v199;
        v21 = v204;
        if (v205 >= v206)
        {
          if (v204 <= &v199 && v204 + 24 * v205 > &v199)
          {
            v166 = &v199 - v204;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v21 = v204;
            v20 = (v204 + v166);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v20 = &v199;
            v21 = v204;
          }
        }

        v22 = &v21[24 * v205];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v205;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v213 != 1)
      {
        return Results;
      }

      if (v212 != &v213)
      {
        free(v212);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v211;
        v26 = __p;
        if (v211 != __p)
        {
          do
          {
            v25 = sub_10005BEF4(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v211 = v24;
        operator delete(v26);
      }

      v13 = v208;
      if (!v208)
      {
        goto LABEL_93;
      }

      v27 = v209;
      v15 = v208;
      if (v209 == v208)
      {
        goto LABEL_92;
      }

      do
      {
        v28 = *--v27;
        *v27 = 0;
        if (v28)
        {
          operator delete[]();
        }
      }

      while (v27 != v13);
      goto LABEL_91;
    }

    v29 = (v18 >> 21) & 0x7F8;
    v30 = 32 * *(v17 + 10);
LABEL_66:
    v40 = (((v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + v30);
    if (*v40 == v40)
    {
      return 1;
    }

    v41 = v40[1];
    if (v41)
    {
      v42 = (v41 - 8);
    }

    else
    {
      v42 = 0;
    }

    if (!mlir::Block::mightHaveTerminator(v42) || *(*(mlir::Block::getTerminator(v42) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
    {
      LOWORD(v185) = 257;
      mlir::OpState::emitError(this, &v183, &Value);
      if (Value)
      {
        LODWORD(v199) = 3;
        v200 = "expected the 'coreml.output' terminator";
        v201[0] = 39;
        v43 = &v199;
        v44 = v204;
        if (v205 >= v206)
        {
          if (v204 <= &v199 && v204 + 24 * v205 > &v199)
          {
            v167 = &v199 - v204;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v44 = v204;
            v43 = (v204 + v167);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v43 = &v199;
            v44 = v204;
          }
        }

        v45 = &v44[24 * v205];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        ++v205;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v213 != 1)
      {
        return Results;
      }

      if (v212 != &v213)
      {
        free(v212);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v211;
        v49 = __p;
        if (v211 != __p)
        {
          do
          {
            v48 = sub_10005BEF4(v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v211 = v47;
        operator delete(v49);
      }

      v13 = v208;
      if (!v208)
      {
        goto LABEL_93;
      }

      v50 = v209;
      v15 = v208;
      if (v209 == v208)
      {
        goto LABEL_92;
      }

      do
      {
        v51 = *--v50;
        *v50 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v50 != v13);
      goto LABEL_91;
    }

    Terminator = mlir::Block::getTerminator(v42);
    v55 = Terminator;
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v56 = *(Terminator + 72);
      v57 = *(Terminator + 68);
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    *&v183 = v56;
    *(&v183 + 1) = v57;
    mlir::OperandRange::getTypes(&v183, &Value);
    v199 = v201;
    v200 = 0x600000000;
    v58 = Value;
    v59 = v203;
    v60 = v204;
    v61 = v204 - v203;
    if (v204 - v203 < 7)
    {
      v62 = 0;
      v63 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v199, v201, v204 - v203, 8);
      v62 = v200;
      v63 = v200;
    }

    if (v60 != v59)
    {
      v64 = &v199[v62];
      v65 = (v58 + 32 * v59 + 24);
      v66 = v61;
      do
      {
        v67 = *v65;
        v65 += 4;
        *v64++ = *(v67 + 8) & 0xFFFFFFFFFFFFFFF8;
        --v66;
      }

      while (v66);
      v63 = v200;
    }

    LODWORD(v200) = v63 + v61;
    Value = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
    Value = mlir::TypeAttr::getValue(&Value);
    Results = mlir::FunctionType::getResults(&Value);
    v69 = v68;
    v196 = v198;
    v197 = 0x600000000;
    v70 = (8 * v68) >> 3;
    if (v70 < 7)
    {
      v71 = 0;
      v72 = v198;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v196, v198, v70, 8);
      v71 = v197;
      v72 = v196;
    }

    if (v69)
    {
      memcpy(&v72[v71], Results, 8 * v69);
      v71 = v197;
      v72 = v196;
    }

    v73 = (v71 + v69);
    LODWORD(v197) = v73;
    v74 = v200;
    if (v200 == v73)
    {
      if (v73)
      {
        v75 = v199;
        v76 = &v199[v200];
        do
        {
          v182[0] = sub_10014A5C4(*v75);
          v182[1] = v77;
          v78 = sub_10014A5C4(*v72);
          v181[0] = v78;
          v181[1] = v79;
          if (v182[0])
          {
            v80 = v78 == 0;
          }

          else
          {
            v80 = 1;
          }

          if (!v80 && *(*v182[0] + 136) == *(*v78 + 136))
          {
            mlir::ShapedType::getShape(v182);
            v82 = v81;
            mlir::ShapedType::getShape(v181);
            if (v82 != v83)
            {
              goto LABEL_158;
            }

            Results = mlir::ShapedType::getShape(v182);
            v85 = v84;
            Shape = mlir::ShapedType::getShape(v181);
            if (v85)
            {
              v87 = 8 * v85;
              while (*Shape == 0x8000000000000000 || *Shape == *Results)
              {
                Results += 8;
                ++Shape;
                v87 -= 8;
                if (!v87)
                {
                  goto LABEL_120;
                }
              }

LABEL_158:
              LOWORD(v185) = 257;
              mlir::OpState::emitError(this, &v183, &Value);
              if (Value)
              {
                LODWORD(v183) = 3;
                *(&v183 + 1) = "expected ";
                *&v184 = 9;
                v114 = &v183;
                v115 = v204;
                if (v205 >= v206)
                {
                  if (v204 <= &v183 && v204 + 24 * v205 > &v183)
                  {
                    v172 = &v183 - v204;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                    v115 = v204;
                    v114 = v204 + v172;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                    v114 = &v183;
                    v115 = v204;
                  }
                }

                v116 = &v115[24 * v205];
                v117 = *v114;
                *(v116 + 2) = *(v114 + 2);
                *v116 = v117;
                ++v205;
                if (Value)
                {
                  v118 = &v183;
                  mlir::DiagnosticArgument::DiagnosticArgument(&v183, v181[0]);
                  v119 = v204;
                  if (v205 >= v206)
                  {
                    if (v204 <= &v183 && v204 + 24 * v205 > &v183)
                    {
                      v174 = &v183 - v204;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                      v119 = v204;
                      v118 = v204 + v174;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                      v118 = &v183;
                      v119 = v204;
                    }
                  }

                  v120 = &v119[24 * v205];
                  v121 = *v118;
                  *(v120 + 2) = *(v118 + 2);
                  *v120 = v121;
                  v122 = ++v205;
                  if (Value)
                  {
                    LODWORD(v183) = 3;
                    *(&v183 + 1) = ", got ";
                    *&v184 = 6;
                    v123 = &v183;
                    v124 = v204;
                    if (v122 >= v206)
                    {
                      if (v204 <= &v183 && v204 + 24 * v122 > &v183)
                      {
                        v176 = &v183 - v204;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v122 + 1, 24);
                        v124 = v204;
                        v123 = v204 + v176;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v122 + 1, 24);
                        v123 = &v183;
                        v124 = v204;
                      }
                    }

                    v125 = &v124[24 * v205];
                    v126 = *v123;
                    *(v125 + 2) = *(v123 + 2);
                    *v125 = v126;
                    ++v205;
                    if (Value)
                    {
                      v127 = &v183;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v183, v182[0]);
                      v128 = v204;
                      if (v205 >= v206)
                      {
                        if (v204 <= &v183 && v204 + 24 * v205 > &v183)
                        {
                          v178 = &v183 - v204;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                          v128 = v204;
                          v127 = v204 + v178;
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                          v127 = &v183;
                          v128 = v204;
                        }
                      }

                      v129 = &v128[24 * v205];
                      v130 = *v127;
                      *(v129 + 2) = *(v127 + 2);
                      *v129 = v130;
                      ++v205;
                    }
                  }
                }
              }

              Results = &Value;
              sub_10006BAFC(&v183, &Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v213 != 1)
              {
                goto LABEL_212;
              }

              if (v212 != &v213)
              {
                free(v212);
              }

              Results = __p;
              if (__p)
              {
                v131 = v211;
                v132 = __p;
                if (v211 != __p)
                {
                  do
                  {
                    v131 = sub_10005BEF4(v131 - 1);
                  }

                  while (v131 != Results);
                  v132 = __p;
                }

                v211 = Results;
                operator delete(v132);
              }

              v110 = v208;
              if (!v208)
              {
                goto LABEL_210;
              }

              v133 = v209;
              v112 = v208;
              if (v209 == v208)
              {
                goto LABEL_209;
              }

              Results = 0x1000C8077774924;
              do
              {
                v134 = *--v133;
                *v133 = 0;
                if (v134)
                {
                  operator delete[]();
                }
              }

              while (v133 != v110);
LABEL_208:
              v112 = v208;
              goto LABEL_209;
            }
          }

          else if (*v75 != *v72)
          {
            LOWORD(v185) = 257;
            mlir::OpState::emitError(this, &v183, &Value);
            if (Value)
            {
              LODWORD(v183) = 3;
              *(&v183 + 1) = "expected type ";
              *&v184 = 14;
              v135 = &v183;
              v136 = v204;
              if (v205 >= v206)
              {
                if (v204 <= &v183 && v204 + 24 * v205 > &v183)
                {
                  v175 = &v183 - v204;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                  v136 = v204;
                  v135 = v204 + v175;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                  v135 = &v183;
                  v136 = v204;
                }
              }

              v137 = &v136[24 * v205];
              v138 = *v135;
              *(v137 + 2) = *(v135 + 2);
              *v137 = v138;
              ++v205;
              if (Value)
              {
                v139 = &v183;
                mlir::DiagnosticArgument::DiagnosticArgument(&v183, *v72);
                v140 = v204;
                if (v205 >= v206)
                {
                  if (v204 <= &v183 && v204 + 24 * v205 > &v183)
                  {
                    v177 = &v183 - v204;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                    v140 = v204;
                    v139 = v204 + v177;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                    v139 = &v183;
                    v140 = v204;
                  }
                }

                v141 = &v140[24 * v205];
                v142 = *v139;
                *(v141 + 2) = *(v139 + 2);
                *v141 = v142;
                v143 = ++v205;
                if (Value)
                {
                  LODWORD(v183) = 3;
                  *(&v183 + 1) = ", got ";
                  *&v184 = 6;
                  v144 = &v183;
                  v145 = v204;
                  if (v143 >= v206)
                  {
                    if (v204 <= &v183 && v204 + 24 * v143 > &v183)
                    {
                      v179 = &v183 - v204;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v143 + 1, 24);
                      v145 = v204;
                      v144 = v204 + v179;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v143 + 1, 24);
                      v144 = &v183;
                      v145 = v204;
                    }
                  }

                  v146 = &v145[24 * v205];
                  v147 = *v144;
                  *(v146 + 2) = *(v144 + 2);
                  *v146 = v147;
                  ++v205;
                  if (Value)
                  {
                    v148 = &v183;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v183, *v75);
                    v149 = v204;
                    if (v205 >= v206)
                    {
                      if (v204 <= &v183 && v204 + 24 * v205 > &v183)
                      {
                        v180 = &v183 - v204;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                        v149 = v204;
                        v148 = v204 + v180;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
                        v148 = &v183;
                        v149 = v204;
                      }
                    }

                    v150 = &v149[24 * v205];
                    v151 = *v148;
                    *(v150 + 2) = *(v148 + 2);
                    *v150 = v151;
                    ++v205;
                  }
                }
              }
            }

            Results = &Value;
            sub_10006BAFC(&v183, &Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if (v213 != 1)
            {
              goto LABEL_212;
            }

            if (v212 != &v213)
            {
              free(v212);
            }

            Results = __p;
            if (__p)
            {
              v152 = v211;
              v153 = __p;
              if (v211 != __p)
              {
                do
                {
                  v152 = sub_10005BEF4(v152 - 1);
                }

                while (v152 != Results);
                v153 = __p;
              }

              v211 = Results;
              operator delete(v153);
            }

            v110 = v208;
            if (!v208)
            {
              goto LABEL_210;
            }

            v154 = v209;
            v112 = v208;
            if (v209 == v208)
            {
              goto LABEL_209;
            }

            Results = 0x1000C8077774924;
            do
            {
              v155 = *--v154;
              *v154 = 0;
              if (v155)
              {
                operator delete[]();
              }
            }

            while (v154 != v110);
            goto LABEL_208;
          }

LABEL_120:
          ++v75;
          ++v72;
        }

        while (v75 != v76);
      }

      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
    }

    else
    {
      LOWORD(v185) = 257;
      mlir::OpState::emitError(this, &v183, &Value);
      if (Value)
      {
        LODWORD(v183) = 3;
        *(&v183 + 1) = "expected ";
        *&v184 = 9;
        v89 = &v183;
        v90 = v204;
        if (v205 >= v206)
        {
          if (v204 <= &v183 && v204 + 24 * v205 > &v183)
          {
            v169 = &v183 - v204;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v90 = v204;
            v89 = v204 + v169;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
            v89 = &v183;
            v90 = v204;
          }
        }

        v91 = &v90[24 * v205];
        v92 = *v89;
        *(v91 + 2) = *(v89 + 2);
        *v91 = v92;
        v93 = ++v205;
        if (Value)
        {
          LODWORD(v183) = 5;
          *(&v183 + 1) = v73;
          v94 = &v183;
          v95 = v204;
          if (v93 >= v206)
          {
            if (v204 <= &v183 && v204 + 24 * v93 > &v183)
            {
              v170 = &v183 - v204;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v93 + 1, 24);
              v95 = v204;
              v94 = v204 + v170;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v93 + 1, 24);
              v94 = &v183;
              v95 = v204;
            }
          }

          v96 = &v95[24 * v205];
          v97 = *v94;
          *(v96 + 2) = *(v94 + 2);
          *v96 = v97;
          v98 = ++v205;
          if (Value)
          {
            LODWORD(v183) = 3;
            *(&v183 + 1) = " results, got ";
            *&v184 = 14;
            v99 = &v183;
            v100 = v204;
            if (v98 >= v206)
            {
              if (v204 <= &v183 && v204 + 24 * v98 > &v183)
              {
                v171 = &v183 - v204;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v98 + 1, 24);
                v100 = v204;
                v99 = v204 + v171;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v98 + 1, 24);
                v99 = &v183;
                v100 = v204;
              }
            }

            v101 = &v100[24 * v205];
            v102 = *v99;
            *(v101 + 2) = *(v99 + 2);
            *v101 = v102;
            v103 = ++v205;
            if (Value)
            {
              LODWORD(v183) = 5;
              *(&v183 + 1) = v74;
              v104 = &v183;
              v105 = v204;
              if (v103 >= v206)
              {
                if (v204 <= &v183 && v204 + 24 * v103 > &v183)
                {
                  v173 = &v183 - v204;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v103 + 1, 24);
                  v105 = v204;
                  v104 = v204 + v173;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v103 + 1, 24);
                  v104 = &v183;
                  v105 = v204;
                }
              }

              v106 = &v105[24 * v205];
              v107 = *v104;
              *(v106 + 2) = *(v104 + 2);
              *v106 = v107;
              ++v205;
            }
          }
        }
      }

      Results = &Value;
      sub_10006BAFC(&v183, &Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v213 == 1)
      {
        if (v212 != &v213)
        {
          free(v212);
        }

        Results = __p;
        if (__p)
        {
          v108 = v211;
          v109 = __p;
          if (v211 != __p)
          {
            do
            {
              v108 = sub_10005BEF4(v108 - 1);
            }

            while (v108 != Results);
            v109 = __p;
          }

          v211 = Results;
          operator delete(v109);
        }

        v110 = v208;
        if (v208)
        {
          v111 = v209;
          v112 = v208;
          if (v209 != v208)
          {
            Results = 0x1000C8077774924;
            do
            {
              v113 = *--v111;
              *v111 = 0;
              if (v113)
              {
                operator delete[]();
              }
            }

            while (v111 != v110);
            goto LABEL_208;
          }

LABEL_209:
          v209 = v110;
          operator delete(v112);
        }

LABEL_210:
        if (v204 != v207)
        {
          free(v204);
        }
      }
    }

LABEL_212:
    v156 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
    if (!v156)
    {
      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
    }

    if (v183)
    {
      mlir::InFlightDiagnostic::report(&v183);
    }

    if (BYTE8(v195) == 1)
    {
      sub_10005BE10(&v183 + 1);
      if (!v156)
      {
LABEL_218:
        v157 = v196;
        if (v196 == v198)
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }
    }

    else if (!v156)
    {
      goto LABEL_218;
    }

    v158 = sub_1001FC1E8(this);
    mlir::TypeRange::TypeRange(&Value, v158, v159);
    v160 = sub_1001FC230(this);
    mlir::TypeRange::TypeRange(&v183, v160, v161);
    if (sub_1001FC114(Value, v203, v183, *(&v183 + 1)))
    {
      v162 = sub_1001FC4BC(this);
      mlir::ValueRange::ValueRange(&Value, v162, v163);
      if ((*(v55 + 46) & 0x80) != 0)
      {
        mlir::ValueRange::ValueRange(&v183, *(v55 + 72), *(v55 + 68));
        if (sub_1001FC278(Value, v203, v183, *(&v183 + 1)))
        {
          goto LABEL_226;
        }
      }

      else
      {
        mlir::ValueRange::ValueRange(&v183, 0, 0);
        if (sub_1001FC278(Value, v203, v183, *(&v183 + 1)))
        {
LABEL_226:
          Results = 1;
          v157 = v196;
          if (v196 == v198)
          {
            goto LABEL_220;
          }

          goto LABEL_219;
        }
      }

      LOWORD(v185) = 257;
      mlir::OpState::emitError(this, &v183, &Value);
      sub_10008AE40(&Value, "order of token outputs does not match order of handle inputs");
    }

    else
    {
      LOWORD(v185) = 257;
      mlir::OpState::emitError(this, &v183, &Value);
      sub_10008AE40(&Value, "number of handle inputs must match number of token outputs");
    }

    Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v164);
    sub_10006296C(&Value);
    v157 = v196;
    if (v196 == v198)
    {
LABEL_220:
      v52 = v199;
      if (v199 == v201)
      {
        return Results;
      }

      goto LABEL_94;
    }

LABEL_219:
    free(v157);
    goto LABEL_220;
  }

  v29 = (v18 >> 21) & 0x7F8;
  v30 = 32 * *(v17 + 10);
  if (*(v30 + ((v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) != v30 + ((v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_66;
  }

  LOWORD(v185) = 257;
  mlir::OpState::emitError(this, &v183, &Value);
  if (Value)
  {
    LODWORD(v199) = 3;
    v200 = "non-private graphs must have a body";
    v201[0] = 35;
    v31 = &v199;
    v32 = v204;
    if (v205 >= v206)
    {
      if (v204 <= &v199 && v204 + 24 * v205 > &v199)
      {
        v168 = &v199 - v204;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
        v32 = v204;
        v31 = (v204 + v168);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v207, v205 + 1, 24);
        v31 = &v199;
        v32 = v204;
      }
    }

    v33 = &v32[24 * v205];
    v34 = *v31;
    *(v33 + 2) = v31[2];
    *v33 = v34;
    ++v205;
  }

  Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v213 != 1)
  {
    return Results;
  }

  if (v212 != &v213)
  {
    free(v212);
  }

  v35 = __p;
  if (__p)
  {
    v36 = v211;
    v37 = __p;
    if (v211 != __p)
    {
      do
      {
        v36 = sub_10005BEF4(v36 - 1);
      }

      while (v36 != v35);
      v37 = __p;
    }

    v211 = v35;
    operator delete(v37);
  }

  v13 = v208;
  if (v208)
  {
    v38 = v209;
    v15 = v208;
    if (v209 == v208)
    {
LABEL_92:
      v209 = v13;
      operator delete(v15);
      goto LABEL_93;
    }

    do
    {
      v39 = *--v38;
      *v38 = 0;
      if (v39)
      {
        operator delete[]();
      }
    }

    while (v38 != v13);
LABEL_91:
    v15 = v208;
    goto LABEL_92;
  }

LABEL_93:
  v52 = v204;
  if (v204 != v207)
  {
LABEL_94:
    free(v52);
  }

  return Results;
}

BOOL sub_1001FC114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    v10 = 0;
    if (!a4)
    {
      return v8 == v10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  for (i = 0; i != a2; ++i)
  {
    if (*(*mlir::TypeRange::dereference_iterator(a1, i) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
    {
      ++v8;
    }
  }

  v10 = 0;
  if (a4)
  {
LABEL_9:
    v11 = 0;
    do
    {
      if (*(*mlir::TypeRange::dereference_iterator(a3, v11) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        ++v10;
      }

      ++v11;
    }

    while (a4 != v11);
  }

  return v8 == v10;
}

uint64_t sub_1001FC1E8(uint64_t a1)
{
  Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getInputs(&Value);
}

uint64_t sub_1001FC230(uint64_t a1)
{
  Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getResults(&Value);
}

uint64_t sub_1001FC278(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v21 = a1;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v7 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v7;
    }

    while (v7 != *(&v22 + 1));
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v21 = a3;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  if (a4)
  {
    v8 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v8) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

      v8 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v8;
    }

    while (v8 != *(&v22 + 1));
  }

  *&v20[24] = v22;
  *&v20[8] = v21;
  v21 = v17;
  v22 = v18;
  v9 = *(&v17 + 1);
  *&v20[40] = v23;
  *v20 = v19;
  v23 = *v20;
  v24 = *&v20[16];
  v25 = *&v20[32];
  if (*(&v17 + 1) != a2)
  {
    while (v24 != a4)
    {
      v11 = mlir::ValueRange::dereference_iterator(&v21, v9);
      v12 = mlir::ValueRange::dereference_iterator(&v23 + 1, v24);
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v12);
      if (HandleForToken)
      {
        v14 = HandleForToken == v11;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return 0;
      }

      do
      {
        v15 = *(&v21 + 1) + 1;
        *(&v21 + 1) = v15;
      }

      while (v15 != *(&v22 + 1) && *(*(*(mlir::ValueRange::dereference_iterator(&v21, v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id);
      do
      {
        v16 = v24 + 1;
        *&v24 = v16;
      }

      while (v16 != v25 && *(*(*(mlir::ValueRange::dereference_iterator(&v23 + 1, v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
      v9 = *(&v21 + 1);
      if (*(&v21 + 1) == a2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1001FC4BC(uint64_t a1)
{
  v1 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  result = *(v3 + 48);
  v5 = (*(v3 + 56) - result) >> 3;
  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getInputIntents(mlir::ODIE::Compiler::CoreML::GraphOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_100005CD8(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001F8E8C(a3, a2, v4, v7);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getOutputIntents(unsigned int **this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = a2;
    v6 = sub_100005CD8(*this);
    a2 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1001F92F0(a3, a2, v4, v7);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!*a1)
  {
    if (sub_1001F1F90(0, 0, a2, a3))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = sub_10019D838(*a1);
  if (!sub_1001F1F90(v6, v7, a2, a3))
  {
    return 0;
  }

LABEL_3:
  v8 = *a1;
  v9 = *a1 + 64;
  v27 = *(v9 + 16 * ((*(*a1 + 44) >> 23) & 1) + 32);
  mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v27);
  v27 = v29;
  v28 = 0x600000000;
  v26 = *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32);
  Value = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::getValue(&v26);
  if (v11)
  {
    v12 = Value;
    v13 = 8 * v11;
    do
    {
      v26 = *v12;
      Name = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(&v26);
      v16 = mlir::StringAttr::getValue(&Name);
      v18 = v17;
      v19 = llvm::StringMapImpl::hash(v16, v17);
      Key = llvm::StringMapImpl::FindKey(a2, v16, v18, v19);
      if (Key == -1 || Key == *(a2 + 8))
      {
        v14 = v26;
        v15 = v28;
        if (v28 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v28 + 1, 8);
          v15 = v28;
        }

        *(v27 + v15) = v14;
        LODWORD(v28) = v28 + 1;
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v21 = v27;
  v22 = v28;
  Context = mlir::Attribute::getContext((v8 + 24));
  *(v9 + 16 * ((*(v8 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, v21, v22);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::readProperties(uint64_t a1, uint64_t **a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v7);
  v4 = a2[32];
  if (!v4)
  {
    operator new();
  }

  if (!sub_1001FC978(a1, a2[32]) || !sub_1001FCE24(a1, v4 + 1) || (sub_1001FD2D0(a1, v4 + 2) & 1) == 0 || !sub_1001FCE24(a1, v4 + 3))
  {
    return 0;
  }

  if (v7[1])
  {
    if ((sub_1001F2324(a1, v4 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext(a2);
    v4[4] = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
  }

  if (sub_1001FCE24(a1, v4 + 5) && sub_1001FC978(a1, v4 + 6))
  {
    return sub_100119594(a1, v4 + 7) & 1;
  }

  return 0;
}

BOOL sub_1001FC978(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 56))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (!v31)
  {
    return 1;
  }

  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
      goto LABEL_11;
    }
  }

  else
  {
    sub_1002AACEC();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ArrayAttr>(void)::Name;
      v33 = unk_1002E2E60;
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

BOOL sub_1001FCE24(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 56))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (!v31)
  {
    return 1;
  }

  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
      goto LABEL_11;
    }
  }

  else
  {
    sub_1002AAD2C();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::UnitAttr>(void)::Name;
      v33 = *algn_1002E2E78;
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

uint64_t sub_1001FD2D0(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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
    sub_1002AAD6C();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::TypeAttr>(void)::Name;
      v33 = unk_1002E2E90;
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

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verify(mlir::Operation **this)
{
  v1 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  v3 = v1[1];
  v4 = v3 ? (v3 - 8) : 0;
  if (!mlir::Block::mightHaveTerminator(v4))
  {
    return 1;
  }

  v5 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  Terminator = mlir::Block::getTerminator(v6);
  v8 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  mlir::ValueRange::ValueRange(&Context, *(v9 + 48), (*(v9 + 56) - *(v9 + 48)) >> 3);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    mlir::ValueRange::ValueRange(&v128, *(Terminator + 72), *(Terminator + 68));
    if (sub_1001FC278(Context, v132, v128, v129))
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v128, 0, 0);
    if (sub_1001FC278(Context, v132, v128, v129))
    {
LABEL_14:
      ArrayAttr = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (!ArrayAttr)
      {
        Context = mlir::Attribute::getContext((*this + 24));
        ArrayAttr = mlir::Builder::getArrayAttr(&Context, 0, 0);
      }

      Context = ArrayAttr;
      mlir::ArrayAttr::getValue(&Context);
      v12 = v11;
      v13 = *this;
      v14 = *(*this + 11);
      if ((v14 & 0x800000) != 0)
      {
        v15 = *(v13 + 17);
        v16 = *(v13 + 2 * ((v14 >> 23) & 1) + 10);
        if (v16)
        {
LABEL_19:
          Context = v16;
          mlir::ArrayAttr::getValue(&Context);
          v18 = *this;
          v19 = *(*this + 9);
          if (v12 && v12 != v15)
          {
            v130 = 257;
            mlir::OpState::emitError(this, &v128, &Context);
            if (Context)
            {
              v125 = 3;
              v126 = "expected number of argument attrs (";
              v127 = 35;
              v20 = &v125;
              v21 = v133;
              if (v134 >= v135)
              {
                if (v133 <= &v125 && v133 + 24 * v134 > &v125)
                {
                  v113 = &v125 - v133;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                  v21 = v133;
                  v20 = (v133 + v113);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                  v20 = &v125;
                  v21 = v133;
                }
              }

              v22 = &v21[24 * v134];
              v23 = *v20;
              *(v22 + 2) = *(v20 + 2);
              *v22 = v23;
              v24 = ++v134;
              if (Context)
              {
                v125 = 5;
                v126 = v12;
                v25 = &v125;
                v26 = v133;
                if (v24 >= v135)
                {
                  if (v133 <= &v125 && v133 + 24 * v24 > &v125)
                  {
                    v114 = &v125 - v133;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v24 + 1, 24);
                    v26 = v133;
                    v25 = (v133 + v114);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v24 + 1, 24);
                    v25 = &v125;
                    v26 = v133;
                  }
                }

                v27 = &v26[24 * v134];
                v28 = *v25;
                *(v27 + 2) = *(v25 + 2);
                *v27 = v28;
                v29 = ++v134;
                if (Context)
                {
                  v125 = 3;
                  v126 = ") to match number of inputs (";
                  v127 = 29;
                  v30 = &v125;
                  v31 = v133;
                  if (v29 >= v135)
                  {
                    if (v133 <= &v125 && v133 + 24 * v29 > &v125)
                    {
                      v116 = &v125 - v133;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v29 + 1, 24);
                      v31 = v133;
                      v30 = (v133 + v116);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v29 + 1, 24);
                      v30 = &v125;
                      v31 = v133;
                    }
                  }

                  v32 = &v31[24 * v134];
                  v33 = *v30;
                  *(v32 + 2) = *(v30 + 2);
                  *v32 = v33;
                  v34 = ++v134;
                  if (Context)
                  {
                    v125 = 5;
                    v126 = v15;
                    v35 = &v125;
                    v36 = v133;
                    if (v34 >= v135)
                    {
                      if (v133 <= &v125 && v133 + 24 * v34 > &v125)
                      {
                        v118 = &v125 - v133;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v34 + 1, 24);
                        v36 = v133;
                        v35 = (v133 + v118);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v34 + 1, 24);
                        v35 = &v125;
                        v36 = v133;
                      }
                    }

                    v37 = &v36[24 * v134];
                    v38 = *v35;
                    *(v37 + 2) = *(v35 + 2);
                    *v37 = v38;
                    v39 = ++v134;
                    if (Context)
                    {
                      v125 = 3;
                      v126 = ")";
                      v127 = 1;
                      v40 = &v125;
                      v41 = v133;
                      if (v39 >= v135)
                      {
                        if (v133 <= &v125 && v133 + 24 * v39 > &v125)
                        {
                          v120 = &v125 - v133;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v39 + 1, 24);
                          v41 = v133;
                          v40 = (v133 + v120);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v39 + 1, 24);
                          v40 = &v125;
                          v41 = v133;
                        }
                      }

                      v42 = &v41[24 * v134];
                      v43 = *v40;
                      *(v42 + 2) = *(v40 + 2);
                      *v42 = v43;
                      ++v134;
                    }
                  }
                }
              }
            }

            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
            v45 = result;
            if (Context)
            {
              mlir::InFlightDiagnostic::report(&Context);
              result = v45;
            }

            if (v142 != 1)
            {
              return result;
            }

            if (v141 != &v142)
            {
              free(v141);
            }

            v46 = __p;
            if (__p)
            {
              v47 = v140;
              v48 = __p;
              if (v140 != __p)
              {
                do
                {
                  v47 = sub_10005BEF4(v47 - 1);
                }

                while (v47 != v46);
                v48 = __p;
              }

              v140 = v46;
              operator delete(v48);
            }

            v49 = v137;
            result = v45;
            if (!v137)
            {
LABEL_130:
              if (v133 != v136)
              {
                free(v133);
                return v45;
              }

              return result;
            }

            v50 = v138;
            v51 = v137;
            if (v138 == v137)
            {
LABEL_129:
              v138 = v49;
              operator delete(v51);
              result = v45;
              goto LABEL_130;
            }

            do
            {
              v52 = *--v50;
              *v50 = 0;
              if (v52)
              {
                operator delete[]();
              }
            }

            while (v50 != v49);
LABEL_128:
            v51 = v137;
            goto LABEL_129;
          }

          if (v17 && v17 != v19)
          {
            v130 = 257;
            v53 = v17;
            mlir::OpState::emitError(this, &v128, &Context);
            if (Context)
            {
              v125 = 3;
              v126 = "expected number of result attrs (";
              v127 = 33;
              v54 = &v125;
              v55 = v133;
              if (v134 >= v135)
              {
                if (v133 <= &v125 && v133 + 24 * v134 > &v125)
                {
                  v115 = &v125 - v133;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                  v55 = v133;
                  v54 = (v133 + v115);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                  v54 = &v125;
                  v55 = v133;
                }
              }

              v56 = &v55[24 * v134];
              v57 = *v54;
              *(v56 + 2) = *(v54 + 2);
              *v56 = v57;
              v58 = ++v134;
              if (Context)
              {
                v125 = 5;
                v126 = v53;
                v59 = &v125;
                v60 = v133;
                if (v58 >= v135)
                {
                  if (v133 <= &v125 && v133 + 24 * v58 > &v125)
                  {
                    v117 = &v125 - v133;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v58 + 1, 24);
                    v60 = v133;
                    v59 = (v133 + v117);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v58 + 1, 24);
                    v59 = &v125;
                    v60 = v133;
                  }
                }

                v61 = &v60[24 * v134];
                v62 = *v59;
                *(v61 + 2) = *(v59 + 2);
                *v61 = v62;
                v63 = ++v134;
                if (Context)
                {
                  v125 = 3;
                  v126 = ") to match number of outputs (";
                  v127 = 30;
                  v64 = &v125;
                  v65 = v133;
                  if (v63 >= v135)
                  {
                    if (v133 <= &v125 && v133 + 24 * v63 > &v125)
                    {
                      v119 = &v125 - v133;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v63 + 1, 24);
                      v65 = v133;
                      v64 = (v133 + v119);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v63 + 1, 24);
                      v64 = &v125;
                      v65 = v133;
                    }
                  }

                  v66 = &v65[24 * v134];
                  v67 = *v64;
                  *(v66 + 2) = *(v64 + 2);
                  *v66 = v67;
                  v68 = ++v134;
                  if (Context)
                  {
                    v125 = 5;
                    v126 = v19;
                    v69 = &v125;
                    v70 = v133;
                    if (v68 >= v135)
                    {
                      if (v133 <= &v125 && v133 + 24 * v68 > &v125)
                      {
                        v122 = &v125 - v133;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v68 + 1, 24);
                        v70 = v133;
                        v69 = (v133 + v122);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v68 + 1, 24);
                        v69 = &v125;
                        v70 = v133;
                      }
                    }

                    v71 = &v70[24 * v134];
                    v72 = *v69;
                    *(v71 + 2) = *(v69 + 2);
                    *v71 = v72;
                    v73 = ++v134;
                    if (Context)
                    {
                      v125 = 3;
                      v126 = ")";
                      v127 = 1;
                      v74 = &v125;
                      v75 = v133;
                      if (v73 >= v135)
                      {
                        if (v133 <= &v125 && v133 + 24 * v73 > &v125)
                        {
                          v123 = &v125 - v133;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v73 + 1, 24);
                          v75 = v133;
                          v74 = (v133 + v123);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v73 + 1, 24);
                          v74 = &v125;
                          v75 = v133;
                        }
                      }

                      v76 = &v75[24 * v134];
                      v77 = *v74;
                      *(v76 + 2) = *(v74 + 2);
                      *v76 = v77;
                      ++v134;
                    }
                  }
                }
              }
            }

            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
            if (Context)
            {
              v78 = result;
              mlir::InFlightDiagnostic::report(&Context);
              result = v78;
            }

            if (v142 == 1)
            {
              v79 = result;
              sub_10005BE10(&v132);
              return v79;
            }

            return result;
          }

          v80 = *(v18 + 2 * ((*(v18 + 11) >> 23) & 1) + 8);
          if (!v80)
          {
            Context = mlir::Attribute::getContext((v18 + 24));
            v80 = mlir::Builder::getArrayAttr(&Context, 0, 0);
          }

          v128 = v80;
          Value = mlir::ArrayAttr::getValue(&v128);
          v82 = mlir::ArrayAttr::getValue(&v128);
          v84 = (v82 + 8 * v83);
          v85 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
          if (!v85)
          {
            Context = mlir::Attribute::getContext((*this + 24));
            v85 = mlir::Builder::getArrayAttr(&Context, 0, 0);
          }

          Context = v85;
          v86 = mlir::ArrayAttr::getValue(&Context);
          v87 = mlir::ArrayAttr::getValue(&Context);
          v89 = (v87 + 8 * v88);
          v90 = Value == v84;
          if (Value == v84 && v86 == v89)
          {
            return 1;
          }

          while (1)
          {
            while (!v90)
            {
              v124 = *Value;
              if (mlir::DictionaryAttr::contains(&v124, "coreml.intent", 0xDuLL))
              {
                goto LABEL_85;
              }

              v90 = ++Value == v84;
              if (Value == v84)
              {
                goto LABEL_74;
              }
            }

            if (v86 == v89)
            {
              v124 = 0;
              if (mlir::DictionaryAttr::contains(&v124, "coreml.intent", 0xDuLL))
              {
LABEL_85:
                v130 = 257;
                mlir::OpState::emitError(this, &v128, &Context);
                if (Context)
                {
                  v125 = 3;
                  v126 = "intents cannot be supplied on IsolatedGroupOp; intents are derived from the contained ops";
                  v127 = 89;
                  v91 = &v125;
                  v92 = v133;
                  if (v134 >= v135)
                  {
                    if (v133 <= &v125 && v133 + 24 * v134 > &v125)
                    {
                      v121 = &v125 - v133;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                      v92 = v133;
                      v91 = (v133 + v121);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
                      v91 = &v125;
                      v92 = v133;
                    }
                  }

                  v93 = &v92[24 * v134];
                  v94 = *v91;
                  *(v93 + 2) = *(v91 + 2);
                  *v93 = v94;
                  ++v134;
                }

                result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
                v95 = result;
                if (Context)
                {
                  mlir::InFlightDiagnostic::report(&Context);
                  result = v95;
                }

                if (v142)
                {
                  if (v141 != &v142)
                  {
                    free(v141);
                    result = v95;
                  }

                  v96 = __p;
                  if (__p)
                  {
                    v97 = v140;
                    v98 = __p;
                    if (v140 != __p)
                    {
                      do
                      {
                        v97 = sub_10005BEF4(v97 - 1);
                      }

                      while (v97 != v96);
                      v98 = __p;
                    }

                    v140 = v96;
                    operator delete(v98);
                    result = v95;
                  }

                  v99 = v137;
                  if (v137)
                  {
                    v100 = v138;
                    v101 = v137;
                    if (v138 != v137)
                    {
                      do
                      {
                        v102 = *--v100;
                        *v100 = 0;
                        if (v102)
                        {
                          operator delete[]();
                        }
                      }

                      while (v100 != v99);
                      v101 = v137;
                    }

                    v138 = v99;
                    operator delete(v101);
                    result = v95;
                  }

                  if (v133 != v136)
                  {
                    free(v133);
                    return v95;
                  }
                }

                return result;
              }
            }

            else
            {
              v124 = *v86;
              if (mlir::DictionaryAttr::contains(&v124, "coreml.intent", 0xDuLL))
              {
                goto LABEL_85;
              }
            }

            ++v86;
            v90 = Value == v84;
            if (Value == v84)
            {
LABEL_74:
              result = 1;
              if (v86 == v89)
              {
                return result;
              }
            }
          }
        }
      }

      else
      {
        v15 = 0;
        v16 = *(v13 + 2 * ((v14 >> 23) & 1) + 10);
        if (v16)
        {
          goto LABEL_19;
        }
      }

      Context = mlir::Attribute::getContext((v13 + 24));
      v16 = mlir::Builder::getArrayAttr(&Context, 0, 0);
      goto LABEL_19;
    }
  }

  v130 = 257;
  mlir::OpState::emitError(this, &v128, &Context);
  if (Context)
  {
    v125 = 3;
    v126 = "order of token outputs does not match order of handle inputs";
    v127 = 60;
    v103 = &v125;
    v104 = v133;
    if (v134 >= v135)
    {
      if (v133 <= &v125 && v133 + 24 * v134 > &v125)
      {
        v112 = &v125 - v133;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
        v104 = v133;
        v103 = (v133 + v112);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v136, v134 + 1, 24);
        v103 = &v125;
        v104 = v133;
      }
    }

    v105 = &v104[24 * v134];
    v106 = *v103;
    *(v105 + 2) = *(v103 + 2);
    *v105 = v106;
    ++v134;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Context);
  v45 = result;
  if (Context)
  {
    mlir::InFlightDiagnostic::report(&Context);
    result = v45;
  }

  if (v142 == 1)
  {
    if (v141 != &v142)
    {
      free(v141);
    }

    v107 = __p;
    if (__p)
    {
      v108 = v140;
      v109 = __p;
      if (v140 != __p)
      {
        do
        {
          v108 = sub_10005BEF4(v108 - 1);
        }

        while (v108 != v107);
        v109 = __p;
      }

      v140 = v107;
      operator delete(v109);
    }

    v49 = v137;
    result = v45;
    if (!v137)
    {
      goto LABEL_130;
    }

    v110 = v138;
    v51 = v137;
    if (v138 == v137)
    {
      goto LABEL_129;
    }

    do
    {
      v111 = *--v110;
      *v110 = 0;
      if (v111)
      {
        operator delete[]();
      }
    }

    while (v110 != v49);
    goto LABEL_128;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInputIntents(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  sub_1001FE998(a3, a2, v4);
}

void sub_1001FE998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v5 = *(a3 + 56);
  v6 = (v5 - v4) >> 3;
  __src = v62;
  v61 = 0x600000000;
  if (v6 < 7uLL)
  {
    if (((v5 - v4) >> 3))
    {
      bzero(v62, 8 * v6);
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v62, ((v5 - v4) >> 3), 8);
    bzero(__src, 8 * v6);
    v4 = *(a3 + 48);
    v5 = *(a3 + 56);
  }

  LODWORD(v61) = v6;
  if (v4 == v5)
  {
LABEL_62:
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v45 = 1;
    if (!v6 || &__src == a1)
    {
      goto LABEL_74;
    }

    if (__src == v62)
    {
      v48 = v6;
      if (v6 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8), (v48 = v61) != 0))
      {
        memcpy(*a1, __src, 8 * v48);
      }

      *(a1 + 8) = v6;
    }

    else
    {
      *a1 = __src;
      v46 = HIDWORD(v61);
      *(a1 + 8) = v6;
      *(a1 + 12) = v46;
      __src = v62;
      HIDWORD(v61) = 0;
    }

    LODWORD(v61) = 0;
    *(a1 + 64) = 1;
    v47 = __src;
    if (__src != v62)
    {
      goto LABEL_75;
    }

    return;
  }

  while (1)
  {
    v8 = *v4;
    v55 = 0;
    v9 = *v8;
    if (*v8)
    {
      break;
    }

LABEL_7:
    v4 += 8;
    if (v4 == v5)
    {
      LODWORD(v6) = v61;
      goto LABEL_62;
    }
  }

  while (1)
  {
    v10 = v9[2];
    if (!sub_10026BA88(v10))
    {
      goto LABEL_10;
    }

    v11 = v10 ? sub_10026BA88(v10) : 0;
    if (!v10)
    {
      goto LABEL_10;
    }

    (*v11)(&v75);
    if ((*(v10 + 46) & 0x80) != 0)
    {
      v12 = *(v10 + 72);
      v13 = *(v10 + 68);
      if (v13)
      {
        v14 = 32 * v13;
        v15 = (v12 + 32 * v13);
        while (*(v12 + 3) != v8)
        {
          v12 = (v12 + 32);
          v14 -= 32;
          if (!v14)
          {
            v12 = v15;
            break;
          }
        }
      }

      OperandNumber = mlir::OpOperand::getOperandNumber(v12);
      if (v77 != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      OperandNumber = mlir::OpOperand::getOperandNumber(0);
      if (v77 != 1)
      {
        goto LABEL_10;
      }
    }

    v17 = OperandNumber;
    if (v55)
    {
      break;
    }

    v55 = v75[OperandNumber];
    if (v75 != v76)
    {
      goto LABEL_29;
    }

LABEL_10:
    v9 = *v9;
    if (!v9)
    {
      if (v55)
      {
        *(__src + *(*v4 + 24)) = v55;
      }

      goto LABEL_7;
    }
  }

  if (v55 == v75[OperandNumber])
  {
    if (v75 == v76)
    {
      goto LABEL_10;
    }

LABEL_29:
    free(v75);
    goto LABEL_10;
  }

  v53 = "Expected operand ";
  v54 = 259;
  mlir::Operation::emitError(&v63, v10, &v53);
  if (v63)
  {
    mlir::Diagnostic::operator<<(v64, *(*(v10 + 72) + 32 * v17 + 24));
    if (v63)
    {
      LODWORD(v56) = 3;
      v57 = " to have intent ";
      v58 = 16;
      v18 = &v56;
      v19 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v56 && v65 + 24 * v66 > &v56)
        {
          v49 = &v56 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v19 = v65;
          v18 = (v65 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v18 = &v56;
          v19 = v65;
        }
      }

      v20 = &v19[24 * v66];
      v21 = *v18;
      *(v20 + 2) = v18[2];
      *v20 = v21;
      ++v66;
    }
  }

  Value = mlir::ODIE::Compiler::CoreML::IntentAttr::getValue(&v55);
  v23 = mlir::ODIE::Compiler::CoreML::stringifyIntent(Value);
  if (v63)
  {
    v59 = 261;
    v56 = v23;
    v57 = v24;
    mlir::Diagnostic::operator<<(v64, &v56);
    if (v63)
    {
      LODWORD(v56) = 3;
      v57 = " but got ";
      v58 = 9;
      v25 = &v56;
      v26 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v56 && v65 + 24 * v66 > &v56)
        {
          v50 = &v56 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v26 = v65;
          v25 = (v65 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v25 = &v56;
          v26 = v65;
        }
      }

      v27 = &v26[24 * v66];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v66;
      if (v63)
      {
        v29 = &v56;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, v75[v17]);
        v30 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v56 && v65 + 24 * v66 > &v56)
          {
            v51 = &v56 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v30 = v65;
            v29 = (v65 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v29 = &v56;
            v30 = v65;
          }
        }

        v31 = &v30[24 * v66];
        v32 = *v29;
        *(v31 + 2) = v29[2];
        *v31 = v32;
        v33 = ++v66;
        if (v63)
        {
          LODWORD(v56) = 3;
          v57 = ".";
          v58 = 1;
          v34 = &v56;
          v35 = v65;
          if (v33 >= v67)
          {
            if (v65 <= &v56 && v65 + 24 * v33 > &v56)
            {
              v52 = &v56 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v33 + 1, 24);
              v35 = v65;
              v34 = (v65 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v33 + 1, 24);
              v34 = &v56;
              v35 = v65;
            }
          }

          v36 = &v35[24 * v66];
          v37 = *v34;
          *(v36 + 2) = v34[2];
          *v36 = v37;
          ++v66;
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }
        }
      }
    }
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v72;
      v40 = __p;
      if (v72 != __p)
      {
        do
        {
          v39 = sub_10005BEF4(v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v72 = v38;
      operator delete(v40);
    }

    v41 = v69;
    if (v69)
    {
      v42 = v70;
      v43 = v69;
      if (v70 != v69)
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
        v43 = v69;
      }

      v70 = v41;
      operator delete(v43);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  if ((v77 & 1) != 0 && v75 != v76)
  {
    free(v75);
  }

  v45 = 0;
  *a1 = 0;
LABEL_74:
  *(a1 + 64) = v45;
  v47 = __src;
  if (__src != v62)
  {
LABEL_75:
    free(v47);
  }
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  sub_1002A732C(a3, a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  result = 0;
  if (sub_100119594(a1, v3 + 1))
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v5);
    if (v5[1] < 4uLL || sub_1001FC978(a1, v3) && sub_1001FC978(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void sub_1001FF324(void *a1, mlir::ArrayAttr *a2, unint64_t a3)
{
  v6 = a1 + 2;
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a3 < 7)
  {
    if (!a3)
    {
      *(a1 + 2) = 0;
      return;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, a3, 8);
    v6 = *a1;
  }

  bzero(v6, 8 * a3);
  *(a1 + 2) = a3;
  if (*(a2 + 8) == 1)
  {
    v7 = 0;
    do
    {
      v8 = *(mlir::ArrayAttr::getValue(a2) + 8 * v7);
      if (v8)
      {
        if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v8 = 0;
        }

        v10 = v8;
        if (v8)
        {
          v9 = mlir::DictionaryAttr::get(&v10, "coreml.intent", 0xDuLL);
          if (v9)
          {
            if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
            {
              *(*a1 + 8 * v7) = v9;
            }
          }
        }
      }

      ++v7;
    }

    while (a3 != v7);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *this;
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) != 0;
  __src = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  LOBYTE(v35) = v6;
  sub_1001FF324(&v37, &__src, *(v5 + 36));
  v7 = *(*this + 36);
  v8 = (*this - 16);
  if (!v7)
  {
    v8 = 0;
  }

  __src = v8;
  v35 = v7;
  mlir::ResultRange::getTypes(&__src, &v31);
  v9 = v31;
  v10 = v32;
  v11 = v33;
  v12 = v37;
  v13 = v38;
  __src = v36;
  v35 = 0x600000000;
  if (!v38 || v32 == v33)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    *(a2 + 64) = 1;
    goto LABEL_36;
  }

  v14 = v33 + ~v32;
  if (v14 >= ((v38 - 1) & 0x1FFFFFFFFFFFFFFFuLL))
  {
    v14 = (v38 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  }

  v30 = a2;
  v29 = v14 + 1;
  if (v14 < 6)
  {
    v15 = 0;
    v16 = v36;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v36, v14 + 1, 8);
    v15 = v35;
    v16 = __src;
  }

  v17 = &v16[8 * v15];
  v18 = 8 * v13 - 8;
  do
  {
    v19 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v10) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v20 = v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    if (v20)
    {
      v21 = 1;
LABEL_20:
      Context = mlir::Attribute::getContext((*this + 24));
      v22 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, v21);
      goto LABEL_21;
    }

    v22 = *v12;
    if (!*v12)
    {
      v21 = 0;
      goto LABEL_20;
    }

LABEL_21:
    *v17++ = v22;
    if (!v18)
    {
      break;
    }

    ++v12;
    v18 -= 8;
    v20 = v11 - 1 == v10++;
  }

  while (!v20);
  v24 = v35;
  *v30 = v30 + 16;
  *(v30 + 8) = 0x600000000;
  v25 = __src;
  v26 = (v24 + v29);
  LODWORD(v35) = v26;
  if (v26 && &__src != v30)
  {
    if (__src == v36)
    {
      v28 = v24 + v29;
      if (v26 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v30, (v30 + 16), v26, 8), v28 = v35, v25 = __src, v35))
      {
        memcpy(*v30, v25, 8 * v28);
        v25 = __src;
      }

      *(v30 + 8) = v26;
    }

    else
    {
      *v30 = __src;
      v27 = HIDWORD(v35);
      *(v30 + 8) = v26;
      *(v30 + 12) = v27;
      __src = v36;
      HIDWORD(v35) = 0;
      v25 = v36;
    }

    LODWORD(v35) = 0;
  }

  *(v30 + 64) = 1;
  if (v25 != v36)
  {
    free(v25);
  }

LABEL_36:
  if (v37 != &v39)
  {
    free(v37);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*(*this + 11) >> 23) & 1;
  v76 = *(*this + 2 * v3 + 10);
  v77 = v76 != 0;
  if (!v76)
  {
LABEL_4:
    v76 = *(v2 + 2 * v3 + 8);
    v77 = v76 != 0;
    if (!v76)
    {
      return 1;
    }

    mlir::ArrayAttr::getValue(&v76);
    if ((*(*this + 46) & 0x80) != 0)
    {
      if (v5 == *(*this + 17))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }

    v75 = 257;
    mlir::OpState::emitError(this, v74, v81);
    if (v81[0])
    {
      sub_1002AADF0(v81);
      mlir::ArrayAttr::getValue(&v76);
      if (!v81[0])
      {
        goto LABEL_43;
      }
    }

    else
    {
      mlir::ArrayAttr::getValue(&v76);
      if (!v81[0])
      {
        goto LABEL_43;
      }
    }

    v78 = 5;
    v79 = v39;
    v40 = &v78;
    v41 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v67 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v41 = v82;
        v40 = (v82 + v67);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v40 = &v78;
        v41 = v82;
      }
    }

    v42 = &v41[24 * v83];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    v44 = ++v83;
    if (v81[0])
    {
      v78 = 3;
      v79 = ") to match number of operands (";
      v80 = 31;
      v45 = &v78;
      v46 = v82;
      if (v44 >= v84)
      {
        if (v82 <= &v78 && v82 + 24 * v44 > &v78)
        {
          v70 = &v78 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v44 + 1, 24);
          v46 = v82;
          v45 = (v82 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v44 + 1, 24);
          v45 = &v78;
          v46 = v82;
        }
      }

      v47 = &v46[24 * v83];
      v48 = *v45;
      *(v47 + 2) = *(v45 + 2);
      *v47 = v48;
      ++v83;
    }

LABEL_43:
    if ((*(*this + 46) & 0x80) != 0)
    {
      v49 = *(*this + 17);
      if (!v81[0])
      {
        goto LABEL_49;
      }
    }

    else
    {
      v49 = 0;
      if (!v81[0])
      {
        goto LABEL_49;
      }
    }

    v78 = 5;
    v79 = v49;
    v50 = &v78;
    v51 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v68 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v51 = v82;
        v50 = (v82 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v50 = &v78;
        v51 = v82;
      }
    }

    v52 = &v51[24 * v83];
    v53 = *v50;
    *(v52 + 2) = *(v50 + 2);
    *v52 = v53;
    v54 = ++v83;
    if (v81[0])
    {
      v78 = 3;
      v79 = ")";
      v80 = 1;
      v55 = &v78;
      v56 = v82;
      if (v54 >= v84)
      {
        if (v82 <= &v78 && v82 + 24 * v54 > &v78)
        {
          v71 = &v78 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v54 + 1, 24);
          v56 = v82;
          v55 = (v82 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v54 + 1, 24);
          v55 = &v78;
          v56 = v82;
        }
      }

      v57 = &v56[24 * v83];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      ++v83;
    }

LABEL_49:
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
    if (v81[0])
    {
      mlir::InFlightDiagnostic::report(v81);
    }

    if (v91 == 1)
    {
      if (v90 != &v91)
      {
        free(v90);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v89;
        v61 = __p;
        if (v89 != __p)
        {
          do
          {
            v60 = sub_10005BEF4(v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v89 = v59;
        operator delete(v61);
      }

      v35 = v86;
      if (!v86)
      {
        goto LABEL_67;
      }

      v62 = v87;
      v37 = v86;
      if (v87 == v86)
      {
LABEL_66:
        v87 = v35;
        operator delete(v37);
LABEL_67:
        if (v82 != v85)
        {
          free(v82);
        }

        return v6;
      }

      do
      {
        v63 = *--v62;
        *v62 = 0;
        if (v63)
        {
          operator delete[]();
        }
      }

      while (v62 != v35);
LABEL_65:
      v37 = v86;
      goto LABEL_66;
    }

    return v6;
  }

  mlir::ArrayAttr::getValue(&v76);
  v2 = *this;
  if (v4 == *(*this + 9))
  {
    v3 = (*(v2 + 11) >> 23) & 1;
    goto LABEL_4;
  }

  v75 = 257;
  mlir::OpState::emitError(this, v74, v81);
  if (v81[0])
  {
    v78 = 3;
    v79 = "expected number of result attrs (";
    v80 = 33;
    v7 = &v78;
    v8 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v65 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v8 = v82;
        v7 = (v82 + v65);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v7 = &v78;
        v8 = v82;
      }
    }

    v9 = &v8[24 * v83];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v83;
  }

  mlir::ArrayAttr::getValue(&v76);
  if (v81[0])
  {
    v78 = 5;
    v79 = v11;
    v12 = &v78;
    v13 = v82;
    if (v83 >= v84)
    {
      if (v82 <= &v78 && v82 + 24 * v83 > &v78)
      {
        v66 = &v78 - v82;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v13 = v82;
        v12 = (v82 + v66);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
        v12 = &v78;
        v13 = v82;
      }
    }

    v14 = &v13[24 * v83];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    v16 = ++v83;
    if (v81[0])
    {
      v78 = 3;
      v79 = ") to match number of results (";
      v80 = 30;
      v17 = &v78;
      v18 = v82;
      if (v16 >= v84)
      {
        if (v82 <= &v78 && v82 + 24 * v16 > &v78)
        {
          v69 = &v78 - v82;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v16 + 1, 24);
          v18 = v82;
          v17 = (v82 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v16 + 1, 24);
          v17 = &v78;
          v18 = v82;
        }
      }

      v19 = &v18[24 * v83];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      v21 = ++v83;
      if (v81[0])
      {
        v22 = *(*this + 9);
        v78 = 5;
        v79 = v22;
        v23 = &v78;
        v24 = v82;
        if (v21 >= v84)
        {
          if (v82 <= &v78 && v82 + 24 * v21 > &v78)
          {
            v72 = &v78 - v82;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v21 + 1, 24);
            v24 = v82;
            v23 = (v82 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v21 + 1, 24);
            v23 = &v78;
            v24 = v82;
          }
        }

        v25 = &v24[24 * v83];
        v26 = *v23;
        *(v25 + 2) = *(v23 + 2);
        *v25 = v26;
        v27 = ++v83;
        if (v81[0])
        {
          v78 = 3;
          v79 = ")";
          v80 = 1;
          v28 = &v78;
          v29 = v82;
          if (v27 >= v84)
          {
            if (v82 <= &v78 && v82 + 24 * v27 > &v78)
            {
              v73 = &v78 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v27 + 1, 24);
              v29 = v82;
              v28 = (v82 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v27 + 1, 24);
              v28 = &v78;
              v29 = v82;
            }
          }

          v30 = &v29[24 * v83];
          v31 = *v28;
          *(v30 + 2) = *(v28 + 2);
          *v30 = v31;
          ++v83;
        }
      }
    }
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
  if (v81[0])
  {
    mlir::InFlightDiagnostic::report(v81);
  }

  if (v91 == 1)
  {
    if (v90 != &v91)
    {
      free(v90);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v89;
      v34 = __p;
      if (v89 != __p)
      {
        do
        {
          v33 = sub_10005BEF4(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v89 = v32;
      operator delete(v34);
    }

    v35 = v86;
    if (!v86)
    {
      goto LABEL_67;
    }

    v36 = v87;
    v37 = v86;
    if (v87 == v86)
    {
      goto LABEL_66;
    }

    do
    {
      v38 = *--v36;
      *v36 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v36 != v35);
    goto LABEL_65;
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  result = 0;
  if ((sub_100119594(a1, v3 + 1) & 1) != 0 && sub_100200280(a1, v3 + 3))
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v5);
    if (v5[1] < 4uLL || sub_1001FC978(a1, v3) && sub_1001FC978(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100200280(uint64_t a1, void *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  if (mlir::detail::DenseArrayAttrImpl<signed char>::classof(v31))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
      goto LABEL_14;
    }
  }

  else
  {
    sub_1002AAEEC();
    if (v36)
    {
LABEL_14:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<signed char>>(void)::Name;
      v33 = *algn_1002E2EF8;
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

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

unint64_t *sub_100200840(unint64_t *a1, void *a2)
{
  mlir::ValueRange::ValueRange(v4, *a2 + 32 * a2[1], a2[3] - a2[1]);
  mlir::TypeRange::TypeRange(a1, v4[0], v4[1]);
  return a1;
}

unint64_t *sub_1002008BC(unint64_t *a1, uint64_t *a2)
{
  NextResultAtOffset = *a2;
  v4 = a2[1];
  v5 = a2[3];
  if (v4)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
  }

  mlir::ValueRange::ValueRange(v7, NextResultAtOffset, v5 - v4);
  mlir::TypeRange::TypeRange(a1, v7[0], v7[1]);
  return a1;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verify(mlir::Operation **this)
{
  v22[0] = sub_100200BB8(this);
  v22[1] = v2;
  if (*(*mlir::TypedAttr::getType(v22) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  v18 = 257;
  mlir::OpState::emitError(this, v17, v22);
  if (v22[0])
  {
    v19 = 3;
    v21 = 45;
    v3 = &v19;
    v4 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = v23;
        v3 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v3 = &v19;
        v4 = v23;
      }
    }

    v5 = &v4[24 * v24];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v24;
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v30;
      v10 = __p;
      if (v30 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v30 = v8;
      operator delete(v10);
    }

    v11 = v27;
    if (v27)
    {
      v12 = v28;
      v13 = v27;
      if (v28 != v27)
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
        v13 = v27;
      }

      v28 = v11;
      operator delete(v13);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v7;
}

void *sub_100200BB8(uint64_t a1)
{
  result = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
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

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
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

  v47[0] = v5;
  if (v5)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(v47);
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

  v47[0] = v8;
  if (v7)
  {
    Ref = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v47);
  }

  if (*(*Ref + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = Ref;
  }

  else
  {
    v9 = 0;
  }

  v45 = v9;
  if (v9)
  {
    v46[0] = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(this, a2);
    ParentOp = *this;
    if (v46[0])
    {
      if (!*(ParentOp + 16 * ((*(ParentOp + 44) >> 23) & 1) + 72))
      {
        return mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(v46, *this);
      }

      return 1;
    }

    do
    {
      ParentOp = *(ParentOp + 16);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v22 = ParentOp;
    RootReference = mlir::SymbolRefAttr::getRootReference(&v45);
    v24 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v22, RootReference);
    if (!v24 || *(*(v24 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      v44 = 259;
      mlir::OpState::emitOpError(this, v43, v47);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v57 == 1)
      {
        if (v56 != &v57)
        {
          free(v56);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v55;
          v27 = __p;
          if (v55 != __p)
          {
            do
            {
              v26 = sub_10005BEF4(v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v55 = v25;
          operator delete(v27);
        }

        v28 = v52;
        if (!v52)
        {
          goto LABEL_74;
        }

        v29 = v53;
        v30 = v52;
        if (v53 == v52)
        {
LABEL_73:
          v53 = v28;
          operator delete(v30);
LABEL_74:
          if (v48 != v51)
          {
            free(v48);
          }

          return v11;
        }

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
LABEL_72:
        v30 = v52;
        goto LABEL_73;
      }

      return v11;
    }

    return 1;
  }

  v12 = *sub_100200BB8(this);
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_53;
    }
  }

  else
  {
    sub_1002AAC64();
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_53;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13 && v16[1])
  {
    return 1;
  }

LABEL_53:
  v44 = 257;
  mlir::OpState::emitError(this, v43, v47);
  if (v47[0])
  {
    LODWORD(v46[0]) = 3;
    v46[1] = "expected a parameter attribute if the callee is not resolved";
    v46[2] = 60;
    v32 = v46;
    v33 = v48;
    if (v49 >= v50)
    {
      if (v48 <= v46 && v48 + 24 * v49 > v46)
      {
        v42 = v46 - v48;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v33 = v48;
        v32 = (v48 + v42);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v49 + 1, 24);
        v32 = v46;
        v33 = v48;
      }
    }

    v34 = &v33[24 * v49];
    v35 = *v32;
    *(v34 + 2) = v32[2];
    *v34 = v35;
    ++v49;
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v55;
      v38 = __p;
      if (v55 != __p)
      {
        do
        {
          v37 = sub_10005BEF4(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v55 = v36;
      operator delete(v38);
    }

    v28 = v52;
    if (!v52)
    {
      goto LABEL_74;
    }

    v39 = v53;
    v30 = v52;
    if (v53 == v52)
    {
      goto LABEL_73;
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

    while (v39 != v28);
    goto LABEL_72;
  }

  return v11;
}