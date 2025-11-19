uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::parse(mlir::ODIE::Compiler::CoreML::CreateComplexOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v11 = 0;
  v12[0] = &v13;
  v10[0] = &v11;
  v10[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  if (!sub_1002566A4(this, &v9))
  {
    return 0;
  }

  v13 = v9;
  if ((*(*this + 120))(this) & 1) != 0 && (v9 = 0, sub_1002566A4(this, &v9)) && (v11 = v9, ((*(*this + 296))(this)) && ((*(*this + 56))(this) & 1) != 0 && (v8 = 0, sub_1002566A4(this, &v8)) && (v9 = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (sub_1001D4484(a2, &v9, 1), (sub_10020E908(this, v17, v12, v5, a2 + 16)))
  {
    return sub_10020E908(this, v14, v10, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::CreateComplexOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++v18[4];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
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

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 15917;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
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

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v37;
  v36 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v33, v35, v36);
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::inferReturnTypes(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        v14 = a1;
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        a1 = v14;
        goto LABEL_7;
      }

      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
      a1 = v13;
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  **a11 = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_10021C7B4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t sub_10021C7B4(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    return 1;
  }

  v39 = 261;
  v38[0] = a3;
  v38[1] = a4;
  mlir::Operation::emitOpError(v43, a1, v38);
  if (v43[0])
  {
    v40 = 3;
    v41 = " #";
    v42 = 2;
    v7 = &v40;
    v8 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v40 && v44 + 24 * v45 > &v40)
      {
        v34 = &v40 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v8 = v44;
        v7 = (v44 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v7 = &v40;
        v8 = v44;
      }
    }

    v9 = &v8[24 * v45];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v45;
    if (v43[0])
    {
      v40 = 5;
      v41 = a5;
      v12 = &v40;
      v13 = v44;
      if (v11 >= v46)
      {
        if (v44 <= &v40 && v44 + 24 * v11 > &v40)
        {
          v35 = &v40 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v11 + 1, 24);
          v13 = v44;
          v12 = (v44 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v11 + 1, 24);
          v12 = &v40;
          v13 = v44;
        }
      }

      v14 = &v13[24 * v45];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v45;
      if (v43[0])
      {
        v40 = 3;
        v41 = " must be , but got ";
        v42 = 19;
        v17 = &v40;
        v18 = v44;
        if (v16 >= v46)
        {
          if (v44 <= &v40 && v44 + 24 * v16 > &v40)
          {
            v36 = &v40 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v16 + 1, 24);
            v18 = v44;
            v17 = (v44 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v16 + 1, 24);
            v17 = &v40;
            v18 = v44;
          }
        }

        v19 = &v18[24 * v45];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v45;
        if (v43[0])
        {
          v21 = &v40;
          mlir::DiagnosticArgument::DiagnosticArgument(&v40, a2);
          v22 = v44;
          if (v45 >= v46)
          {
            if (v44 <= &v40 && v44 + 24 * v45 > &v40)
            {
              v37 = &v40 - v44;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
              v22 = v44;
              v21 = (v44 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
              v21 = &v40;
              v22 = v44;
            }
          }

          v23 = &v22[24 * v45];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v45;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v51;
      v28 = __p;
      if (v51 != __p)
      {
        do
        {
          v27 = sub_100052FFC(v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v51 = v26;
      operator delete(v28);
    }

    v29 = v48;
    if (v48)
    {
      v30 = v49;
      v31 = v48;
      if (v49 != v48)
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
        v31 = v48;
      }

      v49 = v29;
      operator delete(v31);
    }

    if (v44 != v47)
    {
      free(v44);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::CumSumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_10020B0FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_100209D98(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || !sub_100209D98(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v29 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30[0] = sub_10020BDF0(&v29);
  v30[1] = v4;
  Shape = mlir::ShapedType::getShape(v30);
  v7 = v6;
  v28 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v26[0] = sub_10020BDF0(&v28);
  v26[1] = v8;
  v9 = mlir::ShapedType::getShape(v26);
  if (v7 == v10 && !memcmp(Shape, v9, 8 * v7))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
      }

      v21 = __p;
      if (__p)
      {
        v22 = v36;
        v23 = __p;
        if (v36 != __p)
        {
          do
          {
            v22 = sub_100052FFC(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v36 = v21;
        operator delete(v23);
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_49;
      }

      v24 = v34;
      v18 = v33;
      if (v34 == v33)
      {
        goto LABEL_48;
      }

      do
      {
        v25 = *--v24;
        *v24 = 0;
        if (v25)
        {
          operator delete[]();
        }
      }

      while (v24 != v16);
      goto LABEL_47;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
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
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_49;
      }

      v17 = v34;
      v18 = v33;
      if (v34 == v33)
      {
LABEL_48:
        v34 = v16;
        operator delete(v18);
        result = v12;
LABEL_49:
        if (v31 != &v32)
        {
          free(v31);
          return v12;
        }

        return result;
      }

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
LABEL_47:
      v18 = v33;
      goto LABEL_48;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  if (!v6)
  {
    a3(&v74, a4);
    if (v74)
    {
      LODWORD(v71) = 3;
      v72 = "expected DictionaryAttr to set properties";
      v73 = 41;
      v25 = &v71;
      v26 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v26 = v76;
          v25 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v25 = &v71;
          v26 = v76;
        }
      }

      v27 = &v26[24 * v77];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }

    if (v85 != 1)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v83;
      v31 = __p;
      if (v83 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v83 = v29;
      operator delete(v31);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_70;
    }

    v32 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_69:
      v81 = v21;
      operator delete(v23);
LABEL_70:
      if (v76 != v79)
      {
        free(v76);
      }

      return 0;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
LABEL_68:
    v23 = v80;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v70, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        LODWORD(v71) = 3;
        v73 = 54;
        v10 = &v71;
        v11 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v11 = v76;
            v10 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v10 = &v71;
            v11 = v76;
          }
        }

        v12 = &v11[24 * v77];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v77;
        if (v74)
        {
          v14 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v15 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v65 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v15 = v76;
              v14 = (v76 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v14 = &v71;
              v15 = v76;
            }
          }

          v16 = &v15[24 * v77];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v83;
        v20 = __p;
        if (v83 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v83 = v18;
        operator delete(v20);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v70, "delegate_id", 0xBuLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v35 = v34;
      a3(&v74, a4);
      if (v74)
      {
        LODWORD(v71) = 3;
        v73 = 56;
        v36 = &v71;
        v37 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v66 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v37 = v76;
            v36 = (v76 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v36 = &v71;
            v37 = v76;
          }
        }

        v38 = &v37[24 * v77];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v77;
        if (v74)
        {
          v40 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v35);
          v41 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v67 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v41 = v76;
              v40 = (v76 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v40 = &v71;
              v41 = v76;
            }
          }

          v42 = &v41[24 * v77];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v83;
        v46 = __p;
        if (v83 != __p)
        {
          do
          {
            v45 = sub_100052FFC(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v83 = v44;
        operator delete(v46);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v47 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_69;
      }

      do
      {
        v48 = *--v47;
        *v47 = 0;
        if (v48)
        {
          operator delete[]();
        }
      }

      while (v47 != v21);
      goto LABEL_68;
    }

    a1[1] = v34;
  }

  v50 = mlir::DictionaryAttr::get(&v70, "res_attrs", 9uLL);
  if (v50)
  {
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v51 = v50;
      a3(&v74, a4);
      if (v74)
      {
        LODWORD(v71) = 3;
        v73 = 54;
        v52 = &v71;
        v53 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v68 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v53 = v76;
            v52 = (v76 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v52 = &v71;
            v53 = v76;
          }
        }

        v54 = &v53[24 * v77];
        v55 = *v52;
        *(v54 + 2) = v52[2];
        *v54 = v55;
        ++v77;
        if (v74)
        {
          v56 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v51);
          v57 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v69 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v57 = v76;
              v56 = (v76 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v56 = &v71;
              v57 = v76;
            }
          }

          v58 = &v57[24 * v77];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if (v85 == 1)
      {
        sub_100052F18(&v75);
      }

      return 0;
    }

    a1[2] = v50;
  }

  v60 = mlir::DictionaryAttr::get(&v70, "resource", 8uLL);
  v71 = v60;
  if (!v60)
  {
    return 1;
  }

  v61 = v60;
  if (mlir::detail::DenseArrayAttrImpl<signed char>::classof(v60))
  {
    a1[3] = v61;
    return 1;
  }

  a3(&v74, a4);
  sub_10005D220(v62, &v71);
  sub_100059A74(&v74);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "arg_attrs", 9, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "delegate_id", 0xB, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "res_attrs", 9, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "resource", 8, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  __src[0] = v3;
  __src[1] = v6;
  v16 = 0;
  v13 = sub_10002CAB8(__src, &v16, v19, v20, v9);
  v17 = v16;
  v14 = sub_10002CAB8(__src, &v17, v13, v20, v12);
  return sub_10002C12C(__src, v17, v14, v20);
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getInherentAttr(int a1, void *a2, void *__s1, size_t __n)
{
  if (__n == 8)
  {
    if (!memcmp(__s1, "resource", 8uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "delegate_id", 0xBuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  switch(a3)
  {
    case 8:
      result = memcmp(__s1, "resource", 8uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<signed char>::classof(a4);
          if (result)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[3] = v8;
        }

        else
        {
          v5[3] = 0;
        }
      }

      break;
    case 11:
      result = memcmp(__s1, "delegate_id", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          v5[1] = v7;
        }

        else
        {
          v5[1] = 0;
        }
      }

      break;
    case 9:
      if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          *result = v9;
        }

        else
        {
          *result = 0;
        }
      }

      else
      {
        result = memcmp(__s1, "res_attrs", 9uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }

            v5[2] = v10;
          }

          else
          {
            v5[2] = 0;
          }
        }
      }

      break;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "arg_attrs", 9, *a2);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "delegate_id", 0xB, v6);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "res_attrs", 9, v7);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "resource", 8, v8);
    return mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100215230(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010451C(v9, "delegate_id", 0xB, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_100215230(v10, "res_attrs", 9, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (sub_10021E28C(v11, "resource", 8, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10021E28C(void *a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || mlir::detail::DenseArrayAttrImpl<signed char>::classof(a1))
  {
    return 1;
  }

  a4(&v32, a5);
  if (v32)
  {
    LODWORD(v28) = 3;
    v29 = "attribute '";
    v30 = 11;
    v11 = &v28;
    v12 = v34;
    if (v35 >= v36)
    {
      if (v34 <= &v28 && v34 + 24 * v35 > &v28)
      {
        v26 = &v28 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v12 = v34;
        v11 = (v34 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v11 = &v28;
        v12 = v34;
      }
    }

    v13 = &v12[24 * v35];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v35;
    if (v32)
    {
      v31 = 261;
      v28 = a2;
      v29 = a3;
      mlir::Diagnostic::operator<<(&v33, &v28);
      if (v32)
      {
        LODWORD(v28) = 3;
        v29 = "' failed to satisfy constraint: i8 dense array attribute";
        v30 = 56;
        v15 = &v28;
        v16 = v34;
        if (v35 >= v36)
        {
          if (v34 <= &v28 && v34 + 24 * v35 > &v28)
          {
            v27 = &v28 - v34;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
            v16 = v34;
            v15 = (v34 + v27);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
            v15 = &v28;
            v16 = v34;
          }
        }

        v17 = &v16[24 * v35];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v35;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v41;
      v21 = __p;
      if (v41 != __p)
      {
        do
        {
          v20 = sub_100052FFC(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v41 = v19;
      operator delete(v21);
    }

    v22 = v38;
    if (v38)
    {
      v23 = v39;
      v24 = v38;
      if (v39 != v38)
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
        v24 = v38;
      }

      v39 = v22;
      operator delete(v24);
    }

    if (v34 != v37)
    {
      free(v34);
    }
  }

  return v9;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = *(v1 + 72);
  v3 = v1 + 64;
  if (v2)
  {
    v5 = *(v3 + 24);
    if (v5)
    {
      v7 = *(v3 + 16);
      v32[0] = *this;
      if ((sub_10010451C(v2, "delegate_id", 0xB, sub_10025171C, v32) & 1) == 0)
      {
        return 0;
      }

      v32[0] = *this;
      if ((sub_10021E28C(v5, "resource", 8, sub_10025177C, v32) & 1) == 0)
      {
        return 0;
      }

      v32[0] = *this;
      if ((sub_100215230(v4, "arg_attrs", 9, sub_1002516EC, v32) & 1) == 0)
      {
        return 0;
      }

      v32[0] = *this;
      if ((sub_100215230(v7, "res_attrs", 9, sub_1002516EC, v32) & 1) == 0)
      {
        return 0;
      }

      v22 = *this;
      v23 = *(*this + 9);
      if (*(*this + 9))
      {
        v24 = *this - 16;
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v24, i);
        }

        v22 = *this;
      }

      sub_1002866AC(v22, v32);
      sub_1001E4F08(v28, v32);
      v26 = *(*this + 9);
      v27 = (*this - 16);
      if (!v26)
      {
        v27 = 0;
      }

      v29 = v27;
      v30 = v26;
      mlir::ResultRange::getTypes(&v29, v32);
      sub_1001E4F84(&v29, v32);
      if (sub_1001E07DC(v28[0], v28[1], v29, v30))
      {
        return 1;
      }

      v29 = "failed to verify that number of handle inputs must match number of token outputs";
      v31 = 259;
      mlir::OpState::emitOpError(this, &v29, v32);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
      sub_100059A74(v32);
      return v8;
    }

    v29 = "requires attribute 'resource'";
    v31 = 259;
    mlir::OpState::emitOpError(this, &v29, v32);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v38;
        v18 = __p;
        if (v38 != __p)
        {
          do
          {
            v17 = sub_100052FFC(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v38 = v16;
        operator delete(v18);
      }

      v12 = v35;
      if (!v35)
      {
        goto LABEL_42;
      }

      v19 = v36;
      v14 = v35;
      if (v36 == v35)
      {
LABEL_41:
        v36 = v12;
        operator delete(v14);
LABEL_42:
        if (v33 != &v34)
        {
          free(v33);
        }

        return v8;
      }

      do
      {
        v20 = *--v19;
        *v19 = 0;
        if (v20)
        {
          operator delete[]();
        }
      }

      while (v19 != v12);
LABEL_40:
      v14 = v35;
      goto LABEL_41;
    }
  }

  else
  {
    v29 = "requires attribute 'delegate_id'";
    v31 = 259;
    mlir::OpState::emitOpError(this, &v29, v32);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v38;
        v11 = __p;
        if (v38 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v38 = v9;
        operator delete(v11);
      }

      v12 = v35;
      if (!v35)
      {
        goto LABEL_42;
      }

      v13 = v36;
      v14 = v35;
      if (v36 == v35)
      {
        goto LABEL_41;
      }

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
      goto LABEL_40;
    }
  }

  return v8;
}

BOOL mlir::ODIE::Compiler::CoreML::DepthToSpace::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10020FDD4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_10020B0FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10020FDD4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = sub_10020BDF0(&v25);
    v28[1] = v5;
    mlir::ShapedType::getShape(v28);
    v7 = v6;
    v24 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v26[0] = sub_10020BDF0(&v24);
    v26[1] = v8;
    mlir::ShapedType::getShape(v26);
    if (v7 == v9)
    {
      return sub_100211FE8(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0) & 1;
    }

    v26[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v19 = __p;
      if (__p)
      {
        v20 = v34;
        v21 = __p;
        if (v34 != __p)
        {
          do
          {
            v20 = sub_100052FFC(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_46;
      }

      v22 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_45:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_46:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
      }

      do
      {
        v23 = *--v22;
        *v22 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v22 != v15);
LABEL_44:
      v17 = v31;
      goto LABEL_45;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v34;
        v14 = __p;
        if (v34 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v34 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_46;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_45;
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
      goto LABEL_44;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::DepthToSpace::parse(mlir::ODIE::Compiler::CoreML::DepthToSpace *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v3 = &v5;
  v4 = 0x400000000;
  operator new();
}

BOOL mlir::ODIE::Compiler::CoreML::DepthToSpace::verifyRegions(unsigned int **this)
{
  v1 = *this;
  v2 = *(((&v1[4 * ((v1[11] >> 23) & 1) + 17] + ((v1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v1[10] + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return sub_1002126F0(v1, v3);
}

BOOL mlir::ODIE::Compiler::CoreML::DivideOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002088C4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002088C4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002090B0(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::ErfOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
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
      result = v6;
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
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v38 = v6;
  if (!v6)
  {
    a3(v42, a4);
    if (v42[0])
    {
      v39 = 3;
      v40 = "expected DictionaryAttr to set properties";
      v41 = 41;
      v25 = &v39;
      v26 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v35 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v26 = v43;
          v25 = (v43 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v25 = &v39;
          v26 = v43;
        }
      }

      v27 = &v26[24 * v44];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v44;
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }
    }

    if (v52 != 1)
    {
      return 0;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v50;
      v31 = __p;
      if (v50 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v50 = v29;
      operator delete(v31);
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_49;
    }

    v32 = v48;
    v23 = v47;
    if (v48 == v47)
    {
      goto LABEL_48;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v38, "message", 7uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v42, a4);
  if (v42[0])
  {
    v39 = 3;
    v41 = 52;
    v10 = &v39;
    v11 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v36 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v11 = v43;
        v10 = (v43 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v10 = &v39;
        v11 = v43;
      }
    }

    v12 = &v11[24 * v44];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v44;
    if (v42[0])
    {
      v14 = &v39;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, v9);
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v37 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v39;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v44;
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }
    }
  }

  if (v52)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v50;
      v20 = __p;
      if (v50 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v50 = v18;
      operator delete(v20);
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_49;
    }

    v22 = v48;
    v23 = v47;
    if (v48 == v47)
    {
LABEL_48:
      v48 = v21;
      operator delete(v23);
LABEL_49:
      if (v43 != v46)
      {
        free(v43);
      }

      return 0;
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
LABEL_47:
    v23 = v47;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "message", 7, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 1936942445 ? (v4 = *(a3 + 3) == 1701273971) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::ErrorOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 7 && *a2 == 1936942445 && *(a2 + 3) == 1701273971)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "message", 7, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_10010FB18(a1, v2) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::ErrorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v17[0] = *this;
    if (sub_10010451C(v1, "message", 7, sub_10025171C, v17))
    {
      v3 = *(*this + 9);
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = "requires attribute 'message'";
    v16 = 259;
    mlir::OpState::emitOpError(this, &v15, v17);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = sub_100052FFC(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
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
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::ODIE::Compiler::CoreML::ErrorOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v20 = 0;
  __src = &v23;
  v22 = &_mh_execute_header;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!sub_1001D02C8(this, &v20, v7))
  {
    goto LABEL_17;
  }

  if (v20)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v20;
  }

  if (((*(*this + 64))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &__src) & 1) == 0 || (v19 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0) || (v9 = *(a2 + 1), v18[0] = this, v18[1] = &v19, v18[2] = a2, (v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96))) != 0) && (sub_10010451C(v10, "message", 7, sub_100256F50, v18) & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = __src;
    if (__src == &v23)
    {
      return v15;
    }

LABEL_18:
    free(v16);
    return v15;
  }

  v11 = __src;
  v12 = v22;
  v13 = *(a2 + 18);
  v14 = v13 + v22;
  if (v14 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v14, 8);
    LODWORD(v13) = *(a2 + 18);
  }

  if (v12)
  {
    memcpy((*(a2 + 8) + 8 * v13), v11, 8 * v12);
    LODWORD(v13) = *(a2 + 18);
  }

  *(a2 + 18) = v13 + v12;
  v15 = 1;
  v16 = __src;
  if (__src != &v23)
  {
    goto LABEL_18;
  }

  return v15;
}

void mlir::ODIE::Compiler::CoreML::ErrorOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = *this;
  if (*(*this + 9))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 1uLL)
    {
      *v10 = 15917;
      v9[4] += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, "->", 2uLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
    }

    v13 = *(*this + 9);
    v14 = *this - 16;
    if (!v13)
    {
      v14 = 0;
    }

    v25[0] = v14;
    v25[1] = v13;
    mlir::ResultRange::getTypes(v25, &v26);
    v15 = v27;
    v16 = v29;
    if (v27 != v29)
    {
      v17 = v26;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, v27);
      (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v15 + 1; v16 != i; ++i)
      {
        v23 = (*(*a2 + 16))(a2);
        v24 = v23[4];
        if (v23[3] - v24 <= 1uLL)
        {
          llvm::raw_ostream::write(v23, ", ", 2uLL);
        }

        else
        {
          *v24 = 8236;
          v23[4] += 2;
        }

        v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, i);
        (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v6 = *this;
  }

  v26 = &v28;
  v28 = "message";
  v29 = 7;
  v27 = 0x200000001;
  v25[0] = mlir::Operation::getAttrDictionary(v6);
  Value = mlir::DictionaryAttr::getValue(v25);
  (*(*a2 + 192))(a2, Value, v21, v26, v27);
  if (v26 != &v28)
  {
    free(v26);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ExpOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100207C18(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100207C18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
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
      result = v6;
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
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_10020964C(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
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
      result = v6;
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
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOp::parse(mlir::ODIE::Compiler::CoreML::ExpandDimsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (!sub_1002566A4(this, v19))
  {
    return 0;
  }

  v12 = v19[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (sub_1002572B0(this, v19) && (v10 = v19[0], ((*(*this + 296))(this) & 1) != 0) && (v20 = 257, ((*(*this + 400))(this, "to", 2, v19) & 1) != 0) && (v8 = 0, sub_1002566A4(this, &v8)) && (v19[0] = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (sub_1001D4484(a2, v19, 1), (sub_10020E908(this, v16, v11, v5, a2 + 16) & 1) != 0))
  {
    return sub_10020E908(this, v13, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ExpandDimsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++v18[4];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
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

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 28532;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "to", 2uLL);
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

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v37;
  v36 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v33, v35, v36);
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v67 = v6;
  if (!v6)
  {
    a3(&v71, a4);
    if (v71)
    {
      v68 = 3;
      v69 = "expected DictionaryAttr to set properties";
      v70 = 41;
      v25 = &v68;
      v26 = v73;
      if (v74 >= v75)
      {
        if (v73 <= &v68 && v73 + 24 * v74 > &v68)
        {
          v60 = &v68 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v26 = v73;
          v25 = (v73 + v60);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v25 = &v68;
          v26 = v73;
        }
      }

      v27 = &v26[24 * v74];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v74;
      if (v71)
      {
        mlir::InFlightDiagnostic::report(&v71);
      }
    }

    if (v82 != 1)
    {
      return 0;
    }

    if (v81 != &v82)
    {
      free(v81);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v80;
      v31 = __p;
      if (v80 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v80 = v29;
      operator delete(v31);
    }

    v21 = v77;
    if (!v77)
    {
      goto LABEL_70;
    }

    v32 = v78;
    v23 = v77;
    if (v78 == v77)
    {
LABEL_69:
      v78 = v21;
      operator delete(v23);
LABEL_70:
      if (v73 != v76)
      {
        free(v73);
      }

      return 0;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
LABEL_68:
    v23 = v77;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v67, "path", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(&v71, a4);
      if (v71)
      {
        v68 = 3;
        v70 = 49;
        v10 = &v68;
        v11 = v73;
        if (v74 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v74 > &v68)
          {
            v61 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v11 = v73;
            v10 = (v73 + v61);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v10 = &v68;
            v11 = v73;
          }
        }

        v12 = &v11[24 * v74];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v74;
        if (v71)
        {
          v14 = &v68;
          mlir::DiagnosticArgument::DiagnosticArgument(&v68, v9);
          v15 = v73;
          if (v74 >= v75)
          {
            if (v73 <= &v68 && v73 + 24 * v74 > &v68)
            {
              v62 = &v68 - v73;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
              v15 = v73;
              v14 = (v73 + v62);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
              v14 = &v68;
              v15 = v73;
            }
          }

          v16 = &v15[24 * v74];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v74;
          if (v71)
          {
            mlir::InFlightDiagnostic::report(&v71);
          }
        }
      }

      if ((v82 & 1) == 0)
      {
        return 0;
      }

      if (v81 != &v82)
      {
        free(v81);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v80;
        v20 = __p;
        if (v80 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v80 = v18;
        operator delete(v20);
      }

      v21 = v77;
      if (!v77)
      {
        goto LABEL_70;
      }

      v22 = v78;
      v23 = v77;
      if (v78 == v77)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v67, "sym_name", 8uLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v35 = v34;
      a3(&v71, a4);
      if (v71)
      {
        v68 = 3;
        v70 = 53;
        v36 = &v68;
        v37 = v73;
        if (v74 >= v75)
        {
          if (v73 <= &v68 && v73 + 24 * v74 > &v68)
          {
            v63 = &v68 - v73;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v37 = v73;
            v36 = (v73 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
            v36 = &v68;
            v37 = v73;
          }
        }

        v38 = &v37[24 * v74];
        v39 = *v36;
        *(v38 + 2) = *(v36 + 2);
        *v38 = v39;
        ++v74;
        if (v71)
        {
          v40 = &v68;
          mlir::DiagnosticArgument::DiagnosticArgument(&v68, v35);
          v41 = v73;
          if (v74 >= v75)
          {
            if (v73 <= &v68 && v73 + 24 * v74 > &v68)
            {
              v64 = &v68 - v73;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
              v41 = v73;
              v40 = (v73 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
              v40 = &v68;
              v41 = v73;
            }
          }

          v42 = &v41[24 * v74];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          ++v74;
          if (v71)
          {
            mlir::InFlightDiagnostic::report(&v71);
          }
        }
      }

      if ((v82 & 1) == 0)
      {
        return 0;
      }

      if (v81 != &v82)
      {
        free(v81);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v80;
        v46 = __p;
        if (v80 != __p)
        {
          do
          {
            v45 = sub_100052FFC(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v80 = v44;
        operator delete(v46);
      }

      v21 = v77;
      if (!v77)
      {
        goto LABEL_70;
      }

      v47 = v78;
      v23 = v77;
      if (v78 == v77)
      {
        goto LABEL_69;
      }

      do
      {
        v48 = *--v47;
        *v47 = 0;
        if (v48)
        {
          operator delete[]();
        }
      }

      while (v47 != v21);
      goto LABEL_68;
    }

    a1[1] = v34;
  }

  v50 = mlir::DictionaryAttr::get(&v67, "symbolsToImport", 0xFuLL);
  if (!v50)
  {
    return 1;
  }

  if (*(*v50 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    a1[2] = v50;
    return 1;
  }

  v51 = v50;
  a3(&v71, a4);
  if (v71)
  {
    v68 = 3;
    v70 = 60;
    v52 = &v68;
    v53 = v73;
    if (v74 >= v75)
    {
      if (v73 <= &v68 && v73 + 24 * v74 > &v68)
      {
        v65 = &v68 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v53 = v73;
        v52 = (v73 + v65);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v52 = &v68;
        v53 = v73;
      }
    }

    v54 = &v53[24 * v74];
    v55 = *v52;
    *(v54 + 2) = *(v52 + 2);
    *v54 = v55;
    ++v74;
    if (v71)
    {
      v56 = &v68;
      mlir::DiagnosticArgument::DiagnosticArgument(&v68, v51);
      v57 = v73;
      if (v74 >= v75)
      {
        if (v73 <= &v68 && v73 + 24 * v74 > &v68)
        {
          v66 = &v68 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v57 = v73;
          v56 = (v73 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v56 = &v68;
          v57 = v73;
        }
      }

      v58 = &v57[24 * v74];
      v59 = *v56;
      *(v58 + 2) = *(v56 + 2);
      *v58 = v59;
      ++v74;
      if (v71)
      {
        mlir::InFlightDiagnostic::report(&v71);
      }
    }
  }

  if (v82 == 1)
  {
    sub_100052F18(&v72);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "path", 4, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "sym_name", 8, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "symbolsToImport", 0xF, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  __src[0] = v3;
  __src[1] = v6;
  v11 = 0;
  v9 = sub_10002CAB8(__src, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return sub_10002C12C(__src, v11, v9, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::getInherentAttr(int a1, void *a2, _DWORD *__s1, size_t __n)
{
  if (__n == 15)
  {
    if (!memcmp(__s1, "symbolsToImport", 0xFuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 4 || *__s1 != 1752457584)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 15)
  {
    result = memcmp(__s1, "symbolsToImport", 0xFuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 16) = v7;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "sym_name", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        *(v5 + 8) = v6;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 4 && *__s1 == 1752457584)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "path", 4, *a2);
    result = mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "sym_name", 8, v6);
    result = mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "symbolsToImport", 0xF, v7);
    return mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::FFIImportOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_10010451C(v8, "path", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010451C(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_1002227CC(v10, "symbolsToImport", 0xF, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1002227CC(uint64_t a1, void **a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v36 = a1;
    v23 = a4;
    v24 = a5;
    Value = mlir::ArrayAttr::getValue(&v36);
    v26 = mlir::ArrayAttr::getValue(&v36);
    v28 = v26 + 8 * v27;
    if (v28 != Value)
    {
      a5 = v24;
      a4 = v23;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        Value += 8;
        if (Value == v28)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v36, a5);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "attribute '";
    v34 = 11;
    v7 = &v32;
    v8 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v30 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v8 = v38;
        v7 = (v38 + v30);
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
    if (v36)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = "' failed to satisfy constraint: ";
        v34 = 32;
        v11 = &v32;
        v12 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v31 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = v38;
            v11 = (v38 + v31);
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
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
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

    v16 = __p;
    if (__p)
    {
      v17 = v45;
      v18 = __p;
      if (v45 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v45 = v16;
      operator delete(v18);
    }

    v19 = v42;
    if (v42)
    {
      v20 = v43;
      v21 = v42;
      if (v43 != v42)
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
        v21 = v42;
      }

      v43 = v19;
      operator delete(v21);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (sub_10010FB18(a1, *(a2 + 256)) & 1) != 0 && (v4 = sub_10010FB18(a1, (v3 + 8)), (v4))
  {
    return sub_100222C78(a1, (v3 + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100222C78(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
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
      goto LABEL_10;
    }
  }

  else
  {
    sub_10028A0B0();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ArrayAttr>(void)::Name;
      v33 = unk_1002C2E00;
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
          v20 = sub_100052FFC(v20 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::FFIImportOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *(v2 + 8);
    if (v5)
    {
      v6 = *(v2 + 16);
      if (v6)
      {
        v29[0] = *this;
        if ((sub_10010451C(v5, "sym_name", 8, sub_10025171C, v29) & 1) == 0)
        {
          return 0;
        }

        v29[0] = *this;
        if ((sub_1002227CC(v6, "symbolsToImport", 0xF, sub_1002517AC, v29) & 1) == 0)
        {
          return 0;
        }

        v29[0] = *this;
        return sub_10010451C(v3, "path", 4, sub_10025171C, v29) & 1;
      }

      v27[0] = "requires attribute 'symbolsToImport'";
      v28 = 259;
      mlir::OpState::emitOpError(this, v27, v29);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v35;
          v23 = __p;
          if (v35 != __p)
          {
            do
            {
              v22 = sub_100052FFC(v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v35 = v21;
          operator delete(v23);
        }

        v12 = v32;
        if (!v32)
        {
          goto LABEL_58;
        }

        v24 = v33;
        v14 = v32;
        if (v33 == v32)
        {
LABEL_57:
          v33 = v12;
          operator delete(v14);
LABEL_58:
          if (v30 != &v31)
          {
            free(v30);
          }

          return v8;
        }

        do
        {
          v25 = *--v24;
          *v24 = 0;
          if (v25)
          {
            operator delete[]();
          }
        }

        while (v24 != v12);
LABEL_56:
        v14 = v32;
        goto LABEL_57;
      }
    }

    else
    {
      v27[0] = "requires attribute 'sym_name'";
      v28 = 259;
      mlir::OpState::emitOpError(this, v27, v29);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v35;
          v18 = __p;
          if (v35 != __p)
          {
            do
            {
              v17 = sub_100052FFC(v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v35 = v16;
          operator delete(v18);
        }

        v12 = v32;
        if (!v32)
        {
          goto LABEL_58;
        }

        v19 = v33;
        v14 = v32;
        if (v33 == v32)
        {
          goto LABEL_57;
        }

        do
        {
          v20 = *--v19;
          *v19 = 0;
          if (v20)
          {
            operator delete[]();
          }
        }

        while (v19 != v12);
        goto LABEL_56;
      }
    }
  }

  else
  {
    v27[0] = "requires attribute 'path'";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, v29);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v35;
        v11 = __p;
        if (v35 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v35 = v9;
        operator delete(v11);
      }

      v12 = v32;
      if (!v32)
      {
        goto LABEL_58;
      }

      v13 = v33;
      v14 = v32;
      if (v33 == v32)
      {
        goto LABEL_57;
      }

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
      goto LABEL_56;
    }
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::FFIImportOp::parse(mlir::ODIE::Compiler::CoreML::FFIImportOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v17[0] = 0;
  v17[1] = 0;
  v16 = 0;
  if ((sub_1002782F8(this) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*this + 32))(this);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!sub_100257608(this, v17, v7))
  {
    return 0;
  }

  if (v17[0])
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 16) = v17[0];
  }

  v19 = 257;
  if (((*(*this + 400))(this, "from", 4, v18) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*this + 32))(this);
  v11 = mlir::NoneType::get(*v9, v10);
  if (!sub_1001D02C8(this, &v16, v11))
  {
    return 0;
  }

  if (v16)
  {
    v12 = *(a2 + 32);
    if (!v12)
    {
      operator new();
    }

    *v12 = v16;
  }

  v15 = (*(*this + 40))(this);
  if (((*(*this + 496))(this, a2 + 112) & 1) != 0 && (v13 = *(a2 + 1), v18[0] = this, v18[1] = &v15, v18[2] = a2, mlir::ODIE::Compiler::CoreML::FFIImportOp::verifyInherentAttrs(v13, a2 + 112, sub_100257868, v18)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::FFIImportOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  v20 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::StringAttr::getValue(&v20);
  (*(*a2 + 88))(a2, Value, v7);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] - v13 > 3uLL)
  {
    *v13 = 1836020326;
    v12[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v12, "from", 4uLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v20 = v22;
  v22[0] = "sym_name";
  v22[1] = 8;
  v22[2] = "symbolsToImport";
  v22[3] = 15;
  v21 = 0x200000002;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, 3uLL, 16);
  v16 = v20 + 16 * v21;
  *v16 = "path";
  v16[1] = 4;
  LODWORD(v21) = v21 + 1;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, v17, v18, v20, v21);
  if (v20 != v22)
  {
    free(v20);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::FillOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10020964C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    v79 = 261;
    v77 = "operand";
    v78 = 7;
    mlir::Operation::emitOpError(&v88, v2, &v77);
    if (v88)
    {
      LODWORD(v85) = 3;
      v86 = " #";
      v87 = 2;
      v5 = &v85;
      v6 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v91 > &v85)
        {
          v68 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v6 = v90;
          v5 = (v90 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v5 = &v85;
          v6 = v90;
        }
      }

      v7 = &v6[24 * v91];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v91;
      if (v88)
      {
        LODWORD(v85) = 5;
        v86 = 1;
        v10 = &v85;
        v11 = v90;
        if (v9 >= v92)
        {
          if (v90 <= &v85 && v90 + 24 * v9 > &v85)
          {
            v69 = &v85 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v9 + 1, 24);
            v11 = v90;
            v10 = (v90 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v9 + 1, 24);
            v10 = &v85;
            v11 = v90;
          }
        }

        v12 = &v11[24 * v91];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v91;
        if (v88)
        {
          LODWORD(v85) = 3;
          v86 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
          v87 = 274;
          v15 = &v85;
          v16 = v90;
          if (v14 >= v92)
          {
            if (v90 <= &v85 && v90 + 24 * v14 > &v85)
            {
              v74 = &v85 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
              v16 = v90;
              v15 = (v90 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v14 + 1, 24);
              v15 = &v85;
              v16 = v90;
            }
          }

          v17 = &v16[24 * v91];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v91;
          if (v88)
          {
            v19 = &v85;
            mlir::DiagnosticArgument::DiagnosticArgument(&v85, v3);
            v20 = v90;
            if (v91 >= v92)
            {
              if (v90 <= &v85 && v90 + 24 * v91 > &v85)
              {
                v75 = &v85 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                v20 = v90;
                v19 = (v90 + v75);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                v19 = &v85;
                v20 = v90;
              }
            }

            v21 = &v20[24 * v91];
            v22 = *v19;
            *(v21 + 2) = v19[2];
            *v21 = v22;
            ++v91;
          }
        }
      }
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
    if (v88)
    {
      mlir::InFlightDiagnostic::report(&v88);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v97;
        v26 = __p;
        if (v97 != __p)
        {
          do
          {
            v25 = sub_100052FFC(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v97 = v24;
        operator delete(v26);
      }

      v27 = v94;
      if (v94)
      {
        v28 = v95;
        v29 = v94;
        if (v95 != v94)
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
          v29 = v94;
        }

        v95 = v27;
        operator delete(v29);
      }

      if (v90 != v93)
      {
        free(v90);
      }
    }

    if (v23)
    {
      goto LABEL_42;
    }

    return 0;
  }

  {
    v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v32 = v4[1];
    v33 = *(v4 + 4);
    if (!v33)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v43 = v4;
    sub_100289E80();
    v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v32 = v43[1];
    v33 = *(v43 + 4);
    if (!v33)
    {
      goto LABEL_62;
    }
  }

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
  if (v34 == &v32[2 * v33] || *v34 != v31)
  {
LABEL_62:
    v88 = v3;
    v89 = 0;
    if (!mlir::ShapedType::hasRank(&v88))
    {
      goto LABEL_3;
    }

    goto LABEL_65;
  }

  v44 = v34[1];
  v88 = v3;
  v89 = v44;
  if (!mlir::ShapedType::hasRank(&v88))
  {
    goto LABEL_3;
  }

LABEL_65:
  v45 = *v3;
  {
    v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v47 = v45[1];
    v48 = *(v45 + 4);
    if (!v48)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v76 = v45;
    sub_100289E80();
    v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v47 = v76[1];
    v48 = *(v76 + 4);
    if (!v48)
    {
      goto LABEL_77;
    }
  }

  v49 = v47;
  v50 = v48;
  do
  {
    v51 = v50 >> 1;
    v52 = &v49[2 * (v50 >> 1)];
    v54 = *v52;
    v53 = v52 + 2;
    v50 += ~(v50 >> 1);
    if (v54 < v46)
    {
      v49 = v53;
    }

    else
    {
      v50 = v51;
    }
  }

  while (v50);
  if (v49 == &v47[2 * v48] || *v49 != v46)
  {
LABEL_77:
    v77 = v3;
    v78 = 0;
    mlir::ShapedType::getShape(&v77);
    if (v55)
    {
      goto LABEL_3;
    }

    goto LABEL_80;
  }

  v56 = v49[1];
  v77 = v3;
  v78 = v56;
  mlir::ShapedType::getShape(&v77);
  if (v57)
  {
    goto LABEL_3;
  }

LABEL_80:
  v58 = *v3;
  {
    v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v60 = v58[1];
    v61 = *(v58 + 4);
    if (v61)
    {
      goto LABEL_82;
    }

LABEL_91:
    v61 = 0;
    v62 = v60;
    goto LABEL_92;
  }

  v70 = v58;
  sub_100289E80();
  v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v60 = v70[1];
  v61 = *(v70 + 4);
  if (!v61)
  {
    goto LABEL_91;
  }

LABEL_82:
  v62 = v60;
  v63 = v61;
  do
  {
    v64 = v63 >> 1;
    v65 = &v62[2 * (v63 >> 1)];
    v67 = *v65;
    v66 = v65 + 2;
    v63 += ~(v63 >> 1);
    if (v67 < v59)
    {
      v62 = v66;
    }

    else
    {
      v63 = v64;
    }
  }

  while (v63);
LABEL_92:
  if (v62 != &v60[2 * v61] && *v62 == v59)
  {
    v71 = v62[1];
  }

  else
  {
    v71 = 0;
  }

  v85 = v3;
  v86 = v71;
  ElementType = mlir::ShapedType::getElementType(&v85);
  if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType))
  {
    v72 = *(*ElementType + 136);
    if (v72 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v72 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && !mlir::Type::isSignedInteger(&ElementType, 4) && !mlir::Type::isSignedInteger(&ElementType, 8) && !mlir::Type::isSignedInteger(&ElementType, 16) && !mlir::Type::isSignedInteger(&ElementType, 32) && !mlir::Type::isSignedInteger(&ElementType, 64) && !mlir::Type::isUnsignedInteger(&ElementType, 4) && !mlir::Type::isUnsignedInteger(&ElementType, 8) && !mlir::Type::isUnsignedInteger(&ElementType, 16) && !mlir::Type::isUnsignedInteger(&ElementType, 32) && !mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v82 = ElementType, v83 = mlir::ComplexType::getElementType(&v82), !mlir::Type::isF16(&v83)) && (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v80 = ElementType, v81 = mlir::ComplexType::getElementType(&v80), !mlir::Type::isF32(&v81))))
      {
        if (!mlir::Type::isSignlessInteger(&ElementType, 1))
        {
          goto LABEL_3;
        }
      }
    }
  }

LABEL_42:
  if (*(*this + 9))
  {
    v40 = *this - 16;
  }

  else
  {
    v40 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
  return sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::FloorDivideOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002088C4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v74 = v6;
  if (!v6)
  {
    a3(&v78, a4);
    if (v78)
    {
      LODWORD(v75) = 3;
      v76 = "expected DictionaryAttr to set properties";
      v77 = 41;
      v25 = &v75;
      v26 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v67 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v26 = v80;
          v25 = (v80 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v25 = &v75;
          v26 = v80;
        }
      }

      v27 = &v26[24 * v81];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v81;
      if (v78)
      {
        mlir::InFlightDiagnostic::report(&v78);
      }
    }

    if (v89 != 1)
    {
      return 0;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v87;
      v31 = __p;
      if (v87 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v87 = v29;
      operator delete(v31);
    }

    v21 = v84;
    if (!v84)
    {
      goto LABEL_70;
    }

    v32 = v85;
    v23 = v84;
    if (v85 == v84)
    {
LABEL_69:
      v85 = v21;
      operator delete(v23);
LABEL_70:
      if (v80 != v83)
      {
        free(v80);
      }

      return 0;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
LABEL_68:
    v23 = v84;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v74, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 54;
        v10 = &v75;
        v11 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v68 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v11 = v80;
            v10 = (v80 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v10 = &v75;
            v11 = v80;
          }
        }

        v12 = &v11[24 * v81];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v81;
        if (v78)
        {
          v14 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v9);
          v15 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v69 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v15 = v80;
              v14 = (v80 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v14 = &v75;
              v15 = v80;
            }
          }

          v16 = &v15[24 * v81];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v87;
        v20 = __p;
        if (v87 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v87 = v18;
        operator delete(v20);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      v22 = v85;
      v23 = v84;
      if (v85 == v84)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v74, "externAttr", 0xAuLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
    {
      v35 = v34;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 55;
        v36 = &v75;
        v37 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v70 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v37 = v80;
            v36 = (v80 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v36 = &v75;
            v37 = v80;
          }
        }

        v38 = &v37[24 * v81];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v81;
        if (v78)
        {
          v40 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v35);
          v41 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v71 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v41 = v80;
              v40 = (v80 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v40 = &v75;
              v41 = v80;
            }
          }

          v42 = &v41[24 * v81];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v87;
        v46 = __p;
        if (v87 != __p)
        {
          do
          {
            v45 = sub_100052FFC(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v87 = v44;
        operator delete(v46);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      v47 = v85;
      v23 = v84;
      if (v85 == v84)
      {
        goto LABEL_69;
      }

      do
      {
        v48 = *--v47;
        *v47 = 0;
        if (v48)
        {
          operator delete[]();
        }
      }

      while (v47 != v21);
      goto LABEL_68;
    }

    a1[1] = v34;
  }

  v49 = mlir::DictionaryAttr::get(&v74, "function_type", 0xDuLL);
  if (v49)
  {
    if (*(*v49 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v50 = v49;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 58;
        v51 = &v75;
        v52 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v72 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v52 = v80;
            v51 = (v80 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v51 = &v75;
            v52 = v80;
          }
        }

        v53 = &v52[24 * v81];
        v54 = *v51;
        *(v53 + 2) = v51[2];
        *v53 = v54;
        ++v81;
        if (v78)
        {
          v55 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v50);
          v56 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v73 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v56 = v80;
              v55 = (v80 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v55 = &v75;
              v56 = v80;
            }
          }

          v57 = &v56[24 * v81];
          v58 = *v55;
          *(v57 + 2) = v55[2];
          *v57 = v58;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if (v89 == 1)
      {
        sub_100052F18(&v79);
      }

      return 0;
    }

    a1[2] = v49;
  }

  v59 = mlir::DictionaryAttr::get(&v74, "no_inline", 9uLL);
  v75 = v59;
  if (v59)
  {
    if (*(*v59 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v78, a4);
LABEL_95:
      sub_100081F48(&v78, v60);
      goto LABEL_96;
    }

    a1[3] = v59;
  }

  v61 = mlir::DictionaryAttr::get(&v74, "param_decls", 0xBuLL);
  v75 = v61;
  if (!v61)
  {
LABEL_92:
    v63 = mlir::DictionaryAttr::get(&v74, "res_attrs", 9uLL);
    v75 = v63;
    if (v63)
    {
      if (*(*v63 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_95;
      }

      a1[5] = v63;
    }

    v65 = mlir::DictionaryAttr::get(&v74, "safeTransforms", 0xEuLL);
    v75 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_96;
      }

      a1[6] = v65;
    }

    v66 = mlir::DictionaryAttr::get(&v74, "sym_name", 8uLL);
    v75 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_96;
      }

      a1[7] = v66;
    }

    return 1;
  }

  if (*(*v61 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    a1[4] = v61;
    goto LABEL_92;
  }

  a3(&v78, a4);
LABEL_96:
  sub_10005D220(v62, &v75);
  sub_100059A74(&v78);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v62 = a1;
  v63 = v65;
  v64 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v62, "arg_attrs", 9, *a2);
  v5 = v64;
  if (v64 >= HIDWORD(v64))
  {
    v46 = NamedAttr;
    v47 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
    v4 = v47;
    NamedAttr = v46;
    v5 = v64;
  }

  v6 = (v63 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v64 + 1;
  LODWORD(v64) = v64 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v62, "externAttr", 0xA, v8);
    v11 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v48 = v9;
      v49 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v10 = v49;
      v9 = v48;
      v11 = v64;
    }

    v12 = (v63 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v62, "function_type", 0xD, v13);
    v16 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v50 = v14;
      v51 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v15 = v51;
      v14 = v50;
      v16 = v64;
    }

    v17 = (v63 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v62, "no_inline", 9, v18);
    v21 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v52 = v19;
      v53 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v20 = v53;
      v19 = v52;
      v21 = v64;
    }

    v22 = (v63 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v62, "param_decls", 0xB, v23);
    v26 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v54 = v24;
      v55 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v25 = v55;
      v24 = v54;
      v26 = v64;
    }

    v27 = (v63 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v62, "res_attrs", 9, v28);
    v31 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v56 = v29;
      v57 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v30 = v57;
      v29 = v56;
      v31 = v64;
    }

    v32 = (v63 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v62, "safeTransforms", 0xE, v33);
    v36 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v58 = v34;
      v59 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v35 = v59;
      v34 = v58;
      v36 = v64;
    }

    v37 = (v63 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v62, "sym_name", 8, v38);
    v41 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v60 = v39;
      v61 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v40 = v61;
      v39 = v60;
      v41 = v64;
    }

    v42 = (v63 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v43 = v63;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v63 == v65)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v62, v63, v7);
  v43 = v63;
  if (v63 != v65)
  {
LABEL_36:
    free(v43);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::FuncOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v28 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v26 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v24 = v19;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  v32 = 0;
  v33 = 0xFF51AFD7ED558CCDLL;
  v29[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v29[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  return sub_100257BC8(v29, 0, v30, v31, &v28, &v27, &v26, &v25, &v24, &v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "param_decls", 0xBuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 13)
    {
      if (!memcmp(__s1, "function_type", 0xDuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 14 && !memcmp(__s1, "safeTransforms", 0xEuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      return *a2;
    }

    if (!memcmp(__s1, "no_inline", 9uLL))
    {
      return a2[3];
    }

    if (!memcmp(__s1, "res_attrs", 9uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 10 || memcmp(__s1, "externAttr", 0xAuLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    switch(a3)
    {
      case 11:
        result = memcmp(__s1, "param_decls", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[4] = v8;
          }

          else
          {
            v5[4] = 0;
          }
        }

        break;
      case 13:
        result = memcmp(__s1, "function_type", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            v5[2] = v12;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "safeTransforms", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
            {
              v6 = a4;
            }

            else
            {
              v6 = 0;
            }

            v5[6] = v6;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        result = memcmp(__s1, "sym_name", 8uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[7] = v7;
          }

          else
          {
            v5[7] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            *result = v14;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "no_inline", 9uLL);
          if (result)
          {
            result = memcmp(__s1, "res_attrs", 9uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
                {
                  v11 = a4;
                }

                else
                {
                  v11 = 0;
                }

                v5[5] = v11;
              }

              else
              {
                v5[5] = 0;
              }
            }
          }

          else if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            v5[3] = v15;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 10:
        result = memcmp(__s1, "externAttr", 0xAuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[1] = v13;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "arg_attrs", 9, *a2);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "externAttr", 0xA, v6);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "function_type", 0xD, v7);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "no_inline", 9, v8);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v9 = a2[4];
  if (v9)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "param_decls", 0xB, v9);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v10 = a2[5];
  if (v10)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "res_attrs", 9, v10);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v11 = a2[6];
  if (v11)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "safeTransforms", 0xE, v11);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v12 = a2[7];
  if (v12)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "sym_name", 8, v12);
    return mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100215230(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_1002262A8(v9, "externAttr", 0xA, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_1002265E4(v10, "function_type", 0xD, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (sub_1002155CC(v11, "no_inline", 9, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (sub_100217540(v12, "param_decls", 0xB, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (sub_100215230(v13, "res_attrs", 9, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (sub_100226980(v14, "safeTransforms", 0xE, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (sub_10010451C(v15, "sym_name", 8, a3, a4) & 1) != 0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002262A8(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = "' failed to satisfy constraint: ";
        v28 = 32;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
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
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

uint64_t sub_1002265E4(void **a1, void **a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 17) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    goto LABEL_5;
  }

  v35 = a1;
  v8 = a4;
  v9 = a5;
  Value = mlir::TypeAttr::getValue(&v35);
  a5 = v9;
  a4 = v8;
  if (*(*Value + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_5;
  }

  v31 = a1;
  v11 = mlir::TypeAttr::getValue(&v31);
  a5 = v9;
  a4 = v8;
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    return 1;
  }

LABEL_5:
  a4(&v35, a5);
  if (v35)
  {
    LODWORD(v31) = 3;
    v32 = "attribute '";
    v33 = 11;
    v12 = &v31;
    v13 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v31 && v37 + 24 * v38 > &v31)
      {
        v29 = &v31 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v13 = v37;
        v12 = (v37 + v29);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v12 = &v31;
        v13 = v37;
      }
    }

    v14 = &v13[24 * v38];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    ++v38;
    if (v35)
    {
      v34 = 261;
      v31 = a2;
      v32 = a3;
      mlir::Diagnostic::operator<<(&v36, &v31);
      if (v35)
      {
        LODWORD(v31) = 3;
        v32 = "' failed to satisfy constraint: type attribute of function type";
        v33 = 63;
        v16 = &v31;
        v17 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v31 && v37 + 24 * v38 > &v31)
          {
            v30 = &v31 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v17 = v37;
            v16 = (v37 + v30);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v16 = &v31;
            v17 = v37;
          }
        }

        v18 = &v17[24 * v38];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v38;
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
  if (v35)
  {
    mlir::InFlightDiagnostic::report(&v35);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v44;
      v23 = __p;
      if (v44 != __p)
      {
        do
        {
          v22 = sub_100052FFC(v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v44 = v21;
      operator delete(v23);
    }

    v24 = v41;
    if (v41)
    {
      v25 = v42;
      v26 = v41;
      if (v42 != v41)
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
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v20;
}

uint64_t sub_100226980(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = "' failed to satisfy constraint: dictionary of named attribute values";
        v28 = 68;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
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
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (sub_1001E1040(a1, *(a2 + 256)) && sub_100226E20(a1, v3 + 1) && (sub_1001E1998(a1, v3 + 2) & 1) != 0 && sub_1001E14EC(a1, v3 + 3) && (sub_1001D69EC(a1, v3 + 4) & 1) != 0 && sub_1001E1040(a1, v3 + 5) && sub_1002272CC(a1, v3 + 6))
  {
    return sub_10010FB18(a1, v3 + 7) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100226E20(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
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
    sub_10028A7FC();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ExternAttr>(void)::Name;
      v33 = unk_1002C3010;
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
          v21 = sub_100052FFC(v21 - 1);
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

BOOL sub_1002272CC(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v30[16] = 257;
  (*(*a1 + 16))(&v35, a1, v30);
  if (v35)
  {
    LODWORD(v32) = 3;
    *(&v32 + 1) = "expected ";
    v33 = 9;
    v6 = &v32;
    v7 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v32 && v37 + 24 * v38 > &v32)
      {
        v27 = &v32 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v7 = v37;
        v6 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = &v32;
        v7 = v37;
      }
    }

    v8 = &v7[24 * v38];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v38;
  }

  {
    if (v35)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10028A83C();
    if (v35)
    {
LABEL_11:
      v34 = 261;
      v32 = llvm::getTypeName<mlir::DictionaryAttr>(void)::Name;
      mlir::Diagnostic::operator<<(&v36, &v32);
      if (v35)
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = ", but got: ";
        v33 = 11;
        v10 = &v32;
        v11 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v32 && v37 + 24 * v38 > &v32)
          {
            v28 = &v32 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v11 = v37;
            v10 = (v37 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v10 = &v32;
            v11 = v37;
          }
        }

        v12 = &v11[24 * v38];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v38;
        if (v35)
        {
          v14 = &v32;
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          v15 = v37;
          if (v38 >= v39)
          {
            if (v37 <= &v32 && v37 + 24 * v38 > &v32)
            {
              v29 = &v32 - v37;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
              v15 = v37;
              v14 = (v37 + v29);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
              v14 = &v32;
              v15 = v37;
            }
          }

          v16 = &v15[24 * v38];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v38;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
  v19 = result;
  if (v35)
  {
    mlir::InFlightDiagnostic::report(&v35);
    result = v19;
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v44;
      v22 = __p;
      if (v44 != __p)
      {
        do
        {
          v21 = sub_100052FFC(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v44 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v41;
    if (v41)
    {
      v24 = v42;
      v25 = v41;
      if (v42 != v41)
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
        v25 = v41;
      }

      v42 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v37 != v40)
    {
      free(v37);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::writeProperties(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[2];
  if (v5)
  {
    v6 = v2[4];
    if (v6)
    {
      v7 = v2[7];
      if (v7)
      {
        v9 = v2[1];
        v10 = v2[3];
        v11 = v2[5];
        v12 = v2[6];
        v34[0] = *this;
        if ((sub_10010451C(v7, "sym_name", 8, sub_10025171C, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((sub_1002265E4(v5, "function_type", 0xD, sub_1002517DC, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((sub_100217540(v6, "param_decls", 0xB, sub_10025174C, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((sub_1002155CC(v10, "no_inline", 9, sub_1002516BC, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((sub_1002262A8(v9, "externAttr", 0xA, sub_10025180C, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((sub_100226980(v12, "safeTransforms", 0xE, sub_10025183C, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((sub_100215230(v3, "arg_attrs", 9, sub_1002516EC, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        return sub_100215230(v11, "res_attrs", 9, sub_1002516EC, v34) & 1;
      }

      v32[0] = "requires attribute 'sym_name'";
      v33 = 259;
      mlir::OpState::emitOpError(this, v32, v34);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

        v26 = __p;
        if (__p)
        {
          v27 = v40;
          v28 = __p;
          if (v40 != __p)
          {
            do
            {
              v27 = sub_100052FFC(v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v40 = v26;
          operator delete(v28);
        }

        v17 = v37;
        if (!v37)
        {
          goto LABEL_63;
        }

        v29 = v38;
        v19 = v37;
        if (v38 == v37)
        {
LABEL_62:
          v38 = v17;
          operator delete(v19);
LABEL_63:
          if (v35 != &v36)
          {
            free(v35);
          }

          return v13;
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

        while (v29 != v17);
LABEL_61:
        v19 = v37;
        goto LABEL_62;
      }
    }

    else
    {
      v32[0] = "requires attribute 'param_decls'";
      v33 = 259;
      mlir::OpState::emitOpError(this, v32, v34);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

        v21 = __p;
        if (__p)
        {
          v22 = v40;
          v23 = __p;
          if (v40 != __p)
          {
            do
            {
              v22 = sub_100052FFC(v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v40 = v21;
          operator delete(v23);
        }

        v17 = v37;
        if (!v37)
        {
          goto LABEL_63;
        }

        v24 = v38;
        v19 = v37;
        if (v38 == v37)
        {
          goto LABEL_62;
        }

        do
        {
          v25 = *--v24;
          *v24 = 0;
          if (v25)
          {
            operator delete[]();
          }
        }

        while (v24 != v17);
        goto LABEL_61;
      }
    }
  }

  else
  {
    v32[0] = "requires attribute 'function_type'";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, v34);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
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

      v14 = __p;
      if (__p)
      {
        v15 = v40;
        v16 = __p;
        if (v40 != __p)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v40 = v14;
        operator delete(v16);
      }

      v17 = v37;
      if (!v37)
      {
        goto LABEL_63;
      }

      v18 = v38;
      v19 = v37;
      if (v38 == v37)
      {
        goto LABEL_62;
      }

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
      goto LABEL_61;
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v38 = v6;
  if (!v6)
  {
    a3(v42, a4);
    if (v42[0])
    {
      v39 = 3;
      v40 = "expected DictionaryAttr to set properties";
      v41 = 41;
      v25 = &v39;
      v26 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v35 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v26 = v43;
          v25 = (v43 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v25 = &v39;
          v26 = v43;
        }
      }

      v27 = &v26[24 * v44];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v44;
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }
    }

    if (v52 != 1)
    {
      return 0;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v50;
      v31 = __p;
      if (v50 != __p)
      {
        do
        {
          v30 = sub_100052FFC(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v50 = v29;
      operator delete(v31);
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_49;
    }

    v32 = v48;
    v23 = v47;
    if (v48 == v47)
    {
      goto LABEL_48;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v38, "approximate", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v42, a4);
  if (v42[0])
  {
    v39 = 3;
    v41 = 56;
    v10 = &v39;
    v11 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v36 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v11 = v43;
        v10 = (v43 + v36);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v10 = &v39;
        v11 = v43;
      }
    }

    v12 = &v11[24 * v44];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v44;
    if (v42[0])
    {
      v14 = &v39;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, v9);
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v44 > &v39)
        {
          v37 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v39;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v44;
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }
    }
  }

  if (v52)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v50;
      v20 = __p;
      if (v50 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v50 = v18;
      operator delete(v20);
    }

    v21 = v47;
    if (!v47)
    {
      goto LABEL_49;
    }

    v22 = v48;
    v23 = v47;
    if (v48 == v47)
    {
LABEL_48:
      v48 = v21;
      operator delete(v23);
LABEL_49:
      if (v43 != v46)
      {
        free(v43);
      }

      return 0;
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
LABEL_47:
    v23 = v47;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "approximate", 0xB, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6D69786F72707061 ? (v4 = *(a3 + 3) == 0x6574616D69786F72) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::GELUOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6D69786F72707061 && *(a2 + 3) == 0x6574616D69786F72)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "approximate", 0xB, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

uint64_t sub_100228714(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = "' failed to satisfy constraint: The gelu approximation algorithm to use: 'none' | 'tanh' | 'sigmoid'";
        v28 = 100;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
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
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_100228B1C(a1, v2);
}

BOOL sub_100228B1C(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
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
    sub_10028A8C0();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(void)::Name;
      v33 = *algn_1002C3068;
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
          v21 = sub_100052FFC(v21 - 1);
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

mlir::MLIRContext *mlir::ODIE::Compiler::CoreML::GELUOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v29 = v2;
  if ((sub_100228714(v3, "approximate", 0xB, sub_10025186C, &v29) & 1) == 0 || !sub_10020FDD4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!sub_10020FDD4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v26 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v29 = sub_10020BDF0(&v26);
    v30 = v7;
    Shape = mlir::ShapedType::getShape(&v29);
    v10 = v9;
    v25 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v27[0] = sub_10020BDF0(&v25);
    v27[1] = v11;
    v12 = mlir::ShapedType::getShape(v27);
    if (v10 == v13 && !memcmp(Shape, v12, 8 * v10))
    {
      return 1;
    }

    else
    {
      v27[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
      v28 = 259;
      mlir::OpState::emitOpError(this, v27, &v29);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
      if (v29)
      {
        v15 = result;
        mlir::InFlightDiagnostic::report(&v29);
        result = v15;
      }

      if (v38 == 1)
      {
        v16 = result;
        sub_100052F18(&v30);
        return v16;
      }
    }
  }

  else
  {
    v27[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &v29);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
    v17 = result;
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
      result = v17;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v36;
        v20 = __p;
        if (v36 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v36 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v33;
      if (v33)
      {
        v22 = v34;
        v23 = v33;
        if (v34 != v33)
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
          v23 = v33;
        }

        v34 = v21;
        operator delete(v23);
        result = v17;
      }

      if (v31 != &v32)
      {
        free(v31);
        return v17;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10020B840(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || (sub_10020B0FC(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v29 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30[0] = sub_10020BDF0(&v29);
  v30[1] = v4;
  Shape = mlir::ShapedType::getShape(v30);
  v7 = v6;
  v28 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v26[0] = sub_10020BDF0(&v28);
  v26[1] = v8;
  v9 = mlir::ShapedType::getShape(v26);
  if (v7 == v10 && !memcmp(Shape, v9, 8 * v7))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
      }

      v21 = __p;
      if (__p)
      {
        v22 = v36;
        v23 = __p;
        if (v36 != __p)
        {
          do
          {
            v22 = sub_100052FFC(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v36 = v21;
        operator delete(v23);
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_48;
      }

      v24 = v34;
      v18 = v33;
      if (v34 == v33)
      {
        goto LABEL_47;
      }

      do
      {
        v25 = *--v24;
        *v24 = 0;
        if (v25)
        {
          operator delete[]();
        }
      }

      while (v24 != v16);
      goto LABEL_46;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 and operand 1 must have the same shape.";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v12 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v12;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v12;
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
        result = v12;
      }

      v16 = v33;
      if (!v33)
      {
        goto LABEL_48;
      }

      v17 = v34;
      v18 = v33;
      if (v34 == v33)
      {
LABEL_47:
        v34 = v16;
        operator delete(v18);
        result = v12;
LABEL_48:
        if (v31 != &v32)
        {
          free(v31);
          return v12;
        }

        return result;
      }

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
LABEL_46:
      v18 = v33;
      goto LABEL_47;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::parse(mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v23, 1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*this + 400))(this, "at", 2, v25) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v20, 1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*this + 400))(this, "along", 5, v25) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  v25[0] = 0;
  if (!sub_1002566A4(this, v25))
  {
    return 0;
  }

  v15 = v25[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v25[0] = 0;
  if (!sub_1002566A4(this, v25))
  {
    return 0;
  }

  v13 = v25[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v25[0] = 0;
  if (sub_1002572B0(this, v25) && (v11 = v25[0], ((*(*this + 296))(this) & 1) != 0) && (v26 = 257, ((*(*this + 400))(this, "to", 2, v25) & 1) != 0) && (v25[0] = 0, sub_1002566A4(this, v25)) && (v9 = v25[0], (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (sub_1001D4484(a2, &v9, 1), (sub_10020E908(this, v22, v14, v5, a2 + 16) & 1) != 0) && (sub_10020E908(this, v19, v12, v6, a2 + 16) & 1) != 0)
  {
    return sub_10020E908(this, v16, v10, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29793;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "at", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if ((v14[3] - v15) > 4)
  {
    *(v15 + 4) = 103;
    *v15 = 1852796001;
    v14[4] += 5;
  }

  else
  {
    llvm::raw_ostream::write(v14, "along", 5uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++v24[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++v30[4];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, ")", 1uLL);
  }

  else
  {
    *v35 = 41;
    ++v34[4];
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

  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] - v39 > 1uLL)
  {
    *v39 = 28532;
    v38[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, "to", 2uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  if (*(*this + 9))
  {
    v42 = *this - 16;
  }

  else
  {
    v42 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = v49;
  v48 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v45, v47, v48);
  if (v47 != v49)
  {
    free(v47);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002088C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10020B840(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002088C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
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
      result = v6;
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
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::parse(mlir::ODIE::Compiler::CoreML::GatherNdOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v20 = 257;
  if (((*(*this + 400))(this, "at", 2, v19) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (!sub_1002566A4(this, v19))
  {
    return 0;
  }

  v12 = v19[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (sub_1002566A4(this, v19) && (v10 = v19[0], ((*(*this + 296))(this) & 1) != 0) && (v20 = 257, ((*(*this + 400))(this, "to", 2, v19) & 1) != 0) && (v8 = 0, sub_1002566A4(this, &v8)) && (v19[0] = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (sub_1001D4484(a2, v19, 1), (sub_10020E908(this, v16, v11, v5, a2 + 16) & 1) != 0))
  {
    return sub_10020E908(this, v13, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GatherNdOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29793;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "at", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
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
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++v18[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ")", 1uLL);
  }

  else
  {
    *v25 = 41;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] - v29 > 1uLL)
  {
    *v29 = 28532;
    v28[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "to", 2uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  if (*(*this + 9))
  {
    v32 = *this - 16;
  }

  else
  {
    v32 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v37 = v39;
  v38 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v35, v37, v38);
  if (v37 != v39)
  {
    free(v37);
  }
}