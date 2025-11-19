uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "param_decls", 0xB, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_name", 8, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  __src[0] = v3;
  __src[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return sub_10002D330(__src, 0, v8, v9);
}

unint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 11 && *a3 == 0x65645F6D61726170 && *(a3 + 3) == 0x736C6365645F6D61)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::ModuleOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
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

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v7, "param_decls", 0xB, *a2);
    result = mlir::NamedAttrList::push_back(a3, v7, v8);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v7, "sym_name", 8, v6);
    return mlir::NamedAttrList::push_back(a3, v7, v8);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100232E78(v8, "param_decls", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010DF98(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::verifyInvariantsImpl(mlir::Operation **this)
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
      v23[0] = *this;
      if (sub_10010DF98(v5, "sym_name", 8, sub_10026D0C4, v23) & 1) != 0 && (v23[0] = *this, (sub_100232E78(v3, "param_decls", 0xB, sub_10026D0F4, v23)))
      {
        return sub_10022D920(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) & 1;
      }

      else
      {
        return 0;
      }
    }

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
    v21[0] = "requires attribute 'param_decls'";
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

BOOL mlir::ODIE::Compiler::CoreML::ModuloOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::MulOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::NonZeroOp::verifyInvariantsImpl(mlir::Operation **this)
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
    return sub_10022D1D4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::NotOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[0] = a4;
  v15[1] = a5;
  v12 = *(a11 + 8);
  if (v12 == 1)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
    if (*(a11 + 12))
    {
      v13 = 0;
LABEL_6:
      bzero((*a11 + 8 * v13), 8 - 8 * v13);
      goto LABEL_7;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
    v13 = *(a11 + 8);
    if (v13 != 1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  *(a11 + 8) = 1;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::NotOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_1002249E8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return sub_1002249E8(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[0] = a4;
  v15[1] = a5;
  v12 = *(a11 + 8);
  if (v12 == 1)
  {
    goto LABEL_8;
  }

  if (!v12)
  {
    if (*(a11 + 12))
    {
      v13 = 0;
LABEL_6:
      bzero((*a11 + 8 * v13), 8 - 8 * v13);
      goto LABEL_7;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), 1uLL, 8);
    v13 = *(a11 + 8);
    if (v13 != 1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  *(a11 + 8) = 1;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::OrOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002249E8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_1002249E8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

uint64_t mlir::ODIE::Compiler::CoreML::OutputOp::parse(mlir::ODIE::Compiler::CoreML::OutputOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = &_mh_execute_header;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0) || ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0))
  {
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = sub_10010F500(this, &v11, v9, v5, a2 + 16) & 1;
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
          v30 = sub_10005BEF4(v30 - 1);
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

  v8 = mlir::DictionaryAttr::get(&v38, "padding_mode", 0xCuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v42, a4);
  if (v42[0])
  {
    v39 = 3;
    v41 = 57;
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
          v19 = sub_10005BEF4(v19 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "padding_mode", 0xC, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::PadOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::PadOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x5F676E6964646170 ? (v4 = *(a3 + 8) == 1701080941) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::PadOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12 && *a2 == 0x5F676E6964646170 && *(a2 + 8) == 1701080941)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "padding_mode", 0xC, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

uint64_t sub_100254F54(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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
        v27 = "' failed to satisfy constraint: CoreML Pad Op's padding mode to use: 'circular' | 'constant' | 'reflect' | 'replicate' | 'symmetric'";
        v28 = 132;
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

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_10025535C(a1, v2) & 1;
}

uint64_t sub_10025535C(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id)
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
    sub_1002AB648();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(void)::Name;
      v33 = unk_1002E3170;
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

BOOL mlir::ODIE::Compiler::CoreML::PadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v94 = "requires attribute 'padding_mode'";
    v96 = 259;
    mlir::OpState::emitOpError(this, &v94, &v105);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
    if (v105)
    {
      mlir::InFlightDiagnostic::report(&v105);
    }

    if (v116 == 1)
    {
      if (v115 != &v116)
      {
        free(v115);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v114;
        v19 = __p;
        if (v114 != __p)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v114 = v17;
        operator delete(v19);
      }

      v20 = v111;
      if (v111)
      {
        v21 = v112;
        v22 = v111;
        if (v112 != v111)
        {
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
          v22 = v111;
        }

        v112 = v20;
        operator delete(v22);
      }

      if (v107 != v110)
      {
        free(v107);
      }
    }

    return v16;
  }

  v105 = v2;
  if ((sub_100254F54(v3, "padding_mode", 0xC, sub_10026D3D4, &v105) & 1) == 0 || !sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_56;
  }

  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = v6[1];
    v9 = *(v6 + 4);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_35:
    v9 = 0;
    v10 = v8;
    goto LABEL_36;
  }

  v24 = v6;
  sub_1002AAABC();
  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = v24[1];
  v9 = *(v24 + 4);
  if (!v9)
  {
    goto LABEL_35;
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
LABEL_36:
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v25 = v10[1];
    v105 = v5;
    v106 = v25;
    if (!mlir::ShapedType::hasRank(&v105))
    {
      goto LABEL_56;
    }
  }

  else
  {
    v105 = v5;
    v106 = 0;
    if (!mlir::ShapedType::hasRank(&v105))
    {
      goto LABEL_56;
    }
  }

  v26 = *v5;
  {
    v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v28 = v26[1];
    v29 = *(v26 + 4);
    if (v29)
    {
      goto LABEL_43;
    }

LABEL_50:
    v29 = 0;
    v30 = v28;
    goto LABEL_51;
  }

  v93 = v26;
  sub_1002AAABC();
  v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v28 = v93[1];
  v29 = *(v93 + 4);
  if (!v29)
  {
    goto LABEL_50;
  }

LABEL_43:
  v30 = v28;
  v31 = v29;
  do
  {
    v32 = v31 >> 1;
    v33 = &v30[2 * (v31 >> 1)];
    v35 = *v33;
    v34 = v33 + 2;
    v31 += ~(v31 >> 1);
    if (v35 < v27)
    {
      v30 = v34;
    }

    else
    {
      v31 = v32;
    }
  }

  while (v31);
LABEL_51:
  if (v30 != &v28[2 * v29] && *v30 == v27)
  {
    v36 = v30[1];
  }

  else
  {
    v36 = 0;
  }

  v94 = v5;
  v95 = v36;
  mlir::ShapedType::getShape(&v94);
  if (!v37)
  {
    v74 = *v5;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = v74[1];
      v77 = *(v74 + 4);
      if (v77)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v87 = v74;
      sub_1002AAABC();
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = v87[1];
      v77 = *(v87 + 4);
      if (v77)
      {
LABEL_102:
        v78 = v76;
        v79 = v77;
        do
        {
          v80 = v79 >> 1;
          v81 = &v78[2 * (v79 >> 1)];
          v83 = *v81;
          v82 = v81 + 2;
          v79 += ~(v79 >> 1);
          if (v83 < v75)
          {
            v78 = v82;
          }

          else
          {
            v79 = v80;
          }
        }

        while (v79);
LABEL_127:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v88 = v78[1];
        }

        else
        {
          v88 = 0;
        }

        v102 = v5;
        v103 = v88;
        ElementType = mlir::ShapedType::getElementType(&v102);
        if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
        {
          goto LABEL_86;
        }

        v89 = *(*ElementType + 136);
        if (v89 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v89 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_86;
        }

        if (mlir::Type::isSignedInteger(&ElementType, 4))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isSignedInteger(&ElementType, 8))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isSignedInteger(&ElementType, 16))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isSignedInteger(&ElementType, 32))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isSignedInteger(&ElementType, 64))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isUnsignedInteger(&ElementType, 4))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isUnsignedInteger(&ElementType, 8))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isUnsignedInteger(&ElementType, 16))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isUnsignedInteger(&ElementType, 32))
        {
          goto LABEL_86;
        }

        if (mlir::Type::isUnsignedInteger(&ElementType, 64))
        {
          goto LABEL_86;
        }

        if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v99 = ElementType;
          v100 = mlir::ComplexType::getElementType(&v99);
          if (mlir::Type::isF16(&v100))
          {
            goto LABEL_86;
          }

          if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
            v97 = ElementType;
            v98 = mlir::ComplexType::getElementType(&v97);
            if (mlir::Type::isF32(&v98))
            {
              goto LABEL_86;
            }
          }
        }

        if (mlir::Type::isSignlessInteger(&ElementType, 1))
        {
          goto LABEL_86;
        }

        goto LABEL_56;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_127;
  }

LABEL_56:
  v96 = 261;
  v94 = "operand";
  v95 = 7;
  mlir::Operation::emitOpError(&v105, v4, &v94);
  if (v105)
  {
    LODWORD(v102) = 3;
    v103 = " #";
    v104 = 2;
    v38 = &v102;
    v39 = v107;
    if (v108 >= v109)
    {
      if (v107 <= &v102 && v107 + 24 * v108 > &v102)
      {
        v85 = &v102 - v107;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v39 = v107;
        v38 = v107 + v85;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
        v38 = &v102;
        v39 = v107;
      }
    }

    v40 = &v39[24 * v108];
    v41 = *v38;
    *(v40 + 2) = *(v38 + 2);
    *v40 = v41;
    v42 = ++v108;
    if (v105)
    {
      LODWORD(v102) = 5;
      v103 = 2;
      v43 = &v102;
      v44 = v107;
      if (v42 >= v109)
      {
        if (v107 <= &v102 && v107 + 24 * v42 > &v102)
        {
          v86 = &v102 - v107;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v42 + 1, 24);
          v44 = v107;
          v43 = v107 + v86;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v42 + 1, 24);
          v43 = &v102;
          v44 = v107;
        }
      }

      v45 = &v44[24 * v108];
      v46 = *v43;
      *(v45 + 2) = *(v43 + 2);
      *v45 = v46;
      v47 = ++v108;
      if (v105)
      {
        LODWORD(v102) = 3;
        v103 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v104 = 274;
        v48 = &v102;
        v49 = v107;
        if (v47 >= v109)
        {
          if (v107 <= &v102 && v107 + 24 * v47 > &v102)
          {
            v91 = &v102 - v107;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v47 + 1, 24);
            v49 = v107;
            v48 = v107 + v91;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v47 + 1, 24);
            v48 = &v102;
            v49 = v107;
          }
        }

        v50 = &v49[24 * v108];
        v51 = *v48;
        *(v50 + 2) = *(v48 + 2);
        *v50 = v51;
        ++v108;
        if (v105)
        {
          v52 = &v102;
          mlir::DiagnosticArgument::DiagnosticArgument(&v102, v5);
          v53 = v107;
          if (v108 >= v109)
          {
            if (v107 <= &v102 && v107 + 24 * v108 > &v102)
            {
              v92 = &v102 - v107;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
              v53 = v107;
              v52 = v107 + v92;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v107, v110, v108 + 1, 24);
              v52 = &v102;
              v53 = v107;
            }
          }

          v54 = &v53[24 * v108];
          v55 = *v52;
          *(v54 + 2) = *(v52 + 2);
          *v54 = v55;
          ++v108;
        }
      }
    }
  }

  v56 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
  if (v105)
  {
    mlir::InFlightDiagnostic::report(&v105);
  }

  if (v116 == 1)
  {
    if (v115 != &v116)
    {
      free(v115);
    }

    v57 = __p;
    if (__p)
    {
      v58 = v114;
      v59 = __p;
      if (v114 != __p)
      {
        do
        {
          v58 = sub_10005BEF4(v58 - 1);
        }

        while (v58 != v57);
        v59 = __p;
      }

      v114 = v57;
      operator delete(v59);
    }

    v60 = v111;
    if (v111)
    {
      v61 = v112;
      v62 = v111;
      if (v112 != v111)
      {
        do
        {
          v63 = *--v61;
          *v61 = 0;
          if (v63)
          {
            operator delete[]();
          }
        }

        while (v61 != v60);
        v62 = v111;
      }

      v112 = v60;
      operator delete(v62);
    }

    if (v107 != v110)
    {
      free(v107);
    }
  }

  if (!v56)
  {
    return 0;
  }

LABEL_86:
  if (*(*this + 9))
  {
    v64 = *this - 16;
  }

  else
  {
    v64 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v64, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v102 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v105 = sub_100227728(&v102);
  v106 = v66;
  mlir::ShapedType::getShape(&v105);
  v68 = v67;
  ElementType = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v94 = sub_100227728(&ElementType);
  v95 = v69;
  mlir::ShapedType::getShape(&v94);
  if (v68 == v70)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      v72 = mlir::getElementTypeOrSelf(*this - 16);
      if (v72 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)))
      {
        return 1;
      }

      v84 = "failed to verify that Result 0 element type must match element type of operand 2.";
    }

    else
    {
      v84 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v94 = v84;
    v96 = 259;
    mlir::OpState::emitOpError(this, &v94, &v105);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
    sub_10006296C(&v105);
    return v16;
  }

  v94 = "failed to verify that Result 0 and operand 0 must have the same rank.";
  v96 = 259;
  mlir::OpState::emitOpError(this, &v94, &v105);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v105);
  if (v105)
  {
    mlir::InFlightDiagnostic::report(&v105);
  }

  if (v116 == 1)
  {
    sub_10005BE10(&v106);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
          v30 = sub_10005BEF4(v30 - 1);
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

  v8 = mlir::DictionaryAttr::get(&v38, "opname", 6uLL);
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
    v41 = 51;
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
          v19 = sub_10005BEF4(v19 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "opname", 6, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1634627695 ? (v4 = *(a3 + 4) == 25965) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::PlaceholderOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6 && *a2 == 1634627695 && *(a2 + 4) == 25965)
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

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "opname", 6, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_100119594(a1, v2) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::PlaceholderOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v17[0] = *this;
    if (sub_10010DF98(v1, "opname", 6, sub_10026D0C4, v17))
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
    v15 = "requires attribute 'opname'";
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
            v8 = sub_10005BEF4(v8 - 1);
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

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v3, 1);
  v2 = *a1;
  operator new();
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(mlir::ODIE::Compiler::CoreML::PlaceholderOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21 = 0;
  v22[0] = v23;
  v22[1] = 0x400000000;
  Inputs = 0;
  v20 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!sub_1001EBC00(this, &v21, v7))
  {
    goto LABEL_15;
  }

  if (v21)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v21;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = (*(*this + 40))(this);
  if (((*(*this + 720))(this, v22, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(a2 + 1);
  v17[0] = this;
  v17[1] = &v18;
  v17[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((sub_10010DF98(v11, "opname", 6, sub_100274060, v17) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (((*(*this + 104))(this) & 1) != 0 && (v17[0] = 0, sub_1002572C8(this, v17)))
  {
    Inputs = mlir::FunctionType::getInputs(v17);
    v20 = v12;
    Results = mlir::FunctionType::getResults(v17);
    sub_1001EFDBC(a2, Results, v14);
    v15 = sub_100257520(this, v22, &Inputs, v9, a2 + 16) & 1;
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  return v15;
}

BOOL sub_1002572C8(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  if (((*(*a1 + 536))(a1, &v17) & 1) == 0)
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

uint64_t sub_100257520(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 2);
  v7 = a3[1];
  if (v7 == v6)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v51 = 257;
    (*(*a1 + 24))(v55, a1, a4, v50);
    if (v55[0])
    {
      v52 = 3;
      v53 = "number of operands and types do not match: got ";
      v54 = 47;
      v13 = &v52;
      v14 = v56;
      if (v57 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v57 > &v52)
        {
          v45 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v14 = v56;
          v13 = (v56 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 5;
        v53 = v6;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v46 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v57;
        if (v55[0])
        {
          v52 = 3;
          v53 = " operands and ";
          v54 = 14;
          v23 = &v52;
          v24 = v56;
          if (v22 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v22 > &v52)
            {
              v47 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v24 = v56;
              v23 = (v56 + v47);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v23 = &v52;
              v24 = v56;
            }
          }

          v25 = &v24[24 * v57];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          v27 = ++v57;
          if (v55[0])
          {
            v52 = 5;
            v53 = v7;
            v28 = &v52;
            v29 = v56;
            if (v27 >= v58)
            {
              if (v56 <= &v52 && v56 + 24 * v27 > &v52)
              {
                v48 = &v52 - v56;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v29 = v56;
                v28 = (v56 + v48);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v28 = &v52;
                v29 = v56;
              }
            }

            v30 = &v29[24 * v57];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            v32 = ++v57;
            if (v55[0])
            {
              v52 = 3;
              v53 = " types";
              v54 = 6;
              v33 = &v52;
              v34 = v56;
              if (v32 >= v58)
              {
                if (v56 <= &v52 && v56 + 24 * v32 > &v52)
                {
                  v49 = &v52 - v56;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v34 = v56;
                  v33 = (v56 + v49);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v33 = &v52;
                  v34 = v56;
                }
              }

              v35 = &v34[24 * v57];
              v36 = *v33;
              *(v35 + 2) = *(v33 + 2);
              *v35 = v36;
              ++v57;
            }
          }
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v63;
        v39 = __p;
        if (v63 != __p)
        {
          do
          {
            v38 = sub_10005BEF4(v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v63 = v37;
        operator delete(v39);
      }

      v40 = v60;
      if (v60)
      {
        v41 = v61;
        v42 = v60;
        if (v61 != v60)
        {
          do
          {
            v43 = *--v41;
            *v41 = 0;
            if (v43)
            {
              operator delete[]();
            }
          }

          while (v41 != v40);
          v42 = v60;
        }

        v61 = v40;
        operator delete(v42);
      }

      if (v56 != v59)
      {
        free(v56);
      }
    }
  }

  return v12;
}

llvm::raw_ostream *sub_100257B04(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = v6;
  v8 = *(v6 + 4);
  if (v8 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 40);
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 4) = v8 + 1;
    *v8 = 40;
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  v11 = *a2 + 32 * v9;
  (*(*a1 + 32))(a1, *(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 + 1 != v10)
  {
    v14 = ~v9 + v10;
    v15 = (v11 + 56);
    do
    {
      v17 = (*(*a1 + 16))(a1);
      v18 = v17[4];
      if (v17[3] - v18 > 1uLL)
      {
        *v18 = 8236;
        v17[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v17, ", ", 2uLL);
      }

      v16 = *v15;
      v15 += 4;
      (*(*a1 + 32))(a1, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v14;
    }

    while (v14);
  }

LABEL_6:
  v12 = *(v7 + 4);
  if (v12 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 41);
  }

  else
  {
    *(v7 + 4) = v12 + 1;
    *v12 = 41;
  }

  return sub_1002743C0(a1, a3);
}

BOOL mlir::ODIE::Compiler::CoreML::PowOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::RangeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100258BA4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100258BA4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100258BA4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 17) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = v6[1];
      v9 = *(v6 + 4);
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1002AAABC();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = v6[1];
      v9 = *(v6 + 4);
      if (!v9)
      {
        goto LABEL_20;
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
      v16 = v10[1];
      v100 = v5;
      v101 = v16;
      if (!mlir::ShapedType::hasRank(&v100))
      {
        goto LABEL_69;
      }

LABEL_23:
      v17 = *v5;
      {
        v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v19 = v17[1];
        v20 = *(v17 + 4);
        if (v20)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1002AAABC();
        v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v19 = v17[1];
        v20 = *(v17 + 4);
        if (v20)
        {
LABEL_25:
          v21 = v19;
          v22 = v20;
          do
          {
            v23 = v22 >> 1;
            v24 = &v21[2 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 2;
            v22 += ~(v22 >> 1);
            if (v26 < v18)
            {
              v21 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
LABEL_33:
          if (v21 != &v19[2 * v20] && *v21 == v18)
          {
            v27 = v21[1];
          }

          else
          {
            v27 = 0;
          }

          v89 = v5;
          v90 = v27;
          mlir::ShapedType::getShape(&v89);
          if (v28 != 1)
          {
            goto LABEL_69;
          }

          v29 = *v5;
          {
            v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v31 = v29[1];
            v32 = *(v29 + 4);
            if (v32)
            {
              goto LABEL_40;
            }
          }

          else
          {
            sub_1002AAABC();
            v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v31 = v29[1];
            v32 = *(v29 + 4);
            if (v32)
            {
LABEL_40:
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
LABEL_48:
              if (v33 != &v31[2 * v32] && *v33 == v30)
              {
                v39 = v33[1];
              }

              else
              {
                v39 = 0;
              }

              v97 = v5;
              v98 = v39;
              ElementType = mlir::ShapedType::getElementType(&v97);
              if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
              {
                goto LABEL_99;
              }

              v40 = *(*ElementType + 136);
              if (v40 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
              {
                goto LABEL_99;
              }

              if (mlir::Type::isSignedInteger(&ElementType, 4))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isSignedInteger(&ElementType, 8))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isSignedInteger(&ElementType, 16))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isSignedInteger(&ElementType, 32))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isSignedInteger(&ElementType, 64))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isUnsignedInteger(&ElementType, 4))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isUnsignedInteger(&ElementType, 8))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isUnsignedInteger(&ElementType, 16))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isUnsignedInteger(&ElementType, 32))
              {
                goto LABEL_99;
              }

              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
                goto LABEL_99;
              }

              if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
              {
                v94 = ElementType;
                v95 = mlir::ComplexType::getElementType(&v94);
                if (mlir::Type::isF16(&v95))
                {
                  goto LABEL_99;
                }

                if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                {
                  v92 = ElementType;
                  v93 = mlir::ComplexType::getElementType(&v92);
                  if (mlir::Type::isF32(&v93))
                  {
                    goto LABEL_99;
                  }
                }
              }

              goto LABEL_69;
            }
          }

          v32 = 0;
          v33 = v31;
          goto LABEL_48;
        }
      }

      v20 = 0;
      v21 = v19;
      goto LABEL_33;
    }

LABEL_20:
    v100 = v5;
    v101 = 0;
    if (!mlir::ShapedType::hasRank(&v100))
    {
      goto LABEL_69;
    }

    goto LABEL_23;
  }

LABEL_69:
  v91 = 261;
  v89 = "result";
  v90 = 6;
  mlir::Operation::emitOpError(&v100, v4, &v89);
  if (v100)
  {
    LODWORD(v97) = 3;
    v98 = " #";
    v99 = 2;
    v42 = &v97;
    v43 = v102;
    if (v103 >= v104)
    {
      if (v102 <= &v97 && v102 + 24 * v103 > &v97)
      {
        v85 = &v97 - v102;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
        v43 = v102;
        v42 = (v102 + v85);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
        v42 = &v97;
        v43 = v102;
      }
    }

    v44 = &v43[24 * v103];
    v45 = *v42;
    *(v44 + 2) = v42[2];
    *v44 = v45;
    v46 = ++v103;
    if (v100)
    {
      LODWORD(v97) = 5;
      v98 = 0;
      v47 = &v97;
      v48 = v102;
      if (v46 >= v104)
      {
        if (v102 <= &v97 && v102 + 24 * v46 > &v97)
        {
          v86 = &v97 - v102;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v46 + 1, 24);
          v48 = v102;
          v47 = (v102 + v86);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v46 + 1, 24);
          v47 = &v97;
          v48 = v102;
        }
      }

      v49 = &v48[24 * v103];
      v50 = *v47;
      *(v49 + 2) = v47[2];
      *v49 = v50;
      v51 = ++v103;
      if (v100)
      {
        LODWORD(v97) = 3;
        v98 = " must be 1D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v99 = 257;
        v52 = &v97;
        v53 = v102;
        if (v51 >= v104)
        {
          if (v102 <= &v97 && v102 + 24 * v51 > &v97)
          {
            v87 = &v97 - v102;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v51 + 1, 24);
            v53 = v102;
            v52 = (v102 + v87);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v51 + 1, 24);
            v52 = &v97;
            v53 = v102;
          }
        }

        v54 = &v53[24 * v103];
        v55 = *v52;
        *(v54 + 2) = v52[2];
        *v54 = v55;
        ++v103;
        if (v100)
        {
          v56 = &v97;
          mlir::DiagnosticArgument::DiagnosticArgument(&v97, v5);
          v57 = v102;
          if (v103 >= v104)
          {
            if (v102 <= &v97 && v102 + 24 * v103 > &v97)
            {
              v88 = &v97 - v102;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
              v57 = v102;
              v56 = (v102 + v88);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v105, v103 + 1, 24);
              v56 = &v97;
              v57 = v102;
            }
          }

          v58 = &v57[24 * v103];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v103;
        }
      }
    }
  }

  v60 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
  if (v100)
  {
    mlir::InFlightDiagnostic::report(&v100);
  }

  if (v111 == 1)
  {
    if (v110 != &v111)
    {
      free(v110);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v109;
      v63 = __p;
      if (v109 != __p)
      {
        do
        {
          v62 = sub_10005BEF4(v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v109 = v61;
      operator delete(v63);
    }

    v64 = v106;
    if (v106)
    {
      v65 = v107;
      v66 = v106;
      if (v107 != v106)
      {
        do
        {
          v67 = *--v65;
          *v65 = 0;
          if (v67)
          {
            operator delete[]();
          }
        }

        while (v65 != v64);
        v66 = v106;
      }

      v107 = v64;
      operator delete(v66);
    }

    if (v102 != v105)
    {
      free(v102);
    }
  }

  if (!v60)
  {
    return 0;
  }

LABEL_99:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 56));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)) && (v69 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)), v69 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56))))
  {
    v70 = mlir::getElementTypeOrSelf(*this - 16);
    if (v70 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v89 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v91 = 259;
    mlir::OpState::emitOpError(this, &v89, &v100);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
    v72 = result;
    if (v100)
    {
      mlir::InFlightDiagnostic::report(&v100);
      result = v72;
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
        result = v72;
      }

      v80 = __p;
      if (__p)
      {
        v81 = v109;
        v82 = __p;
        if (v109 != __p)
        {
          do
          {
            v81 = sub_10005BEF4(v81 - 1);
          }

          while (v81 != v80);
          v82 = __p;
        }

        v109 = v80;
        operator delete(v82);
        result = v72;
      }

      v76 = v106;
      if (!v106)
      {
        goto LABEL_139;
      }

      v83 = v107;
      v78 = v106;
      if (v107 == v106)
      {
LABEL_138:
        v107 = v76;
        operator delete(v78);
        result = v72;
LABEL_139:
        if (v102 != v105)
        {
          free(v102);
          return v72;
        }

        return result;
      }

      do
      {
        v84 = *--v83;
        *v83 = 0;
        if (v84)
        {
          operator delete[]();
        }
      }

      while (v83 != v76);
LABEL_137:
      v78 = v106;
      goto LABEL_138;
    }
  }

  else
  {
    v89 = "failed to verify that Operands should have same element type.";
    v91 = 259;
    mlir::OpState::emitOpError(this, &v89, &v100);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
    v72 = result;
    if (v100)
    {
      mlir::InFlightDiagnostic::report(&v100);
      result = v72;
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
        result = v72;
      }

      v73 = __p;
      if (__p)
      {
        v74 = v109;
        v75 = __p;
        if (v109 != __p)
        {
          do
          {
            v74 = sub_10005BEF4(v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v109 = v73;
        operator delete(v75);
        result = v72;
      }

      v76 = v106;
      if (!v106)
      {
        goto LABEL_139;
      }

      v77 = v107;
      v78 = v106;
      if (v107 == v106)
      {
        goto LABEL_138;
      }

      do
      {
        v79 = *--v77;
        *v77 = 0;
        if (v79)
        {
          operator delete[]();
        }
      }

      while (v77 != v76);
      goto LABEL_137;
    }
  }

  return result;
}

uint64_t sub_100258BA4(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v83[1];
    v54 = *(v83 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (!v63)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (!v61)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v76 = v64;
      sub_1002AAABC();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v76[1];
      v67 = *(v76 + 4);
      if (!v67)
      {
        goto LABEL_88;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v77 = v68[1];
LABEL_90:
      v92 = a2;
      v93 = v77;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
      {
        return 1;
      }

      v78 = *(*ElementType + 136);
      v79 = v78 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v78 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      if (v79 || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }

      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_108;
      }

      v89 = ElementType;
      v90 = mlir::ComplexType::getElementType(&v89);
      if (!mlir::Type::isF16(&v90))
      {
        if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
LABEL_108:
          a1 = v36;
          goto LABEL_2;
        }

        v87 = ElementType;
        v88 = mlir::ComplexType::getElementType(&v87);
        isF32 = mlir::Type::isF32(&v88);
        a1 = v36;
        if (!isF32)
        {
          goto LABEL_2;
        }
      }

      return 1;
    }

LABEL_88:
    v77 = 0;
    goto LABEL_90;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v75 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 257;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreML::ReLUOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::ReadHandleOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "output", 6);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);

  return (a2)(a3, v9, "out_token", 9);
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100259988(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (sub_1002380EC(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v3 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 1);
  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  if ((sub_1002380EC(*this, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1) == 0)
  {
    return 0;
  }

  v6 = *(*this + 9);
  v7 = *(v6 + 24);
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v6 + 56));
  if (HandleForToken)
  {
    v9 = HandleForToken == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  v19 = "failed to verify that input token must come from an operation on the same handle";
  v20 = 259;
  mlir::OpState::emitOpError(this, &v19, v21);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v11 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v11;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v11;
    }

    v12 = __p;
    if (__p)
    {
      v13 = v27;
      v14 = __p;
      if (v27 != __p)
      {
        do
        {
          v13 = sub_10005BEF4(v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v27 = v12;
      operator delete(v14);
      result = v11;
    }

    v15 = v24;
    if (v24)
    {
      v16 = v25;
      v17 = v24;
      if (v25 != v24)
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
        v17 = v24;
      }

      v25 = v15;
      operator delete(v17);
      result = v11;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v11;
    }
  }

  return result;
}

uint64_t sub_100259988(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
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
          v27 = sub_10005BEF4(v27 - 1);
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

BOOL mlir::ODIE::Compiler::CoreML::RealPartOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::RealPartOp::parse(mlir::ODIE::Compiler::CoreML::RealPartOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void mlir::ODIE::Compiler::CoreML::RealPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMeanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceSumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

BOOL mlir::ODIE::Compiler::CoreML::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v55, "interpolation_mode", 0x12uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
    {
      v9 = v8;
      a3(v59, a4);
      if (v59[0])
      {
        v56 = 3;
        v58 = 63;
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

  v34 = mlir::DictionaryAttr::get(&v55, "sampling_mode", 0xDuLL);
  if (!v34)
  {
    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
  {
    a1[1] = v34;
    return 1;
  }

  v35 = v34;
  a3(v59, a4);
  if (v59[0])
  {
    v56 = 3;
    v58 = 58;
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

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "interpolation_mode", 0x12, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "sampling_mode", 0xD, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  __src[0] = v3;
  __src[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return sub_10002D330(__src, 0, v8, v9);
}

unint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 13)
  {
    if (a4 == 18)
    {
      v4 = *a3 == 0x6C6F707265746E69 && *(a3 + 8) == 0x6F6D5F6E6F697461;
      if (v4 && *(a3 + 16) == 25956)
      {
        return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
      }
    }

    return 0;
  }

  if (*a3 != 0x676E696C706D6173 || *(a3 + 5) != 0x65646F6D5F676E69)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13)
  {
    if (*a2 == 0x676E696C706D6173 && *(a2 + 5) == 0x65646F6D5F676E69)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        result[1] = v7;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 18)
  {
    v4 = *a2 == 0x6C6F707265746E69 && *(a2 + 8) == 0x6F6D5F6E6F697461;
    if (v4 && *(a2 + 16) == 25956)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
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
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v7, "interpolation_mode", 0x12, *a2);
    result = mlir::NamedAttrList::push_back(a3, v7, v8);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v7, "sampling_mode", 0xD, v6);
    return mlir::NamedAttrList::push_back(a3, v7, v8);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_10025BF24(v8, "interpolation_mode", 0x12, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10025C260(v9, "sampling_mode", 0xD, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10025BF24(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
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
        v27 = "' failed to satisfy constraint: CoreML ResizeByScale Op's interpolation mode to use: 'linear' | 'nearest_neighbor'";
        v28 = 114;
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

uint64_t sub_10025C260(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
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
        v27 = "' failed to satisfy constraint: CoreML ResizeByScale Op's sampling mode to use: 'half_pixel' | 'align_corners'";
        v28 = 110;
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

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (sub_10025C694(a1, *(a2 + 256)))
  {
    return sub_10025CB24(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10025C694(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id)
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
    sub_1002AB710();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(void)::Name;
      v33 = *algn_1002E31D8;
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

uint64_t sub_10025CB24(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  if (((*(*a1 + 48))(a1, &v31) & 1) == 0)
  {
    return 0;
  }

  v4 = v31;
  v5 = *(*v31 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id)
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
    sub_1002AB750();
    if (v36)
    {
LABEL_10:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(void)::Name;
      v33 = unk_1002E31F0;
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

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      v171 = v2;
      if ((sub_10025BF24(v4, "interpolation_mode", 0x12, sub_10026D404, &v171) & 1) == 0)
      {
        return 0;
      }

      v171 = *this;
      if ((sub_10025C260(v7, "sampling_mode", 0xD, sub_10026D434, &v171) & 1) == 0 || !sub_1002263C4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
      {
        return 0;
      }

      v8 = *this;
      v9 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v9;
      if (*(*v9 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_90;
      }

      {
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = v10[1];
        v13 = *(v10 + 4);
        if (v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1002AAABC();
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = v10[1];
        v13 = *(v10 + 4);
        if (v13)
        {
LABEL_9:
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
LABEL_53:
          if (v14 != &v12[2 * v13] && *v14 == v11)
          {
            v33 = v14[1];
          }

          else
          {
            v33 = 0;
          }

          v171 = v9;
          v172 = v33;
          if (!mlir::ShapedType::hasRank(&v171))
          {
            goto LABEL_90;
          }

          v34 = *v9;
          {
            v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v36 = v34[1];
            v37 = *(v34 + 4);
            if (v37)
            {
              goto LABEL_60;
            }
          }

          else
          {
            sub_1002AAABC();
            v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v36 = v34[1];
            v37 = *(v34 + 4);
            if (v37)
            {
LABEL_60:
              v38 = v36;
              v39 = v37;
              do
              {
                v40 = v39 >> 1;
                v41 = &v38[2 * (v39 >> 1)];
                v43 = *v41;
                v42 = v41 + 2;
                v39 += ~(v39 >> 1);
                if (v43 < v35)
                {
                  v38 = v42;
                }

                else
                {
                  v39 = v40;
                }
              }

              while (v39);
LABEL_68:
              if (v38 != &v36[2 * v37] && *v38 == v35)
              {
                v44 = v38[1];
              }

              else
              {
                v44 = 0;
              }

              v164 = v9;
              v165 = v44;
              mlir::ShapedType::getShape(&v164);
              if (v45 == 1)
              {
                v46 = *v9;
                {
                  v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v48 = v46[1];
                  v49 = *(v46 + 4);
                  if (v49)
                  {
                    goto LABEL_75;
                  }
                }

                else
                {
                  sub_1002AAABC();
                  v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v48 = v46[1];
                  v49 = *(v46 + 4);
                  if (v49)
                  {
LABEL_75:
                    v50 = v48;
                    v51 = v49;
                    do
                    {
                      v52 = v51 >> 1;
                      v53 = &v50[2 * (v51 >> 1)];
                      v55 = *v53;
                      v54 = v53 + 2;
                      v51 += ~(v51 >> 1);
                      if (v55 < v47)
                      {
                        v50 = v54;
                      }

                      else
                      {
                        v51 = v52;
                      }
                    }

                    while (v51);
LABEL_83:
                    if (v50 != &v48[2 * v49] && *v50 == v47)
                    {
                      v56 = v50[1];
                    }

                    else
                    {
                      v56 = 0;
                    }

                    v168 = v9;
                    v169 = v56;
                    ElementType = mlir::ShapedType::getElementType(&v168);
                    if (mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isF32(&ElementType))
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_90;
                  }
                }

                v49 = 0;
                v50 = v48;
                goto LABEL_83;
              }

LABEL_90:
              v166 = 261;
              v164 = "operand";
              v165 = 7;
              mlir::Operation::emitOpError(&v171, v8, &v164);
              if (v171)
              {
                LODWORD(v168) = 3;
                v169 = " #";
                v170 = 2;
                v57 = &v168;
                v58 = v173;
                if (v174 >= v175)
                {
                  if (v173 <= &v168 && v173 + 24 * v174 > &v168)
                  {
                    v106 = &v168 - v173;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                    v58 = v173;
                    v57 = v173 + v106;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                    v57 = &v168;
                    v58 = v173;
                  }
                }

                v59 = &v58[24 * v174];
                v60 = *v57;
                *(v59 + 2) = *(v57 + 2);
                *v59 = v60;
                v61 = ++v174;
                if (v171)
                {
                  LODWORD(v168) = 5;
                  v169 = 1;
                  v62 = &v168;
                  v63 = v173;
                  if (v61 >= v175)
                  {
                    if (v173 <= &v168 && v173 + 24 * v61 > &v168)
                    {
                      v119 = &v168 - v173;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v61 + 1, 24);
                      v63 = v173;
                      v62 = v173 + v119;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v61 + 1, 24);
                      v62 = &v168;
                      v63 = v173;
                    }
                  }

                  v64 = &v63[24 * v174];
                  v65 = *v62;
                  *(v64 + 2) = *(v62 + 2);
                  *v64 = v65;
                  v66 = ++v174;
                  if (v171)
                  {
                    LODWORD(v168) = 3;
                    v169 = " must be 1D tensor of Index type. or 32-bit float values, but got ";
                    v170 = 66;
                    v67 = &v168;
                    v68 = v173;
                    if (v66 >= v175)
                    {
                      if (v173 <= &v168 && v173 + 24 * v66 > &v168)
                      {
                        v120 = &v168 - v173;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v66 + 1, 24);
                        v68 = v173;
                        v67 = v173 + v120;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v66 + 1, 24);
                        v67 = &v168;
                        v68 = v173;
                      }
                    }

                    v69 = &v68[24 * v174];
                    v70 = *v67;
                    *(v69 + 2) = *(v67 + 2);
                    *v69 = v70;
                    ++v174;
                    if (v171)
                    {
                      v71 = &v168;
                      mlir::DiagnosticArgument::DiagnosticArgument(&v168, v9);
                      v72 = v173;
                      if (v174 >= v175)
                      {
                        if (v173 <= &v168 && v173 + 24 * v174 > &v168)
                        {
                          v161 = &v168 - v173;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                          v72 = v173;
                          v71 = v173 + v161;
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                          v71 = &v168;
                          v72 = v173;
                        }
                      }

                      v73 = &v72[24 * v174];
                      v74 = *v71;
                      *(v73 + 2) = *(v71 + 2);
                      *v73 = v74;
                      ++v174;
                    }
                  }
                }
              }

              v75 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v171);
              if (v171)
              {
                mlir::InFlightDiagnostic::report(&v171);
              }

              if (v182 == 1)
              {
                if (v181 != &v182)
                {
                  free(v181);
                }

                v76 = __p;
                if (__p)
                {
                  v77 = v180;
                  v78 = __p;
                  if (v180 != __p)
                  {
                    do
                    {
                      v77 = sub_10005BEF4(v77 - 1);
                    }

                    while (v77 != v76);
                    v78 = __p;
                  }

                  v180 = v76;
                  operator delete(v78);
                }

                v79 = v177;
                if (v177)
                {
                  v80 = v178;
                  v81 = v177;
                  if (v178 != v177)
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
                    v81 = v177;
                  }

                  v178 = v79;
                  operator delete(v81);
                }

                if (v173 != v176)
                {
                  free(v173);
                }
              }

              if (!v75)
              {
                return 0;
              }

LABEL_120:
              v83 = *this;
              v84 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
              v85 = *v84;
              if (*(*v84 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
              {
                goto LABEL_181;
              }

              {
                v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v87 = v85[1];
                v88 = *(v85 + 4);
                if (v88)
                {
                  goto LABEL_123;
                }
              }

              else
              {
                sub_1002AAABC();
                v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v87 = v85[1];
                v88 = *(v85 + 4);
                if (v88)
                {
LABEL_123:
                  v89 = v87;
                  v90 = v88;
                  do
                  {
                    v91 = v90 >> 1;
                    v92 = &v89[2 * (v90 >> 1)];
                    v94 = *v92;
                    v93 = v92 + 2;
                    v90 += ~(v90 >> 1);
                    if (v94 < v86)
                    {
                      v89 = v93;
                    }

                    else
                    {
                      v90 = v91;
                    }
                  }

                  while (v90);
LABEL_143:
                  if (v89 != &v87[2 * v88] && *v89 == v86)
                  {
                    v95 = v89[1];
                  }

                  else
                  {
                    v95 = 0;
                  }

                  v171 = v84;
                  v172 = v95;
                  if (!mlir::ShapedType::hasRank(&v171))
                  {
                    goto LABEL_181;
                  }

                  v96 = *v84;
                  {
                    v97 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v98 = v96[1];
                    v99 = *(v96 + 4);
                    if (v99)
                    {
                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    sub_1002AAABC();
                    v97 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v98 = v96[1];
                    v99 = *(v96 + 4);
                    if (v99)
                    {
LABEL_150:
                      v100 = v98;
                      v101 = v99;
                      do
                      {
                        v102 = v101 >> 1;
                        v103 = &v100[2 * (v101 >> 1)];
                        v105 = *v103;
                        v104 = v103 + 2;
                        v101 += ~(v101 >> 1);
                        if (v105 < v97)
                        {
                          v100 = v104;
                        }

                        else
                        {
                          v101 = v102;
                        }
                      }

                      while (v101);
LABEL_159:
                      if (v100 != &v98[2 * v99] && *v100 == v97)
                      {
                        v107 = v100[1];
                      }

                      else
                      {
                        v107 = 0;
                      }

                      v164 = v84;
                      v165 = v107;
                      mlir::ShapedType::getShape(&v164);
                      if (v108 != 1)
                      {
                        goto LABEL_181;
                      }

                      v109 = *v84;
                      {
                        v110 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                        v111 = v109[1];
                        v112 = *(v109 + 4);
                        if (v112)
                        {
                          goto LABEL_166;
                        }
                      }

                      else
                      {
                        sub_1002AAABC();
                        v110 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                        v111 = v109[1];
                        v112 = *(v109 + 4);
                        if (v112)
                        {
LABEL_166:
                          v113 = v111;
                          v114 = v112;
                          do
                          {
                            v115 = v114 >> 1;
                            v116 = &v113[2 * (v114 >> 1)];
                            v118 = *v116;
                            v117 = v116 + 2;
                            v114 += ~(v114 >> 1);
                            if (v118 < v110)
                            {
                              v113 = v117;
                            }

                            else
                            {
                              v114 = v115;
                            }
                          }

                          while (v114);
LABEL_176:
                          if (v113 != &v111[2 * v112] && *v113 == v110)
                          {
                            v121 = v113[1];
                          }

                          else
                          {
                            v121 = 0;
                          }

                          v168 = v84;
                          v169 = v121;
                          ElementType = mlir::ShapedType::getElementType(&v168);
                          if (mlir::Type::isSignlessInteger(&ElementType, 1))
                          {
LABEL_211:
                            if (sub_1002256D0(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
                            {
                              v148 = *(*this + 9) ? *this - 16 : 0;
                              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v148, 0);
                              if (sub_1002263C4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
                              {
                                ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
                                if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
                                {
                                  v168 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
                                  v171 = sub_100227728(&v168);
                                  v172 = v151;
                                  mlir::ShapedType::getShape(&v171);
                                  v153 = v152;
                                  ElementType = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
                                  v164 = sub_100227728(&ElementType);
                                  v165 = v154;
                                  mlir::ShapedType::getShape(&v164);
                                  if (v153 == v155)
                                  {
                                    v156 = *this;
                                    v171 = 0x200000001;
                                    if (sub_10022CC84(v156, &v171, 2))
                                    {
                                      return 1;
                                    }

                                    v158 = "failed to verify that Operands should have same shape.";
                                  }

                                  else
                                  {
                                    v158 = "failed to verify that Result 0 and operand 0 must have the same rank.";
                                  }
                                }

                                else
                                {
                                  v158 = "failed to verify that Result 0 element type must match element type of operand 0.";
                                }

                                v164 = v158;
                                v166 = 259;
                                mlir::OpState::emitOpError(this, &v164, &v171);
                                v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v171);
                                sub_10006296C(&v171);
                                return v20;
                              }
                            }

                            return 0;
                          }

LABEL_181:
                          v166 = 261;
                          v164 = "operand";
                          v165 = 7;
                          mlir::Operation::emitOpError(&v171, v83, &v164);
                          if (v171)
                          {
                            LODWORD(v168) = 3;
                            v169 = " #";
                            v170 = 2;
                            v122 = &v168;
                            v123 = v173;
                            if (v174 >= v175)
                            {
                              if (v173 <= &v168 && v173 + 24 * v174 > &v168)
                              {
                                v159 = &v168 - v173;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                                v123 = v173;
                                v122 = v173 + v159;
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                                v122 = &v168;
                                v123 = v173;
                              }
                            }

                            v124 = &v123[24 * v174];
                            v125 = *v122;
                            *(v124 + 2) = *(v122 + 2);
                            *v124 = v125;
                            v126 = ++v174;
                            if (v171)
                            {
                              LODWORD(v168) = 5;
                              v169 = 2;
                              v127 = &v168;
                              v128 = v173;
                              if (v126 >= v175)
                              {
                                if (v173 <= &v168 && v173 + 24 * v126 > &v168)
                                {
                                  v160 = &v168 - v173;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v126 + 1, 24);
                                  v128 = v173;
                                  v127 = v173 + v160;
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v126 + 1, 24);
                                  v127 = &v168;
                                  v128 = v173;
                                }
                              }

                              v129 = &v128[24 * v174];
                              v130 = *v127;
                              *(v129 + 2) = *(v127 + 2);
                              *v129 = v130;
                              v131 = ++v174;
                              if (v171)
                              {
                                LODWORD(v168) = 3;
                                v169 = " must be 1D tensor of Boolean type. values, but got ";
                                v170 = 52;
                                v132 = &v168;
                                v133 = v173;
                                if (v131 >= v175)
                                {
                                  if (v173 <= &v168 && v173 + 24 * v131 > &v168)
                                  {
                                    v162 = &v168 - v173;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v131 + 1, 24);
                                    v133 = v173;
                                    v132 = v173 + v162;
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v131 + 1, 24);
                                    v132 = &v168;
                                    v133 = v173;
                                  }
                                }

                                v134 = &v133[24 * v174];
                                v135 = *v132;
                                *(v134 + 2) = *(v132 + 2);
                                *v134 = v135;
                                ++v174;
                                if (v171)
                                {
                                  v136 = &v168;
                                  mlir::DiagnosticArgument::DiagnosticArgument(&v168, v84);
                                  v137 = v173;
                                  if (v174 >= v175)
                                  {
                                    if (v173 <= &v168 && v173 + 24 * v174 > &v168)
                                    {
                                      v163 = &v168 - v173;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                                      v137 = v173;
                                      v136 = v173 + v163;
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v173, v176, v174 + 1, 24);
                                      v136 = &v168;
                                      v137 = v173;
                                    }
                                  }

                                  v138 = &v137[24 * v174];
                                  v139 = *v136;
                                  *(v138 + 2) = *(v136 + 2);
                                  *v138 = v139;
                                  ++v174;
                                }
                              }
                            }
                          }

                          v140 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v171);
                          if (v171)
                          {
                            mlir::InFlightDiagnostic::report(&v171);
                          }

                          if (v182 == 1)
                          {
                            if (v181 != &v182)
                            {
                              free(v181);
                            }

                            v141 = __p;
                            if (__p)
                            {
                              v142 = v180;
                              v143 = __p;
                              if (v180 != __p)
                              {
                                do
                                {
                                  v142 = sub_10005BEF4(v142 - 1);
                                }

                                while (v142 != v141);
                                v143 = __p;
                              }

                              v180 = v141;
                              operator delete(v143);
                            }

                            v144 = v177;
                            if (v177)
                            {
                              v145 = v178;
                              v146 = v177;
                              if (v178 != v177)
                              {
                                do
                                {
                                  v147 = *--v145;
                                  *v145 = 0;
                                  if (v147)
                                  {
                                    operator delete[]();
                                  }
                                }

                                while (v145 != v144);
                                v146 = v177;
                              }

                              v178 = v144;
                              operator delete(v146);
                            }

                            if (v173 != v176)
                            {
                              free(v173);
                            }
                          }

                          if (!v140)
                          {
                            return 0;
                          }

                          goto LABEL_211;
                        }
                      }

                      v112 = 0;
                      v113 = v111;
                      goto LABEL_176;
                    }
                  }

                  v99 = 0;
                  v100 = v98;
                  goto LABEL_159;
                }
              }

              v88 = 0;
              v89 = v87;
              goto LABEL_143;
            }
          }

          v37 = 0;
          v38 = v36;
          goto LABEL_68;
        }
      }

      v13 = 0;
      v14 = v12;
      goto LABEL_53;
    }

    v164 = "requires attribute 'sampling_mode'";
    v166 = 259;
    mlir::OpState::emitOpError(this, &v164, &v171);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v171);
    if (v171)
    {
      mlir::InFlightDiagnostic::report(&v171);
    }

    if (v182 == 1)
    {
      if (v181 != &v182)
      {
        free(v181);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v180;
        v30 = __p;
        if (v180 != __p)
        {
          do
          {
            v29 = sub_10005BEF4(v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v180 = v28;
        operator delete(v30);
      }

      v24 = v177;
      if (!v177)
      {
        goto LABEL_49;
      }

      v31 = v178;
      v26 = v177;
      if (v178 == v177)
      {
LABEL_48:
        v178 = v24;
        operator delete(v26);
LABEL_49:
        if (v173 != v176)
        {
          free(v173);
        }

        return v20;
      }

      do
      {
        v32 = *--v31;
        *v31 = 0;
        if (v32)
        {
          operator delete[]();
        }
      }

      while (v31 != v24);
LABEL_47:
      v26 = v177;
      goto LABEL_48;
    }
  }

  else
  {
    v164 = "requires attribute 'interpolation_mode'";
    v166 = 259;
    mlir::OpState::emitOpError(this, &v164, &v171);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v171);
    if (v171)
    {
      mlir::InFlightDiagnostic::report(&v171);
    }

    if (v182 == 1)
    {
      if (v181 != &v182)
      {
        free(v181);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v180;
        v23 = __p;
        if (v180 != __p)
        {
          do
          {
            v22 = sub_10005BEF4(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v180 = v21;
        operator delete(v23);
      }

      v24 = v177;
      if (!v177)
      {
        goto LABEL_49;
      }

      v25 = v178;
      v26 = v177;
      if (v178 == v177)
      {
        goto LABEL_48;
      }

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
      goto LABEL_47;
    }
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReturnOp::parse(mlir::ODIE::Compiler::CoreML::ReturnOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = &_mh_execute_header;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0) || ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0))
  {
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = sub_10010F500(this, &v11, v9, v5, a2 + 16) & 1;
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v29 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
        goto LABEL_47;
      }

      v24 = v34;
      v18 = v33;
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

      while (v24 != v16);
      goto LABEL_45;
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
        goto LABEL_47;
      }

      v17 = v34;
      v18 = v33;
      if (v34 == v33)
      {
LABEL_46:
        v34 = v16;
        operator delete(v18);
        result = v12;
LABEL_47:
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
LABEL_45:
      v18 = v33;
      goto LABEL_46;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::RoundOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::ODIE::Compiler::CoreML::RsqrtOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
          v30 = sub_10005BEF4(v30 - 1);
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

  v8 = mlir::DictionaryAttr::get(&v38, "scatter_mode", 0xCuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v42, a4);
  if (v42[0])
  {
    v39 = 3;
    v41 = 57;
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
          v19 = sub_10005BEF4(v19 - 1);
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

uint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "scatter_mode", 0xC, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x5F72657474616373 ? (v4 = *(a3 + 8) == 1701080941) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12 && *a2 == 0x5F72657474616373 && *(a2 + 8) == 1701080941)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "scatter_mode", 0xC, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

uint64_t sub_10025F3B8(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
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
        v27 = "' failed to satisfy constraint: CoreML ScatterAlongAxis Op's mode to use: 'update' | 'add' | 'sub' | 'mul' | 'div' | 'max' | 'min'";
        v28 = 130;
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

BOOL mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_10025F7C0(a1, v2);
}

BOOL sub_10025F7C0(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id)
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
    sub_1002AB7D4();
    if (v36)
    {
LABEL_11:
      v35 = 261;
      v32 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>(void)::Name;
      v33 = unk_1002E3230;
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

mlir::MLIRContext *mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v37 = v2;
  if ((sub_10025F3B8(v3, "scatter_mode", 0xC, sub_10026D464, &v37) & 1) == 0 || !sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_100227178(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_1002241FC(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) || (sub_100226A34(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v6 = *this;
  v37 = 0x200000001;
  if (sub_10022CC84(v6, &v37, 2))
  {
    v33 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v37 = sub_100227728(&v33);
    v38 = v7;
    mlir::ShapedType::getShape(&v37);
    v9 = v8;
    v32 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v34 = sub_100227728(&v32);
    v35 = v10;
    mlir::ShapedType::getShape(&v34);
    if (v9 == v11)
    {
      v33 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v37 = sub_100227728(&v33);
      v38 = v12;
      Shape = mlir::ShapedType::getShape(&v37);
      v15 = v14;
      v32 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v34 = sub_100227728(&v32);
      v35 = v16;
      v17 = mlir::ShapedType::getShape(&v34);
      if (v15 != v18 || memcmp(Shape, v17, 8 * v15))
      {
        v19 = "failed to verify that Result 0 and operand 0 must have the same shape.";
LABEL_15:
        v34 = v19;
        v36 = 259;
        mlir::OpState::emitOpError(this, &v34, &v37);
        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
        sub_10006296C(&v37);
        return v20;
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
      if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
      {
        v19 = "failed to verify that Result 0 element type must match element type of operand 0.";
        goto LABEL_15;
      }

      return 1;
    }

    else
    {
      v34 = "failed to verify that Result 0 and operand 1 must have the same rank.";
      v36 = 259;
      mlir::OpState::emitOpError(this, &v34, &v37);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
      if (v37)
      {
        v30 = result;
        mlir::InFlightDiagnostic::report(&v37);
        result = v30;
      }

      if (v46 == 1)
      {
        v20 = result;
        sub_10005BE10(&v38);
        return v20;
      }
    }
  }

  else
  {
    v34 = "failed to verify that Operands should have same shape.";
    v36 = 259;
    mlir::OpState::emitOpError(this, &v34, &v37);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
    v22 = result;
    if (v37)
    {
      mlir::InFlightDiagnostic::report(&v37);
      result = v22;
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
        result = v22;
      }

      v23 = __p;
      if (__p)
      {
        v24 = v44;
        v25 = __p;
        if (v44 != __p)
        {
          do
          {
            v24 = sub_10005BEF4(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v44 = v23;
        operator delete(v25);
        result = v22;
      }

      v26 = v41;
      if (v41)
      {
        v27 = v42;
        v28 = v41;
        if (v42 != v41)
        {
          do
          {
            v29 = *--v27;
            *v27 = 0;
            if (v29)
            {
              operator delete[]();
            }
          }

          while (v27 != v26);
          v28 = v41;
        }

        v42 = v26;
        operator delete(v28);
        result = v22;
      }

      if (v39 != &v40)
      {
        free(v39);
        return v22;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ScatterNdOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_100227178(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !sub_1002241FC(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)))
    {
      v30 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v33 = sub_100227728(&v30);
      v34 = v6;
      Shape = mlir::ShapedType::getShape(&v33);
      v9 = v8;
      v29 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v31[0] = sub_100227728(&v29);
      v31[1] = v10;
      v11 = mlir::ShapedType::getShape(v31);
      if (v9 == v12 && !memcmp(Shape, v11, 8 * v9))
      {
        return 1;
      }

      v31[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
      v32 = 259;
      mlir::OpState::emitOpError(this, v31, &v33);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
      if (v33)
      {
        v14 = result;
        mlir::InFlightDiagnostic::report(&v33);
        result = v14;
      }

      if (v42 == 1)
      {
        v15 = result;
        sub_10005BE10(&v34);
        return v15;
      }

      return result;
    }

    v31[0] = "failed to verify that Result 0 element type must match element type of operand 2.";
    v32 = 259;
    mlir::OpState::emitOpError(this, v31, &v33);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
    v16 = result;
    if (v33)
    {
      mlir::InFlightDiagnostic::report(&v33);
      result = v16;
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
        result = v16;
      }

      v24 = __p;
      if (__p)
      {
        v25 = v40;
        v26 = __p;
        if (v40 != __p)
        {
          do
          {
            v25 = sub_10005BEF4(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v40 = v24;
        operator delete(v26);
        result = v16;
      }

      v20 = v37;
      if (!v37)
      {
        goto LABEL_52;
      }

      v27 = v38;
      v22 = v37;
      if (v38 == v37)
      {
LABEL_51:
        v38 = v20;
        operator delete(v22);
        result = v16;
LABEL_52:
        if (v35 != &v36)
        {
          free(v35);
          return v16;
        }

        return result;
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

      while (v27 != v20);
LABEL_50:
      v22 = v37;
      goto LABEL_51;
    }
  }

  else
  {
    v31[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v32 = 259;
    mlir::OpState::emitOpError(this, v31, &v33);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
    v16 = result;
    if (v33)
    {
      mlir::InFlightDiagnostic::report(&v33);
      result = v16;
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
        result = v16;
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
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v40 = v17;
        operator delete(v19);
        result = v16;
      }

      v20 = v37;
      if (!v37)
      {
        goto LABEL_52;
      }

      v21 = v38;
      v22 = v37;
      if (v38 == v37)
      {
        goto LABEL_51;
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
      goto LABEL_50;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::parse(mlir::ODIE::Compiler::CoreML::ScatterNdOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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
  if (((*(*this + 400))(this, "with", 4, v25) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v20, 1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*this + 400))(this, "at", 2, v25) & 1) == 0)
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
  if (sub_10027204C(this, v25) && (v11 = v25[0], ((*(*this + 296))(this) & 1) != 0) && (v26 = 257, ((*(*this + 400))(this, "to", 2, v25) & 1) != 0) && (v25[0] = 0, sub_10027204C(this, v25)) && (v9 = v25[0], (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) != 0) && (sub_1001EFDBC(a2, &v9, 1), (sub_10022A240(this, v22, v14, v5, a2 + 16) & 1) != 0) && (sub_10022A240(this, v16, v10, v7, a2 + 16) & 1) != 0)
  {
    return sub_10022A240(this, v19, v12, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}