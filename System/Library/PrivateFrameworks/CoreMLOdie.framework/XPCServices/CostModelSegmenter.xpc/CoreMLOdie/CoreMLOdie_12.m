void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Operation *a2)
{
  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 6));
  v4 = *(a2 + 9);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v11[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, i);
      v7 = *(this + 232);
      *(this + 232) = v7 + 1;
      LODWORD(AttrDictionary) = v7;
      sub_10008FFCC(this + 856, v11, &AttrDictionary, v13);
      mlir::bytecode::detail::IRNumberingState::number(this, (*(v11[0] + 8) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) > 4)
  {
    AttrDictionary = *(a2 + 7);
    if (!mlir::DictionaryAttr::size(&AttrDictionary))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  if (mlir::DictionaryAttr::size(&AttrDictionary))
  {
LABEL_11:
    mlir::bytecode::detail::IRNumberingState::number(this, AttrDictionary);
  }

LABEL_12:
  if (mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(*(this + 117)) >= 5 && HIBYTE(*(a2 + 11)))
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v10 = *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8);
      if (v10)
      {
        mlir::bytecode::detail::IRNumberingState::number(this, v10);
      }
    }

    else
    {
      v8 = sub_10008A190(a2);
      v11[0] = a2;
      v11[1] = v8;
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(this + 117));
      v13[0] = off_1002B5AB8;
      v13[1] = this;
      v13[2] = DialectVersionMap;
      mlir::BytecodeOpInterface::writeProperties(v11, v13);
    }
  }

  mlir::bytecode::detail::IRNumberingState::number(this, *(a2 + 3));
}

unsigned int *mlir::bytecode::detail::IRNumberingState::number(unsigned int *this, mlir::Region *a2)
{
  if (*a2 != a2)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = this;
    v6 = this[232];
    v14[0] = 0;
    v7 = *(a2 + 1);
    v8 = v6;
    if (v7 != a2)
    {
      v9 = 0;
      do
      {
        if (v7)
        {
          v10 = (v7 - 8);
        }

        else
        {
          v10 = 0;
        }

        v12 = v9;
        v13 = v10;
        sub_100053E00((v5 + 208), &v13, &v12, v11);
        mlir::bytecode::detail::IRNumberingState::number(v5, v10);
        ++v14[0];
        ++v9;
        v7 = *(v7 + 1);
      }

      while (v7 != a2);
      v8 = v5[232];
    }

    v12 = v8 - v6;
    v13 = a2;
    return sub_1000907C4((v5 + 226), &v13, v14, &v12, v11);
  }

  return this;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t **a2)
{
  v50 = a2;
  v39 = a2;
  sub_100078AB0(a1, &v39, &v39 + 1, &v48);
  if ((v49 & 1) == 0)
  {
    ++*(*(v48 + 8) + 12);
    return;
  }

  *(a1 + 336) += 24;
  v4 = *(a1 + 256);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 + 3;
  if (v4)
  {
    v7 = v6 > *(a1 + 264);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v5 = sub_10003A984(a1 + 256, 24, 24, 3);
  }

  else
  {
    *(a1 + 256) = v6;
  }

  *v5 = a2 & 0xFFFFFFFFFFFFFFFBLL;
  v5[1] = &_mh_execute_header;
  v5[2] = 0;
  v47 = v5;
  *(v48 + 8) = v5;
  sub_10008F9C4(a1 + 160, &v47);
  v8 = *a2;
  v9 = (*a2)[17];
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  if (v9 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0;
  }

  *&v45 = v11;
  if (v10)
  {
    *&v51 = mlir::OpaqueAttr::getDialectNamespace(&v45);
    *&v39 = mlir::StringAttr::getValue(&v51);
    *(&v39 + 1) = v29;
    v30 = sub_1000906A0(a1 + 120, &v39);
    v31 = *v30;
    if (*v30)
    {
LABEL_36:
      v47[2] = v31;
      return;
    }

    *(a1 + 432) += 120;
    v32 = *(a1 + 352);
    if (v32 && (v31 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8, v31 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v31 + 120;
    }

    else
    {
      v37 = v30;
      v31 = sub_10003A984(a1 + 352, 120, 120, 3);
      v30 = v37;
    }

    v33 = *(a1 + 152) - 1;
    v34 = v39;
LABEL_35:
    *v31 = v34;
    *(v31 + 16) = v33;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0;
    *(v31 + 80) = 0;
    *(v31 + 64) = v31 + 80;
    *(v31 + 72) = 0;
    *(v31 + 88) = 0;
    *(v31 + 96) = 0;
    *(v31 + 104) = v31 + 120;
    *(v31 + 112) = 0;
    *v30 = v31;
    goto LABEL_36;
  }

  v12 = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v8);
  v47[2] = v12;
  v13 = *a2;
  if ((atomic_load_explicit(&qword_1002C0580, memory_order_acquire) & 1) == 0)
  {
    sub_10027968C();
  }

  v14 = v13 + 9;
  v15 = v13[12];
  if ((v15 & 2) == 0)
  {
    v14 = *v14;
  }

  if ((*(v15 & 0xFFFFFFFFFFFFFFF8))(v14, qword_1002C0578))
  {
LABEL_22:
    Context = mlir::Attribute::getContext(&v50);
    mlir::OpPrintingFlags::OpPrintingFlags(&v39);
    mlir::AsmState::AsmState(&v45, Context, &v39, 0, 0);
    DWORD2(v39) = 0;
    v43 = 0;
    v44 = 1;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    *&v39 = off_1002B46B8;
    mlir::Attribute::print(&v50, &v39, &v45, 0);
    DialectResources = mlir::AsmState::getDialectResources(&v45);
    if (*(DialectResources + 8))
    {
      v26 = *(DialectResources + 16);
      if (v26)
      {
        v27 = 48 * v26;
        v28 = *DialectResources;
        while ((*v28 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v28 += 48;
          v27 -= 48;
          if (!v27)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v28 = *DialectResources;
      }

      v35 = *DialectResources + 48 * v26;
      while (v28 != v35)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v28, *(v28 + 32), *(v28 + 40));
        do
        {
          v28 += 48;
        }

        while (v28 != v35 && (*v28 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_27:
    llvm::raw_null_ostream::~raw_null_ostream(&v39);
    mlir::AsmState::~AsmState(&v45);
    return;
  }

  AttributeWriterCallbacks = mlir::BytecodeWriterConfig::getAttributeWriterCallbacks(*(a1 + 936));
  if (!v17)
  {
LABEL_20:
    v22 = *(v47[2] + 24);
    if (v22)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v39 = off_1002B5AB8;
      *(&v39 + 1) = a1;
      v40 = DialectVersionMap;
      if ((*(*v22 + 32))(v22, v50, &v39))
      {
        return;
      }
    }

    goto LABEL_22;
  }

  v18 = AttributeWriterCallbacks;
  v19 = v50;
  v20 = 8 * v17;
  while (1)
  {
    v21 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v39 = off_1002B5AB8;
    *(&v39 + 1) = a1;
    v40 = v21;
    LOBYTE(v45) = 0;
    v46 = 0;
    if ((*(**v18 + 16))(*v18, v19, &v45, &v39))
    {
      break;
    }

    ++v18;
    v20 -= 8;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  if (v46 == 1)
  {
    v51 = v45;
    v30 = sub_1000906A0(a1 + 120, &v51);
    v31 = *v30;
    if (*v30)
    {
      goto LABEL_36;
    }

    *(a1 + 432) += 120;
    v36 = *(a1 + 352);
    if (v36 && (v31 = (v36 + 7) & 0xFFFFFFFFFFFFFFF8, v31 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v31 + 120;
    }

    else
    {
      v38 = v30;
      v31 = sub_10003A984(a1 + 352, 120, 120, 3);
      v30 = v38;
    }

    v33 = *(a1 + 152) - 1;
    v34 = v51;
    goto LABEL_35;
  }
}

{
  v48 = a2;
  v37 = a2;
  sub_100078AB0(a1 + 72, &v37, &v37 + 1, &v46);
  if ((v47 & 1) == 0)
  {
    ++*(*(v46 + 8) + 12);
    return;
  }

  *(a1 + 816) += 24;
  v4 = *(a1 + 736);
  if (v4 && (v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8), (v5 + 3) <= *(a1 + 744)))
  {
    *(a1 + 736) = v5 + 3;
  }

  else
  {
    v5 = sub_10003A984(a1 + 736, 24, 24, 3);
  }

  *v5 = a2 | 4;
  v5[1] = &_mh_execute_header;
  v5[2] = 0;
  v45 = v5;
  *(v46 + 8) = v5;
  sub_10008F9C4(a1 + 208, &v45);
  v6 = *a2;
  v7 = (*a2)[17];
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *&v43 = v9;
  if (v8)
  {
    *&v49 = mlir::OpaqueType::getDialectNamespace(&v43);
    *&v37 = mlir::StringAttr::getValue(&v49);
    *(&v37 + 1) = v27;
    v28 = sub_1000906A0(a1 + 120, &v37);
    v29 = *v28;
    if (*v28)
    {
LABEL_34:
      v45[2] = v29;
      return;
    }

    *(a1 + 432) += 120;
    v30 = *(a1 + 352);
    if (v30 && (v29 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8, v29 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v29 + 120;
    }

    else
    {
      v35 = v28;
      v29 = sub_10003A984(a1 + 352, 120, 120, 3);
      v28 = v35;
    }

    v31 = *(a1 + 152) - 1;
    v32 = v37;
LABEL_33:
    *v29 = v32;
    *(v29 + 16) = v31;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 56) = 0;
    *(v29 + 80) = 0;
    *(v29 + 64) = v29 + 80;
    *(v29 + 72) = 0;
    *(v29 + 88) = 0;
    *(v29 + 96) = 0;
    *(v29 + 104) = v29 + 120;
    *(v29 + 112) = 0;
    *v28 = v29;
    goto LABEL_34;
  }

  v10 = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, *v6);
  v45[2] = v10;
  v11 = *a2;
  if ((atomic_load_explicit(&qword_1002C0558, memory_order_acquire) & 1) == 0)
  {
    sub_10027964C();
  }

  v12 = v11 + 9;
  v13 = v11[12];
  if ((v13 & 2) == 0)
  {
    v12 = *v12;
  }

  if ((*(v13 & 0xFFFFFFFFFFFFFFF8))(v12, qword_1002C0550))
  {
LABEL_20:
    Context = mlir::Type::getContext(&v48);
    mlir::OpPrintingFlags::OpPrintingFlags(&v37);
    mlir::AsmState::AsmState(&v43, Context, &v37, 0, 0);
    DWORD2(v37) = 0;
    v41 = 0;
    v42 = 1;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    *&v37 = off_1002B46B8;
    mlir::Type::print(&v48, &v37, &v43);
    DialectResources = mlir::AsmState::getDialectResources(&v43);
    if (*(DialectResources + 8))
    {
      v24 = *(DialectResources + 16);
      if (v24)
      {
        v25 = 48 * v24;
        v26 = *DialectResources;
        while ((*v26 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v26 += 48;
          v25 -= 48;
          if (!v25)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v26 = *DialectResources;
      }

      v33 = *DialectResources + 48 * v24;
      while (v26 != v33)
      {
        mlir::bytecode::detail::IRNumberingState::number(a1, *v26, *(v26 + 32), *(v26 + 40));
        do
        {
          v26 += 48;
        }

        while (v26 != v33 && (*v26 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }

LABEL_25:
    llvm::raw_null_ostream::~raw_null_ostream(&v37);
    mlir::AsmState::~AsmState(&v43);
    return;
  }

  TypeWriterCallbacks = mlir::BytecodeWriterConfig::getTypeWriterCallbacks(*(a1 + 936));
  if (!v15)
  {
LABEL_18:
    v20 = *(v45[2] + 24);
    if (v20)
    {
      DialectVersionMap = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
      *&v37 = off_1002B5AB8;
      *(&v37 + 1) = a1;
      v38 = DialectVersionMap;
      if ((*(*v20 + 40))(v20, v48, &v37))
      {
        return;
      }
    }

    goto LABEL_20;
  }

  v16 = TypeWriterCallbacks;
  v17 = v48;
  v18 = 8 * v15;
  while (1)
  {
    v19 = mlir::BytecodeWriterConfig::getDialectVersionMap(*(a1 + 936));
    *&v37 = off_1002B5AB8;
    *(&v37 + 1) = a1;
    v38 = v19;
    LOBYTE(v43) = 0;
    v44 = 0;
    if ((*(**v16 + 16))(*v16, v17, &v43, &v37))
    {
      break;
    }

    ++v16;
    v18 -= 8;
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  if (v44 == 1)
  {
    v49 = v43;
    v28 = sub_1000906A0(a1 + 120, &v49);
    v29 = *v28;
    if (*v28)
    {
      goto LABEL_34;
    }

    *(a1 + 432) += 120;
    v34 = *(a1 + 352);
    if (v34 && (v29 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8, v29 + 120 <= *(a1 + 360)))
    {
      *(a1 + 352) = v29 + 120;
    }

    else
    {
      v36 = v28;
      v29 = sub_10003A984(a1 + 352, 120, 120, 3);
      v28 = v36;
    }

    v31 = *(a1 + 152) - 1;
    v32 = v49;
    goto LABEL_33;
  }
}

void sub_10008F9C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10002BC08();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t mlir::bytecode::detail::IRNumberingState::numberDialect(mlir::bytecode::detail::IRNumberingState *this, mlir::Dialect *a2)
{
  v14 = a2;
  v3 = sub_100087050(this + 96, &v14);
  result = *v3;
  if (!*v3)
  {
    v15 = *(v14 + 8);
    v5 = sub_1000906A0(this + 120, &v15);
    v6 = *v5;
    if (!*v5)
    {
      *(this + 54) += 120;
      v7 = *(this + 44);
      if (v7 && (v6 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v6 + 120 <= *(this + 45)))
      {
        *(this + 44) = v6 + 120;
      }

      else
      {
        v13 = v5;
        v6 = sub_10003A984(this + 352, 120, 120, 3);
        v5 = v13;
      }

      v8 = *(this + 38) - 1;
      *v6 = v15;
      *(v6 + 16) = v8;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = v6 + 80;
      *(v6 + 72) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = v6 + 120;
      *(v6 + 112) = 0;
      *v5 = v6;
    }

    *v3 = v6;
    v9 = v14;
    v10 = sub_100090E6C(v14);
    if (v10)
    {
      v10 = sub_100090E6C(v9);
    }

    *(*v3 + 24) = v10;
    v11 = v14;
    if (sub_10006575C(v14))
    {
      v12 = sub_10006575C(v11);
      result = *v3;
      *(*v3 + 32) = v12;
    }

    else
    {
      result = *v3;
      *(*v3 + 32) = 0;
    }
  }

  return result;
}

uint64_t mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *a1, mlir::Dialect *a2, void *a3, uint64_t a4)
{
  result = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, a2);
  if (a4)
  {
    v8 = result;
    v9 = 24 * a4;
    v10 = a3;
    do
    {
      result = sub_100095EE4(v8 + 40, v10, v32);
      if (v33 != 1)
      {
        break;
      }

      v12 = *(v8 + 72);
      v13 = *(v8 + 64);
      v14 = v10;
      if (v12 >= *(v8 + 76))
      {
        v23 = v13 <= v10 && v13 + 24 * v12 > v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 64, (v8 + 80), v12 + 1, 24);
        if (v23)
        {
          v14 = (a3 + *(v8 + 64) - v13);
          v13 = *(v8 + 64);
        }

        else
        {
          v13 = *(v8 + 64);
          v14 = v10;
        }
      }

      v15 = v13 + 24 * *(v8 + 72);
      v16 = *v14;
      *(v15 + 16) = v14[2];
      *v15 = v16;
      ++*(v8 + 72);
      *(a1 + 90) += 32;
      v17 = *(a1 + 80);
      if (v17 && (v18 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8, v18 + 32 <= *(a1 + 81)))
      {
        *(a1 + 80) = v18 + 32;
      }

      else
      {
        v18 = sub_10003A984(a1 + 640, 32, 32, 3);
      }

      (*(**(v8 + 32) + 40))(&v26);
      v19 = v26;
      *(v18 + 16) = v27;
      *v18 = v19;
      v27 = 0;
      v26 = 0uLL;
      *(v18 + 24) = 0;
      *(v18 + 28) = 1;
      v20 = *(v18 + 23);
      v28 = v18;
      v21 = *v18;
      if (v20 >= 0)
      {
        v21 = v18;
      }

      if (v20 < 0)
      {
        v20 = *(v18 + 8);
      }

      *&v24 = v21;
      *(&v24 + 1) = v20;
      v25 = v18;
      v30 = v24;
      v31 = 0;
      sub_100095954(v8 + 80, &v30, &v31, v32);
      if (v33 == 1)
      {
        v22 = *(v8 + 112);
        *(v32[0] + 16) = v22;
        v29 = &v25;
        *&v30 = &v24;
        if (v22 < *(v8 + 116))
        {
          v11 = *(v8 + 104) + 24 * v22;
          *v11 = v24;
          *(v11 + 16) = v25;
          ++*(v8 + 112);
        }

        else
        {
          sub_100086854(v8 + 104, &std::piecewise_construct, &v30, &v29);
        }
      }

      result = sub_100090B40(a1 + 232, v10, &v28, v32);
      v10 += 3;
      a3 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(mlir::bytecode::detail::IRNumberingState *this, mlir::Block *a2)
{
  v4 = *(a2 + 6);
  v5 = *(a2 + 7);
  while (v4 != v5)
  {
    v6 = *v4++;
    v15 = v6;
    v7 = *(this + 232);
    *(this + 232) = v7 + 1;
    v14 = v7;
    sub_10008FFCC(this + 856, &v15, &v14, v13);
    mlir::bytecode::detail::IRNumberingState::number(this, *(v15 + 32));
    mlir::bytecode::detail::IRNumberingState::number(this, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  }

  v13[0] = a2;
  v8 = sub_10003C58C(this + 880, v13);
  v9 = a2 + 32;
  v10 = *(a2 + 5);
  if (v10 != v9)
  {
    v11 = v8;
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
      mlir::bytecode::detail::IRNumberingState::number(this, ValuePtr);
      ++*v11;
      v10 = *(v10 + 8);
    }

    while (v10 != v9);
  }
}

uint64_t sub_10008FFCC@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    sub_10008A5F8(result, v5);
    sub_10007A620(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_1000906A0(uint64_t a1, __int128 *a2)
{
  v18 = *a2;
  v19[0] = 0;
  sub_100095954(a1, &v18, v19, &v16);
  v4 = v16;
  if (v17)
  {
    v5 = a1 + 24;
    v6 = *(a1 + 24);
    v14 = *a2;
    v15 = 0;
    v7 = *(a1 + 32);
    v8 = &v14;
    if (v7 >= *(a1 + 36))
    {
      if (v6 <= &v14 && v6 + 24 * v7 > &v14)
      {
        v13 = &v14 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v13[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v7 + 1, 24);
        v6 = *(a1 + 24);
        v8 = &v14;
      }
    }

    v9 = v6 + 24 * *(a1 + 32);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    v11 = *(a1 + 32);
    *(a1 + 32) = v11 + 1;
    *(v4 + 16) = v11;
  }

  else
  {
    v11 = *(v16 + 16);
  }

  return *(a1 + 24) + 24 * v11 + 16;
}

uint64_t sub_1000907C4@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(result + 16);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v7 = *result;
  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = *result + 16 * v9;
  v11 = *v10;
  if (*a2 != *v10)
  {
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
      v10 = v7 + 16 * (v18 & v8);
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v10 = v15;
    }

LABEL_5:
    v23 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v6)
    {
      v6 *= 2;
    }

    else if (v6 + ~v13 - *(result + 12) > v6 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v14 = *a4;
        *(v10 + 8) = *a3;
        *(v10 + 12) = v14;
        v7 = *result;
        v6 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a5;
    v21 = a4;
    v22 = a3;
    sub_10008D0C4(result, v6);
    sub_10003D9D4(v19, a2, &v23);
    a3 = v22;
    a4 = v21;
    result = v19;
    a5 = v20;
    v10 = v23;
    ++*(v19 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a5 = v10;
  *(a5 + 8) = v7 + 16 * v6;
  *(a5 + 16) = v12;
  return result;
}

void mlir::bytecode::detail::IRNumberingState::number(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = sub_100087050(a1 + 48, &v16);
  if (*v3)
  {
    ++*(*v3 + 20);
    return;
  }

  v4 = v3;
  if (*(v16 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    *&v17 = *(v16 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v17);
    if (ReferencedDialect)
    {
      goto LABEL_5;
    }

LABEL_7:
    *&v17 = mlir::OperationName::getDialectNamespace(&v16);
    *(&v17 + 1) = v7;
    v8 = sub_1000906A0(a1 + 120, &v17);
    v6 = *v8;
    if (!*v8)
    {
      *(a1 + 432) += 120;
      v9 = *(a1 + 352);
      if (v9 && (v6 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8, (v6 + 120) <= *(a1 + 360)))
      {
        *(a1 + 352) = v6 + 120;
      }

      else
      {
        v15 = v8;
        v6 = sub_10003A984(a1 + 352, 120, 120, 3);
        v8 = v15;
      }

      v10 = *(a1 + 152) - 1;
      *v6 = v17;
      *(v6 + 16) = v10;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = v6 + 80;
      *(v6 + 72) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = v6 + 120;
      *(v6 + 112) = 0;
      *v8 = v6;
    }

    goto LABEL_12;
  }

  ReferencedDialect = *(v16 + 24);
  if (!ReferencedDialect)
  {
    goto LABEL_7;
  }

LABEL_5:
  v6 = mlir::bytecode::detail::IRNumberingState::numberDialect(a1, ReferencedDialect);
LABEL_12:
  *(a1 + 624) += 24;
  v11 = *(a1 + 544);
  if (v11 && (v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8), (v12 + 3) <= *(a1 + 552)))
  {
    *(a1 + 544) = v12 + 3;
  }

  else
  {
    v14 = v6;
    v12 = sub_10003A984(a1 + 544, 24, 24, 3);
    v6 = v14;
  }

  v13 = v16;
  *v12 = v6;
  v12[1] = v13;
  v12[2] = &_mh_execute_header;
  *v4 = v12;
  sub_10008F9C4(a1 + 184, v4);
}

uint64_t sub_100090B40@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = (*result + 32 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & (v5 - 1);
      v8 = (v6 + 32 * v7);
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v20 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v11 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v8[3] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    sub_100087330(result, v5);
    sub_10007F30C(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v8 = v20;
    ++*(v17 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = v6 + 32 * v5;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_100090CD4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void sub_100090D6C(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    mlir::bytecode::detail::IRNumberingState::number(*(a1 + 8), a2);
  }
}

uint64_t sub_100090DC0(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 16);
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
  if (v10 == **(a1 + 16) + 8 * *(*(a1 + 16) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v10 + 8);
  }
}

uint64_t sub_100090E6C(uint64_t a1)
{
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
    sub_10027985C();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id)
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

uint64_t sub_100090F30()
{
  {
    sub_1002798B0();
  }

  return llvm::getTypeName<mlir::BytecodeDialectInterface>(void)::Name;
}

const char *sub_100090F78()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeDialectInterface]";
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

void sub_100090FF8(mlir::AsmResourceBuilder *a1)
{
  mlir::AsmResourceBuilder::~AsmResourceBuilder(a1);

  operator delete();
}

uint64_t sub_100091030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = sub_10007EDD8((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t sub_1000910D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = sub_10007EDD8((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

uint64_t sub_100091170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = *(a1 + 8);
  result = sub_10007EDD8((v4 + 80), v12);
  v6 = result == *(v4 + 80) + 24 * *(v4 + 96) || result == 0;
  v7 = (result + 16);
  if (v6)
  {
    v7 = (v4 + 112);
  }

  v8 = *(v4 + 104) + 24 * *v7;
  if (v8 != *(*(a1 + 8) + 104) + 24 * *(*(a1 + 8) + 112))
  {
    v9 = *(a1 + 16);
    v10 = (*v9)++;
    v11 = *(v8 + 16);
    *(v11 + 24) = v10;
    *(v11 + 28) = 0;
  }

  return result;
}

double sub_100091210(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 12) > *(*a1 + 12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        sub_100091538(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        sub_100091538(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        sub_100091210(a1, v19, a3 >> 1, a4, a5);
        sub_100091210(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = sub_100091814(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t sub_100091538(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(*result + 12);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (sub_100091210)();
      result = sub_100091210(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 12);
        v31 = *(*v22 + 12);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 12) > *(v14 + 12))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 12) <= *(v17 + 12))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 sub_100091814(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_i64[v10 / 8];
      if (*(*a2 + 12) > *(v12 + 12))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_u64[v14 / 2];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v29 + 12) > *(v24[v10 / 8] + 12))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10 / 8];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = a1 + v10;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(*v16 + 12) > *(v22 + 12))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = sub_100091CC4(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      sub_100091814(v33, v16, v78, a4, v30, __src, v77);
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      sub_100091814(a1 + v10, v17, v33, v34, v15, __src, v77);
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = (a6 + 16);
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        v53[-1] = result;
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = *a2;
        v58 = *(*a2 + 12);
        v59 = *(*a6 + 12);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 += 8 * v62;
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if (&a6[-a2] > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = (a2 + 16);
      v44 = (a6 + 16);
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        v44[-1] = result;
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = *v40++;
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = *(a2 - 8);
    if (*(*(v39 - 1) + 12) > *(v65 + 12))
    {
      a2 -= 8;
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    *--a3 = v65;
    v64 -= 8;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = a3 - 1;
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = (a3 - 2);
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

char *sub_100091CC4(char *__src, uint64_t a2, void *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 8 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 8, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 8) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 8;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 8, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 3;
    v16 = v6 >> 3;
    if (v5 >> 3 == v6 >> 3)
    {
      v17 = __src + 8;
      v18 = (a2 + 8);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 8;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 3;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[8 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 3;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[8 * v32];
          if (v31)
          {
            v26 = &v28[8 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

double sub_100091E80(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 20) > *(*a1 + 20))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        sub_1000921A8(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        sub_1000921A8(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 20);
          v34 = *(*v28 + 20);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        sub_100091E80(a1, v19, a3 >> 1, a4, a5);
        sub_100091E80(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = sub_100092484(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 20);
          if (v13 > *(v11 + 20))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 20));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t sub_1000921A8(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 20);
      v8 = *(*result + 20);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (sub_100091E80)();
      result = sub_100091E80(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 20);
        v31 = *(*v22 + 20);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 20) > *(v14 + 20))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 20) <= *(v17 + 20))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

__n128 sub_100092484(__n128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1->n128_i64[v10 / 8];
      if (*(*a2 + 20) > *(v12 + 20))
      {
        break;
      }

      v10 += 8;
      if (__CFADD__(v11++, 1))
      {
        return result;
      }
    }

    v14 = -v11;
    v78 = a3;
    __src = a6;
    v76 = (a1 + v10);
    v77 = a7;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        a1->n128_u64[v10 / 8] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v14 / 2;
      v24 = &a1->n128_u64[v14 / 2];
      v16 = a2;
      if (a2 != a3)
      {
        v25 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v16[v25 >> 1];
          v29 = *v27;
          v28 = v27 + 1;
          v25 += ~(v25 >> 1);
          if (*(v29 + 20) > *(v24[v10 / 8] + 20))
          {
            v16 = v28;
          }

          else
          {
            v25 = v26;
          }
        }

        while (v25);
      }

      v15 = (v16 - a2) >> 3;
      v17 = &v24[v10 / 8];
    }

    else
    {
      v15 = a5 / 2;
      v16 = (a2 + 8 * (a5 / 2));
      v17 = a2;
      if (a2 - a1 != v10)
      {
        v18 = (a2 - a1 - v10) >> 3;
        v17 = a1 + v10;
        do
        {
          v19 = v18 >> 1;
          v20 = &v17[8 * (v18 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v18 += ~(v18 >> 1);
          if (*(*v16 + 20) > *(v22 + 20))
          {
            v18 = v19;
          }

          else
          {
            v17 = v21;
          }
        }

        while (v18);
      }

      v23 = (v17 - a1 - v10) >> 3;
    }

    a4 = -(v23 + v11);
    v30 = a5 - v15;
    v31 = a5;
    v32 = v23;
    v33 = sub_100091CC4(v17, a2, v16);
    v34 = v32;
    v35 = v33;
    if (v34 + v15 >= v31 - (v34 + v15) - v11)
    {
      a6 = __src;
      v37 = v34;
      sub_100092484(v33, v16, v78, a4, v30, __src, v77);
      a7 = v77;
      a4 = v37;
      a3 = v35;
      a1 = v76;
      a5 = v15;
      a2 = v17;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      a6 = __src;
      sub_100092484(a1 + v10, v17, v33, v34, v15, __src, v77);
      a7 = v77;
      a1 = v35;
      a3 = v78;
      a5 = v30;
      a2 = v16;
      if (!v30)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v47 = a2 - a1 - 8;
      v48 = a6;
      v49 = a1;
      if (v47 < 0x18)
      {
        goto LABEL_80;
      }

      v48 = a6;
      v49 = a1;
      if ((a6 - a1) <= 0x1F)
      {
        goto LABEL_80;
      }

      v50 = (v47 >> 3) + 1;
      v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
      v48 = &a6[v51];
      v49 = (a1 + v51);
      v52 = a1 + 1;
      v53 = (a6 + 16);
      v54 = v50 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v52[-1];
        v55 = *v52;
        v53[-1] = result;
        *v53 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 4;
      }

      while (v54);
      if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_80:
        do
        {
          v56 = v49->n128_u64[0];
          v49 = (v49 + 8);
          *v48 = v56;
          v48 += 8;
        }

        while (v49 != a2);
      }

      while (a2 != a3)
      {
        v57 = *a2;
        v58 = *(*a2 + 20);
        v59 = *(*a6 + 20);
        v60 = v58 > v59;
        v61 = v58 <= v59;
        v62 = v60;
        if (!v60)
        {
          v57 = *a6;
        }

        a2 += 8 * v62;
        a6 += 8 * v61;
        a1->n128_u64[0] = v57;
        a1 = (a1 + 8);
        if (a6 == v48)
        {
          return result;
        }
      }

      memmove(a1, a6, v48 - a6);
    }

    return result;
  }

  if (a2 == a3)
  {
    return result;
  }

  v38 = a3 - a2 - 8;
  if (v38 < 0x18)
  {
    v39 = a6;
    v40 = a2;
  }

  else
  {
    v39 = a6;
    v40 = a2;
    if (&a6[-a2] > 0x1F)
    {
      v41 = (v38 >> 3) + 1;
      v42 = 8 * (v41 & 0x3FFFFFFFFFFFFFFCLL);
      v39 = &a6[v42];
      v40 = (a2 + v42);
      v43 = (a2 + 16);
      v44 = (a6 + 16);
      v45 = v41 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = v43[-1];
        v46 = *v43;
        v44[-1] = result;
        *v44 = v46;
        v43 += 2;
        v44 += 2;
        v45 -= 4;
      }

      while (v45);
      if (v41 == (v41 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    v63 = *v40++;
    *v39 = v63;
    v39 += 8;
  }

  while (v40 != a3);
LABEL_60:
  v64 = a3;
  while (a2 != a1)
  {
    v65 = *(a2 - 8);
    if (*(*(v39 - 1) + 20) > *(v65 + 20))
    {
      a2 -= 8;
    }

    else
    {
      v65 = *(v39 - 1);
      v39 -= 8;
    }

    *--a3 = v65;
    v64 -= 8;
    if (v39 == a6)
    {
      return result;
    }
  }

  v66 = v39 - a6;
  if (v39 != a6)
  {
    v67 = v66 - 8;
    if ((v66 - 8) < 0x48 || (v39 - v64) < 0x20)
    {
      v68 = v39;
LABEL_71:
      v69 = a3 - 1;
      do
      {
        v70 = *(v68 - 1);
        v68 -= 8;
        *v69-- = v70;
      }

      while (v68 != a6);
      return result;
    }

    v71 = (a3 - 2);
    v72 = (v67 >> 3) + 1;
    v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
    v68 = &v39[-v73];
    a3 = (a3 - v73);
    v74 = (v39 - 16);
    v75 = v72 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = *v74;
      v71[-1] = v74[-1];
      *v71 = result;
      v71 -= 2;
      v74 -= 2;
      v75 -= 4;
    }

    while (v75);
    if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_71;
    }
  }

  return result;
}

double sub_100092934(uint64_t a1, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      if (*(v5 + 12) > *(*a1 + 12))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = 8 * (a3 >> 1);
      v18 = a3 - (a3 >> 1);
      v19 = (v17 + a1);
      v20 = a1;
      if (a3 <= a5)
      {
        sub_100092C5C(a1, v19, a3 >> 1, a4);
        v26 = &a4[v16];
        sub_100092C5C(v20 + v17, a2, v18, v26);
        v27 = v26;
        v28 = a4;
        v29 = v20;
        v30 = &a4[a3];
        do
        {
          if (v27 == v30)
          {
            if (v28 == v26)
            {
              return v23.n128_f64[0];
            }

            v48 = &a4[v17 / 8] - v28 - 8;
            if (v48 >= 0x38)
            {
              if ((v20 - v28) >= 0x20)
              {
                v50 = v29 + 1;
                v51 = (v48 >> 3) + 1;
                v52 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                v49 = &v28[v52];
                v29 = (v29 + v52 * 8);
                v53 = (v28 + 2);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v23 = v53[-1];
                  v55 = *v53;
                  v50[-1] = v23;
                  *v50 = v55;
                  v50 += 2;
                  v53 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return v23.n128_f64[0];
                }
              }

              else
              {
                v49 = v28;
              }
            }

            else
            {
              v49 = v28;
            }

            do
            {
              v56 = *v49++;
              v29->n128_u64[0] = v56;
              v29 = (v29 + 8);
            }

            while (v49 != v26);
            return v23.n128_f64[0];
          }

          v31 = v27;
          v32 = *v27;
          v33 = *(v32 + 12);
          v34 = *(*v28 + 12);
          v35 = v33 > v34;
          v36 = v33 <= v34;
          v37 = v35;
          if (v35)
          {
            v38 = v32;
          }

          else
          {
            v38 = *v28;
          }

          v28 += v36;
          v39 = v37;
          v27 = &v31[v39];
          v29->n128_u64[0] = v38;
          v29 = (v29 + 8);
          v20 = (v20 + 8);
        }

        while (v28 != v26);
        if (v27 != v30)
        {
          v40 = v30 - v31 - v39 * 8 - 8;
          if (v40 <= 0x57)
          {
            goto LABEL_51;
          }

          if ((v20 - v31 - v39 * 8) < 0x20)
          {
            goto LABEL_51;
          }

          v41 = v29 + 1;
          v42 = (v40 >> 3) + 1;
          v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
          v27 = (v27 + v43);
          v29 = (v29 + v43);
          v44 = &v31[v39 + 2];
          v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v44[-1];
            v46 = *v44;
            v41[-1] = v23;
            *v41 = v46;
            v41 += 2;
            v44 += 2;
            v45 -= 4;
          }

          while (v45);
          if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_51:
            do
            {
              v47 = *v27++;
              v29->n128_u64[0] = v47;
              v29 = (v29 + 8);
            }

            while (v27 != v30);
          }
        }
      }

      else
      {
        sub_100092934(a1, v19, a3 >> 1, a4, a5);
        sub_100092934(v20 + v17, a2, v18, a4, a5);

        v23.n128_u64[0] = sub_100091814(v20, v20 + v17, a2, v16, v18, a4, a5).n128_u64[0];
      }
    }

    else if (a1 != a2)
    {
      v7 = (a1 + 8);
      if ((a1 + 8) != a2)
      {
        v8 = 0;
        v9 = a1;
        do
        {
          v11 = *v9;
          v9 = v7;
          v12 = *v7;
          v13 = *(v12 + 12);
          if (v13 > *(v11 + 12))
          {
            v14 = v8;
            do
            {
              *(a1 + v14 + 8) = v11;
              if (!v14)
              {
                v10 = a1;
                goto LABEL_11;
              }

              v11 = *(a1 + v14 - 8);
              v14 -= 8;
            }

            while (v13 > *(v11 + 12));
            v10 = (a1 + v14 + 8);
LABEL_11:
            *v10 = v12;
          }

          v7 = v9 + 1;
          v8 += 8;
        }

        while (v9 + 1 != a2);
      }
    }
  }

  return v23.n128_f64[0];
}

uint64_t sub_100092C5C(uint64_t result, char *a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
LABEL_8:
      *a4 = *result;
      return result;
    }

    if (a3 == 2)
    {
      v6 = *(a2 - 1);
      v4 = (a2 - 8);
      v5 = v6;
      v7 = *(v6 + 12);
      v8 = *(*result + 12);
      if (v7 <= v8)
      {
        v5 = *result;
      }

      *a4++ = v5;
      if (v7 <= v8)
      {
        result = v4;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = a3 >> 1;
      v21 = (v20 * 8 + result);
      v22 = result;
      v25 = a4;
      (sub_100092934)();
      result = sub_100092934(v21, a2, a3 - v19, &v25[v20], a3 - v19);
      v26 = v25;
      v27 = v21;
      do
      {
        if (v27 == a2)
        {
          if (v22 == v21)
          {
            return result;
          }

          v47 = &v21[-v22 - 8];
          if (v47 >= 0x38)
          {
            if (&v26[-v22] >= 0x20)
            {
              v49 = v25 + 2;
              v50 = (v47 >> 3) + 1;
              v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
              v25 = (v25 + v51);
              v48 = (v22 + v51);
              v52 = (v22 + 16);
              v53 = v50 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v54 = *v52;
                *(v49 - 1) = *(v52 - 1);
                *v49 = v54;
                v52 += 2;
                v49 += 2;
                v53 -= 4;
              }

              while (v53);
              if (v50 == (v50 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v48 = v22;
            }
          }

          else
          {
            v48 = v22;
          }

          do
          {
            v55 = *v48++;
            *v25++ = v55;
          }

          while (v48 != v21);
          return result;
        }

        v28 = v27;
        v29 = *v27;
        v30 = *(v29 + 12);
        v31 = *(*v22 + 12);
        v32 = v30 > v31;
        v33 = v30 <= v31;
        v34 = v32;
        if (v32)
        {
          v35 = v29;
        }

        else
        {
          v35 = *v22;
        }

        v36 = 8 * v34;
        v27 = &v28[v36];
        v22 += 8 * v33;
        *v25++ = v35;
        v26 += 8;
      }

      while (v22 != v21);
      if (v27 != a2)
      {
        v37 = a2 - &v28[v36] - 8;
        if (v37 < 0x58)
        {
          goto LABEL_51;
        }

        if ((v26 - v28 - v36) < 0x20)
        {
          goto LABEL_51;
        }

        v38 = 0;
        v39 = (v37 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v41 = &v25[v40];
        v27 += v40 * 8;
        v42 = &v28[v36 + 16];
        v43 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &v25[v38];
          v45 = *v42;
          *v44 = *(v42 - 1);
          *(v44 + 1) = v45;
          v42 += 32;
          v38 += 4;
          v43 -= 4;
        }

        while (v43);
        v25 = v41;
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_51:
          do
          {
            v46 = *v27;
            v27 += 8;
            *v25++ = v46;
          }

          while (v27 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      result += 8;
      *a4 = v9;
      if (result != a2)
      {
        v10 = 0;
        v11 = a4;
        v12 = a4;
        do
        {
          while (1)
          {
            v14 = *v12++;
            v13 = v14;
            if (*(*result + 12) > *(v14 + 12))
            {
              break;
            }

            *v12 = *result;
            result += 8;
            v10 += 8;
            v11 = v12;
            if (result == a2)
            {
              return result;
            }
          }

          v11[1] = v13;
          v15 = a4;
          if (v11 != a4)
          {
            v16 = v10;
            while (1)
            {
              v15 = (a4 + v16);
              v17 = *(a4 + v16 - 8);
              if (*(*result + 12) <= *(v17 + 12))
              {
                break;
              }

              *v15 = v17;
              v16 -= 8;
              if (!v16)
              {
                v15 = a4;
                break;
              }
            }
          }

          v18 = *result;
          result += 8;
          *v15 = v18;
          v10 += 8;
          v11 = v12;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void sub_100092F38(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(a1->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    sub_100092F38(a1, v31, a3, a4 >> 1, a5, a6);
    sub_100092F38(v31, a2, a3, v32, a5, a6);

    sub_1000936D0(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  sub_100093334(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  sub_100093334(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 sub_100093334(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*(v12->n128_u64[0] + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(v12->n128_u64[0] + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (sub_100092F38)();
  sub_100092F38(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(v41->n128_u64[0] + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *sub_1000936D0(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v79 = a3 - a2 - 8;
          v80 = a7;
          v81 = a2;
          if (v79 < 0x18)
          {
            goto LABEL_133;
          }

          v80 = a7;
          v81 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v82 = (v79 >> 3) + 1;
          v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
          v80 = &a7[v83];
          v81 = &a2[v83];
          v84 = (a2 + 16);
          v85 = a7 + 16;
          v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v87 = *v84;
            *(v85 - 1) = *(v84 - 1);
            *v85 = v87;
            v84 += 2;
            v85 += 2;
            v86 -= 4;
          }

          while (v86);
          if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v88 = *v81;
              v81 += 8;
              *v80 = v88;
              v80 += 8;
            }

            while (v81 != a3);
          }

          v89 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v112 = v80 - a7;
              if (v80 != a7)
              {
                v113 = v112 - 8;
                if ((v112 - 8) < 0x48 || (v80 - i) < 0x20)
                {
                  v114 = v80;
                  goto LABEL_121;
                }

                v117 = a3 - 16;
                v118 = (v113 >> 3) + 1;
                v119 = 8 * (v118 & 0x3FFFFFFFFFFFFFFCLL);
                v114 = &v80[-v119];
                a3 -= v119;
                v120 = v80 - 16;
                v121 = v118 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v122 = *v120;
                  *(v117 - 1) = *(v120 - 1);
                  *v117 = v122;
                  v117 -= 32;
                  v120 -= 32;
                  v121 -= 4;
                }

                while (v121);
                if (v118 != (v118 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v115 = a3 - 8;
                  do
                  {
                    v116 = *(v114 - 1);
                    v114 -= 8;
                    *v115 = v116;
                    v115 -= 8;
                  }

                  while (v114 != a7);
                }
              }

              return result;
            }

            v92 = a2 - 8;
            v91 = *(a2 - 1);
            v93 = *v89;
            v94 = *(*(v91 + 16) + 16);
            v95 = *(*(*(v80 - 1) + 16) + 16);
            if (v95 == *v89)
            {
              if (v94 != v93)
              {
                goto LABEL_87;
              }
            }

            else if (v94 != v93 && v94 > v95)
            {
              goto LABEL_87;
            }

            v91 = *(v80 - 1);
            v92 = a2;
            v80 -= 8;
LABEL_87:
            *(a3 - 1) = v91;
            a3 -= 8;
            a2 = v92;
            if (v80 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v97 = a2 - result - 8;
        v98 = a7;
        v99 = result;
        if (v97 < 0x18)
        {
          goto LABEL_134;
        }

        v98 = a7;
        v99 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v100 = (v97 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v98 = &a7[v101];
        v99 = &result[v101];
        v102 = (result + 16);
        v103 = a7 + 16;
        v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v102;
          *(v103 - 1) = *(v102 - 1);
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 4;
        }

        while (v104);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v106 = *v99;
            v99 += 8;
            *v98 = v106;
            v98 += 8;
          }

          while (v99 != a2);
        }

        v107 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v98 - a7);
            }

            v108 = *v107;
            v109 = *(*(*a2 + 16) + 16);
            v110 = *(*(*a7 + 16) + 16);
            if (v109 == *v107)
            {
              break;
            }

            if (v110 == v108 || v110 <= v109)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v98)
            {
              return result;
            }
          }

          if (v110 != v108)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v98)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(*(*a2 + 16) + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*(v14 + 16) + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(*(*&v33[8 * v10] + 16) + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = (v37 + 1);
              v40 = *(*(v39 + 16) + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = (v43 + 1);
              v46 = *(*(v45 + 16) + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v123 = *v22;
            v125 = v17;
            v55 = v19 - a2;
            v127 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v125;
            a3 = v127;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v123;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v126 = v17;
                v128 = a3;
                v60 = a5;
                v124 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v124;
                v17 = v126;
                a4 = v61;
                a5 = v60;
                a3 = v128;
              }

              *v22 = v59;
            }

            else
            {
              v51 = a2 - v22;
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v64[v51];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = v68 + v51;
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(*(*v19 + 16) + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = (v24 + 1);
          v20 += ~(v20 >> 1);
          if (*(*(v26 + 16) + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = (v28 + 1);
          v20 += ~(v20 >> 1);
          if (*(*(v30 + 16) + 16) != v11 && *(*(v30 + 16) + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        sub_1000936D0(v17, v22);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = v17;
    sub_1000936D0(v32, v19);
    result = v78;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void sub_100093E98(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*v6 + 16);
    v10 = *(*a1->n128_u64[0] + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*v17 + 16);
      v20 = *(*v16->n128_u64[0] + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*v22 + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*v25 + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    sub_100093E98(a1, v31, a3, a4 >> 1, a5, a6);
    sub_100093E98(v31, a2, a3, v32, a5, a6);

    sub_100094630(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  sub_100094294(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  sub_100094294(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*v44->n128_u64[0] + 16);
      v47 = *(*v39->n128_u64[0] + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 sub_100094294(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*v7 + 16);
      v10 = *(*a1->n128_u64[0] + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*v12->n128_u64[0] + 16);
      v23 = *(*v21 + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*v12->n128_u64[0] + 16);
            v27 = *(*v25 + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (sub_100093E98)();
  sub_100093E98(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*v42->n128_u64[0] + 16);
      v45 = *(*v41->n128_u64[0] + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

char *sub_100094630(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (2)
  {
    while (2)
    {
      if (a6 <= a8 || a5 <= a8)
      {
        if (a5 > a6)
        {
          if (a2 == a3)
          {
            return result;
          }

          v79 = a3 - a2 - 8;
          v80 = a7;
          v81 = a2;
          if (v79 < 0x18)
          {
            goto LABEL_133;
          }

          v80 = a7;
          v81 = a2;
          if ((a7 - a2) <= 0x1F)
          {
            goto LABEL_133;
          }

          v82 = (v79 >> 3) + 1;
          v83 = 8 * (v82 & 0x3FFFFFFFFFFFFFFCLL);
          v80 = &a7[v83];
          v81 = &a2[v83];
          v84 = (a2 + 16);
          v85 = a7 + 16;
          v86 = v82 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v87 = *v84;
            *(v85 - 1) = *(v84 - 1);
            *v85 = v87;
            v84 += 2;
            v85 += 2;
            v86 -= 4;
          }

          while (v86);
          if (v82 != (v82 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_133:
            do
            {
              v88 = *v81;
              v81 += 8;
              *v80 = v88;
              v80 += 8;
            }

            while (v81 != a3);
          }

          v89 = *(a4 + 8);
          for (i = a3; ; i -= 8)
          {
            if (a2 == result)
            {
              v112 = v80 - a7;
              if (v80 != a7)
              {
                v113 = v112 - 8;
                if ((v112 - 8) < 0x48 || (v80 - i) < 0x20)
                {
                  v114 = v80;
                  goto LABEL_121;
                }

                v117 = a3 - 16;
                v118 = (v113 >> 3) + 1;
                v119 = 8 * (v118 & 0x3FFFFFFFFFFFFFFCLL);
                v114 = &v80[-v119];
                a3 -= v119;
                v120 = v80 - 16;
                v121 = v118 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v122 = *v120;
                  *(v117 - 1) = *(v120 - 1);
                  *v117 = v122;
                  v117 -= 32;
                  v120 -= 32;
                  v121 -= 4;
                }

                while (v121);
                if (v118 != (v118 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_121:
                  v115 = a3 - 8;
                  do
                  {
                    v116 = *(v114 - 1);
                    v114 -= 8;
                    *v115 = v116;
                    v115 -= 8;
                  }

                  while (v114 != a7);
                }
              }

              return result;
            }

            v92 = a2 - 8;
            v91 = *(a2 - 1);
            v93 = *v89;
            v94 = *(*v91 + 16);
            v95 = *(**(v80 - 1) + 16);
            if (v95 == *v89)
            {
              if (v94 != v93)
              {
                goto LABEL_87;
              }
            }

            else if (v94 != v93 && v94 > v95)
            {
              goto LABEL_87;
            }

            v91 = *(v80 - 1);
            v92 = a2;
            v80 -= 8;
LABEL_87:
            *(a3 - 1) = v91;
            a3 -= 8;
            a2 = v92;
            if (v80 == a7)
            {
              return result;
            }
          }
        }

        if (result == a2)
        {
          return result;
        }

        v97 = a2 - result - 8;
        v98 = a7;
        v99 = result;
        if (v97 < 0x18)
        {
          goto LABEL_134;
        }

        v98 = a7;
        v99 = result;
        if ((a7 - result) <= 0x1F)
        {
          goto LABEL_134;
        }

        v100 = (v97 >> 3) + 1;
        v101 = 8 * (v100 & 0x3FFFFFFFFFFFFFFCLL);
        v98 = &a7[v101];
        v99 = &result[v101];
        v102 = (result + 16);
        v103 = a7 + 16;
        v104 = v100 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v105 = *v102;
          *(v103 - 1) = *(v102 - 1);
          *v103 = v105;
          v102 += 2;
          v103 += 2;
          v104 -= 4;
        }

        while (v104);
        if (v100 != (v100 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_134:
          do
          {
            v106 = *v99;
            v99 += 8;
            *v98 = v106;
            v98 += 8;
          }

          while (v99 != a2);
        }

        v107 = *(a4 + 8);
        while (1)
        {
          while (1)
          {
            if (a2 == a3)
            {

              return memmove(result, a7, v98 - a7);
            }

            v108 = *v107;
            v109 = *(**a2 + 16);
            v110 = *(**a7 + 16);
            if (v109 == *v107)
            {
              break;
            }

            if (v110 == v108 || v110 <= v109)
            {
              goto LABEL_114;
            }

LABEL_105:
            *result = *a2;
            result += 8;
            a2 += 8;
            if (a7 == v98)
            {
              return result;
            }
          }

          if (v110 != v108)
          {
            goto LABEL_105;
          }

LABEL_114:
          *result = *a7;
          result += 8;
          a7 += 8;
          if (a7 == v98)
          {
            return result;
          }
        }
      }

      if (!a5)
      {
        return result;
      }

      v9 = 0;
      v10 = 0;
      v11 = **(a4 + 8);
      v12 = *(**a2 + 16);
      while (1)
      {
        v14 = *&result[8 * v10];
        v15 = *(*v14 + 16);
        if (v12 != v11)
        {
          break;
        }

        if (v15 != v11)
        {
          goto LABEL_13;
        }

LABEL_10:
        ++v10;
        v9 -= 8;
        if (a5 == v10)
        {
          return result;
        }
      }

      v13 = v15 != v11 && v15 > v12;
      if (!v13)
      {
        goto LABEL_10;
      }

LABEL_13:
      v16 = a5 - v10;
      v17 = &result[-v9];
      if (a5 - v10 >= a6)
      {
        if (a5 - 1 == v10)
        {
          *&result[8 * v10] = *a2;
          *a2 = v14;
          return result;
        }

        v31 = v16 / 2;
        v33 = &result[8 * (v16 / 2)];
        v19 = a2;
        if (a3 != a2)
        {
          v34 = (a3 - a2) >> 3;
          v35 = *(**&v33[8 * v10] + 16);
          v19 = a2;
          if (v35 == v11)
          {
            do
            {
              v36 = v34 >> 1;
              v37 = &v19[8 * (v34 >> 1)];
              v39 = *v37;
              v38 = (v37 + 1);
              v40 = *(*v39 + 16);
              v41 = v40 != v11 || v35 == v40;
              v34 += ~v36;
              if (v41)
              {
                v34 = v36;
              }

              else
              {
                v19 = v38;
              }
            }

            while (v34);
          }

          else
          {
            do
            {
              v42 = v34 >> 1;
              v43 = &v19[8 * (v34 >> 1)];
              v45 = *v43;
              v44 = (v43 + 1);
              v46 = *(*v45 + 16);
              v48 = v46 == v11 || v35 > v46;
              v34 += ~v42;
              if (v48)
              {
                v19 = v44;
              }

              else
              {
                v34 = v42;
              }
            }

            while (v34);
          }
        }

        v22 = &v33[-v9];
        v18 = (v19 - a2) >> 3;
        v32 = v19;
        if (&v33[-v9] == a2)
        {
          goto LABEL_72;
        }

LABEL_51:
        v32 = v22;
        if (a2 != v19)
        {
          v49 = v22 + 8;
          if (v22 + 8 == a2)
          {
            v123 = *v22;
            v125 = v17;
            v55 = v19 - a2;
            v127 = a3;
            v56 = a5;
            v57 = a6;
            v58 = a4;
            memmove(v22, v22 + 8, v19 - a2);
            v17 = v125;
            a3 = v127;
            a4 = v58;
            a6 = v57;
            a5 = v56;
            v32 = &v22[v55];
            *&v22[v55] = v123;
          }

          else
          {
            v50 = a2 + 8;
            if (a2 + 8 == v19)
            {
              v59 = *(v19 - 1);
              v32 = v22 + 8;
              if (v19 - 8 != v22)
              {
                v126 = v17;
                v128 = a3;
                v60 = a5;
                v124 = a6;
                v61 = a4;
                memmove(v22 + 8, v22, v19 - 8 - v22);
                a6 = v124;
                v17 = v126;
                a4 = v61;
                a5 = v60;
                a3 = v128;
              }

              *v22 = v59;
            }

            else
            {
              v51 = a2 - v22;
              v52 = (a2 - v22) >> 3;
              v53 = (v19 - a2) >> 3;
              if (v52 == v53)
              {
                do
                {
                  v54 = *(v49 - 1);
                  *(v49 - 1) = *(v50 - 1);
                  *(v50 - 1) = v54;
                  if (v49 == a2)
                  {
                    break;
                  }

                  v49 += 8;
                  v41 = v50 == v19;
                  v50 += 8;
                }

                while (!v41);
                v32 = a2;
              }

              else
              {
                v62 = (a2 - v22) >> 3;
                do
                {
                  v63 = v62;
                  v62 = v53;
                  v53 = v63 % v53;
                }

                while (v53);
                v64 = &v22[8 * v62];
                do
                {
                  v66 = *(v64 - 1);
                  v64 -= 8;
                  v65 = v66;
                  v67 = &v64[v51];
                  v68 = v64;
                  do
                  {
                    v69 = v68;
                    v68 = v67;
                    *v69 = *v67;
                    v70 = (v19 - v67) >> 3;
                    v71 = __OFSUB__(v52, v70);
                    v72 = v52 - v70;
                    v13 = (v72 < 0) ^ v71;
                    v67 = &v22[8 * v72];
                    if (v13)
                    {
                      v67 = v68 + v51;
                    }
                  }

                  while (v67 != v64);
                  *v68 = v65;
                }

                while (v64 != v22);
                v32 = &v22[v19 - a2];
              }
            }
          }
        }

        goto LABEL_72;
      }

      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      if (v17 == a2)
      {
        v22 = &result[-v9];
        v31 = 0;
        v32 = &a2[8 * (a6 / 2)];
        goto LABEL_72;
      }

      v20 = (a2 - result + v9) >> 3;
      v21 = *(**v19 + 16);
      v22 = v17;
      if (v21 == v11)
      {
        do
        {
          v23 = v20 >> 1;
          v24 = &v22[8 * (v20 >> 1)];
          v26 = *v24;
          v25 = (v24 + 1);
          v20 += ~(v20 >> 1);
          if (*(*v26 + 16) == v11)
          {
            v22 = v25;
          }

          else
          {
            v20 = v23;
          }
        }

        while (v20);
      }

      else
      {
        do
        {
          v27 = v20 >> 1;
          v28 = &v22[8 * (v20 >> 1)];
          v30 = *v28;
          v29 = (v28 + 1);
          v20 += ~(v20 >> 1);
          if (*(*v30 + 16) != v11 && *(*v30 + 16) > v21)
          {
            v20 = v27;
          }

          else
          {
            v22 = v29;
          }
        }

        while (v20);
      }

      v31 = (v22 - v17) >> 3;
      v32 = &a2[8 * (a6 / 2)];
      if (v22 != a2)
      {
        goto LABEL_51;
      }

LABEL_72:
      v73 = a5 - v31 - v10;
      v74 = a6 - v18;
      if (v31 + v18 < a6 + a5 - (v31 + v18) - v10)
      {
        v75 = a3;
        v76 = a4;
        sub_100094630(v17, v22);
        a3 = v75;
        result = v32;
        a5 = v73;
        a6 = v74;
        a2 = v19;
        a4 = v76;
        if (!v74)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v77 = a4;
    v78 = v17;
    sub_100094630(v32, v19);
    result = v78;
    a3 = v32;
    a5 = v31;
    a6 = v18;
    a2 = v22;
    a4 = v77;
    if (v18)
    {
      continue;
    }

    return result;
  }
}

void sub_100094DF8(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-1].n128_u64[1];
    v7 = a1->n128_u64[0];
    v8 = **(a3 + 8);
    v9 = *(*(v6 + 16) + 16);
    v10 = *(*(a1->n128_u64[0] + 16) + 16);
    if (v9 == v8)
    {
      if (v10 == v8)
      {
        return;
      }
    }

    else if (v10 == v8 || v10 <= v9)
    {
      return;
    }

    a1->n128_u64[0] = v6;
    a2[-1].n128_u64[1] = v7;
    return;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return;
    }

    v11 = &a1->n128_u64[1];
    if (&a1->n128_i8[8] == a2)
    {
      return;
    }

    v12 = 0;
    v13 = **(a3 + 8);
    v14 = a1;
    while (1)
    {
      v16 = v14;
      v14 = v11;
      v18 = v16->n128_u64[0];
      v17 = v16->n128_u64[1];
      v19 = *(*(v17 + 16) + 16);
      v20 = *(*(v16->n128_u64[0] + 16) + 16);
      if (v19 == v13)
      {
        if (v20 == v13)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v21 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v21);
            v22 = *(&a1->n128_u64[-1] + v21);
            if (*(*(v22 + 16) + 16) == v13)
            {
              break;
            }

            v15->n128_u64[0] = v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        if (v20 == v13 || v20 <= v19)
        {
          goto LABEL_13;
        }

        v16->n128_u64[1] = v18;
        v24 = v12;
        v15 = a1;
        if (v16 != a1)
        {
          while (1)
          {
            v15 = (a1 + v24);
            v25 = *(&a1->n128_u64[-1] + v24);
            v26 = *(*(v25 + 16) + 16);
            if (v26 == v13 || v26 <= v19)
            {
              break;
            }

            v15->n128_u64[0] = v25;
            v24 -= 8;
            if (!v24)
            {
LABEL_11:
              v15 = a1;
              break;
            }
          }
        }
      }

      v15->n128_u64[0] = v17;
LABEL_13:
      v11 = &v14->n128_u64[1];
      v12 += 8;
      if (&v14->n128_i8[8] == a2)
      {
        return;
      }
    }
  }

  v30 = a4 >> 1;
  v31 = (a1 + 8 * (a4 >> 1));
  v32 = a4 - (a4 >> 1);
  v33 = a1;
  if (a4 > a6)
  {
    sub_100094DF8(a1, v31, a3, a4 >> 1, a5, a6);
    sub_100094DF8(v31, a2, a3, v32, a5, a6);

    sub_1000936D0(v33, v31, a2, a3, v30, v32, a5, a6);
    return;
  }

  v39 = a5;
  sub_1000951F4(a1, v31, a3, a4 >> 1, a5);
  v40 = (v39 + 8 * v30);
  sub_1000951F4(v31, a2, a3, v32, v40);
  v41 = (v39 + 8 * a4);
  v42 = *(a3 + 8);
  v43 = v33;
  v44 = v40;
  do
  {
    while (1)
    {
      if (v44 == v41)
      {
        if (v39 == v40)
        {
          return;
        }

        v53 = v40 - v39 - 8;
        if (v53 >= 0x38)
        {
          if ((v43 - v39) >= 0x20)
          {
            v55 = (v33 + 16);
            v56 = (v53 >> 3) + 1;
            v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
            v33 += v57;
            v54 = (v39 + v57);
            v58 = v39 + 1;
            v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v60 = *v58;
              v55[-1] = v58[-1];
              *v55 = v60;
              v58 += 2;
              v55 += 2;
              v59 -= 4;
            }

            while (v59);
            if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }

          else
          {
            v54 = v39;
          }
        }

        else
        {
          v54 = v39;
        }

        do
        {
          v61 = v54->n128_u64[0];
          v54 = (v54 + 8);
          *v33 = v61;
          v33 += 8;
        }

        while (v54 != v40);
        return;
      }

      v45 = *v42;
      v46 = *(*(v44->n128_u64[0] + 16) + 16);
      v47 = *(*(v39->n128_u64[0] + 16) + 16);
      if (v46 != *v42)
      {
        break;
      }

      if (v47 == v45)
      {
        goto LABEL_53;
      }

LABEL_44:
      *v33 = v44->n128_u64[0];
      v33 += 8;
      v44 = (v44 + 8);
      v43 += 8;
      if (v39 == v40)
      {
        goto LABEL_54;
      }
    }

    if (v47 != v45 && v47 > v46)
    {
      goto LABEL_44;
    }

LABEL_53:
    *v33 = v39->n128_u64[0];
    v33 += 8;
    v39 = (v39 + 8);
    v43 += 8;
  }

  while (v39 != v40);
LABEL_54:
  if (v44 == v41)
  {
    return;
  }

  v49 = v41 - v44 - 8;
  if (v49 <= 0x47 || (v43 - v44) < 0x20)
  {
    v50 = v33;
    v51 = v44;
    do
    {
LABEL_58:
      v52 = v51->n128_u64[0];
      v51 = (v51 + 8);
      *v50 = v52;
      v50 += 8;
    }

    while (v51 != v41);
    return;
  }

  v62 = 0;
  v63 = (v49 >> 3) + 1;
  v64 = 8 * (v63 & 0x3FFFFFFFFFFFFFFCLL);
  v50 = &v33[v64];
  v51 = (v44 + v64);
  v65 = v44 + 1;
  v66 = v63 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v67 = &v33[v62];
    v68 = *v65;
    *v67 = v65[-1];
    *(v67 + 1) = v68;
    v65 += 2;
    v62 += 32;
    v66 -= 4;
  }

  while (v66);
  if (v63 != (v63 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_58;
  }
}

__n128 sub_1000951F4(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0:
      return result;
    case 1:
LABEL_36:
      a5->n128_u64[0] = a1->n128_u64[0];
      return result;
    case 2:
      v7 = a2[-1].n128_u64[1];
      v5 = (a2 - 8);
      v6 = v7;
      v8 = **(a3 + 8);
      v9 = *(*(v7 + 16) + 16);
      v10 = *(*(a1->n128_u64[0] + 16) + 16);
      if (v9 == v8)
      {
        if (v10 != v8)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != v8 && v10 > v9)
      {
        goto LABEL_35;
      }

      v6 = a1->n128_u64[0];
      a1 = v5;
LABEL_35:
      a5->n128_u64[0] = v6;
      a5 = (a5 + 8);
      goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a1 == a2)
    {
      return result;
    }

    v11 = *(a3 + 8);
    v13 = a1->n128_u64[0];
    v12 = &a1->n128_i8[8];
    a5->n128_u64[0] = v13;
    if (v12 == a2)
    {
      return result;
    }

    v14 = 0;
    v15 = *v11;
    v16 = a5;
    v17 = a5;
LABEL_13:
    while (2)
    {
      v21 = *v17++;
      v20 = v21;
      v22 = *(*(v12->n128_u64[0] + 16) + 16);
      v23 = *(*(v21 + 16) + 16);
      if (v22 == v15)
      {
        if (v23 != v15)
        {
LABEL_15:
          v16->n128_u64[1] = v20;
          v18 = a5;
          if (v16 == a5)
          {
            goto LABEL_12;
          }

          v24 = v14;
          while (1)
          {
            v25 = *(&a5->n128_u64[-1] + v24);
            v26 = *(*(v12->n128_u64[0] + 16) + 16);
            v27 = *(*(v25 + 16) + 16);
            if (v26 == v15)
            {
              if (v27 == v15)
              {
                v18 = (a5 + v24);
LABEL_12:
                v19 = v12->n128_u64[0];
                v12 = (v12 + 8);
                v18->n128_u64[0] = v19;
                v14 += 8;
                v16 = v17;
                if (v12 == a2)
                {
                  return result;
                }

                goto LABEL_13;
              }
            }

            else if (v27 == v15 || v27 <= v26)
            {
              v18 = v16;
              goto LABEL_12;
            }

            v16 = (v16 - 8);
            *(a5->n128_u64 + v24) = v25;
            v24 -= 8;
            if (!v24)
            {
              v18 = a5;
              goto LABEL_12;
            }
          }
        }
      }

      else if (v23 != v15 && v23 > v22)
      {
        goto LABEL_15;
      }

      *v17 = v12->n128_u64[0];
      v12 = (v12 + 8);
      v14 += 8;
      v16 = v17;
      if (v12 == a2)
      {
        return result;
      }

      continue;
    }
  }

  v30 = a4 >> 1;
  v31 = 8 * (a4 >> 1);
  v32 = (a1 + v31);
  v33 = a1;
  v37 = a5;
  (sub_100094DF8)();
  sub_100094DF8(v32, a2, a3, a4 - v30, v37 + v31, a4 - v30);
  v39 = *(a3 + 8);
  v40 = v37;
  v41 = v33;
  v42 = v32;
  do
  {
    while (1)
    {
      if (v42 == a2)
      {
        if (v41 == v32)
        {
          return result;
        }

        v51 = &v33->n128_u64[v30] - v41 - 8;
        if (v51 >= 0x38)
        {
          if ((v40 - v41) >= 0x20)
          {
            v53 = v37 + 1;
            v54 = (v51 >> 3) + 1;
            v55 = 8 * (v54 & 0x3FFFFFFFFFFFFFFCLL);
            v37 = (v37 + v55);
            v52 = (v41 + v55);
            v56 = v41 + 1;
            v57 = v54 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              result = v56[-1];
              v58 = *v56;
              v53[-1] = result;
              *v53 = v58;
              v56 += 2;
              v53 += 2;
              v57 -= 4;
            }

            while (v57);
            if (v54 == (v54 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          else
          {
            v52 = v41;
          }
        }

        else
        {
          v52 = v41;
        }

        do
        {
          v59 = v52->n128_u64[0];
          v52 = (v52 + 8);
          v37->n128_u64[0] = v59;
          v37 = (v37 + 8);
        }

        while (v52 != v32);
        return result;
      }

      v43 = *v39;
      v44 = *(*(v42->n128_u64[0] + 16) + 16);
      v45 = *(*(v41->n128_u64[0] + 16) + 16);
      if (v44 != *v39)
      {
        break;
      }

      if (v45 == v43)
      {
        goto LABEL_48;
      }

LABEL_39:
      v37->n128_u64[0] = v42->n128_u64[0];
      v37 = (v37 + 8);
      v42 = (v42 + 8);
      v40 += 8;
      if (v41 == v32)
      {
        goto LABEL_49;
      }
    }

    if (v45 != v43 && v45 > v44)
    {
      goto LABEL_39;
    }

LABEL_48:
    v37->n128_u64[0] = v41->n128_u64[0];
    v37 = (v37 + 8);
    v41 = (v41 + 8);
    v40 += 8;
  }

  while (v41 != v32);
LABEL_49:
  if (v42 == a2)
  {
    return result;
  }

  v47 = a2 - v42 - 8;
  if (v47 < 0x48 || (v40 - v42) < 0x20)
  {
    v48 = v37;
    v49 = v42;
    do
    {
LABEL_53:
      v50 = v49->n128_u64[0];
      v49 = (v49 + 8);
      v48->n128_u64[0] = v50;
      v48 = (v48 + 8);
    }

    while (v49 != a2);
    return result;
  }

  v60 = 0;
  v61 = (v47 >> 3) + 1;
  v62 = 8 * (v61 & 0x3FFFFFFFFFFFFFFCLL);
  v48 = (v37 + v62);
  v49 = (v42 + v62);
  v63 = v42 + 1;
  v64 = v61 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v65 = &v37[v60];
    result = v63[-1];
    v66 = *v63;
    *v65 = result;
    v65[1] = v66;
    v63 += 2;
    v60 += 2;
    v64 -= 4;
  }

  while (v64);
  if (v61 != (v61 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_53;
  }

  return result;
}

double sub_100095590(uint64_t **a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v38 = a2;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0 && v4 == v5)
  {
    v13 = *(*a1 + 2);
    v14 = *(**a1 + 24 * v13 - 16);
    *(*a1 + 2) = v13 - 1;
    if ((*(v14 + 5) & 1) == 0)
    {
      *(v14 + 4) = 257;
    }
  }

  else if (!v4)
  {
    v9 = a1[1];
    v10 = *(*a1 + 2);
    if (v10 && *(**a1 + 24 * v10 - 8) == 1)
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
        v6 = *(a2 + 44);
      }

      else
      {
        Parent = 0;
      }

      if ((v6 & 0x800000) != 0)
      {
        v15 = *(a2 + 68);
        if (v15)
        {
          v16 = 0;
          v17 = *(a2 + 72);
          do
          {
            *&v35 = *(v17 + 32 * v16 + 24);
            ParentRegion = mlir::Value::getParentRegion(&v35);
            if (ParentRegion != Parent)
            {
              v19 = **a1;
              v20 = 24 * *(*a1 + 2);
              v21 = v19 + v20;
              while (v20)
              {
                v22 = *(v19 + v20 - 24);
                v23 = *(v19 + v20 - 8);
                v20 -= 24;
                if (v23 != 1 || v22 == *(ParentRegion + 2))
                {
                  v19 += v20 + 24;
                  break;
                }
              }

              while (v21 != v19)
              {
                *(v21 - 8) = *(v19 - 8);
                *(*(v21 - 16) + 4) = 256;
                v21 -= 24;
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }
      }
    }

    v9[66] += 8;
    v25 = v9[56];
    if (v25 && (v26 = (v25 + 3) & 0xFFFFFFFFFFFFFFFCLL, v26 + 8 <= v9[57]))
    {
      v9[56] = v26 + 8;
    }

    else
    {
      v26 = sub_10003A984((v9 + 56), 8, 8, 2);
    }

    v27 = a1[2];
    v28 = (*v27)++;
    *v26 = v28;
    *(v26 + 4) = 0;
    v37 = v26;
    {
      v33 = sub_1000714E0();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v33, v34);
    }

    if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      *(v37 + 4) = 257;
    }

    sub_100078AB0((v9 + 3), &v38, &v37, &v35);
    if ((*(v38 + 44) & 0x7FFFFF) != 0)
    {
      v30 = *a1;
      *&v35 = v38;
      *(&v35 + 1) = v37;
      LOBYTE(v36) = *(v37 + 5) ^ 1;
      v31 = *(v30 + 2);
      if (v31 >= *(v30 + 3))
      {
        *&result = sub_100095878(v30, &v35).n128_u64[0];
      }

      else
      {
        v32 = *v30 + 24 * v31;
        result = *&v35;
        *v32 = v35;
        *(v32 + 16) = v36;
        ++*(v30 + 2);
      }
    }
  }

  return result;
}

__n128 sub_100095878(uint64_t a1, __int128 *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = &v10;
  if (v2 >= *(a1 + 12))
  {
    if (v3 <= &v10 && v3 + 24 * v2 > &v10)
    {
      v8 = &v10 - v3;
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v2 + 1, 24);
      a1 = v9;
      v3 = *v9;
      v4 = &v8[*v9];
    }

    else
    {
      v7 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v2 + 1, 24);
      a1 = v7;
      v3 = *v7;
      v4 = &v10;
    }
  }

  v5 = (v3 + 24 * *(a1 + 8));
  result = *v4;
  v5[1].n128_u64[0] = v4[1].n128_u64[0];
  *v5 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t sub_100095954@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = sub_100095A6C(a1, a2, &v14);
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
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        *(v9 + 4) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    sub_100095CB4(a1, v12);
    result = sub_100095A6C(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_100095A6C(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_44;
  }

  v5 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    if (v9 != -2)
    {
      v21 = 0;
      v30 = 1;
      v31 = HashValue & v8;
      v13 = (v5 + 24 * (HashValue & v8));
      v32 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v21 = v13;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v8;
          v13 = (v5 + 24 * (v34 & v8));
          v32 = *v13;
        }

        while (*v13 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v13[1])
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 1;
    v18 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v19 = *v13;
    if (*v13 != -2)
    {
      while (v19 != -1)
      {
        if (v13[1])
        {
          v20 = v17 + v18;
          ++v17;
          v18 = v20 & v8;
          v13 = (v5 + 24 * (v20 & v8));
          v19 = *v13;
          if (*v13 != -2)
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

  if (v9 != -2)
  {
    v21 = 0;
    v22 = 1;
    v23 = HashValue & v8;
    v13 = (v5 + 24 * (HashValue & v8));
    v24 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 + 2 == 0;
        }

        if (v25)
        {
          v21 = v13;
        }

        v26 = v22 + v23;
        ++v22;
        v23 = v26 & v8;
        v13 = (v5 + 24 * (v26 & v8));
        v24 = *v13;
      }

      while (*v13 == -2);
LABEL_30:
      if (v24 == -1)
      {
        goto LABEL_18;
      }

      if (v10 == v13[1])
      {
        v35 = v24;
        v27 = v21;
        v28 = v22;
        v29 = memcmp(v9, v24, v10);
        v22 = v28;
        v21 = v27;
        v24 = v35;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 24 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_43;
  }

  while (v14 != -1)
  {
    if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 24 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  if (!v21)
  {
    v21 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v21;
    result = 0;
  }

LABEL_44:
  *a3 = v13;
  return result;
}

void sub_100095CB4(uint64_t a1, int a2)
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
      v24 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
      v25 = buffer;
      v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v25 = xmmword_10028F1D0;
        *(v25 + 24) = xmmword_10028F1D0;
        v25 += 3;
        v26 -= 2;
      }

      while (v26);
      if (v24 == (v24 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v27 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_10028F1D0;
      v15 = (v15 + 24);
    }

    while (v15 != v27);
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
        *v17 = xmmword_10028F1D0;
        *(v17 + 24) = xmmword_10028F1D0;
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
      *v12 = xmmword_10028F1D0;
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
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = 0;
        sub_100095A6C(a1, v22, &v28);
        v23 = v28;
        *v28 = *v22;
        *(v23 + 4) = *(v22 + 16);
        ++*(a1 + 8);
      }

      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t sub_100095EE4@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v8 = (*result + 24 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v13 = 0;
    v14 = 1;
    while (v9 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v9 == -8192;
      }

      if (v15)
      {
        v13 = v8;
      }

      v16 = v7 + v14++;
      v7 = v16 & v6;
      v8 = (v5 + 24 * (v16 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v8 = v13;
    }

LABEL_5:
    v19 = v8;
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
        v12 = *a2;
        v8[2] = a2[2];
        *v8 = v12;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a3;
    sub_100096068(result, v4);
    sub_100056CE4(v17, a2, &v19);
    result = v17;
    a3 = v18;
    v8 = v19;
    ++*(v17 + 8);
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
  *(a3 + 8) = v5 + 24 * v4;
  *(a3 + 16) = v10;
  return result;
}

void sub_100096068(uint64_t a1, int a2)
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
    if (v14 >= 0x48)
    {
      v22 = v14 / 0x18 + 1;
      v15 = &buffer->i64[3 * (v22 & 0x1FFFFFFFFFFFFFFCLL)];
      v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v24 = buffer;
      v25 = v22 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v24 = v23;
        v24[1] = xmmword_10028FC60;
        v24[4] = xmmword_10028FC60;
        v24[5] = xmmword_10028FC50;
        v24[2] = xmmword_10028FC50;
        v24[3] = v23;
        v24 += 6;
        v25 -= 4;
      }

      while (v25);
      if (v22 == (v22 & 0x1FFFFFFFFFFFFFFCLL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v26 = &buffer->i64[3 * v13];
    do
    {
      *v15 = -4096;
      v15[1] = -4096;
      v15[2] = 0;
      v15 += 3;
    }

    while (v15 != v26);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x48)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &buffer->i64[3 * (v16 & 0x1FFFFFFFFFFFFFFCLL)];
      v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v18 = buffer;
      v19 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *v18 = v17;
        v18[1] = xmmword_10028FC60;
        v18[4] = xmmword_10028FC60;
        v18[5] = xmmword_10028FC50;
        v18[2] = xmmword_10028FC50;
        v18[3] = v17;
        v18 += 6;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v20 = &buffer->i64[3 * v10];
    do
    {
      *v12 = -4096;
      v12[1] = -4096;
      v12[2] = 0;
      v12 += 3;
    }

    while (v12 != v20);
  }

LABEL_16:
  if (v3)
  {
    v21 = v4;
    do
    {
      v29 = *v21;
      if ((*v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v30 = *(a1 + 16) - 1;
        v31 = v30 & ((v29 >> 4) ^ (v29 >> 9));
        v27 = (*a1 + 24 * v31);
        v32 = *v27;
        if (v29 != *v27)
        {
          v33 = 0;
          v34 = 1;
          while (v32 != -4096)
          {
            if (v33)
            {
              v35 = 0;
            }

            else
            {
              v35 = v32 == -8192;
            }

            if (v35)
            {
              v33 = v27;
            }

            v36 = v31 + v34++;
            v31 = v36 & v30;
            v27 = (*a1 + 24 * (v36 & v30));
            v32 = *v27;
            if (v29 == *v27)
            {
              goto LABEL_26;
            }
          }

          if (v33)
          {
            v27 = v33;
          }
        }

LABEL_26:
        v28 = *v21;
        v27[2] = *(v21 + 2);
        *v27 = v28;
        ++*(a1 + 8);
      }

      v21 = (v21 + 24);
    }

    while (v21 != (v4 + 24 * v3));
  }

  llvm::deallocate_buffer(v4, (24 * v3), 8uLL);
}

BOOL mlir::BytecodeReader::Impl::read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 1176);
  v6 = *(a1 + 1184);
  v7 = *(a1 + 8);
  v134 = v5;
  v135 = v6;
  v136 = v5;
  v137 = v7;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  *&v164 = 4;
  if (v6 > 3)
  {
    v136 = v5 + 4;
  }

  else
  {
    *&v139 = v6;
    mlir::emitError(v7, &v142);
    if (v142)
    {
      sub_10009DFD4(&v142 + 8, "attempting to skip ", &v164, " bytes when only ", &v139, " remain");
    }

    sub_100062C04(&v174, &v142);
    if (v142)
    {
      mlir::InFlightDiagnostic::report(&v142);
    }

    if (v162 == 1)
    {
      if (v160 != &v162)
      {
        free(v160);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v159;
        v10 = __p;
        if (v159 != __p)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v159 = v8;
        operator delete(v10);
      }

      v11 = v156;
      if (v156)
      {
        v12 = v157;
        v13 = v156;
        if (v157 != v156)
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
          v13 = v156;
        }

        *&v157 = v11;
        operator delete(v13);
      }

      if (v144 != &v146)
      {
        free(v144);
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v174);
    if (v174)
    {
      mlir::InFlightDiagnostic::report(&v174);
    }

    if (v185[0] == 1)
    {
      if (v184 != v185)
      {
        free(v184);
      }

      v16 = v182;
      if (v182)
      {
        v17 = v183;
        v18 = v182;
        if (v183 != v182)
        {
          do
          {
            v17 = sub_100052FFC(v17 - 1);
          }

          while (v17 != v16);
          v18 = v182;
        }

        v183 = v16;
        operator delete(v18);
      }

      v19 = v180;
      if (v180)
      {
        v20 = v181;
        v21 = v180;
        if (v181 != v180)
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
          v21 = v180;
        }

        v181 = v19;
        operator delete(v21);
      }

      if (v176 != v179)
      {
        free(v176);
      }
    }

    if (!v15)
    {
      goto LABEL_128;
    }
  }

  if ((sub_10009A774(&v134, (a1 + 248)) & 1) == 0)
  {
    goto LABEL_128;
  }

  *&v164 = 6;
  v23 = *(a1 + 248);
  if (v23 < 7)
  {
    if (v23 <= 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    mlir::emitError(v137, &v142);
    if (v142)
    {
      sub_10009F41C(&v142 + 8, "bytecode version ", (a1 + 248), " is newer than the current version ", &v164);
    }

    sub_100062C04(&v174, &v142);
    if (v142)
    {
      mlir::InFlightDiagnostic::report(&v142);
    }

    if (v162 == 1)
    {
      if (v160 != &v162)
      {
        free(v160);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v159;
        v26 = __p;
        if (v159 != __p)
        {
          do
          {
            v25 = sub_100052FFC(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v159 = v24;
        operator delete(v26);
      }

      v27 = v156;
      if (v156)
      {
        v28 = v157;
        v29 = v156;
        if (v157 != v156)
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
          v29 = v156;
        }

        *&v157 = v27;
        operator delete(v29);
      }

      if (v144 != &v146)
      {
        free(v144);
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v174);
    if (v174)
    {
      mlir::InFlightDiagnostic::report(&v174);
    }

    if (v185[0] == 1)
    {
      if (v184 != v185)
      {
        free(v184);
      }

      v32 = v182;
      if (v182)
      {
        v33 = v183;
        v34 = v182;
        if (v183 != v182)
        {
          do
          {
            v33 = sub_100052FFC(v33 - 1);
          }

          while (v33 != v32);
          v34 = v182;
        }

        v183 = v32;
        operator delete(v34);
      }

      v35 = v180;
      if (v180)
      {
        v36 = v181;
        v37 = v180;
        if (v181 != v180)
        {
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
          v37 = v180;
        }

        v181 = v35;
        operator delete(v37);
      }

      if (v176 != v179)
      {
        free(v176);
      }
    }

    if (!v31)
    {
      goto LABEL_128;
    }
  }

  if ((sub_100097558(&v134, (a1 + 256)) & 1) == 0)
  {
LABEL_128:
    result = 0;
    goto LABEL_129;
  }

  v133 = **a1;
  DiagEngine = mlir::MLIRContext::getDiagEngine(v133);
  *&v142 = a1;
  v144 = &off_1002C05D0 + 2;
  v132 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v142);
  v40 = v144;
  if (v144 >= 8)
  {
    if ((v144 & 4) != 0)
    {
      if ((v144 & 2) != 0)
      {
        v41 = &v142;
      }

      else
      {
        v41 = v142;
      }

      (*((v144 & 0xFFFFFFFFFFFFFFF8) + 16))(v41);
    }

    if ((v40 & 2) == 0)
    {
      llvm::deallocate_buffer(v142, *(&v142 + 1), v143);
    }
  }

  LOBYTE(v142) = 0;
  LOBYTE(v143) = 0;
  LOBYTE(v144) = 0;
  v146 = 0;
  LOBYTE(v147) = 0;
  v149 = 0;
  LOBYTE(v150) = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  LOBYTE(v156) = 0;
  LOBYTE(v157) = 0;
  LOBYTE(__p) = 0;
  LOBYTE(v159) = 0;
  LOBYTE(v160) = 0;
  LOBYTE(v161) = 0;
  v163 = 0;
  if (v136 == v134 + v135)
  {
LABEL_130:
    v59 = 0;
LABEL_131:
    sub_100097BE4(&v139, v59);
    mlir::emitError(v137, &v174);
    if (v174)
    {
      sub_1000A70EC(&v174 + 8, "missing data for top-level section: ", &v139);
    }

    sub_100062C04(&v164, &v174);
    if (v174)
    {
      mlir::InFlightDiagnostic::report(&v174);
    }

    if (v185[0] == 1)
    {
      if (v184 != v185)
      {
        free(v184);
      }

      v60 = v182;
      if (v182)
      {
        v61 = v183;
        v62 = v182;
        if (v183 != v182)
        {
          do
          {
            v61 = sub_100052FFC(v61 - 1);
          }

          while (v61 != v60);
          v62 = v182;
        }

        v183 = v60;
        operator delete(v62);
      }

      v63 = v180;
      if (v180)
      {
        v64 = v181;
        v65 = v180;
        if (v181 != v180)
        {
          do
          {
            v66 = *--v64;
            *v64 = 0;
            if (v66)
            {
              operator delete[]();
            }
          }

          while (v64 != v63);
          v65 = v180;
        }

        v181 = v63;
        operator delete(v65);
      }

      if (v176 != v179)
      {
        free(v176);
      }
    }

    v75 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
    if (v164)
    {
      mlir::InFlightDiagnostic::report(&v164);
    }

    if (v173 == 1)
    {
      if (v172 != &v173)
      {
        free(v172);
      }

      v76 = v170;
      if (v170)
      {
        v77 = v171;
        v78 = v170;
        if (v171 != v170)
        {
          do
          {
            v77 = sub_100052FFC(v77 - 1);
          }

          while (v77 != v76);
          v78 = v170;
        }

        v171 = v76;
        operator delete(v78);
      }

      v79 = v168;
      if (v168)
      {
        v80 = v169;
        v81 = v168;
        if (v169 != v168)
        {
          do
          {
            v82 = *--v80;
            *v80 = 0;
            if (v82)
            {
              operator delete[]();
            }
          }

          while (v80 != v79);
          v81 = v168;
        }

        v169 = v79;
        operator delete(v81);
      }

      if (v166 != v167)
      {
        free(v166);
      }
    }

    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139);
    }

    goto LABEL_222;
  }

  do
  {
    LOBYTE(v138) = 0;
    v131 = 0uLL;
    if ((sub_1000978A4(&v134, &v138, &v131) & 1) == 0)
    {
      v67 = 0;
LABEL_221:
      v75 = v67;
      goto LABEL_222;
    }

    v42 = &v142 + 24 * v138;
    if (v42[16] == 1)
    {
      sub_100097BE4(&v139, v138);
      mlir::emitError(v137, &v174);
      if (v174)
      {
        sub_1000A70EC(&v174 + 8, "duplicate top-level section: ", &v139);
      }

      sub_100062C04(&v164, &v174);
      if (v174)
      {
        mlir::InFlightDiagnostic::report(&v174);
      }

      if (v185[0] == 1)
      {
        if (v184 != v185)
        {
          free(v184);
        }

        v68 = v182;
        if (v182)
        {
          v69 = v183;
          v70 = v182;
          if (v183 != v182)
          {
            do
            {
              v69 = sub_100052FFC(v69 - 1);
            }

            while (v69 != v68);
            v70 = v182;
          }

          v183 = v68;
          operator delete(v70);
        }

        v71 = v180;
        if (v180)
        {
          v72 = v181;
          v73 = v180;
          if (v181 != v180)
          {
            do
            {
              v74 = *--v72;
              *v72 = 0;
              if (v74)
              {
                operator delete[]();
              }
            }

            while (v72 != v71);
            v73 = v180;
          }

          v181 = v71;
          operator delete(v73);
        }

        if (v176 != v179)
        {
          free(v176);
        }
      }

      v67 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      v83 = v67;
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
        v67 = v83;
      }

      if (v173 == 1)
      {
        if (v172 != &v173)
        {
          free(v172);
          v67 = v83;
        }

        v84 = v170;
        if (v170)
        {
          v85 = v171;
          v86 = v170;
          if (v171 != v170)
          {
            do
            {
              v85 = sub_100052FFC(v85 - 1);
            }

            while (v85 != v84);
            v86 = v170;
          }

          v171 = v84;
          operator delete(v86);
          v67 = v83;
        }

        v87 = v168;
        if (v168)
        {
          v88 = v169;
          v89 = v168;
          if (v169 != v168)
          {
            do
            {
              v90 = *--v88;
              *v88 = 0;
              if (v90)
              {
                operator delete[]();
              }
            }

            while (v88 != v87);
            v89 = v168;
          }

          v169 = v87;
          operator delete(v89);
          v67 = v83;
        }

        if (v166 != v167)
        {
          free(v166);
          v67 = v83;
        }
      }

      if (SHIBYTE(v140) < 0)
      {
        operator delete(v139);
        v67 = v83;
      }

      goto LABEL_221;
    }

    *v42 = v131;
    v42[16] = 1;
  }

  while (v136 != v134 + v135);
  if ((v143 & 1) == 0)
  {
    goto LABEL_130;
  }

  if (v146 != 1)
  {
    v59 = 1;
    goto LABEL_131;
  }

  if (v149 != 1)
  {
    v59 = 2;
    goto LABEL_131;
  }

  if (v152 != 1)
  {
    v59 = 3;
    goto LABEL_131;
  }

  if (v154 != 1)
  {
    v59 = 4;
    goto LABEL_131;
  }

  v43 = v163;
  if ((v163 & 1) == 0 && *(a1 + 248) > 4)
  {
    v59 = 8;
    goto LABEL_131;
  }

  v44 = *(a1 + 8);
  v45 = v142;
  v139 = v142;
  v140 = v142;
  v141 = v44;
  *&v131 = 0;
  if ((sub_10009A774(&v139, &v131) & 1) == 0)
  {
    goto LABEL_326;
  }

  v46 = (a1 + 536);
  v47 = v131;
  v48 = *(a1 + 544);
  if (v131 != v48)
  {
    if (v131 >= v48)
    {
      v49 = v43;
      if (v131 > *(a1 + 548))
      {
        v50 = v131;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 536, (a1 + 552), v131, 16);
        v47 = v50;
        v48 = *(a1 + 544);
      }

      v43 = v49;
      if (v47 != v48)
      {
        v51 = v47;
        bzero((*v46 + 16 * v48), 16 * (v47 - v48));
        LODWORD(v47) = v51;
      }
    }

    LODWORD(v48) = v47;
    *(a1 + 544) = v47;
    v47 = v47;
  }

  if (!v48)
  {
    v55 = *(&v45 + 1);
LABEL_228:
    if (*(&v45 + 1) - (v139 + *(&v139 + 1)) + v140 == v55)
    {
      if (!v43)
      {
        goto LABEL_322;
      }
    }

    else
    {
      mlir::emitError(v141, &v174);
      if (v174)
      {
        LODWORD(v164) = 3;
        *(&v164 + 1) = "unexpected trailing data between the offsets for strings and their data";
        v165 = 71;
        v91 = &v164;
        v92 = v176;
        if (v177 >= v178)
        {
          if (v176 <= &v164 && v176 + 24 * v177 > &v164)
          {
            v129 = &v164 - v176;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v179, v177 + 1, 24);
            v92 = v176;
            v91 = (v176 + v129);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v179, v177 + 1, 24);
            v91 = &v164;
            v92 = v176;
          }
        }

        v93 = &v92[24 * v177];
        v94 = *v91;
        *(v93 + 2) = *(v91 + 2);
        *v93 = v94;
        ++v177;
      }

      sub_100062C04(&v164, &v174);
      if (v174)
      {
        mlir::InFlightDiagnostic::report(&v174);
      }

      if (v185[0] == 1)
      {
        if (v184 != v185)
        {
          free(v184);
        }

        v95 = v182;
        if (v182)
        {
          v96 = v183;
          v97 = v182;
          if (v183 != v182)
          {
            do
            {
              v96 = sub_100052FFC(v96 - 1);
            }

            while (v96 != v95);
            v97 = v182;
          }

          v183 = v95;
          operator delete(v97);
        }

        v98 = v180;
        if (v180)
        {
          v99 = v181;
          v100 = v180;
          if (v181 != v180)
          {
            do
            {
              v101 = *--v99;
              *v99 = 0;
              if (v101)
              {
                operator delete[]();
              }
            }

            while (v99 != v98);
            v100 = v180;
          }

          v181 = v98;
          operator delete(v100);
        }

        if (v176 != v179)
        {
          free(v176);
        }
      }

      v113 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
      }

      if (v173 == 1)
      {
        if (v172 != &v173)
        {
          free(v172);
        }

        v114 = v170;
        if (v170)
        {
          v115 = v171;
          v116 = v170;
          if (v171 != v170)
          {
            do
            {
              v115 = sub_100052FFC(v115 - 1);
            }

            while (v115 != v114);
            v116 = v170;
          }

          v171 = v114;
          operator delete(v116);
        }

        v117 = v168;
        if (v168)
        {
          v118 = v169;
          v119 = v168;
          if (v169 != v168)
          {
            do
            {
              v120 = *--v118;
              *v118 = 0;
              if (v120)
              {
                operator delete[]();
              }
            }

            while (v118 != v117);
            v119 = v168;
          }

          v169 = v117;
          operator delete(v119);
        }

        if (v166 != v167)
        {
          free(v166);
        }
      }

      if (!v113)
      {
        goto LABEL_326;
      }

LABEL_320:
      if ((v163 & 1) == 0)
      {
LABEL_322:
        if (mlir::BytecodeReader::Impl::parseDialectSection(a1, v144, v145))
        {
          v174 = v155;
          v175 = v156;
          v164 = v157;
          v165 = __p;
          if ((sub_1000987D0(a1, &v134, &v174, &v164) & 1) != 0 && sub_100099A7C(a1 + 88, *(a1 + 272), *(a1 + 280), v147, v148, v150, v151))
          {
            mlir::BytecodeReader::Impl::parseIRSection(a1);
          }
        }

        goto LABEL_326;
      }
    }

    if (!sub_100097E18((a1 + 600), *(a1 + 8), v161, v162))
    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

  v52 = 16 * v47;
  v53 = (v52 + *v46 - 8);
  v54 = -v52;
  v55 = *(&v45 + 1);
  while (1)
  {
    v138 = 0;
    if ((sub_10009A774(&v139, &v138) & 1) == 0)
    {
      break;
    }

    v56 = v55 >= v138;
    v55 -= v138;
    if (!v56)
    {
      mlir::emitError(v141, &v174);
      if (v174)
      {
        LODWORD(v164) = 3;
        *(&v164 + 1) = "string size exceeds the available data size";
        v165 = 43;
        v102 = &v164;
        v103 = v176;
        if (v177 >= v178)
        {
          if (v176 <= &v164 && v176 + 24 * v177 > &v164)
          {
            v130 = &v164 - v176;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v179, v177 + 1, 24);
            v103 = v176;
            v102 = (v176 + v130);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v179, v177 + 1, 24);
            v102 = &v164;
            v103 = v176;
          }
        }

        v104 = &v103[24 * v177];
        v105 = *v102;
        *(v104 + 2) = *(v102 + 2);
        *v104 = v105;
        ++v177;
      }

      sub_100062C04(&v164, &v174);
      if (v174)
      {
        mlir::InFlightDiagnostic::report(&v174);
      }

      if (v185[0] == 1)
      {
        if (v184 != v185)
        {
          free(v184);
        }

        v106 = v182;
        if (v182)
        {
          v107 = v183;
          v108 = v182;
          if (v183 != v182)
          {
            do
            {
              v107 = sub_100052FFC(v107 - 1);
            }

            while (v107 != v106);
            v108 = v182;
          }

          v183 = v106;
          operator delete(v108);
        }

        v109 = v180;
        if (v180)
        {
          v110 = v181;
          v111 = v180;
          if (v181 != v180)
          {
            do
            {
              v112 = *--v110;
              *v110 = 0;
              if (v112)
              {
                operator delete[]();
              }
            }

            while (v110 != v109);
            v111 = v180;
          }

          v181 = v109;
          operator delete(v111);
        }

        if (v176 != v179)
        {
          free(v176);
        }
      }

      v121 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
      }

      if (v173 == 1)
      {
        if (v172 != &v173)
        {
          free(v172);
        }

        v122 = v170;
        if (v170)
        {
          v123 = v171;
          v124 = v170;
          if (v171 != v170)
          {
            do
            {
              v123 = sub_100052FFC(v123 - 1);
            }

            while (v123 != v122);
            v124 = v170;
          }

          v171 = v122;
          operator delete(v124);
        }

        v125 = v168;
        if (v168)
        {
          v126 = v169;
          v127 = v168;
          if (v169 != v168)
          {
            do
            {
              v128 = *--v126;
              *v126 = 0;
              if (v128)
              {
                operator delete[]();
              }
            }

            while (v126 != v125);
            v127 = v168;
          }

          v169 = v125;
          operator delete(v127);
        }

        if (v166 != v167)
        {
          free(v166);
        }
      }

      if (!v121)
      {
        break;
      }

      goto LABEL_320;
    }

    v57 = v138 - 1;
    *(v53 - 1) = v45 + v55;
    *v53 = v57;
    v53 -= 2;
    v54 += 16;
    if (!v54)
    {
      goto LABEL_228;
    }
  }

LABEL_326:
  v75 = 0;
LABEL_222:
  mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v132);
  result = v75;
LABEL_129:
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_100097558(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = memchr(v4, 0, *a1 + a1[1] - v4);
  if (v5)
  {
    *a2 = v4;
    a2[1] = v5 - v4;
    a1[2] = v5 + 1;
    return 1;
  }

  else
  {
    mlir::emitError(a1[3], v36);
    if (v36[0])
    {
      LODWORD(v27[0]) = 3;
      v27[1] = "malformed null-terminated string, no null character found";
      v27[2] = 57;
      v7 = v27;
      v8 = v37;
      if (v38 >= v39)
      {
        if (v37 <= v27 && v37 + 24 * v38 > v27)
        {
          v26 = v27 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v8 = v37;
          v7 = v37 + v26;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v7 = v27;
          v8 = v37;
        }
      }

      v9 = &v8[24 * v38];
      v10 = *v7;
      *(v9 + 2) = *(v7 + 2);
      *v9 = v10;
      ++v38;
    }

    sub_100062C04(v27, v36);
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

      v11 = __p;
      if (__p)
      {
        v12 = v44;
        v13 = __p;
        if (v44 != __p)
        {
          do
          {
            v12 = sub_100052FFC(v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v44 = v11;
        operator delete(v13);
      }

      v14 = v41;
      if (v41)
      {
        v15 = v42;
        v16 = v41;
        if (v42 != v41)
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
          v16 = v41;
        }

        v42 = v14;
        operator delete(v16);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }

    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v18 = v32;
      if (v32)
      {
        v19 = v33;
        v20 = v32;
        if (v33 != v32)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = v32;
        }

        v33 = v18;
        operator delete(v20);
      }

      v21 = v30;
      if (v30)
      {
        v22 = v31;
        v23 = v30;
        if (v31 != v30)
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
          v23 = v30;
        }

        v31 = v21;
        operator delete(v23);
      }

      if (v28 != &v29)
      {
        free(v28);
      }
    }
  }

  return v6;
}

uint64_t sub_1000978A4(void *a1, _BYTE *a2, void *a3)
{
  v27 = 0;
  if ((sub_10009E478(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v26 = 0;
  if ((sub_10009A774(a1, &v26) & 1) == 0)
  {
    return 0;
  }

  v6 = v27;
  v7 = v27 & 0x7F;
  *a2 = v27 & 0x7F;
  if (v7 >= 9)
  {
    v25 = v7;
    mlir::emitError(a1[3], &v37);
    if (v37)
    {
      sub_10009EEDC(&v38, "invalid section ID: ", &v25);
    }

    sub_100062C04(v28, &v37);
    if (v37)
    {
      mlir::InFlightDiagnostic::report(&v37);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v8 = v43;
      if (v43)
      {
        v9 = v44;
        v10 = v43;
        if (v44 != v43)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = v43;
        }

        v44 = v8;
        operator delete(v10);
      }

      v11 = v41;
      if (v41)
      {
        v12 = v42;
        v13 = v41;
        if (v42 != v41)
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
          v13 = v41;
        }

        v42 = v11;
        operator delete(v13);
      }

      if (v39 != &v40)
      {
        free(v39);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v17 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v17;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v17;
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
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = v33;
        }

        v34 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v31;
      if (v31)
      {
        v22 = v32;
        v23 = v31;
        if (v32 != v31)
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
          v23 = v31;
        }

        v32 = v21;
        operator delete(v23);
        result = v17;
      }

      if (v29 != &v30)
      {
        free(v29);
        return v17;
      }
    }

    return result;
  }

  if (v6 < 0)
  {
    v37 = 0;
    if ((sub_10009A774(a1, &v37) & 1) == 0 || (sub_10009E604(a1, v37) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v26;

  return sub_10009ED44(a1, v15, a3);
}

void sub_100097BE4(char *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        a1[23] = 10;
        strcpy(a1, "String (0)");
        return;
      }

      if (a2 == 1)
      {
        a1[23] = 11;
        strcpy(a1, "Dialect (1)");
        return;
      }

LABEL_20:
      v8 = v2;
      v9 = v3;
      v4[0] = "Unknown (";
      v4[2] = a2;
      v5 = 2307;
      v6[0] = v4;
      v6[2] = ")";
      v7 = 770;
      llvm::Twine::str(v6, a1);
      return;
    }

    if (a2 == 2)
    {
      a1[23] = 12;
      strcpy(a1, "AttrType (2)");
    }

    else
    {
      a1[23] = 18;
      strcpy(a1, "AttrTypeOffset (3)");
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          a1[23] = 18;
          strcpy(a1, "ResourceOffset (6)");
          return;
        case 7:
          a1[23] = 19;
          strcpy(a1, "DialectVersions (7)");
          return;
        case 8:
          a1[23] = 14;
          strcpy(a1, "Properties (8)");
          return;
      }

      goto LABEL_20;
    }

    if (a2 == 4)
    {
      a1[23] = 6;
      strcpy(a1, "IR (4)");
    }

    else
    {
      a1[23] = 12;
      strcpy(a1, "Resource (5)");
    }
  }
}

BOOL sub_100097E18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v27 = a3;
  v28 = a4;
  v29 = a3;
  v30 = a2;
  v26 = 0;
  if ((sub_10009A774(&v27, &v26) & 1) == 0 || (sub_10009ED44(&v27, (v27 + v28 - v29), a1) & 1) == 0)
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[1];
  v22 = v6;
  v23 = v7;
  v24 = v6;
  v25 = a2;
  v8 = v26;
  if (v26 > *(a1 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v26, 8);
    goto LABEL_7;
  }

  if (v26)
  {
    while (1)
    {
LABEL_7:
      v9 = a1[1];
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v13 = *(a1 + 6);
      if (v13 >= *(a1 + 7))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v13 + 1, 8);
        v13 = *(a1 + 6);
      }

      *(a1[2] + 8 * v13) = v9 - (v10 + v11) + v12;
      ++*(a1 + 6);
      v31[0] = 0;
      if ((sub_10009A774(&v22, v31) & 1) == 0 || (sub_10009ED44(&v22, v31[0], &v32) & 1) == 0)
      {
        return 0;
      }

      if (!--v8)
      {
        if (v24 == v22 + v23)
        {
          return 1;
        }

        goto LABEL_15;
      }
    }
  }

  if (v6 == v6 + v7)
  {
    return 1;
  }

LABEL_15:
  mlir::emitError(v25, &v32);
  if (v32)
  {
    LODWORD(v31[0]) = 3;
    v31[1] = "Broken properties section: didn't exhaust the offsets table";
    v31[2] = 59;
    v15 = v31;
    v16 = v34;
    if (v35 >= v36)
    {
      if (v34 <= v31 && v34 + 24 * v35 > v31)
      {
        v21 = v31 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v16 = v34;
        v15 = &v21[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v15 = v31;
        v16 = v34;
      }
    }

    v17 = v16 + 24 * v35;
    v18 = *v15;
    *(v17 + 16) = v15[2];
    *v17 = v18;
    ++v35;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  if (v32)
  {
    v19 = result;
    mlir::InFlightDiagnostic::report(&v32);
    result = v19;
  }

  if (v37[160] == 1)
  {
    v20 = result;
    sub_100052F18(&v33);
    return v20;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseDialectSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v40 = a2;
  v41 = a3;
  v42 = a2;
  v43 = v4;
  v39 = 0;
  if ((sub_10009A774(&v40, &v39) & 1) == 0)
  {
    return 0;
  }

  v5 = v39;
  v6 = *(a1 + 280);
  if (v39 != v6)
  {
    if (v39 < v6)
    {
      v7 = 8 * v6;
      v8 = 8 * v39 - v7;
      v9 = (v7 + *(a1 + 272) - 8);
      do
      {
        v10 = *v9;
        *v9 = 0;
        if (v10)
        {
          v11 = *(v10 + 56);
          *(v10 + 56) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          operator delete();
        }

        --v9;
        v8 += 8;
      }

      while (v8);
      goto LABEL_34;
    }

    if (v39 <= *(a1 + 284))
    {
      v12 = *(a1 + 272);
      v19 = v39 - v6;
      if (v39 == v6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v38[0] = 0;
    v12 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1 + 272, (a1 + 288), v39, 8, v38);
    v13 = *(a1 + 272);
    v14 = *(a1 + 280);
    if (!v14)
    {
LABEL_30:
      v32 = v38[0];
      if (v13 != (a1 + 288))
      {
        free(v13);
      }

      *(a1 + 272) = v12;
      *(a1 + 284) = v32;
      v6 = *(a1 + 280);
      v19 = v5 - v6;
      if (v5 == v6)
      {
        goto LABEL_34;
      }

LABEL_33:
      bzero(&v12[8 * v6], 8 * v19);
LABEL_34:
      *(a1 + 280) = v5;
      goto LABEL_35;
    }

    v15 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v16 = 8 * v14;
    if (v15 >= 0xB)
    {
      if (v13 >= &v12[v16] || (v17 = v12, v18 = *(a1 + 272), v12 >= &v13[v16]))
      {
        v20 = v15 + 1;
        v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
        v17 = &v12[v21];
        v18 = &v13[v21];
        v22 = (v13 + 16);
        v23 = v12 + 16;
        v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = *(v22 - 1);
          v26 = *v22;
          *(v22 - 1) = 0uLL;
          *v22 = 0uLL;
          *(v23 - 1) = v25;
          *v23 = v26;
          v22 += 2;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_23:
          v29 = v13 - 8;
          do
          {
            v30 = *&v29[v16];
            *&v29[v16] = 0;
            if (v30)
            {
              v31 = *(v30 + 56);
              *(v30 + 56) = 0;
              if (v31)
              {
                (*(*v31 + 8))(v31);
              }

              operator delete();
            }

            v16 -= 8;
          }

          while (v16);
          v13 = *(a1 + 272);
          goto LABEL_30;
        }
      }
    }

    else
    {
      v17 = v12;
      v18 = *(a1 + 272);
    }

    v27 = &v13[8 * v14];
    do
    {
      v28 = *v18;
      *v18 = 0;
      v18 += 8;
      *v17 = v28;
      v17 += 8;
    }

    while (v18 != v27);
    goto LABEL_23;
  }

LABEL_35:
  if (v5)
  {
    operator new();
  }

  v37[0] = a1;
  v37[1] = &v40;
  if (*(a1 + 248) >= 4uLL)
  {
    v38[0] = 0;
    if ((sub_10009A774(&v40, v38) & 1) == 0)
    {
      return 0;
    }

    if (v38[0] > *(a1 + 372))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 360, (a1 + 376), v38[0], 48);
    }
  }

  if (v42 == v40 + v41)
  {
    return 1;
  }

  while (1)
  {
    v33 = *(a1 + 280);
    v38[0] = *(a1 + 272);
    v38[1] = v33;
    v45 = 0;
    if ((sub_10009FE30(&v40, v38, &v45, "dialect", 7) & 1) == 0)
    {
      return 0;
    }

    v44 = 0;
    if ((sub_10009A774(&v40, &v44) & 1) == 0)
    {
      return 0;
    }

    v34 = v44;
    if (v44)
    {
      v35 = v45;
      while ((sub_1000A71F4(v37, *v35) & 1) != 0)
      {
        if (!--v34)
        {
          goto LABEL_43;
        }
      }

      return 0;
    }

LABEL_43:
    if (v42 == v40 + v41)
    {
      return 1;
    }
  }
}

uint64_t sub_1000987D0(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (*(a3 + 16) == *(a4 + 16))
  {
    if (*(a3 + 16))
    {
      v132[0] = off_1002B5B78;
      v132[1] = a1 + 11;
      v14 = a1 + 53;
      v132[2] = a1 + 67;
      v132[3] = a1 + 53;
      v132[4] = a1 + 42;
      v132[5] = a2;
      v132[6] = a1 + 31;
      v16 = *a1;
      v15 = a1[1];
      v17 = a1[34];
      v18 = a1[151];
      v145[1] = *(a1 + 70);
      v146 = v15;
      v144 = v15;
      v145[0] = v17;
      v142 = *a3;
      v143 = v142;
      v139 = *a4;
      v140 = v139;
      v141 = v15;
      v138 = 0;
      if ((sub_10009A774(&v139, &v138) & 1) == 0)
      {
        return 0;
      }

      v131 = v18;
      if (v138)
      {
        for (i = 0; i < v138; ++i)
        {
          v156 = 0uLL;
          *&v161 = 0;
          if ((sub_10009A774(&v139, &v161) & 1) == 0 || (sub_10009F9F4(v141, a1[67], *(a1 + 136), v161, &v156, "string", 6) & 1) == 0)
          {
            return 0;
          }

          v20 = v156;
          v161 = v156;
          v21 = sub_10007EDD8((v16 + 16), &v161);
          if (!v21 || v21 == *(v16 + 16) + 24 * *(v16 + 32))
          {
            v24 = *(v16 + 40);
            if (v24)
            {
              ParserFor = mlir::FallbackAsmResourceMap::getParserFor(v24, v161, *(&v161 + 1));
              v23 = 0;
              goto LABEL_59;
            }
          }

          else
          {
            ParserFor = *(v21 + 16);
            if (ParserFor)
            {
              v23 = 0;
              goto LABEL_59;
            }
          }

          mlir::emitWarning(v146, &v161);
          if (v161)
          {
            LODWORD(v147) = 3;
            *(&v147 + 1) = "ignoring unknown external resources for '";
            v148 = 41;
            v25 = v162;
            if (v163 >= v164)
            {
              if (v162 <= &v147 && v162 + 24 * v163 > &v147)
              {
                v60 = &v147 - v162;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                v25 = v162;
                v26 = v162 + v60;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                v26 = &v147;
                v25 = v162;
              }
            }

            else
            {
              v26 = &v147;
            }

            v27 = &v25[24 * v163];
            v28 = *v26;
            *(v27 + 2) = *(v26 + 2);
            *v27 = v28;
            ++v163;
            if (v161)
            {
              LOWORD(v150) = 261;
              v147 = v20;
              mlir::Diagnostic::operator<<(&v161 + 8, &v147);
              if (v161)
              {
                LODWORD(v147) = 3;
                *(&v147 + 1) = "'";
                v148 = 1;
                v29 = v162;
                if (v163 >= v164)
                {
                  if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                  {
                    v61 = &v147 - v162;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                    v29 = v162;
                    v30 = v162 + v61;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                    v30 = &v147;
                    v29 = v162;
                  }
                }

                else
                {
                  v30 = &v147;
                }

                v31 = &v29[24 * v163];
                v32 = *v30;
                *(v31 + 2) = *(v30 + 2);
                *v31 = v32;
                ++v163;
                if (v161)
                {
                  mlir::InFlightDiagnostic::report(&v161);
                }
              }
            }
          }

          if (v171 == 1)
          {
            if (v170 != &v171)
            {
              free(v170);
            }

            v33 = __p;
            if (__p)
            {
              v34 = v169;
              v35 = __p;
              if (v169 != __p)
              {
                do
                {
                  v34 = sub_100052FFC(v34 - 1);
                }

                while (v34 != v33);
                v35 = __p;
              }

              v169 = v33;
              operator delete(v35);
            }

            v36 = v166;
            if (v166)
            {
              v37 = v167;
              v38 = v166;
              if (v167 != v166)
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
                v38 = v166;
              }

              v167 = v36;
              operator delete(v38);
            }

            if (v162 != v165)
            {
              free(v162);
            }
          }

          ParserFor = 0;
          v23 = 1;
LABEL_59:
          v40 = v146;
          v160 = 0;
          if ((sub_10009A774(&v139, &v160) & 1) == 0)
          {
            return 0;
          }

          v41 = v160;
          if (v160)
          {
            if (v23)
            {
              while (1)
              {
                v133 = 0uLL;
                v157 = 0;
                *&v161 = 0;
                if ((sub_10009A774(&v139, &v161) & 1) == 0 || (sub_10009F9F4(v141, a1[67], *(a1 + 136), v161, &v133, "string", 6) & 1) == 0 || (sub_10009A774(&v139, &v157) & 1) == 0 || (sub_1000A2A7C(&v139, &v137) & 1) == 0 || (sub_10009ED44(&v142, v157, &v159) & 1) == 0)
                {
                  break;
                }

                if (!--v41)
                {
                  goto LABEL_85;
                }
              }
            }

            else
            {
              while (1)
              {
                v133 = 0uLL;
                LODWORD(v137) = 0;
                v157 = 0;
                v159 = 0uLL;
                *&v161 = 0;
                if ((sub_10009A774(&v139, &v161) & 1) == 0 || (sub_10009F9F4(v141, a1[67], *(a1 + 136), v161, &v133, "string", 6) & 1) == 0 || (sub_10009A774(&v139, &v157) & 1) == 0 || (sub_1000A2A7C(&v139, &v137) & 1) == 0 || (sub_10009ED44(&v142, v157, &v159) & 1) == 0)
                {
                  break;
                }

                v43 = *(&v133 + 1);
                v42 = v133;
                v153 = v159;
                v154 = v159;
                v155 = v40;
                v44 = llvm::StringMapImpl::hash(v133, *(&v133 + 1));
                Key = llvm::StringMapImpl::FindKey(a1 + 61, v42, v43, v44);
                if (Key != -1 && Key != *(a1 + 124))
                {
                  v46 = *(a1[61] + 8 * Key);
                  v49 = *(v46 + 8);
                  v47 = v46 + 8;
                  v48 = v49;
                  v50 = *(v47 + 23);
                  if (v50 >= 0)
                  {
                    v42 = v47;
                  }

                  else
                  {
                    v42 = v48;
                  }

                  v51 = *(v47 + 8);
                  if (v50 >= 0)
                  {
                    v43 = v50;
                  }

                  else
                  {
                    v43 = v51;
                  }
                }

                *&v133 = v42;
                *(&v133 + 1) = v43;
                *&v147 = &off_1002B5C10;
                *(&v147 + 1) = v42;
                v148 = v43;
                v149 = v137;
                v150 = &v153;
                v151 = a1 + 67;
                v152 = v131;
                if (((*(*ParserFor + 16))(ParserFor, &v147) & 1) == 0)
                {
LABEL_188:
                  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                  return 0;
                }

                if (v154 != v153 + *(&v153 + 1))
                {
                  sub_1000A2C08(&v161, v155, &v133);
                  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
                  if (v161)
                  {
                    mlir::InFlightDiagnostic::report(&v161);
                  }

                  if (v171)
                  {
                    if (v170 != &v171)
                    {
                      free(v170);
                    }

                    v53 = __p;
                    if (__p)
                    {
                      v54 = v169;
                      v55 = __p;
                      if (v169 != __p)
                      {
                        do
                        {
                          v54 = sub_100052FFC(v54 - 1);
                        }

                        while (v54 != v53);
                        v55 = __p;
                      }

                      v169 = v53;
                      operator delete(v55);
                    }

                    v56 = v166;
                    if (v166)
                    {
                      v57 = v167;
                      v58 = v166;
                      if (v167 != v166)
                      {
                        do
                        {
                          v59 = *--v57;
                          *v57 = 0;
                          if (v59)
                          {
                            operator delete[]();
                          }
                        }

                        while (v57 != v56);
                        v58 = v166;
                      }

                      v167 = v56;
                      operator delete(v58);
                    }

                    if (v162 != v165)
                    {
                      free(v162);
                    }
                  }

                  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                  if (v52)
                  {
                    goto LABEL_85;
                  }

                  return 0;
                }

                mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                if (!--v41)
                {
                  goto LABEL_85;
                }
              }
            }

            return 0;
          }

LABEL_85:
          v14 = a1 + 53;
        }
      }

      Context = mlir::Attribute::getContext(&v146);
      if (v140 != v139 + *(&v139 + 1))
      {
        v69 = Context;
        v70 = "dialect";
        while (1)
        {
          v137 = 0;
          if ((sub_10009FE30(&v139, v145, &v137, v70, 7) & 1) == 0 || !sub_1000A0AD8(*v137, v132, v69))
          {
            return 0;
          }

          v71 = **v137;
          if (!v71)
          {
            mlir::emitError(v144, &v161);
            if (v161)
            {
              LODWORD(v147) = 3;
              *(&v147 + 1) = "dialect '";
              v148 = 9;
              v94 = &v147;
              v95 = v162;
              if (v163 >= v164)
              {
                if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                {
                  v127 = &v147 - v162;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v95 = v162;
                  v94 = v162 + v127;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v94 = &v147;
                  v95 = v162;
                }
              }

              v96 = &v95[24 * v163];
              v97 = *v94;
              *(v96 + 2) = *(v94 + 2);
              *v96 = v97;
              ++v163;
              if (v161)
              {
                v98 = *v137;
                LOWORD(v150) = 261;
                v100 = *(v98 + 24);
                v99 = *(v98 + 32);
                *&v147 = v100;
                *(&v147 + 1) = v99;
                mlir::Diagnostic::operator<<(&v161 + 8, &v147);
                if (v161)
                {
                  LODWORD(v147) = 3;
                  *(&v147 + 1) = "' is unknown";
                  v148 = 12;
                  v101 = &v147;
                  v102 = v162;
                  if (v163 >= v164)
                  {
                    if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                    {
                      v129 = &v147 - v162;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v102 = v162;
                      v101 = v162 + v129;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v101 = &v147;
                      v102 = v162;
                    }
                  }

                  v103 = &v102[24 * v163];
                  v104 = *v101;
                  *(v103 + 2) = *(v101 + 2);
                  *v103 = v104;
                  ++v163;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
            if (v161)
            {
              mlir::InFlightDiagnostic::report(&v161);
            }

            if (v171 != 1)
            {
              return v6;
            }

            if (v170 != &v171)
            {
              free(v170);
            }

            v105 = __p;
            if (__p)
            {
              v106 = v169;
              v107 = __p;
              if (v169 != __p)
              {
                do
                {
                  v106 = sub_100052FFC(v106 - 1);
                }

                while (v106 != v105);
                v107 = __p;
              }

              v169 = v105;
              operator delete(v107);
            }

            v10 = v166;
            if (!v166)
            {
              goto LABEL_236;
            }

            v108 = v167;
            v12 = v166;
            if (v167 == v166)
            {
              goto LABEL_235;
            }

            do
            {
              v109 = *--v108;
              *v108 = 0;
              if (v109)
              {
                operator delete[]();
              }
            }

            while (v108 != v10);
            goto LABEL_234;
          }

          if (!sub_10006575C(**v137))
          {
            v136 = 0;
            mlir::emitError(v144, &v161);
            if (v161)
            {
              LODWORD(v147) = 3;
              *(&v147 + 1) = "unexpected resources for dialect '";
              v148 = 34;
              v110 = &v147;
              v111 = v162;
              if (v163 >= v164)
              {
                if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                {
                  v128 = &v147 - v162;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v111 = v162;
                  v110 = v162 + v128;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                  v110 = &v147;
                  v111 = v162;
                }
              }

              v112 = &v111[24 * v163];
              v113 = *v110;
              *(v112 + 2) = *(v110 + 2);
              *v112 = v113;
              ++v163;
              if (v161)
              {
                v114 = *v137;
                LOWORD(v150) = 261;
                v116 = *(v114 + 24);
                v115 = *(v114 + 32);
                *&v147 = v116;
                *(&v147 + 1) = v115;
                mlir::Diagnostic::operator<<(&v161 + 8, &v147);
                if (v161)
                {
                  LODWORD(v147) = 3;
                  *(&v147 + 1) = "'";
                  v148 = 1;
                  v117 = &v147;
                  v118 = v162;
                  if (v163 >= v164)
                  {
                    if (v162 <= &v147 && v162 + 24 * v163 > &v147)
                    {
                      v130 = &v147 - v162;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v118 = v162;
                      v117 = v162 + v130;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v162, v165, v163 + 1, 24);
                      v117 = &v147;
                      v118 = v162;
                    }
                  }

                  v119 = &v118[24 * v163];
                  v120 = *v117;
                  *(v119 + 2) = *(v117 + 2);
                  *v119 = v120;
                  ++v163;
                }
              }
            }

            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
            if (v161)
            {
              mlir::InFlightDiagnostic::report(&v161);
            }

            if (v171 != 1)
            {
              return v6;
            }

            if (v170 != &v171)
            {
              free(v170);
            }

            v121 = __p;
            if (__p)
            {
              v122 = v169;
              v123 = __p;
              if (v169 != __p)
              {
                do
                {
                  v122 = sub_100052FFC(v122 - 1);
                }

                while (v122 != v121);
                v123 = __p;
              }

              v169 = v121;
              operator delete(v123);
            }

            v10 = v166;
            if (!v166)
            {
              goto LABEL_236;
            }

            v124 = v167;
            v12 = v166;
            if (v167 == v166)
            {
              goto LABEL_235;
            }

            do
            {
              v125 = *--v124;
              *v124 = 0;
              if (v125)
              {
                operator delete[]();
              }
            }

            while (v124 != v10);
            goto LABEL_234;
          }

          v72 = v70;
          v73 = sub_10006575C(v71);
          v135 = v14;
          v136 = v73;
          *&v133 = &v136;
          *(&v133 + 1) = &v142;
          v134 = &v137;
          v74 = v146;
          v160 = 0;
          if ((sub_10009A774(&v139, &v160) & 1) == 0)
          {
            return 0;
          }

          v75 = v160;
          if (v160)
          {
            do
            {
              v159 = 0uLL;
              v158 = 0;
              v157 = 0;
              v156 = 0uLL;
              *&v161 = 0;
              if ((sub_10009A774(&v139, &v161) & 1) == 0 || (sub_10009F9F4(v141, a1[67], *(a1 + 136), v161, &v159, "string", 6) & 1) == 0 || (sub_10009A774(&v139, &v157) & 1) == 0 || (sub_1000A2A7C(&v139, &v158) & 1) == 0 || (sub_10009ED44(&v142, v157, &v156) & 1) == 0 || (sub_1000A3C28(&v133, v159, *(&v159 + 1)) & 1) == 0)
              {
                return 0;
              }

              if (*(&v156 + 1))
              {
                v153 = v156;
                v154 = v156;
                v155 = v74;
                v77 = *(&v159 + 1);
                v76 = v159;
                v78 = llvm::StringMapImpl::hash(v159, *(&v159 + 1));
                v79 = llvm::StringMapImpl::FindKey(a1 + 61, v76, v77, v78);
                if (v79 != -1 && v79 != *(a1 + 124))
                {
                  v80 = *(a1[61] + 8 * v79);
                  v83 = *(v80 + 8);
                  v81 = v80 + 8;
                  v82 = v83;
                  v84 = *(v81 + 23);
                  if (v84 >= 0)
                  {
                    v76 = v81;
                  }

                  else
                  {
                    v76 = v82;
                  }

                  v85 = *(v81 + 8);
                  if (v84 >= 0)
                  {
                    v77 = v84;
                  }

                  else
                  {
                    v77 = v85;
                  }
                }

                *&v159 = v76;
                *(&v159 + 1) = v77;
                *&v147 = &off_1002B5C10;
                *(&v147 + 1) = v76;
                v148 = v77;
                v149 = v158;
                v150 = &v153;
                v151 = a1 + 67;
                v152 = v131;
                if (((*(*v73 + 48))(v73, &v147) & 1) == 0)
                {
                  goto LABEL_188;
                }

                if (v154 != v153 + *(&v153 + 1))
                {
                  sub_1000A2C08(&v161, v155, &v159);
                  v86 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
                  if (v161)
                  {
                    mlir::InFlightDiagnostic::report(&v161);
                  }

                  v14 = a1 + 53;
                  if (v171)
                  {
                    if (v170 != &v171)
                    {
                      free(v170);
                    }

                    v87 = __p;
                    if (__p)
                    {
                      v88 = v169;
                      v89 = __p;
                      if (v169 != __p)
                      {
                        do
                        {
                          v88 = sub_100052FFC(v88 - 1);
                        }

                        while (v88 != v87);
                        v89 = __p;
                      }

                      v169 = v87;
                      operator delete(v89);
                    }

                    v90 = v166;
                    if (v166)
                    {
                      v91 = v167;
                      v92 = v166;
                      if (v167 != v166)
                      {
                        do
                        {
                          v93 = *--v91;
                          *v91 = 0;
                          if (v93)
                          {
                            operator delete[]();
                          }
                        }

                        while (v91 != v90);
                        v92 = v166;
                      }

                      v167 = v90;
                      operator delete(v92);
                      v14 = a1 + 53;
                    }

                    if (v162 != v165)
                    {
                      free(v162);
                    }

                    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                    v70 = v72;
                  }

                  else
                  {
                    v70 = v72;
                    mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
                  }

                  if (v86)
                  {
                    goto LABEL_142;
                  }

                  return 0;
                }

                mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(&v147);
              }
            }

            while (--v75);
          }

          v14 = a1 + 53;
          v70 = v72;
LABEL_142:
          v6 = 1;
          if (v140 == v139 + *(&v139 + 1))
          {
            return v6;
          }
        }
      }
    }

    return 1;
  }

  if (*(a4 + 16))
  {
    v5 = a1[1];
    *&v147 = "unexpected resource offset section when resource section is not present";
    LOWORD(v150) = 259;
    mlir::emitError(v5, &v147, &v161);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
    if (v161)
    {
      mlir::InFlightDiagnostic::report(&v161);
    }

    if (v171 == 1)
    {
      if (v170 != &v171)
      {
        free(v170);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v169;
        v9 = __p;
        if (v169 != __p)
        {
          do
          {
            v8 = sub_100052FFC(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v169 = v7;
        operator delete(v9);
      }

      v10 = v166;
      if (!v166)
      {
        goto LABEL_236;
      }

      v11 = v167;
      v12 = v166;
      if (v167 == v166)
      {
LABEL_235:
        v167 = v10;
        operator delete(v12);
LABEL_236:
        if (v162 != v165)
        {
          free(v162);
        }

        return v6;
      }

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
LABEL_234:
      v12 = v166;
      goto LABEL_235;
    }
  }

  else
  {
    v62 = a1[1];
    *&v147 = "expected resource offset section when resource section is present";
    LOWORD(v150) = 259;
    mlir::emitError(v62, &v147, &v161);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v161);
    if (v161)
    {
      mlir::InFlightDiagnostic::report(&v161);
    }

    if (v171 == 1)
    {
      if (v170 != &v171)
      {
        free(v170);
      }

      v63 = __p;
      if (__p)
      {
        v64 = v169;
        v65 = __p;
        if (v169 != __p)
        {
          do
          {
            v64 = sub_100052FFC(v64 - 1);
          }

          while (v64 != v63);
          v65 = __p;
        }

        v169 = v63;
        operator delete(v65);
      }

      v10 = v166;
      if (!v166)
      {
        goto LABEL_236;
      }

      v66 = v167;
      v12 = v166;
      if (v167 == v166)
      {
        goto LABEL_235;
      }

      do
      {
        v67 = *--v66;
        *v66 = 0;
        if (v67)
        {
          operator delete[]();
        }
      }

      while (v66 != v10);
      goto LABEL_234;
    }
  }

  return v6;
}