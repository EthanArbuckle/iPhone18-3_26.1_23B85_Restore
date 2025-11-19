BOOL mlir::ODIE::Compiler::CoreML::GELUOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_100244454(a1, v2);
}

BOOL sub_100244454(uint64_t a1, uint64_t *a2)
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
    sub_1002AB4FC();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(void)::Name;
      v33 = *algn_1002E30C8;
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
  if ((sub_10024404C(v3, "approximate", 0xB, sub_10026D214, &v29) & 1) == 0 || !sub_10022B70C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!sub_10022B70C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v26 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v29 = sub_100227728(&v26);
    v30 = v7;
    Shape = mlir::ShapedType::getShape(&v29);
    v10 = v9;
    v25 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v27[0] = sub_100227728(&v25);
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
        sub_10005BE10(&v30);
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
            v19 = sub_10005BEF4(v19 - 1);
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
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_100227178(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || (sub_100226A34(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v29 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30[0] = sub_100227728(&v29);
  v30[1] = v4;
  Shape = mlir::ShapedType::getShape(v30);
  v7 = v6;
  v28 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v26[0] = sub_100227728(&v28);
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
            v22 = sub_10005BEF4(v22 - 1);
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
            v14 = sub_10005BEF4(v14 - 1);
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
  if (!sub_10027204C(this, v25))
  {
    return 0;
  }

  v15 = v25[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v25[0] = 0;
  if (!sub_10027204C(this, v25))
  {
    return 0;
  }

  v13 = v25[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v25[0] = 0;
  if (sub_100272C58(this, v25) && (v11 = v25[0], ((*(*this + 296))(this) & 1) != 0) && (v26 = 257, ((*(*this + 400))(this, "to", 2, v25) & 1) != 0) && (v25[0] = 0, sub_10027204C(this, v25)) && (v9 = v25[0], (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (sub_1001EFDBC(a2, &v9, 1), (sub_10022A240(this, v22, v14, v5, a2 + 16) & 1) != 0) && (sub_10022A240(this, v19, v12, v6, a2 + 16) & 1) != 0)
  {
    return sub_10022A240(this, v16, v10, v7, a2 + 16) & 1;
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
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_100227178(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
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
          v8 = sub_10005BEF4(v8 - 1);
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
  if (!sub_10027204C(this, v19))
  {
    return 0;
  }

  v12 = v19[0];
  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v19[0] = 0;
  if (sub_10027204C(this, v19) && (v10 = v19[0], ((*(*this + 296))(this) & 1) != 0) && (v20 = 257, ((*(*this + 400))(this, "to", 2, v19) & 1) != 0) && (v8 = 0, sub_10027204C(this, &v8)) && (v19[0] = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (sub_1001EFDBC(a2, v19, 1), (sub_10022A240(this, v16, v11, v5, a2 + 16) & 1) != 0))
  {
    return sub_10022A240(this, v13, v9, v6, a2 + 16) & 1;
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

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v13 = &v41;
      v14 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = v45;
          v13 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v13 = &v41;
          v14 = v45;
        }
      }

      v15 = &v14[24 * v46];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

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
          v18 = sub_10005BEF4(v18 - 1);
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
      goto LABEL_49;
    }

    v21 = v50;
    v22 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v23 = *--v21;
      *v21 = 0;
      if (v23)
      {
        operator delete[]();
      }
    }

    while (v21 != v20);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "member", 6uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = sub_10006BC04(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 51;
    v24 = &v41;
    v25 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v25 = v45;
        v24 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v24 = &v41;
        v25 = v45;
      }
    }

    v26 = &v25[24 * v46];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    ++v46;
    if (v44[0])
    {
      v28 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v29 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v29 = v45;
          v28 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v28 = &v41;
          v29 = v45;
        }
      }

      v30 = &v29[24 * v46];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v52;
      v34 = __p;
      if (v52 != __p)
      {
        do
        {
          v33 = sub_10005BEF4(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v52 = v32;
      operator delete(v34);
    }

    v20 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v35 = v50;
    v22 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v20;
      operator delete(v22);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v36 = *--v35;
      *v35 = 0;
      if (v36)
      {
        operator delete[]();
      }
    }

    while (v35 != v20);
LABEL_47:
    v22 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "member", 6, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1651336557 ? (v4 = *(a3 + 4) == 29285) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::GetMemberOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6 && *a2 == 1651336557 && *(a2 + 4) == 29285)
  {
    if (a4)
    {
      v5 = result;
      v6 = sub_10006BC04(a4);
      result = v5;
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      *result = 0;
      result[1] = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "member", 6, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GetMemberOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_100202150(a1, v2);
}

BOOL mlir::ODIE::Compiler::CoreML::GetMemberOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (sub_100231240(v1, "member", 6, sub_10026D034, v15))
    {
      if (*(*this + 9))
      {
        v3 = *this - 16;
      }

      else
      {
        v3 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'member'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v21;
        v7 = __p;
        if (v21 != __p)
        {
          do
          {
            v6 = sub_10005BEF4(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v21 = v5;
        operator delete(v7);
      }

      v8 = v18;
      if (v18)
      {
        v9 = v19;
        v10 = v18;
        if (v19 != v18)
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
          v10 = v18;
        }

        v19 = v8;
        operator delete(v10);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_100224F84(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
          v30 = sub_10005BEF4(v30 - 1);
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
            v19 = sub_10005BEF4(v19 - 1);
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

  v34 = mlir::DictionaryAttr::get(&v74, "externalize", 0xBuLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v35 = v34;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 56;
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
            v45 = sub_10005BEF4(v45 - 1);
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
        sub_10005BE10(&v79);
      }

      return 0;
    }

    a1[2] = v49;
  }

  v59 = mlir::DictionaryAttr::get(&v74, "no_inline", 9uLL);
  v75 = v59;
  if (!v59)
  {
LABEL_89:
    v62 = mlir::DictionaryAttr::get(&v74, "param_decls", 0xBuLL);
    v75 = v62;
    if (v62)
    {
      if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_104;
      }

      a1[4] = v62;
    }

    v63 = mlir::DictionaryAttr::get(&v74, "priv", 4uLL);
    v75 = v63;
    if (v63)
    {
      if (*(*v63 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_104;
      }

      a1[5] = v63;
    }

    v64 = mlir::DictionaryAttr::get(&v74, "res_attrs", 9uLL);
    v75 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_87;
      }

      a1[6] = v64;
    }

    v65 = mlir::DictionaryAttr::get(&v74, "sym_name", 8uLL);
    v75 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_104;
      }

      a1[7] = v65;
    }

    return 1;
  }

  if (*(*v59 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v59;
    goto LABEL_89;
  }

  a3(&v78, a4);
LABEL_87:
  sub_10008AE40(&v78, v60);
LABEL_104:
  sub_100066118(v61, &v75);
  sub_10006296C(&v78);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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
    v9 = mlir::Builder::getNamedAttr(&v62, "externalize", 0xB, v8);
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
    v29 = mlir::Builder::getNamedAttr(&v62, "priv", 4, v28);
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
    v34 = mlir::Builder::getNamedAttr(&v62, "res_attrs", 9, v33);
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

unint64_t mlir::ODIE::Compiler::CoreML::GraphOp::computePropertiesHash(void *a1)
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
  return sub_100273570(v29, 0, v30, v31, &v28, &v27, &v26, &v25, &v24, &v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 8)
  {
    if (__n == 4)
    {
      if (!memcmp(__s1, "priv", 4uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 8 && !memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "function_type", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "externalize", 0xBuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "param_decls", 0xBuLL))
    {
      return a2[4];
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

  if (!memcmp(__s1, "no_inline", 9uLL))
  {
    return a2[3];
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      result = memcmp(__s1, "priv", 4uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[5] = v12;
        }

        else
        {
          v5[5] = 0;
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
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[7] = v15;
        }

        else
        {
          v5[7] = 0;
        }
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "function_type", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[2] = v9;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 11:
        result = memcmp(__s1, "externalize", 0xBuLL);
        if (result)
        {
          result = memcmp(__s1, "param_decls", 0xBuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[4] = v11;
            }

            else
            {
              v5[4] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
                  v8 = a4;
                }

                else
                {
                  v8 = 0;
                }

                v5[6] = v8;
              }

              else
              {
                v5[6] = 0;
              }
            }
          }

          else if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v16 = a4;
            }

            else
            {
              v16 = 0;
            }

            v5[3] = v16;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "arg_attrs", 9, *a2);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "externalize", 0xB, v6);
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
    mlir::NamedAttribute::NamedAttribute(&v13, "priv", 4, v10);
    result = mlir::NamedAttrList::push_back(a3, v13, v14);
  }

  v11 = a2[6];
  if (v11)
  {
    mlir::NamedAttribute::NamedAttribute(&v13, "res_attrs", 9, v11);
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

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100230B68(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_100230F04(v9, "externalize", 0xB, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_100241F1C(v10, "function_type", 0xD, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (sub_100230F04(v11, "no_inline", 9, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (sub_100232E78(v12, "param_decls", 0xB, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (sub_100230F04(v13, "priv", 4, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (sub_100230B68(v14, "res_attrs", 9, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (sub_10010DF98(v15, "sym_name", 8, a3, a4) & 1) != 0)
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

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInvariantsImpl(mlir::Operation **this)
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
        v12 = v2[5];
        v11 = v2[6];
        v34[0] = *this;
        if (sub_10010DF98(v7, "sym_name", 8, sub_10026D0C4, v34) & 1) != 0 && (v34[0] = *this, (sub_100241F1C(v5, "function_type", 0xD, sub_10026D184, v34)) && (v34[0] = *this, (sub_100232E78(v6, "param_decls", 0xB, sub_10026D0F4, v34)) && (v34[0] = *this, (sub_100230F04(v12, "priv", 4, sub_10026D064, v34)) && (v34[0] = *this, (sub_100230F04(v9, "externalize", 0xB, sub_10026D064, v34)) && (v34[0] = *this, (sub_100230F04(v10, "no_inline", 9, sub_10026D064, v34)) && (v34[0] = *this, (sub_100230B68(v3, "arg_attrs", 9, sub_10026D094, v34)) && (v34[0] = *this, (sub_100230B68(v11, "res_attrs", 9, sub_10026D094, v34)))
        {
          return sub_1002496D0(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) & 1;
        }

        else
        {
          return 0;
        }
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
              v27 = sub_10005BEF4(v27 - 1);
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
          goto LABEL_64;
        }

        v29 = v38;
        v19 = v37;
        if (v38 == v37)
        {
LABEL_63:
          v38 = v17;
          operator delete(v19);
LABEL_64:
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
LABEL_62:
        v19 = v37;
        goto LABEL_63;
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
              v22 = sub_10005BEF4(v22 - 1);
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
          goto LABEL_64;
        }

        v24 = v38;
        v19 = v37;
        if (v38 == v37)
        {
          goto LABEL_63;
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
        goto LABEL_62;
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
            v15 = sub_10005BEF4(v15 - 1);
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
        goto LABEL_64;
      }

      v18 = v38;
      v19 = v37;
      if (v38 == v37)
      {
        goto LABEL_63;
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
      goto LABEL_62;
    }
  }

  return v13;
}

uint64_t sub_1002496D0(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a2 + 8);
  if (v5 == a2 || *(v5 + 8) == a2)
  {
    return 1;
  }

  v32 = "region #";
  v33 = 259;
  mlir::Operation::emitOpError(&v37, a1, &v32);
  if (v37)
  {
    LODWORD(v30[0]) = 5;
    v30[1] = a5;
    v9 = v30;
    v10 = v39;
    if (v40 >= v41)
    {
      if (v39 <= v30 && v39 + 24 * v40 > v30)
      {
        v26 = v30 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v10 = v39;
        v9 = (v39 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v9 = v30;
        v10 = v39;
      }
    }

    v11 = &v10[24 * v40];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v40;
  }

  if (a4)
  {
    v29 = 1283;
    v28[0] = " ('";
    v28[2] = a3;
    v28[3] = a4;
    v30[0] = v28;
    v30[2] = "') ";
    v31 = 770;
    if (!v37)
    {
      goto LABEL_14;
    }

LABEL_11:
    mlir::Diagnostic::operator<<(&v38, v30);
    if (v37)
    {
      v34 = 3;
      v35 = "failed to verify constraint: region with at most 1 blocks";
      v36 = 57;
      v14 = &v34;
      v15 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v34 && v39 + 24 * v40 > &v34)
        {
          v27 = &v34 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v15 = v39;
          v14 = (v39 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v14 = &v34;
          v15 = v39;
        }
      }

      v16 = &v15[24 * v40];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v40;
    }

    goto LABEL_14;
  }

  v30[0] = " ";
  v31 = 259;
  if (v37)
  {
    goto LABEL_11;
  }

LABEL_14:
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v46;
      v20 = __p;
      if (v46 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v46 = v18;
      operator delete(v20);
    }

    v21 = v43;
    if (v43)
    {
      v22 = v44;
      v23 = v43;
      if (v44 != v43)
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
        v23 = v43;
      }

      v44 = v21;
      operator delete(v23);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002241FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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
  return sub_1002249E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002256D0(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 9);
  v4 = *(*this + 9) ? *this - 16 : 0;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  if (sub_10022D920(v2, ((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10), "thenRegion", 10, 0))
  {
    return sub_1002496D0(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, "elseRegion", 10, 1u) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_100236FE8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_1002263C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::parse(mlir::ODIE::Compiler::CoreML::ImaginaryPartOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
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

  v8 = 0;
  if (!sub_10027204C(this, &v8))
  {
    return 0;
  }

  v10 = v8;
  if (((*(*this + 296))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 56))(this) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!sub_10027204C(this, &v7))
  {
    return 0;
  }

  v8 = v7;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  sub_1001EFDBC(a2, &v8, 1);
  return sub_10022A240(this, v11, v9, v5, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
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

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++v12[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
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
  if (v18[3] - v19 > 1uLL)
  {
    *v19 = 15917;
    v18[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "->", 2uLL);
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

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = v29;
  v28 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v25, v27, v28);
  if (v27 != v29)
  {
    free(v27);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
          v30 = sub_10005BEF4(v30 - 1);
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
            v19 = sub_10005BEF4(v19 - 1);
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
            v45 = sub_10005BEF4(v45 - 1);
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

  v50 = mlir::DictionaryAttr::get(&v67, "toImport", 8uLL);
  if (!v50)
  {
    return 1;
  }

  if (*(*v50 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    a1[2] = v50;
    return 1;
  }

  v51 = v50;
  a3(&v71, a4);
  if (v71)
  {
    v68 = 3;
    v70 = 53;
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
    sub_10005BE10(&v72);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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
    v14 = mlir::Builder::getNamedAttr(&v27, "toImport", 8, v13);
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

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::computePropertiesHash(void *a1)
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
  v9 = sub_10002DCBC(__src, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return sub_10002D330(__src, v11, v9, v14);
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 4 && *a3 == 1752457584)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    return a2[1];
  }

  if (*a3 != 0x74726F706D496F74)
  {
    return 0;
  }

  return a2[2];
}

void *mlir::ODIE::Compiler::CoreML::ImportOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
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

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }

    else if (*a2 == 0x74726F706D496F74)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v4 = a4;
        }

        else
        {
          v4 = 0;
        }

        result[2] = v4;
      }

      else
      {
        result[2] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752457584)
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
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
    mlir::NamedAttribute::NamedAttribute(&v8, "toImport", 8, v7);
    return mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_10010DF98(v8, "path", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010DF98(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_10024B3A4(v10, "toImport", 8, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10024B3A4(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
        v27 = "' failed to satisfy constraint: symbol reference attribute";
        v28 = 58;
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
          v17 = sub_10005BEF4(v17 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (sub_10010E3C8(a1, *(a2 + 256)) && (v4 = sub_100119594(a1, (v3 + 8)), (v4 & 1) != 0))
  {
    return sub_100202F4C(a1, (v3 + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = v1 + 64;
  if (v4)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v23[0] = *this;
      if ((sub_10024B3A4(v5, "toImport", 8, sub_10026D244, v23) & 1) == 0)
      {
        return 0;
      }

      v23[0] = *this;
      if ((sub_10010DF98(v4, "sym_name", 8, sub_10026D0C4, v23) & 1) == 0)
      {
        return 0;
      }

      v23[0] = *this;
      return sub_10010DF98(v3, "path", 4, sub_10026D0C4, v23) & 1;
    }

    v21[0] = "requires attribute 'toImport'";
    v22 = 259;
    mlir::OpState::emitOpError(this, v21, v23);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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

      v15 = __p;
      if (__p)
      {
        v16 = v29;
        v17 = __p;
        if (v29 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v29 = v15;
        operator delete(v17);
      }

      v11 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }

      v18 = v27;
      v13 = v26;
      if (v27 == v26)
      {
LABEL_40:
        v27 = v11;
        operator delete(v13);
LABEL_41:
        if (v24 != &v25)
        {
          free(v24);
        }

        return v7;
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
LABEL_39:
      v13 = v26;
      goto LABEL_40;
    }
  }

  else
  {
    v21[0] = "requires attribute 'sym_name'";
    v22 = 259;
    mlir::OpState::emitOpError(this, v21, v23);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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

      v8 = __p;
      if (__p)
      {
        v9 = v29;
        v10 = __p;
        if (v29 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v29 = v8;
        operator delete(v10);
      }

      v11 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }

      v12 = v27;
      v13 = v26;
      if (v27 == v26)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v69 = v6;
  if (!v6)
  {
    a3(&v73, a4);
    if (v73)
    {
      v70 = 3;
      v71 = "expected DictionaryAttr to set properties";
      v72 = 41;
      v25 = &v70;
      v26 = v75;
      if (v76 >= v77)
      {
        if (v75 <= &v70 && v75 + 24 * v76 > &v70)
        {
          v62 = &v70 - v75;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
          v26 = v75;
          v25 = (v75 + v62);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
          v25 = &v70;
          v26 = v75;
        }
      }

      v27 = &v26[24 * v76];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v76;
      if (v73)
      {
        mlir::InFlightDiagnostic::report(&v73);
      }
    }

    if (v84 != 1)
    {
      return 0;
    }

    if (v83 != &v84)
    {
      free(v83);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v82;
      v31 = __p;
      if (v82 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v82 = v29;
      operator delete(v31);
    }

    v21 = v79;
    if (!v79)
    {
      goto LABEL_82;
    }

    v32 = v80;
    v23 = v79;
    if (v80 == v79)
    {
LABEL_81:
      v80 = v21;
      operator delete(v23);
LABEL_82:
      if (v75 != v78)
      {
        free(v75);
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
    goto LABEL_80;
  }

  v8 = mlir::DictionaryAttr::get(&v69, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v73, a4);
      if (v73)
      {
        v70 = 3;
        v72 = 54;
        v10 = &v70;
        v11 = v75;
        if (v76 >= v77)
        {
          if (v75 <= &v70 && v75 + 24 * v76 > &v70)
          {
            v63 = &v70 - v75;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
            v11 = v75;
            v10 = (v75 + v63);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
            v10 = &v70;
            v11 = v75;
          }
        }

        v12 = &v11[24 * v76];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v76;
        if (v73)
        {
          v14 = &v70;
          mlir::DiagnosticArgument::DiagnosticArgument(&v70, v9);
          v15 = v75;
          if (v76 >= v77)
          {
            if (v75 <= &v70 && v75 + 24 * v76 > &v70)
            {
              v64 = &v70 - v75;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v15 = v75;
              v14 = (v75 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
              v14 = &v70;
              v15 = v75;
            }
          }

          v16 = &v15[24 * v76];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v76;
          if (v73)
          {
            mlir::InFlightDiagnostic::report(&v73);
          }
        }
      }

      if ((v84 & 1) == 0)
      {
        return 0;
      }

      if (v83 != &v84)
      {
        free(v83);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v82;
        v20 = __p;
        if (v82 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v82 = v18;
        operator delete(v20);
      }

      v21 = v79;
      if (!v79)
      {
        goto LABEL_82;
      }

      v22 = v80;
      v23 = v79;
      if (v80 == v79)
      {
        goto LABEL_81;
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
      goto LABEL_80;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v69, "callee", 6uLL);
  if (v34)
  {
    v35 = v34;
    v36 = sub_10006BC04(v34);
    if (v36)
    {
      a1[1] = v36;
      a1[2] = v37;
      goto LABEL_49;
    }

    a3(&v73, a4);
    if (v73)
    {
      v70 = 3;
      v72 = 51;
      v49 = &v70;
      v50 = v75;
      if (v76 >= v77)
      {
        if (v75 <= &v70 && v75 + 24 * v76 > &v70)
        {
          v66 = &v70 - v75;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
          v50 = v75;
          v49 = (v75 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
          v49 = &v70;
          v50 = v75;
        }
      }

      v51 = &v50[24 * v76];
      v52 = *v49;
      *(v51 + 2) = *(v49 + 2);
      *v51 = v52;
      ++v76;
      if (v73)
      {
        v53 = &v70;
        mlir::DiagnosticArgument::DiagnosticArgument(&v70, v35);
        v54 = v75;
        if (v76 >= v77)
        {
          if (v75 <= &v70 && v75 + 24 * v76 > &v70)
          {
            v68 = &v70 - v75;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
            v54 = v75;
            v53 = (v75 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
            v53 = &v70;
            v54 = v75;
          }
        }

        v55 = &v54[24 * v76];
        v56 = *v53;
        *(v55 + 2) = *(v53 + 2);
        *v55 = v56;
        ++v76;
        if (v73)
        {
          mlir::InFlightDiagnostic::report(&v73);
        }
      }
    }

    if ((v84 & 1) == 0)
    {
      return 0;
    }

    if (v83 != &v84)
    {
      free(v83);
    }

    v57 = __p;
    if (__p)
    {
      v58 = v82;
      v59 = __p;
      if (v82 != __p)
      {
        do
        {
          v58 = sub_10005BEF4(v58 - 1);
        }

        while (v58 != v57);
        v59 = __p;
      }

      v82 = v57;
      operator delete(v59);
    }

    v21 = v79;
    if (!v79)
    {
      goto LABEL_82;
    }

    v60 = v80;
    v23 = v79;
    if (v80 == v79)
    {
      goto LABEL_81;
    }

    do
    {
      v61 = *--v60;
      *v60 = 0;
      if (v61)
      {
        operator delete[]();
      }
    }

    while (v60 != v21);
LABEL_80:
    v23 = v79;
    goto LABEL_81;
  }

LABEL_49:
  v38 = mlir::DictionaryAttr::get(&v69, "res_attrs", 9uLL);
  if (!v38)
  {
    return 1;
  }

  if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    a1[3] = v38;
    return 1;
  }

  v39 = v38;
  a3(&v73, a4);
  if (v73)
  {
    v70 = 3;
    v72 = 54;
    v40 = &v70;
    v41 = v75;
    if (v76 >= v77)
    {
      if (v75 <= &v70 && v75 + 24 * v76 > &v70)
      {
        v65 = &v70 - v75;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
        v41 = v75;
        v40 = (v75 + v65);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
        v40 = &v70;
        v41 = v75;
      }
    }

    v42 = &v41[24 * v76];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    ++v76;
    if (v73)
    {
      v44 = &v70;
      mlir::DiagnosticArgument::DiagnosticArgument(&v70, v39);
      v45 = v75;
      if (v76 >= v77)
      {
        if (v75 <= &v70 && v75 + 24 * v76 > &v70)
        {
          v67 = &v70 - v75;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
          v45 = v75;
          v44 = (v75 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v78, v76 + 1, 24);
          v44 = &v70;
          v45 = v75;
        }
      }

      v46 = &v45[24 * v76];
      v47 = *v44;
      *(v46 + 2) = *(v44 + 2);
      *v46 = v47;
      ++v76;
      if (v73)
      {
        mlir::InFlightDiagnostic::report(&v73);
      }
    }
  }

  if (v84 == 1)
  {
    sub_10005BE10(&v74);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "arg_attrs", 9, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v27, "callee", 6, v8);
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
  v13 = a2[3];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "res_attrs", 9, v13);
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

unint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[3]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  __src[0] = v3;
  __src[1] = v6;
  v11 = 0;
  v9 = sub_10002DCBC(__src, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return sub_10002D330(__src, v11, v9, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getInherentAttr(int a1, void *a2, void *__s1, size_t __n)
{
  if (__n == 6)
  {
    if (!memcmp(__s1, "callee", 6uLL))
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

  return a2[3];
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 6)
  {
    result = memcmp(__s1, "callee", 6uLL);
    if (!result)
    {
      if (a4)
      {
        result = sub_10006BC04(a4);
        v5[1] = result;
        v5[2] = v7;
      }

      else
      {
        result = 0;
        v5[1] = 0;
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

    else
    {
      result = memcmp(__s1, "res_attrs", 9uLL);
      if (!result)
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

          v5[3] = v9;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "arg_attrs", 9, *a2);
    result = mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "callee", 6, v6);
    result = mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "res_attrs", 9, v7);
    return mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100230B68(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_100231240(v9, "callee", 6, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_100230B68(v10, "res_attrs", 9, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = *(v3 + 72);
  v5 = v3 + 64;
  if (v4)
  {
    v7 = *(v5 + 24);
    v22[0] = v2;
    if (sub_100231240(v4, "callee", 6, sub_10026D034, v22) & 1) != 0 && (v22[0] = *this, (sub_100230B68(v6, "arg_attrs", 9, sub_10026D094, v22)) && (v22[0] = *this, (sub_100230B68(v7, "res_attrs", 9, sub_10026D094, v22)))
    {
      v8 = *(*this + 9);
      if (*(*this + 9))
      {
        v9 = *this - 16;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v9, i);
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
    v20 = "requires attribute 'callee'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v12 = __p;
      if (__p)
      {
        v13 = v28;
        v14 = __p;
        if (v28 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v28 = v12;
        operator delete(v14);
      }

      v15 = v25;
      if (v25)
      {
        v16 = v26;
        v17 = v25;
        if (v26 != v25)
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
          v17 = v25;
        }

        v26 = v15;
        operator delete(v17);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
          v30 = sub_10005BEF4(v30 - 1);
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

  v8 = mlir::DictionaryAttr::get(&v67, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v71, a4);
      if (v71)
      {
        v68 = 3;
        v70 = 54;
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
            v19 = sub_10005BEF4(v19 - 1);
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

  v34 = mlir::DictionaryAttr::get(&v67, "delegate_id", 0xBuLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v35 = v34;
      a3(&v71, a4);
      if (v71)
      {
        v68 = 3;
        v70 = 56;
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
            v45 = sub_10005BEF4(v45 - 1);
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

  v50 = mlir::DictionaryAttr::get(&v67, "res_attrs", 9uLL);
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
    v70 = 54;
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
    sub_10005BE10(&v72);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "arg_attrs", 9, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v27, "delegate_id", 0xB, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v27, "res_attrs", 9, v13);
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

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::computePropertiesHash(void *a1)
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
  v9 = sub_10002DCBC(__src, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return sub_10002D330(__src, v11, v9, v14);
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInherentAttr(int a1, void *a2, void *__s1, size_t __n)
{
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

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
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

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

    else
    {
      result = memcmp(__s1, "res_attrs", 9uLL);
      if (!result)
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

          *(v5 + 16) = v9;
        }

        else
        {
          *(v5 + 16) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "arg_attrs", 9, *a2);
    result = mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "delegate_id", 0xB, v6);
    result = mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v8, "res_attrs", 9, v7);
    return mlir::NamedAttrList::push_back(a3, v8, v9);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100230B68(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010DF98(v9, "delegate_id", 0xB, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_100230B68(v10, "res_attrs", 9, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v12 = *(a2 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = a7;
  if (a8)
  {
    v13 = *(a2 + 32);
    if (!v13)
    {
      operator new();
    }

    *v13 = a8;
  }

  if (a9)
  {
    v14 = *(a2 + 32);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 16) = a9;
  }

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = *(v3 + 72);
  v5 = v3 + 64;
  if (v4)
  {
    v7 = *(v5 + 16);
    v27[0] = v2;
    if (sub_10010DF98(v4, "delegate_id", 0xB, sub_10026D0C4, v27) & 1) != 0 && (v27[0] = *this, (sub_100230B68(v6, "arg_attrs", 9, sub_10026D094, v27)) && (v27[0] = *this, (sub_100230B68(v7, "res_attrs", 9, sub_10026D094, v27)))
    {
      v17 = *this;
      v18 = *(*this + 9);
      if (*(*this + 9))
      {
        v19 = *this - 16;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        for (i = 0; i != v18; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v19, i);
        }

        v17 = *this;
      }

      sub_1002A72E8(v17, v27);
      sub_100200840(v23, v27);
      v21 = *(*this + 9);
      v22 = (*this - 16);
      if (!v21)
      {
        v22 = 0;
      }

      v24 = v22;
      v25 = v21;
      mlir::ResultRange::getTypes(&v24, v27);
      sub_1002008BC(&v24, v27);
      if (sub_1001FC114(v23[0], v23[1], v24, v25))
      {
        return sub_10022D920(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "group", 5, 0) & 1;
      }

      else
      {
        v24 = "failed to verify that number of handle inputs must match number of token outputs";
        v26 = 259;
        mlir::OpState::emitOpError(this, &v24, v27);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
        sub_10006296C(v27);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = "requires attribute 'delegate_id'";
    v26 = 259;
    mlir::OpState::emitOpError(this, &v24, v27);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

      v9 = __p;
      if (__p)
      {
        v10 = v33;
        v11 = __p;
        if (v33 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v33 = v9;
        operator delete(v11);
      }

      v12 = v30;
      if (v30)
      {
        v13 = v31;
        v14 = v30;
        if (v31 != v30)
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
          v14 = v30;
        }

        v31 = v12;
        operator delete(v14);
      }

      if (v28 != &v29)
      {
        free(v28);
      }
    }
  }

  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::inferReturnTypes(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = this;
  v2 = "operand";
  if ((sub_1002380EC(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v3 = *v1;
  if ((*(*v1 + 46) & 0x80) == 0)
  {
    v5 = -1;
    v6 = 32;
LABEL_5:
    v7 = 0;
    v8 = 1;
    v9 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    while (1)
    {
      v10 = *(*(v6 + 32 * v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v10 + 136) != v9)
      {
        v11 = *v1;
        v53 = 261;
        v52[0] = v2;
        v52[1] = 7;
        mlir::Operation::emitOpError(v57, v11, v52);
        if (v57[0])
        {
          v54 = 3;
          v55 = " #";
          v56 = 2;
          v12 = v58;
          if (v59 >= v60)
          {
            if (v58 <= &v54 && v58 + 24 * v59 > &v54)
            {
              v43 = &v54 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v12 = v58;
              v13 = (v58 + v43);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v13 = &v54;
              v12 = v58;
            }
          }

          else
          {
            v13 = &v54;
          }

          v14 = &v12[24 * v59];
          v15 = *v13;
          *(v14 + 2) = *(v13 + 2);
          *v14 = v15;
          v16 = ++v59;
          if (v57[0])
          {
            v54 = 5;
            v55 = v8;
            v17 = v58;
            if (v16 >= v60)
            {
              if (v58 <= &v54 && v58 + 24 * v16 > &v54)
              {
                v44 = &v54 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v16 + 1, 24);
                v17 = v58;
                v18 = (v58 + v44);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v16 + 1, 24);
                v18 = &v54;
                v17 = v58;
              }
            }

            else
            {
              v18 = &v54;
            }

            v19 = &v17[24 * v59];
            v20 = *v18;
            *(v19 + 2) = *(v18 + 2);
            *v19 = v20;
            v21 = ++v59;
            if (v57[0])
            {
              v54 = 3;
              v55 = " must be variadic of , but got ";
              v56 = 31;
              v22 = v58;
              if (v21 >= v60)
              {
                if (v58 <= &v54 && v58 + 24 * v21 > &v54)
                {
                  v45 = &v54 - v58;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v21 + 1, 24);
                  v22 = v58;
                  v23 = (v58 + v45);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v21 + 1, 24);
                  v23 = &v54;
                  v22 = v58;
                }
              }

              else
              {
                v23 = &v54;
              }

              v24 = &v22[24 * v59];
              v25 = *v23;
              *(v24 + 2) = *(v23 + 2);
              *v24 = v25;
              ++v59;
              if (v57[0])
              {
                v26 = &v54;
                mlir::DiagnosticArgument::DiagnosticArgument(&v54, v10);
                v27 = v58;
                if (v59 >= v60)
                {
                  if (v58 <= &v54 && v58 + 24 * v59 > &v54)
                  {
                    v46 = &v54 - v58;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                    v27 = v58;
                    v26 = (v58 + v46);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
                    v26 = &v54;
                    v27 = v58;
                  }
                }

                v28 = &v27[24 * v59];
                v29 = *v26;
                *(v28 + 2) = *(v26 + 2);
                *v28 = v29;
                ++v59;
              }
            }
          }
        }

        v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
        if (v57[0])
        {
          mlir::InFlightDiagnostic::report(v57);
        }

        if (v67 == 1)
        {
          v31 = v6;
          v32 = v5;
          v33 = v1;
          v34 = v9;
          if (v66 != &v67)
          {
            free(v66);
          }

          v35 = v2;
          v36 = __p;
          if (__p)
          {
            v37 = v65;
            v38 = __p;
            if (v65 != __p)
            {
              do
              {
                v37 = sub_10005BEF4(v37 - 1);
              }

              while (v37 != v36);
              v38 = __p;
            }

            v65 = v36;
            operator delete(v38);
          }

          v39 = v62;
          if (v62)
          {
            v40 = v63;
            v41 = v62;
            if (v63 != v62)
            {
              do
              {
                v42 = *--v40;
                *v40 = 0;
                if (v42)
                {
                  operator delete[]();
                }
              }

              while (v40 != v39);
              v41 = v62;
            }

            v63 = v39;
            operator delete(v41);
          }

          v2 = v35;
          v9 = v34;
          v1 = v33;
          v5 = v32;
          v6 = v31;
          if (v58 != v61)
          {
            free(v58);
          }
        }

        if (!v30)
        {
          return 0;
        }
      }

      ++v8;
      if (++v7 == v5)
      {
        v3 = *v1;
        goto LABEL_60;
      }
    }
  }

  v4 = *(v3 + 17);
  v5 = v4 - 1;
  if (v4 != 1)
  {
    v6 = *(v3 + 9) + 32;
    goto LABEL_5;
  }

LABEL_60:
  v48 = *(v3 + 9);
  v49 = v3 - 16;
  if (v48)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0);
  return sub_1002380EC(*v1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::L2Norm::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10022B70C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_10022C524(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10022B70C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v27 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = sub_100227728(&v27);
    v30[1] = v5;
    Shape = mlir::ShapedType::getShape(v30);
    v8 = v7;
    v26 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = sub_100227728(&v26);
    v28[1] = v9;
    v10 = mlir::ShapedType::getShape(v28);
    if (v8 == v11 && !memcmp(Shape, v10, 8 * v8))
    {
      return sub_10022D920(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0) & 1;
    }

    v28[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v13 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v13;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v13;
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
        result = v13;
      }

      v17 = v33;
      if (!v33)
      {
        goto LABEL_47;
      }

      v18 = v34;
      v19 = v33;
      if (v34 == v33)
      {
LABEL_46:
        v34 = v17;
        operator delete(v19);
        result = v13;
LABEL_47:
        if (v31 != &v32)
        {
          free(v31);
          return v13;
        }

        return result;
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
LABEL_45:
      v19 = v33;
      goto LABEL_46;
    }
  }

  else
  {
    v28[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v13 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v13;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v13;
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
            v22 = sub_10005BEF4(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v36 = v21;
        operator delete(v23);
        result = v13;
      }

      v17 = v33;
      if (!v33)
      {
        goto LABEL_47;
      }

      v24 = v34;
      v19 = v33;
      if (v34 == v33)
      {
        goto LABEL_46;
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
      goto LABEL_45;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::L2Norm::parse(mlir::ODIE::Compiler::CoreML::L2Norm *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v3 = &v5;
  v4 = 0x400000000;
  operator new();
}

BOOL mlir::ODIE::Compiler::CoreML::L2Norm::verifyRegions(unsigned int **this)
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

  return sub_10022E028(v1, v3);
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
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
          v8 = sub_10005BEF4(v8 - 1);
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

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10022844C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10022844C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
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
          v8 = sub_10005BEF4(v8 - 1);
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

BOOL mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10022900C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10022900C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
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
          v8 = sub_10005BEF4(v8 - 1);
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

BOOL mlir::ODIE::Compiler::CoreML::MaximumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002241FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
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
            v16 = sub_10005BEF4(v16 - 1);
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
            v9 = sub_10005BEF4(v9 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      LODWORD(v72) = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v25 = &v72;
      v26 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v26 = v77;
          v25 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v25 = &v72;
          v26 = v77;
        }
      }

      v27 = &v26[24 * v78];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v84;
      v31 = __p;
      if (v84 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v84 = v29;
      operator delete(v31);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_70;
    }

    v32 = v82;
    v23 = v81;
    if (v82 == v81)
    {
LABEL_69:
      v82 = v21;
      operator delete(v23);
LABEL_70:
      if (v77 != v80)
      {
        free(v77);
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
    v23 = v81;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v71, "alignInBits", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v75, a4);
      if (v75)
      {
        LODWORD(v72) = 3;
        v74 = 56;
        v10 = &v72;
        v11 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v65 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v11 = v77;
            v10 = (v77 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v10 = &v72;
            v11 = v77;
          }
        }

        v12 = &v11[24 * v78];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v78;
        if (v75)
        {
          v14 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
          v15 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v66 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v15 = v77;
              v14 = (v77 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v14 = &v72;
              v15 = v77;
            }
          }

          v16 = &v15[24 * v78];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

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
            v19 = sub_10005BEF4(v19 - 1);
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
        goto LABEL_70;
      }

      v22 = v82;
      v23 = v81;
      if (v82 == v81)
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

  v34 = mlir::DictionaryAttr::get(&v71, "sym_name", 8uLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v35 = v34;
      a3(&v75, a4);
      if (v75)
      {
        LODWORD(v72) = 3;
        v74 = 53;
        v36 = &v72;
        v37 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v37 = v77;
            v36 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v36 = &v72;
            v37 = v77;
          }
        }

        v38 = &v37[24 * v78];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v78;
        if (v75)
        {
          v40 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v35);
          v41 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v41 = v77;
              v40 = (v77 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v40 = &v72;
              v41 = v77;
            }
          }

          v42 = &v41[24 * v78];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v84;
        v46 = __p;
        if (v84 != __p)
        {
          do
          {
            v45 = sub_10005BEF4(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v84 = v44;
        operator delete(v46);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v47 = v82;
      v23 = v81;
      if (v82 == v81)
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

  v50 = mlir::DictionaryAttr::get(&v71, "type", 4uLL);
  if (v50)
  {
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v51 = v50;
      a3(&v75, a4);
      if (v75)
      {
        LODWORD(v72) = 3;
        v74 = 49;
        v52 = &v72;
        v53 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v53 = v77;
            v52 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v52 = &v72;
            v53 = v77;
          }
        }

        v54 = &v53[24 * v78];
        v55 = *v52;
        *(v54 + 2) = v52[2];
        *v54 = v55;
        ++v78;
        if (v75)
        {
          v56 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v51);
          v57 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v57 = v77;
              v56 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v56 = &v72;
              v57 = v77;
            }
          }

          v58 = &v57[24 * v78];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        sub_10005BE10(&v76);
      }

      return 0;
    }

    a1[2] = v50;
  }

  v60 = mlir::DictionaryAttr::get(&v71, "value", 5uLL);
  v72 = v60;
  if (!v60)
  {
    return 1;
  }

  v61 = sub_10006BC04(v60);
  if (v61)
  {
    a1[3] = v61;
    a1[4] = v62;
    return 1;
  }

  a3(&v75, a4);
  sub_100066118(v63, &v72);
  sub_10006296C(&v75);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "alignInBits", 0xB, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v34, "sym_name", 8, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v34, "type", 4, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v34, "value", 5, v18);
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

unint64_t mlir::ODIE::Compiler::CoreML::MemberOp::computePropertiesHash(void *a1)
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
  v13 = sub_10002DCBC(__src, &v16, v19, v20, v9);
  v17 = v16;
  v14 = sub_10002DCBC(__src, &v17, v13, v20, v12);
  return sub_10002D330(__src, v17, v14, v20);
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 7)
  {
    if (__n == 8)
    {
      if (!memcmp(__s1, "sym_name", 8uLL))
      {
        return a2[1];
      }
    }

    else if (__n == 11 && *__s1 == 0x426E496E67696C61 && *(__s1 + 3) == 0x737469426E496E67)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "type", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 5 || memcmp(__s1, "value", 5uLL))
  {
    return 0;
  }

  return a2[3];
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 7)
  {
    if (a3 == 8)
    {
      result = memcmp(__s1, "sym_name", 8uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          v5[1] = v9;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x426E496E67696C61 && *(__s1 + 3) == 0x737469426E496E67)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "type", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[2] = v8;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 == 5)
  {
    result = memcmp(__s1, "value", 5uLL);
    if (!result)
    {
      if (a4)
      {
        result = sub_10006BC04(a4);
        v5[3] = result;
        v5[4] = v10;
      }

      else
      {
        result = 0;
        v5[3] = 0;
        v5[4] = 0;
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "alignInBits", 0xB, *a2);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "sym_name", 8, v6);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "type", 4, v7);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v8 = a2[3];
  if (v8)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "value", 5, v8);
    return mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100251070(v8, "alignInBits", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010DF98(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_1002513DC(v10, "type", 4, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (sub_100231240(v11, "value", 5, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100251070(void **a1, void **a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v29 = a1;
    v7 = a4;
    v8 = a5;
    Type = mlir::IntegerAttr::getType(&v29);
    isUnsignedInteger = mlir::Type::isUnsignedInteger(&Type, 64);
    a5 = v8;
    a4 = v7;
    if (isUnsignedInteger)
    {
      return 1;
    }
  }

  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v29) = 3;
    v30 = "attribute '";
    v31 = 11;
    v11 = &v29;
    v12 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v27 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v12 = v35;
        v11 = (v35 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v11 = &v29;
        v12 = v35;
      }
    }

    v13 = &v12[24 * v36];
    v14 = *v11;
    *(v13 + 2) = v11[2];
    *v13 = v14;
    ++v36;
    if (Type)
    {
      v32 = 261;
      v29 = a2;
      v30 = a3;
      mlir::Diagnostic::operator<<(&v34, &v29);
      if (Type)
      {
        LODWORD(v29) = 3;
        v30 = "' failed to satisfy constraint: 64-bit unsigned integer attribute";
        v31 = 65;
        v15 = &v29;
        v16 = v35;
        if (v36 >= v37)
        {
          if (v35 <= &v29 && v35 + 24 * v36 > &v29)
          {
            v28 = &v29 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v16 = v35;
            v15 = (v35 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v15 = &v29;
            v16 = v35;
          }
        }

        v17 = &v16[24 * v36];
        v18 = *v15;
        *(v17 + 2) = v15[2];
        *v17 = v18;
        ++v36;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = sub_10005BEF4(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v10;
}

uint64_t sub_1002513DC(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v30 = a1;
    mlir::TypeAttr::getValue(&v30);
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
        v27 = "' failed to satisfy constraint: any type attribute";
        v28 = 50;
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
          v17 = sub_10005BEF4(v17 - 1);
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

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (sub_100251848(a1, *(a2 + 256)) && (v4 = sub_100119594(a1, v3 + 1), (v4 & 1) != 0 && (sub_1001FD2D0(a1, v3 + 2) & 1) != 0))
  {
    return sub_100251CF4(a1, v3 + 3);
  }

  else
  {
    return 0;
  }
}

BOOL sub_100251848(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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
    sub_1002AB5C4();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::IntegerAttr>(void)::Name;
      v33 = unk_1002E3130;
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

BOOL sub_100251CF4(uint64_t a1, void *a2)
{
  v31 = 0;
  if (((*(*a1 + 56))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  if (!v31)
  {
    return 1;
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
      goto LABEL_12;
    }
  }

  else
  {
    sub_1002AAF70();
    if (v36)
    {
LABEL_12:
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

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = *(v1 + 72);
  v3 = v1 + 64;
  if (v2)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
      v7 = *(v3 + 24);
      v24[0] = *this;
      if ((sub_10010DF98(v2, "sym_name", 8, sub_10026D0C4, v24) & 1) == 0)
      {
        return 0;
      }

      v24[0] = *this;
      if ((sub_1002513DC(v5, "type", 4, sub_10026D374, v24) & 1) == 0)
      {
        return 0;
      }

      v24[0] = *this;
      if ((sub_100231240(v7, "value", 5, sub_10026D034, v24) & 1) == 0)
      {
        return 0;
      }

      v24[0] = *this;
      return sub_100251070(v4, "alignInBits", 0xB, sub_10026D3A4, v24) & 1;
    }

    v22[0] = "requires attribute 'type'";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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
            v17 = sub_10005BEF4(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v30 = v16;
        operator delete(v18);
      }

      v12 = v27;
      if (!v27)
      {
        goto LABEL_42;
      }

      v19 = v28;
      v14 = v27;
      if (v28 == v27)
      {
LABEL_41:
        v28 = v12;
        operator delete(v14);
LABEL_42:
        if (v25 != &v26)
        {
          free(v25);
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
      v14 = v27;
      goto LABEL_41;
    }
  }

  else
  {
    v22[0] = "requires attribute 'sym_name'";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

      v9 = __p;
      if (__p)
      {
        v10 = v30;
        v11 = __p;
        if (v30 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v30 = v9;
        operator delete(v11);
      }

      v12 = v27;
      if (!v27)
      {
        goto LABEL_42;
      }

      v13 = v28;
      v14 = v27;
      if (v28 == v27)
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

BOOL mlir::ODIE::Compiler::CoreML::MinimumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002241FC(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
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
            v16 = sub_10005BEF4(v16 - 1);
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
            v9 = sub_10005BEF4(v9 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v55 = v6;
  if (!v6)
  {
    a3(v59, a4);
    if (v59[0])
    {
      v56 = 3;
      v57 = "expected DictionaryAttr to set properties";
      v58 = 41;
      v25 = &v56;
      v26 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v50 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v26 = v60;
          v25 = (v60 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v25 = &v56;
          v26 = v60;
        }
      }

      v27 = &v26[24 * v61];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v61;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }
    }

    if (v69 != 1)
    {
      return 0;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v21 = v64;
    if (!v64)
    {
      goto LABEL_70;
    }

    v32 = v65;
    v23 = v64;
    if (v65 == v64)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v55, "param_decls", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v59, a4);
      if (v59[0])
      {
        v56 = 3;
        v58 = 56;
        v10 = &v56;
        v11 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v61 > &v56)
          {
            v51 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v11 = v60;
            v10 = (v60 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v10 = &v56;
            v11 = v60;
          }
        }

        v12 = &v11[24 * v61];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v61;
        if (v59[0])
        {
          v14 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, v9);
          v15 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v52 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v15 = v60;
              v14 = (v60 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v14 = &v56;
              v15 = v60;
            }
          }

          v16 = &v15[24 * v61];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v61;
          if (v59[0])
          {
            mlir::InFlightDiagnostic::report(v59);
          }
        }
      }

      if ((v69 & 1) == 0)
      {
        return 0;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v67;
        v20 = __p;
        if (v67 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v67 = v18;
        operator delete(v20);
      }

      v21 = v64;
      if (!v64)
      {
        goto LABEL_70;
      }

      v22 = v65;
      v23 = v64;
      if (v65 == v64)
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

  v34 = mlir::DictionaryAttr::get(&v55, "sym_name", 8uLL);
  if (!v34)
  {
    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v34;
    return 1;
  }

  v35 = v34;
  a3(v59, a4);
  if (v59[0])
  {
    v56 = 3;
    v58 = 53;
    v36 = &v56;
    v37 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v53 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v37 = v60;
        v36 = (v60 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v36 = &v56;
        v37 = v60;
      }
    }

    v38 = &v37[24 * v61];
    v39 = *v36;
    *(v38 + 2) = *(v36 + 2);
    *v38 = v39;
    ++v61;
    if (v59[0])
    {
      v40 = &v56;
      mlir::DiagnosticArgument::DiagnosticArgument(&v56, v35);
      v41 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v54 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v41 = v60;
          v40 = (v60 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v40 = &v56;
          v41 = v60;
        }
      }

      v42 = &v41[24 * v61];
      v43 = *v40;
      *(v42 + 2) = *(v40 + 2);
      *v42 = v43;
      ++v61;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }
    }
  }

  if (v69)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v67;
      v46 = __p;
      if (v67 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v67 = v44;
      operator delete(v46);
    }

    v21 = v64;
    if (!v64)
    {
      goto LABEL_70;
    }

    v47 = v65;
    v23 = v64;
    if (v65 == v64)
    {
LABEL_69:
      v65 = v21;
      operator delete(v23);
LABEL_70:
      if (v60 != v63)
      {
        free(v60);
      }

      return 0;
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
LABEL_68:
    v23 = v64;
    goto LABEL_69;
  }

  return 0;
}