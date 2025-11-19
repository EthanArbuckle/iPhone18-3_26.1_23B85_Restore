uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::InputView>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::InputView::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::InputView::verifyInvariantsImpl(mlir::Operation **this)
{
  v54 = *MEMORY[0x277D85DE8];
  v45[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v45);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (v5)
    {
      v15 = *(v4 + 1);
      while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
      {
        v4 = (v4 + 16);
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      v22 = 0;
      v23 = *(v4 + 1);
      while (1)
      {
        v24 = (v4 + v22);
        if (mlir::NamedAttribute::getName((v4 + v22)) == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        v22 += 16;
        if (v5 == v22)
        {
          v43[0] = "requires attribute 'size'";
          v44 = 259;
          mlir::OpState::emitOpError(this, v43, v45);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
          if (v45[0])
          {
            mlir::InFlightDiagnostic::report(v45);
          }

          if (v53 != 1)
          {
            return v6;
          }

          if (v52 != &v53)
          {
            free(v52);
          }

          v25 = __p;
          if (__p)
          {
            v26 = v51;
            v27 = __p;
            if (v51 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v51 = v25;
            operator delete(v27);
          }

          v10 = v48;
          if (!v48)
          {
            goto LABEL_82;
          }

          v28 = v49;
          v12 = v48;
          if (v49 == v48)
          {
            goto LABEL_81;
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

          while (v28 != v10);
          goto LABEL_80;
        }
      }

      v31 = v5 - v22;
      if (v31)
      {
        v32 = *(v24 + 1);
        while (mlir::NamedAttribute::getName(v24) != *(*(*(*this + 6) + 96) + 24))
        {
          v24 = (v24 + 16);
          v31 -= 16;
          if (!v31)
          {
            goto LABEL_64;
          }
        }

        v40 = *(v24 + 1);
        if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v15, "dimension", 9) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v23, "offset", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v32, "size", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps29(*this, v40, "step", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v41 = *this - 16;
        }

        else
        {
          v41 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
        return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

LABEL_64:
      v43[0] = "requires attribute 'step'";
      v44 = 259;
      mlir::OpState::emitOpError(this, v43, v45);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
      if (v45[0])
      {
        mlir::InFlightDiagnostic::report(v45);
      }

      if (v53 != 1)
      {
        return v6;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v51;
        v35 = __p;
        if (v51 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v51 = v33;
        operator delete(v35);
      }

      v10 = v48;
      if (!v48)
      {
        goto LABEL_82;
      }

      v36 = v49;
      v12 = v48;
      if (v49 == v48)
      {
        goto LABEL_81;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          MEMORY[0x259C63150](v37, 0x1000C8077774924);
        }
      }

      while (v36 != v10);
      goto LABEL_80;
    }

LABEL_25:
    v43[0] = "requires attribute 'offset'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v51;
        v18 = __p;
        if (v51 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v51 = v16;
        operator delete(v18);
      }

      v10 = v48;
      if (!v48)
      {
        goto LABEL_82;
      }

      v19 = v49;
      v12 = v48;
      if (v49 == v48)
      {
        goto LABEL_81;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v10);
      goto LABEL_80;
    }
  }

  else
  {
LABEL_5:
    v43[0] = "requires attribute 'dimension'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v51;
        v9 = __p;
        if (v51 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v51 = v7;
        operator delete(v9);
      }

      v10 = v48;
      if (!v48)
      {
        goto LABEL_82;
      }

      v11 = v49;
      v12 = v48;
      if (v49 == v48)
      {
LABEL_81:
        v49 = v10;
        operator delete(v12);
LABEL_82:
        if (v46 != &v47)
        {
          free(v46);
        }

        return v6;
      }

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
LABEL_80:
      v12 = v48;
      goto LABEL_81;
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps29(mlir::Operation *a1, void **a2, void **a3, void **a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v21[0] = a2;
    v6 = a1;
    v23[0] = mlir::IntegerAttr::getType(v21);
    isSignedInteger = mlir::Type::isSignedInteger(v23, 64);
    a1 = v6;
    if (isSignedInteger)
    {
      return 1;
    }
  }

  v22 = 257;
  mlir::Operation::emitOpError(v23, a1, v21);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "attribute '");
  if (*v9)
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v21);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: 64-bit signed integer attribute");
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
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

    v12 = __p;
    if (__p)
    {
      v13 = v29;
      v14 = __p;
      if (v29 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v29 = v12;
      operator delete(v14);
    }

    v15 = v26;
    if (v26)
    {
      v16 = v27;
      v17 = v26;
      if (v27 != v26)
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
        v17 = v26;
      }

      v27 = v15;
      operator delete(v17);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

BOOL mlir::anec::InstanceNorm::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'axes'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 != v31)
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
LABEL_41:
        v12 = v31;
      }

LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v26[0] = "requires attribute 'epsilon'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps30(*this, v15, "axes", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v22, "epsilon", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps30(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v29 = a2;
  v30 = v8;
  Type = mlir::ElementsAttr::getType(&v29);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  mlir::ShapedType::getShape(v32);
  if (v11 == 1 && mlir::hasUniqueValues(a2))
  {
    v26 = a2;
    v27[0] = mlir::DenseElementsAttr::getType(&v26);
    v27[1] = v12;
    ElementType = mlir::ShapedType::getElementType(v27);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v31 = 257;
  mlir::Operation::emitOpError(v32, a1, &v29);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, "attribute '");
  if (*v14)
  {
    v31 = 261;
    v29 = a3;
    v30 = a4;
    v15 = v14;
    mlir::Diagnostic::operator<<((v14 + 1), &v29);
    v14 = v15;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v14, "' failed to satisfy constraint: ui64 unique elements attribute of ranks 1");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v13;
}

BOOL mlir::anec::Invert::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v4[1], "epsilon", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'epsilon'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
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

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::L2NormPool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::L2NormPool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::L2NormPool::verifyInvariantsImpl(mlir::Operation **this)
{
  v46 = *MEMORY[0x277D85DE8];
  v37[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v37);
  if (!v3)
  {
LABEL_5:
    v35[0] = "requires attribute 'ksize'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v6;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v43;
      v9 = __p;
      if (v43 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v43 = v7;
      operator delete(v9);
    }

    v10 = v40;
    if (!v40)
    {
      goto LABEL_63;
    }

    v11 = v41;
    v12 = v40;
    if (v41 == v40)
    {
      goto LABEL_62;
    }

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
    goto LABEL_61;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v35[0] = "requires attribute 'padding'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v6;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v43;
      v20 = __p;
      if (v43 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v43 = v18;
      operator delete(v20);
    }

    v10 = v40;
    if (!v40)
    {
      goto LABEL_63;
    }

    v21 = v41;
    v12 = v40;
    if (v41 == v40)
    {
      goto LABEL_62;
    }

    do
    {
      v23 = *--v21;
      v22 = v23;
      *v21 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v21 != v10);
LABEL_61:
    v12 = v40;
    goto LABEL_62;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (mlir::NamedAttribute::getName((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v35[0] = "requires attribute 'stride'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v6;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v43;
      v28 = __p;
      if (v43 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v43 = v26;
      operator delete(v28);
    }

    v10 = v40;
    if (v40)
    {
      v29 = v41;
      v12 = v40;
      if (v41 != v40)
      {
        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v10);
        goto LABEL_61;
      }

LABEL_62:
      v41 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v38 != &v39)
    {
      free(v38);
    }

    return v6;
  }

  v25 = v17[1];
  while (mlir::NamedAttribute::getName(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 += 2;
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v17[1], "stride", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps9(*this, v25, "padding", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v16, "ksize", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::anec::LeakyRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'offset'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 != v31)
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
LABEL_41:
        v12 = v31;
      }

LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v26[0] = "requires attribute 'slope'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "offset", 6) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v22, "slope", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::Linear::getKernelScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    v6 = result;
    if (mlir::DenseFPElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Linear::getKernelZeroPointAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Linear::getKernelLutAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    v6 = result;
    if (mlir::DenseElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Linear>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Linear::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::Linear::verifyInvariantsImpl(mlir::Operation **this)
{
  v86 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      Name = mlir::NamedAttribute::getName(v4);
      v10 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = mlir::NamedAttribute::getName(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = mlir::NamedAttribute::getName(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
    if (v6)
    {
      if (!mlir::DenseFPElementsAttr::classof(v6))
      {
        goto LABEL_20;
      }

      v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
      v73 = v6;
      v74 = v13;
      Type = mlir::ElementsAttr::getType(&v73);
      v15 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v15;
      v77 = Type;
      mlir::ShapedType::getShape(&AttrDictionary);
      if (v16)
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
        v69 = v6;
        v70 = v17;
        v18 = mlir::ElementsAttr::getType(&v69);
        v19 = v18;
        if (v18)
        {
          v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        }

        v71 = v19;
        v72 = v18;
        mlir::ShapedType::getShape(&v71);
        if (v20 != 1)
        {
          goto LABEL_20;
        }
      }

      v65 = v6;
      v66 = mlir::DenseElementsAttr::getType(&v65);
      v67 = v21;
      ElementType = mlir::ShapedType::getElementType(&v66);
      if (!mlir::Type::isF16(&ElementType))
      {
        v61 = v6;
        v62 = mlir::DenseElementsAttr::getType(&v61);
        v63 = v22;
        v64 = mlir::ShapedType::getElementType(&v62);
        if (!mlir::Type::isF32(&v64))
        {
LABEL_20:
          v75 = 257;
          mlir::Operation::emitOpError(&AttrDictionary, v10, &v73);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "attribute '");
          if (*v23)
          {
            v75 = 261;
            v73 = "kernel_scale";
            v74 = 12;
            v24 = v23;
            mlir::Diagnostic::operator<<((v23 + 1), &v73);
            v23 = v24;
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1");
          v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
          if (AttrDictionary)
          {
            mlir::InFlightDiagnostic::report(&AttrDictionary);
          }

          if (v85 == 1)
          {
            if (v84 != &v85)
            {
              free(v84);
            }

            v27 = __p;
            if (__p)
            {
              v28 = v83;
              v29 = __p;
              if (v83 != __p)
              {
                do
                {
                  v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
                }

                while (v28 != v27);
                v29 = __p;
              }

              v83 = v27;
              operator delete(v29);
            }

            v30 = v80;
            if (v80)
            {
              v31 = v81;
              v32 = v80;
              if (v81 != v80)
              {
                do
                {
                  v34 = *--v31;
                  v33 = v34;
                  *v31 = 0;
                  if (v34)
                  {
                    MEMORY[0x259C63150](v33, 0x1000C8077774924);
                  }
                }

                while (v31 != v30);
                v32 = v80;
              }

              v81 = v30;
              operator delete(v32);
            }

            if (v78 != v79)
            {
              free(v78);
            }
          }

          if (!v26)
          {
            return 0;
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  if (v7)
  {
    v35 = *this;
    if (!mlir::DenseIntElementsAttr::classof(v7))
    {
      goto LABEL_54;
    }

    v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    v73 = v7;
    v74 = v36;
    v37 = mlir::ElementsAttr::getType(&v73);
    v38 = v37;
    if (v37)
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
    }

    AttrDictionary = v38;
    v77 = v37;
    mlir::ShapedType::getShape(&AttrDictionary);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v69 = v7;
      v70 = v40;
      v41 = mlir::ElementsAttr::getType(&v69);
      v42 = v41;
      if (v41)
      {
        v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
      }

      v71 = v42;
      v72 = v41;
      mlir::ShapedType::getShape(&v71);
      if (v43 != 1)
      {
        goto LABEL_54;
      }
    }

    v65 = v7;
    v66 = mlir::DenseElementsAttr::getType(&v65);
    v67 = v44;
    ElementType = mlir::ShapedType::getElementType(&v66);
    if (!mlir::Type::isSignedInteger(&ElementType, 8))
    {
      v61 = v7;
      v62 = mlir::DenseElementsAttr::getType(&v61);
      v63 = v45;
      v64 = mlir::ShapedType::getElementType(&v62);
      if (!mlir::Type::isUnsignedInteger(&v64, 8))
      {
LABEL_54:
        v75 = 257;
        mlir::Operation::emitOpError(&AttrDictionary, v35, &v73);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "attribute '");
        if (*v46)
        {
          v75 = 261;
          v73 = "kernel_zero_point";
          v74 = 17;
          v47 = v46;
          mlir::Diagnostic::operator<<((v46 + 1), &v73);
          v46 = v47;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v46, "' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1");
        v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
        if (AttrDictionary)
        {
          mlir::InFlightDiagnostic::report(&AttrDictionary);
        }

        if (v85 == 1)
        {
          if (v84 != &v85)
          {
            free(v84);
          }

          v50 = __p;
          if (__p)
          {
            v51 = v83;
            v52 = __p;
            if (v83 != __p)
            {
              do
              {
                v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
              }

              while (v51 != v50);
              v52 = __p;
            }

            v83 = v50;
            operator delete(v52);
          }

          v53 = v80;
          if (v80)
          {
            v54 = v81;
            v55 = v80;
            if (v81 != v80)
            {
              do
              {
                v57 = *--v54;
                v56 = v57;
                *v54 = 0;
                if (v57)
                {
                  MEMORY[0x259C63150](v56, 0x1000C8077774924);
                }
              }

              while (v54 != v53);
              v55 = v80;
            }

            v81 = v53;
            operator delete(v55);
          }

          if (v78 != v79)
          {
            free(v78);
          }
        }

        if (!v49)
        {
          return 0;
        }
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps17(*this, v5, "kernel_lut", 10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v58 = *this - 16;
  }

  else
  {
    v58 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v58, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::MatMul::getBiasAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::anec::MatMul::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  }

  __src = v22;
  v21 = 0x200000000;
  v8 = *a1;
  v9 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MatMul>::inferReturnTypes(v8, v9, 1, v19[0], v19[1], Dictionary, v12, v13, v18[0], v18[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = v21;
  v15 = *(a2 + 72);
  if (v15 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v15), __src, 8 * v21);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MatMul>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::MatMul::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::MatMul::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    do
    {
      Name = mlir::NamedAttribute::getName(v4);
      v8 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      v4 = (v4 + 16);
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
    v8 = *this;
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(v8, v5, "bias", 4) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::MaxPool>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::MaxPool::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::NRelu::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v28[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v28);
  if (!v3)
  {
LABEL_5:
    v26[0] = "requires attribute 'max_value'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v34;
      v9 = __p;
      if (v34 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v34 = v7;
      operator delete(v9);
    }

    v10 = v31;
    if (v31)
    {
      v11 = v32;
      v12 = v31;
      if (v32 != v31)
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
LABEL_41:
        v12 = v31;
      }

LABEL_42:
      v32 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v29 != &v30)
    {
      free(v29);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v26[0] = "requires attribute 'slope'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 != 1)
    {
      return v6;
    }

    if (v35 != &v36)
    {
      free(v35);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v34;
      v18 = __p;
      if (v34 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v34 = v16;
      operator delete(v18);
    }

    v10 = v31;
    if (v31)
    {
      v19 = v32;
      v12 = v31;
      if (v32 != v31)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v15, "max_value", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v22, "slope", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Padding>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Padding::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::Padding::verifyInvariantsImpl(mlir::Operation **this)
{
  v72 = *MEMORY[0x277D85DE8];
  v62[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v62);
  if (!v3)
  {
LABEL_5:
    v59 = "requires attribute 'background_value'";
    v61 = 259;
    mlir::OpState::emitOpError(this, &v59, v62);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return v6;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v68;
      v9 = __p;
      if (v68 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v68 = v7;
      operator delete(v9);
    }

    v10 = v65;
    if (!v65)
    {
      goto LABEL_63;
    }

    v11 = v66;
    v12 = v65;
    if (v66 == v65)
    {
      goto LABEL_62;
    }

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
    goto LABEL_61;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v59 = "requires attribute 'padding_modes'";
    v61 = 259;
    mlir::OpState::emitOpError(this, &v59, v62);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return v6;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v68;
      v20 = __p;
      if (v68 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v68 = v18;
      operator delete(v20);
    }

    v10 = v65;
    if (!v65)
    {
      goto LABEL_63;
    }

    v21 = v66;
    v12 = v65;
    if (v66 == v65)
    {
      goto LABEL_62;
    }

    do
    {
      v23 = *--v21;
      v22 = v23;
      *v21 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v21 != v10);
LABEL_61:
    v12 = v65;
    goto LABEL_62;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (mlir::NamedAttribute::getName((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v59 = "requires attribute 'padding_sizes'";
    v61 = 259;
    mlir::OpState::emitOpError(this, &v59, v62);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return v6;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v68;
      v28 = __p;
      if (v68 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v68 = v26;
      operator delete(v28);
    }

    v10 = v65;
    if (v65)
    {
      v29 = v66;
      v12 = v65;
      if (v66 != v65)
      {
        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v10);
        goto LABEL_61;
      }

LABEL_62:
      v66 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v63 != v64)
    {
      free(v63);
    }

    return v6;
  }

  v25 = *(v17 + 1);
  while (mlir::NamedAttribute::getName(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 = (v17 + 16);
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  v33 = *(v17 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps24(*this, v25, "padding_modes", 13) & 1) == 0)
  {
    return 0;
  }

  if (v33)
  {
    v34 = *this;
    if (!mlir::DenseIntElementsAttr::classof(v33))
    {
      goto LABEL_78;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v33 + 8);
    v59 = v33;
    v60 = v35;
    Type = mlir::ElementsAttr::getType(&v59);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v62[0] = v37;
    v62[1] = Type;
    Shape = mlir::ShapedType::getShape(v62);
    v71 = xmmword_25736B760;
    if (v39 != 2 || (*Shape == v71 ? (v40 = Shape[1] == *(&v71 + 1)) : (v40 = 0), !v40 || (v56 = v33, v57[0] = mlir::DenseElementsAttr::getType(&v56), v57[1] = v41, ElementType = mlir::ShapedType::getElementType(v57), !mlir::Type::isUnsignedInteger(&ElementType, 64))))
    {
LABEL_78:
      v61 = 257;
      mlir::Operation::emitOpError(v62, v34, &v59);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v62, "attribute '");
      if (*v42)
      {
        v61 = 261;
        v59 = "padding_sizes";
        v60 = 13;
        v43 = v42;
        mlir::Diagnostic::operator<<((v42 + 1), &v59);
        v42 = v43;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v42, "' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}");
      v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
      if (v62[0])
      {
        mlir::InFlightDiagnostic::report(v62);
      }

      if (v70 == 1)
      {
        if (v69 != &v70)
        {
          free(v69);
        }

        v46 = __p;
        if (__p)
        {
          v47 = v68;
          v48 = __p;
          if (v68 != __p)
          {
            do
            {
              v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
            }

            while (v47 != v46);
            v48 = __p;
          }

          v68 = v46;
          operator delete(v48);
        }

        v49 = v65;
        if (v65)
        {
          v50 = v66;
          v51 = v65;
          if (v66 != v65)
          {
            do
            {
              v53 = *--v50;
              v52 = v53;
              *v50 = 0;
              if (v53)
              {
                MEMORY[0x259C63150](v52, 0x1000C8077774924);
              }
            }

            while (v50 != v49);
            v51 = v65;
          }

          v66 = v49;
          operator delete(v51);
        }

        if (v63 != v64)
        {
          free(v63);
        }
      }

      if (!v45)
      {
        return 0;
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v16, "background_value", 0x10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v54 = *this - 16;
  }

  else
  {
    v54 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v54, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelShuffle>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::PixelShuffle::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::PixelUnshuffle>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::PixelUnshuffle::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceAvg>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::ReduceAvg::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::ReduceAvg::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(*this, v4[1], "axes", 4) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'axes'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
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

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_12;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::ShapedType::getShape(v38);
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::ShapedType::getShape(v34);
  if (v15 == 1)
  {
LABEL_37:
    if (mlir::hasUniqueValues(a2))
    {
      v30 = a2;
      v31[0] = mlir::DenseElementsAttr::getType(&v30);
      v31[1] = v16;
      ElementType = mlir::ShapedType::getElementType(v31);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }
    }
  }

LABEL_12:
  v37 = 257;
  mlir::Operation::emitOpError(v38, a1, &v35);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v18, "' failed to satisfy constraint: ui64 unique elements attribute of ranks 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
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
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
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
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v17;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMax>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::ReduceMax::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceMin>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::ReduceMin::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ReduceSum>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::ReduceSum::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resample>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = v28;
  v27 = 0x600000000;
  v24 = a4;
  if (a5)
  {
    v16 = 0;
    while (1)
    {
      v17 = (*(mlir::ValueRange::dereference_iterator(&v24, v16) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8))
      {
        break;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
      if (!v17)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v17, v18);
      if (v27 >= HIDWORD(v27))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v26 + v27) = RankPromotionTypeForANE;
      v20 = (v27 + 1);
      LODWORD(v27) = v27 + 1;
      v16 = v25 + 1;
      v25 = v16;
      if (v16 == a5)
      {
        v22 = v26;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v22 = v28;
LABEL_13:
    mlir::TypeRange::TypeRange(&v24, v22, v20);
    result = mlir::anec::Resample::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v24);
  }

  if (v26 != v28)
  {
    v23 = result;
    free(v26);
    return v23;
  }

  return result;
}

BOOL mlir::anec::Resample::verifyInvariantsImpl(mlir::Operation **this)
{
  v70 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v58[0] = "requires attribute 'background_value'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v67;
      v13 = __p;
      if (v67 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v67 = v11;
      operator delete(v13);
    }

    v14 = v64;
    if (!v64)
    {
      goto LABEL_83;
    }

    v15 = v65;
    v16 = v64;
    if (v65 == v64)
    {
      goto LABEL_82;
    }

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
    goto LABEL_81;
  }

  v4 = Value;
  v5 = v3;
  v6 = 0;
  v7 = 16 * v3;
  v8 = -16 * v3;
  v9 = Value;
  while (mlir::NamedAttribute::getName(v9) != **(*(*this + 6) + 96))
  {
    v9 = (v9 + 16);
    v6 -= 16;
    if (v8 == v6)
    {
      goto LABEL_5;
    }
  }

  if (!(v6 + 16 * v5))
  {
LABEL_25:
    v58[0] = "requires attribute 'coordinate_mode'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v67;
      v23 = __p;
      if (v67 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v67 = v21;
      operator delete(v23);
    }

    v14 = v64;
    if (!v64)
    {
      goto LABEL_83;
    }

    v24 = v65;
    v16 = v64;
    if (v65 == v64)
    {
      goto LABEL_82;
    }

    do
    {
      v26 = *--v24;
      v25 = v26;
      *v24 = 0;
      if (v26)
      {
        MEMORY[0x259C63150](v25, 0x1000C8077774924);
      }
    }

    while (v24 != v14);
    goto LABEL_81;
  }

  v19 = *(v9 + 1);
  v20 = -v6;
  while (mlir::NamedAttribute::getName((v4 + v20)) != *(*(*(*this + 6) + 96) + 8))
  {
    v20 += 16;
    if (v7 == v20)
    {
      goto LABEL_25;
    }
  }

  v27 = v7 - v20;
  if (v7 == v20)
  {
LABEL_45:
    v58[0] = "requires attribute 'coordinate_type'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
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
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v14 = v64;
    if (!v64)
    {
      goto LABEL_83;
    }

    v32 = v65;
    v16 = v64;
    if (v65 == v64)
    {
      goto LABEL_82;
    }

    do
    {
      v34 = *--v32;
      v33 = v34;
      *v32 = 0;
      if (v34)
      {
        MEMORY[0x259C63150](v33, 0x1000C8077774924);
      }
    }

    while (v32 != v14);
LABEL_81:
    v16 = v64;
    goto LABEL_82;
  }

  v28 = *(v4 + v20 + 8);
  while (mlir::NamedAttribute::getName((v4 + v20)) != *(*(*(*this + 6) + 96) + 16))
  {
    v27 -= 16;
    v20 += 16;
    if (v7 == v20)
    {
      goto LABEL_45;
    }
  }

  if (v7 == v20)
  {
LABEL_65:
    v58[0] = "requires attribute 'normalized_range'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 != 1)
    {
      return v10;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v67;
      v39 = __p;
      if (v67 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v67 = v37;
      operator delete(v39);
    }

    v14 = v64;
    if (v64)
    {
      v40 = v65;
      v16 = v64;
      if (v65 != v64)
      {
        do
        {
          v42 = *--v40;
          v41 = v42;
          *v40 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v40 != v14);
        goto LABEL_81;
      }

LABEL_82:
      v65 = v14;
      operator delete(v16);
    }

LABEL_83:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v10;
  }

  v35 = 0;
  v36 = *(v4 + v20 + 8);
  while (mlir::NamedAttribute::getName((v4 + v20 + v35)) != *(*(*(*this + 6) + 96) + 24))
  {
    v35 += 16;
    if (v27 == v35)
    {
      goto LABEL_65;
    }
  }

  v44 = v27 - v35;
  if (v27 == v35)
  {
LABEL_90:
    v58[0] = "requires attribute 'padding_modes'";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v69 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v61);
    }

    return v10;
  }

  v45 = *(v4 + v35 + v20 + 8);
  v46 = (v4 + v20 + v35 + 8);
  while (mlir::NamedAttribute::getName((v46 - 1)) != *(*(*(*this + 6) + 96) + 32))
  {
    v46 += 2;
    v44 -= 16;
    if (!v44)
    {
      goto LABEL_90;
    }
  }

  if (!v44)
  {
LABEL_98:
    v50 = "requires attribute 'sampling_method'";
LABEL_104:
    v58[0] = v50;
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &AttrDictionary);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v10;
  }

  v47 = 0;
  v48 = *v46;
  while (1)
  {
    v49 = &v46[v47 / 8];
    if (mlir::NamedAttribute::getName(&v46[v47 / 8 - 1]) == *(*(*(*this + 6) + 96) + 40))
    {
      break;
    }

    v47 += 16;
    if (v44 == v47)
    {
      goto LABEL_98;
    }
  }

  v51 = v44 - v47;
  if (!v51)
  {
LABEL_103:
    v50 = "requires attribute 'warp_coordinate_mode'";
    goto LABEL_104;
  }

  v54 = *v49;
  v53 = (v49 - 1);
  v52 = v54;
  while (mlir::NamedAttribute::getName(v53) != *(*(*(*this + 6) + 96) + 48))
  {
    v53 = (v53 + 16);
    v51 -= 16;
    if (!v51)
    {
      goto LABEL_103;
    }
  }

  v55 = *(v53 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps35(*this, v28, "coordinate_mode", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps36(*this, v45, "normalized_range", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps37(*this, v36, "coordinate_type", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps38(*this, v55, "warp_coordinate_mode", 20) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(*this, v52, "sampling_method", 15) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps40(*this, v48, "padding_modes", 13) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps12(*this, v19, "background_value", 0x10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps10(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v56 = *this - 16;
  }

  else
  {
    v56 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v56, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps35(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 3)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 2)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 3)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: CoordinateMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps36(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 2)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps37(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 2)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: CoordinateType elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps38(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 1;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 2)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: WarpCoordinateMode elements attribute of shape {1}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 2)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps40(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 9)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 8)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 9)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: PaddingMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps10(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v44);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 8))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v37 = a2;
      v38 = v11;
      if (mlir::ShapedType::hasRank(&v37))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v42 = a2;
        *(&v42 + 1) = v12;
        mlir::ShapedType::getShape(&v42);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v40[0] = a2;
        v40[1] = v14;
        mlir::ShapedType::getShape(v40);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v39 = 261;
  v37 = a3;
  v38 = a4;
  mlir::Operation::emitOpError(v44, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v42) = 5;
    *(&v42 + 1) = a5;
    v19 = *(v17 + 32);
    if (v19 >= *(v17 + 36))
    {
      if (v18 > &v42 || v18 + 24 * v19 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v18 + 24 * *(v17 + 32);
    v21 = v42;
    *(v20 + 16) = v43;
    *v20 = v21;
    ++*(v17 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v17, " must be 4D/5D memref of 16-bit float or 8-bit unsigned integer or 8-bit signed integer values, but got ");
  if (*v22)
  {
    v23 = v22;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v22 = v23;
    v24 = v23[3];
    v25 = *(v23 + 8);
    if (v25 >= *(v23 + 9))
    {
      if (v24 > &v42 || v24 + 24 * v25 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = v24 + 24 * *(v23 + 8);
    v27 = v42;
    *(v26 + 16) = v43;
    *v26 = v27;
    ++*(v23 + 8);
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v50;
      v30 = __p;
      if (v50 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v50 = v28;
      operator delete(v30);
    }

    v31 = v47;
    if (v47)
    {
      v32 = v48;
      v33 = v47;
      if (v48 != v47)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            MEMORY[0x259C63150](v34, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        v33 = v47;
      }

      v48 = v31;
      operator delete(v33);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v16;
}

uint64_t mlir::anec::Reshape::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::anec::Resize::getScaleFactorXAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Resize::getScaleFactorYAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resize>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Resize::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

uint64_t mlir::anec::Resize::populateDefaultAttrs(mlir::anec::Resize *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[3]))
  {
    v6 = v4[3];
    F32Type = mlir::Builder::getF32Type(&Context, v5);
    FloatAttr = mlir::Builder::getFloatAttr(-1.0, &Context, F32Type);
    mlir::NamedAttribute::NamedAttribute(&v15, v6, FloatAttr);
    mlir::NamedAttrList::push_back(a2, v15, v16);
  }

  result = mlir::NamedAttrList::get(a2, v4[4]);
  if (!result)
  {
    v11 = v4[4];
    v12 = mlir::Builder::getF32Type(&Context, v10);
    v13 = mlir::Builder::getFloatAttr(-1.0, &Context, v12);
    mlir::NamedAttribute::NamedAttribute(&v15, v11, v13);
    return mlir::NamedAttrList::push_back(a2, v15, v16);
  }

  return result;
}

BOOL mlir::anec::Resize::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x277D85DE8];
  v47[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v47);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (v5)
    {
      v15 = *(v4 + 1);
      while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
      {
        v4 = (v4 + 16);
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_25;
        }
      }

      v22 = 0;
      v23 = *(v4 + 1);
      while (1)
      {
        v24 = (v4 + v22);
        if (mlir::NamedAttribute::getName((v4 + v22)) == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        v22 += 16;
        if (v5 == v22)
        {
          v45[0] = "requires attribute 'sampling_modes'";
          v46 = 259;
          mlir::OpState::emitOpError(this, v45, v47);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v6;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v25 = __p;
          if (__p)
          {
            v26 = v53;
            v27 = __p;
            if (v53 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v53 = v25;
            operator delete(v27);
          }

          v10 = v50;
          if (!v50)
          {
            goto LABEL_86;
          }

          v28 = v51;
          v12 = v50;
          if (v51 == v50)
          {
            goto LABEL_85;
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

          while (v28 != v10);
          goto LABEL_84;
        }
      }

      v31 = v5 - v22;
      if (v5 != v22)
      {
        v32 = 0;
        v33 = 0;
        v34 = *(v24 + 1);
        while (mlir::NamedAttribute::getName(v24) != *(*(*(*this + 6) + 96) + 40))
        {
          if (mlir::NamedAttribute::getName(v24) == *(*(*(*this + 6) + 96) + 24))
          {
            v32 = *(v24 + 1);
          }

          else if (mlir::NamedAttribute::getName(v24) == *(*(*(*this + 6) + 96) + 32))
          {
            v33 = *(v24 + 1);
          }

          v24 = (v24 + 16);
          v31 -= 16;
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        v42 = *(v24 + 1);
        if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v15, "height", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v42, "width", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v32, "scale_factor_x", 0xE) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v33, "scale_factor_y", 0xE) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(*this, v23, "sampling_methods", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps41(*this, v34, "sampling_modes", 14) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v43 = *this - 16;
        }

        else
        {
          v43 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
        return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

LABEL_68:
      v45[0] = "requires attribute 'width'";
      v46 = 259;
      mlir::OpState::emitOpError(this, v45, v47);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v55 != 1)
      {
        return v6;
      }

      if (v54 != &v55)
      {
        free(v54);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v53;
        v37 = __p;
        if (v53 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v53 = v35;
        operator delete(v37);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v38 = v51;
      v12 = v50;
      if (v51 == v50)
      {
        goto LABEL_85;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          MEMORY[0x259C63150](v39, 0x1000C8077774924);
        }
      }

      while (v38 != v10);
      goto LABEL_84;
    }

LABEL_25:
    v45[0] = "requires attribute 'sampling_methods'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v53;
        v18 = __p;
        if (v53 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v53 = v16;
        operator delete(v18);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v19 = v51;
      v12 = v50;
      if (v51 == v50)
      {
        goto LABEL_85;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v10);
      goto LABEL_84;
    }
  }

  else
  {
LABEL_5:
    v45[0] = "requires attribute 'height'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v53;
        v9 = __p;
        if (v53 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v53 = v7;
        operator delete(v9);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v11 = v51;
      v12 = v50;
      if (v51 == v50)
      {
LABEL_85:
        v51 = v10;
        operator delete(v12);
LABEL_86:
        if (v48 != &v49)
        {
          free(v48);
        }

        return v6;
      }

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
LABEL_84:
      v12 = v50;
      goto LABEL_85;
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps41(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31[0] = a2;
  v31[1] = v8;
  Type = mlir::ElementsAttr::getType(v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v32[0] = v10;
  v32[1] = Type;
  Shape = mlir::ShapedType::getShape(v32);
  v49 = 2;
  if (v12 == 1 && *Shape == v49)
  {
    v30 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v30);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v33, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34;
    if (v38 == v34)
    {
      return 1;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_34;
        }

        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
LABEL_34:
          if (v29 >= 6)
          {
            break;
          }

          goto LABEL_35;
        }

        if (v29 > 5)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 6)
      {
        break;
      }

LABEL_35:
      if (++v41[0] == v26)
      {
        return 1;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(&v40, a1, &v37);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "' failed to satisfy constraint: SamplingGridMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferReader>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = v34;
  v33 = 0x600000000;
  v30 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v30, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      if (v33 >= HIDWORD(v33))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v32 + v33) = RankPromotionTypeForANE;
      v19 = (v33 + 1);
      LODWORD(v33) = v33 + 1;
      v15 = v31 + 1;
      v31 = v15;
      if (v15 == a5)
      {
        v21 = v32;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v21 = v34;
LABEL_13:
    v22 = mlir::TypeRange::TypeRange(&v30, v21, v19);
    result = mlir::anec::RingBufferReader::inferPromotedReturnTypes(v22, v23, v24, v25, v26, a6, v27, v28, v30, v31, a11);
  }

  if (v32 != v34)
  {
    v29 = result;
    free(v32);
    return v29;
  }

  return result;
}

BOOL mlir::anec::RingBufferReader::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x277D85DE8];
  v51[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v51);
  if (!v3)
  {
LABEL_5:
    v49[0] = "requires attribute 'is_dynamic_offsets'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v57;
      v9 = __p;
      if (v57 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v57 = v7;
      operator delete(v9);
    }

    v10 = v54;
    if (!v54)
    {
      goto LABEL_63;
    }

    v11 = v55;
    v12 = v54;
    if (v55 == v54)
    {
      goto LABEL_62;
    }

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
    goto LABEL_61;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v49[0] = "requires attribute 'offsets'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v57;
      v20 = __p;
      if (v57 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v57 = v18;
      operator delete(v20);
    }

    v10 = v54;
    if (!v54)
    {
      goto LABEL_63;
    }

    v21 = v55;
    v12 = v54;
    if (v55 == v54)
    {
      goto LABEL_62;
    }

    do
    {
      v23 = *--v21;
      v22 = v23;
      *v21 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v21 != v10);
LABEL_61:
    v12 = v54;
    goto LABEL_62;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (mlir::NamedAttribute::getName((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v49[0] = "requires attribute 'slice_size'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v57;
      v28 = __p;
      if (v57 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v57 = v26;
      operator delete(v28);
    }

    v10 = v54;
    if (v54)
    {
      v29 = v55;
      v12 = v54;
      if (v55 != v54)
      {
        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v10);
        goto LABEL_61;
      }

LABEL_62:
      v55 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v52 != &v53)
    {
      free(v52);
    }

    return v6;
  }

  v25 = *(v17 + 1);
  while (mlir::NamedAttribute::getName(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 = (v17 + 16);
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  v33 = *(v17 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v25, "offsets", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v16, "is_dynamic_offsets", 18) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v33, "slice_size", 10) & 1) == 0)
  {
    return 0;
  }

  ODSOperands = mlir::anec::RingBufferReader::getODSOperands(this, 0, v34, v35);
  if (v37)
  {
    v40 = v37;
    v41 = 0;
    v42 = ODSOperands + 24;
    while ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*v42 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41) & 1) != 0)
    {
      ++v41;
      v42 += 32;
      if (v40 == v41)
      {
        goto LABEL_76;
      }
    }

    return 0;
  }

  LODWORD(v41) = 0;
LABEL_76:
  v43 = mlir::anec::RingBufferReader::getODSOperands(this, 1u, v38, v39);
  if (v44)
  {
    v45 = v44;
    v46 = v43 + 24;
    while ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(*this, (*(*v46 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41) & 1) != 0)
    {
      LODWORD(v41) = v41 + 1;
      v46 += 32;
      if (!--v45)
      {
        goto LABEL_80;
      }
    }

    return 0;
  }

LABEL_80:
  if (*(*this + 9))
  {
    v47 = *this - 16;
  }

  else
  {
    v47 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::ShapedType::getShape(v38);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::ShapedType::getShape(v34);
  if (v15 == 1)
  {
LABEL_36:
    v30 = a2;
    v31[0] = mlir::DenseElementsAttr::getType(&v30);
    v31[1] = v16;
    ElementType = mlir::ShapedType::getElementType(v31);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_11:
  v37 = 257;
  mlir::Operation::emitOpError(v38, a1, &v35);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v18, "' failed to satisfy constraint: ui64 elements attribute of rank 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
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
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
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
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v17;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  *&v38 = a2;
  *(&v38 + 1) = v8;
  Type = mlir::ElementsAttr::getType(&v38);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v41[0] = v10;
  v41[1] = Type;
  mlir::ShapedType::getShape(v41);
  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v36[0] = a2;
  v36[1] = v12;
  v13 = mlir::ElementsAttr::getType(v36);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v37[0] = v14;
  v37[1] = v13;
  mlir::ShapedType::getShape(v37);
  if (v15 == 1)
  {
LABEL_42:
    v33 = a2;
    v34[0] = mlir::DenseElementsAttr::getType(&v33);
    v34[1] = v16;
    ElementType = mlir::ShapedType::getElementType(v34);
    if (mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      return 1;
    }
  }

LABEL_11:
  v40 = 257;
  mlir::Operation::emitOpError(v41, a1, &v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v41, "attribute '");
  if (*v18)
  {
    v40 = 261;
    *&v38 = a3;
    *(&v38 + 1) = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v38);
    v18 = v19;
    if (*v19)
    {
      v20 = v19[3];
      LODWORD(v38) = 3;
      *(&v38 + 1) = "' failed to satisfy constraint: ui8 elements attribute of rank 0/1";
      v39 = 66;
      v21 = *(v19 + 8);
      if (v21 >= *(v19 + 9))
      {
        if (v20 > &v38 || v20 + 24 * v21 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v20 + 24 * *(v19 + 8);
      v23 = v38;
      *(v22 + 16) = v39;
      *v22 = v23;
      ++*(v19 + 8);
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v47;
      v26 = __p;
      if (v47 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v47 = v24;
      operator delete(v26);
    }

    v27 = v44;
    if (v44)
    {
      v28 = v45;
      v29 = v44;
      if (v45 != v44)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v44;
      }

      v45 = v27;
      operator delete(v29);
    }

    if (v42 != &v43)
    {
      free(v42);
    }
  }

  return v17;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v47[0] = a2;
    v47[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v47);
    if (mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64))
    {
      v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v40 = a2;
      v41 = v34;
      if (mlir::ShapedType::hasRank(&v40))
      {
        v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        *&v45 = a2;
        *(&v45 + 1) = v35;
        mlir::ShapedType::getShape(&v45);
        if (v36 == 4)
        {
          return 1;
        }

        v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v43[0] = a2;
        v43[1] = v37;
        mlir::ShapedType::getShape(v43);
        if (v38 == 5)
        {
          return 1;
        }
      }
    }
  }

  v42 = 261;
  v40 = a3;
  v41 = a4;
  mlir::Operation::emitOpError(v47, a1, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v47, " #");
  if (*v11)
  {
    v12 = *(v11 + 24);
    LODWORD(v45) = 5;
    *(&v45 + 1) = a5;
    v13 = *(v11 + 32);
    if (v13 >= *(v11 + 36))
    {
      if (v12 > &v45 || v12 + 24 * v13 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v12 + 24 * *(v11 + 32);
    v15 = v45;
    *(v14 + 16) = v46;
    *v14 = v15;
    v16 = *(v11 + 32) + 1;
    *(v11 + 32) = v16;
    if (*v11)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = " must be variadic of 4D/5D memref of 32-bit signed integer or 64-bit signed integer values, but got ";
      v46 = 100;
      v17 = *(v11 + 24);
      if (v16 >= *(v11 + 36))
      {
        if (v17 > &v45 || v17 + 24 * v16 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v17 + 24 * *(v11 + 32);
      v19 = v45;
      *(v18 + 16) = v46;
      *v18 = v19;
      ++*(v11 + 32);
      if (*v11)
      {
        v20 = v11;
        mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
        v11 = v20;
        v21 = *(v20 + 32);
        v22 = *(v20 + 24);
        if (v21 >= *(v20 + 36))
        {
          if (v22 > &v45 || v22 + 24 * v21 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v22 + 24 * *(v20 + 32);
        v24 = v45;
        *(v23 + 16) = v46;
        *v23 = v24;
        ++*(v20 + 32);
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v55 == 1)
  {
    if (v54 != &v55)
    {
      free(v54);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v53;
      v28 = __p;
      if (v53 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v53 = v26;
      operator delete(v28);
    }

    v29 = v50;
    if (v50)
    {
      v30 = v51;
      v31 = v50;
      if (v51 != v50)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        v31 = v50;
      }

      v51 = v29;
      operator delete(v31);
    }

    if (v48 != &v49)
    {
      free(v48);
    }
  }

  return v25;
}

void mlir::anec::RingBufferReader::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v7 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v7;
  }

  v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
  }

  else
  {
    v3 = *a2 + 40 * v2;
    v4 = v10;
    v5 = v9;
    *v3 = v11;
    *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v4;
    *(v3 + 36) = v5;
    ++*(a2 + 8);
  }
}

uint64_t mlir::anec::RingBufferWriter::getOffsets(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferWriter>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = v20;
  v19 = 0x600000000;
  v16 = a4;
  if (a5)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(mlir::ValueRange::dereference_iterator(&v16, v8) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
      {
        break;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      if (!v9)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v10);
      if (v19 >= HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v18 + v19) = RankPromotionTypeForANE;
      v12 = (v19 + 1);
      LODWORD(v19) = v19 + 1;
      v8 = v17 + 1;
      v17 = v8;
      if (v8 == a5)
      {
        v14 = v18;
        goto LABEL_13;
      }
    }

    v13 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v12 = 0;
    v14 = v20;
LABEL_13:
    mlir::TypeRange::TypeRange(&v16, v14, v12);
    v13 = 1;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

BOOL mlir::anec::RingBufferWriter::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v32[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v32);
  if (!v3)
  {
LABEL_5:
    v30[0] = "requires attribute 'is_dynamic_offsets'";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, v32);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return v6;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v38;
      v9 = __p;
      if (v38 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v38 = v7;
      operator delete(v9);
    }

    v10 = v35;
    if (v35)
    {
      v11 = v36;
      v12 = v35;
      if (v36 != v35)
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
LABEL_41:
        v12 = v35;
      }

LABEL_42:
      v36 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v33 != &v34)
    {
      free(v33);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v30[0] = "requires attribute 'offsets'";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, v32);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return v6;
    }

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
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v38 = v16;
      operator delete(v18);
    }

    v10 = v35;
    if (v35)
    {
      v19 = v36;
      v12 = v35;
      if (v36 != v35)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v4[1], "offsets", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v15, "is_dynamic_offsets", 18) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    ODSOperands = mlir::anec::RingBufferWriter::getODSOperands(this, 2u, v22, v23);
    if (!v26)
    {
      return 1;
    }

    v27 = v26;
    v28 = ODSOperands + 24;
    v29 = 2;
    while ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(*this, (*(*v28 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v29) & 1) != 0)
    {
      ++v29;
      v28 += 32;
      v6 = 1;
      if (!--v27)
      {
        return v6;
      }
    }
  }

  return 0;
}

void mlir::anec::RingBufferWriter::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::anec::RingBufferWriter::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v7 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v7;
  }

  v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
  }

  else
  {
    v3 = *a2 + 40 * v2;
    v4 = v10;
    v5 = v9;
    *v3 = v11;
    *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v4;
    *(v3 + 36) = v5;
    ++*(a2 + 8);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledDotProductAttention>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = v34;
  v33 = 0x600000000;
  v30 = a4;
  if (a5)
  {
    v14 = 0;
    while (1)
    {
      v15 = (*(mlir::ValueRange::dereference_iterator(&v30, v14) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8))
      {
        break;
      }

      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      if (!v15)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v16);
      if (v33 >= HIDWORD(v33))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v32 + v33) = RankPromotionTypeForANE;
      v18 = (v33 + 1);
      LODWORD(v33) = v33 + 1;
      v14 = v31 + 1;
      v31 = v14;
      if (v14 == a5)
      {
        v20 = v32;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v18 = 0;
    v20 = v34;
LABEL_13:
    v21 = mlir::TypeRange::TypeRange(&v30, v20, v18);
    result = mlir::anec::ScaledDotProductAttention::inferPromotedReturnTypes(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, a11);
  }

  if (v32 != v34)
  {
    v29 = result;
    free(v32);
    return v29;
  }

  return result;
}

uint64_t mlir::anec::ScaledDotProductAttention::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
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
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::ScaledElementWise::getPreScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::getScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::getBiasAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void *mlir::anec::ScaledElementWise::getNegateSrc1Attr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    v6 = result;
    if (mlir::BoolAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *mlir::anec::ScaledElementWise::getNegateSrc2Attr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    v6 = result;
    if (mlir::BoolAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledElementWise>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = v35;
  v34 = 0x600000000;
  v31 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v31, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      if (v34 >= HIDWORD(v34))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v33 + v34) = RankPromotionTypeForANE;
      v19 = (v34 + 1);
      LODWORD(v34) = v34 + 1;
      v15 = v32 + 1;
      v32 = v15;
      if (v15 == a5)
      {
        v21 = v33;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v21 = v35;
LABEL_13:
    v22 = mlir::TypeRange::TypeRange(&v31, v21, v19);
    result = mlir::anec::ScaledElementWise::inferPromotedReturnTypes(v22, v23, v24, a4, a5, v25, v26, v27, v29, v30, a11);
  }

  if (v33 != v35)
  {
    v28 = result;
    free(v33);
    return v28;
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::populateDefaultAttrs(mlir::anec::ScaledElementWise *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[4]))
  {
    v6 = v4[4];
    F32Type = mlir::Builder::getF32Type(&Context, v5);
    FloatAttr = mlir::Builder::getFloatAttr(1.0, &Context, F32Type);
    mlir::NamedAttribute::NamedAttribute(&v23, v6, FloatAttr);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  if (!mlir::NamedAttrList::get(a2, v4[5]))
  {
    v10 = v4[5];
    v11 = mlir::Builder::getF32Type(&Context, v9);
    v12 = mlir::Builder::getFloatAttr(1.0, &Context, v11);
    mlir::NamedAttribute::NamedAttribute(&v23, v10, v12);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  if (!mlir::NamedAttrList::get(a2, *v4))
  {
    v14 = *v4;
    v15 = mlir::Builder::getF32Type(&Context, v13);
    v16 = mlir::Builder::getFloatAttr(0.0, &Context, v15);
    mlir::NamedAttribute::NamedAttribute(&v23, v14, v16);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  if (!mlir::NamedAttrList::get(a2, v4[2]))
  {
    v17 = v4[2];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v23, v17, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  result = mlir::NamedAttrList::get(a2, v4[3]);
  if (!result)
  {
    v20 = v4[3];
    v21 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v23, v20, v21);
    return mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  return result;
}

BOOL mlir::anec::ScaledElementWise::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v32[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v32);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v8 = *this;
      if (Name == *(*(*(*this + 6) + 96) + 8))
      {
        break;
      }

      if (mlir::NamedAttribute::getName(v4) == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v18 = *(v4 + 1);
    if (v6)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = mlir::NamedAttribute::getName(v4);
        v8 = *this;
        if (v23 == *(*(*(*this + 6) + 96) + 16))
        {
          v19 = *(v4 + 1);
        }

        else
        {
          v24 = mlir::NamedAttribute::getName(v4);
          v8 = *this;
          if (v24 == *(*(*(*this + 6) + 96) + 24))
          {
            v20 = *(v4 + 1);
          }

          else
          {
            v25 = mlir::NamedAttribute::getName(v4);
            v8 = *this;
            if (v25 == *(*(*(*this + 6) + 96) + 32))
            {
              v21 = *(v4 + 1);
            }

            else
            {
              v26 = mlir::NamedAttribute::getName(v4);
              v8 = *this;
              if (v26 == *(*(*(*this + 6) + 96) + 40))
              {
                v22 = *(v4 + 1);
              }
            }
          }
        }

        v4 = (v4 + 16);
        v6 -= 16;
      }

      while (v6);
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 0;
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(v8, v18, "mode", 4) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v21, "pre_scale", 9) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v22, "scale", 5) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v5, "bias", 4) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v19, "negate_src1", 0xB) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v20, "negate_src2", 0xB) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v27 = *this - 16;
      }

      else
      {
        v27 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v30 = "requires attribute 'mode'";
    v31 = 259;
    mlir::OpState::emitOpError(this, &v30, v32);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
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

      v10 = __p;
      if (__p)
      {
        v11 = v38;
        v12 = __p;
        if (v38 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v38 = v10;
        operator delete(v12);
      }

      v13 = v35;
      if (v35)
      {
        v14 = v36;
        v15 = v35;
        if (v36 != v35)
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
          v15 = v35;
        }

        v36 = v13;
        operator delete(v15);
      }

      if (v33 != &v34)
      {
        free(v33);
      }
    }
  }

  return v9;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Softmax>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = 0x600000000;
  v29 = a4;
  v30 = 0;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v29, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      if (v27 >= HIDWORD(v27))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v26 + v27) = RankPromotionTypeForANE;
      v19 = (v27 + 1);
      LODWORD(v27) = v27 + 1;
      v15 = v30 + 1;
      v30 = v15;
      if (v15 == a5)
      {
        v21 = v26;
        goto LABEL_13;
      }
    }

    v20 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v21 = v28;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v21, v19);
    v29 = a4;
    v30 = a5;
    v22 = (*(mlir::ValueRange::dereference_iterator(&v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8))
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    v20 = 1;
  }

  if (v26 != v28)
  {
    free(v26);
  }

  return v20;
}

BOOL mlir::anec::Softmax::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v25[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v25);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v21 = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (v21 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(v7, v17, "axes", 4) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, i, "subtractMax", 0xB) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v19 = *this - 16;
      }

      else
      {
        v19 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v23 = "requires attribute 'axes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v31;
        v11 = __p;
        if (v31 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v31 = v9;
        operator delete(v11);
      }

      v12 = v28;
      if (v28)
      {
        v13 = v29;
        v14 = v28;
        if (v29 != v28)
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
          v14 = v28;
        }

        v29 = v12;
        operator delete(v14);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v8;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToBatch>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::SpaceToBatch::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToChannel>::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::SpaceToChannel::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::TensorBufferToTensor>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v25, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v19 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v15 = v26 + 1;
      v26 = v15;
      if (v15 == a5)
      {
        v21 = v27;
        goto LABEL_13;
      }
    }

    v20 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v21 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v21, v19);
    PromotedReturnTypeForTensorBuffer = mlir::anec::getPromotedReturnTypeForTensorBuffer(v25, v26, a6, 1);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = PromotedReturnTypeForTensorBuffer;
    ++*(a11 + 8);
    v20 = 1;
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v20;
}

BOOL mlir::anec::TensorBufferToTensor::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'interleave'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 != v30)
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
LABEL_41:
        v12 = v30;
      }

LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'strides'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps45(*this, v4[1], "strides", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v15, "interleave", 10) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
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
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps45(mlir::Operation *a1, void **a2, void **a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::ShapedType::getShape(v38);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::ShapedType::getShape(v34);
  if (v15 == 1)
  {
LABEL_36:
    v30 = a2;
    v31[0] = mlir::DenseElementsAttr::getType(&v30);
    v31[1] = v16;
    ElementType = mlir::ShapedType::getElementType(v31);
    if (mlir::Type::isSignedInteger(&ElementType, 64))
    {
      return 1;
    }
  }

LABEL_11:
  v37 = 257;
  mlir::Operation::emitOpError(v38, a1, &v35);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v18, "' failed to satisfy constraint: ui64 elements attribute of rank 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v38[0])
  {
    mlir::InFlightDiagnostic::report(v38);
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
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
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
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v41;
      }

      v42 = v24;
      operator delete(v26);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v17;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::TensorToTensorBuffer>::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v25, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v19 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v15 = v26 + 1;
      v26 = v15;
      if (v15 == a5)
      {
        v21 = v27;
        goto LABEL_13;
      }
    }

    v20 = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v21 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v21, v19);
    PromotedReturnTypeForTensorBuffer = mlir::anec::getPromotedReturnTypeForTensorBuffer(v25, v26, a6, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = PromotedReturnTypeForTensorBuffer;
    ++*(a11 + 8);
    v20 = 1;
  }

  if (v27 != v29)
  {
    free(v27);
  }

  return v20;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Tile>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  v27 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v27, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v30 >= HIDWORD(v30))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v29 + v30) = RankPromotionTypeForANE;
      v21 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v17 = v28 + 1;
      v28 = v17;
      if (v17 == a5)
      {
        v23 = v29;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v31;
LABEL_13:
    mlir::TypeRange::TypeRange(&v27, v23, v21);
    result = mlir::anec::Tile::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v29 != v31)
  {
    v24 = result;
    free(v29);
    return v24;
  }

  return result;
}

BOOL mlir::anec::Tile::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v44);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_27;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      v41 = v17;
      v42 = v18;
      Type = mlir::ElementsAttr::getType(&v41);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v44[0] = v20;
      v44[1] = Type;
      mlir::ShapedType::getShape(v44);
      if (v21 != 1 || (v38 = v17, v39[0] = mlir::DenseElementsAttr::getType(&v38), v39[1] = v22, ElementType = mlir::ShapedType::getElementType(v39), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_27:
        v43 = 257;
        mlir::Operation::emitOpError(v44, v7, &v41);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, "attribute '");
        if (*v23)
        {
          v43 = 261;
          v41 = "multipliers";
          v42 = 11;
          v24 = v23;
          mlir::Diagnostic::operator<<((v23 + 1), &v41);
          v23 = v24;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "' failed to satisfy constraint: ui64 elements attribute of rank 1");
        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
        if (v44[0])
        {
          mlir::InFlightDiagnostic::report(v44);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v50;
            v29 = __p;
            if (v50 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v50 = v27;
            operator delete(v29);
          }

          v30 = v47;
          if (v47)
          {
            v31 = v48;
            v32 = v47;
            if (v48 != v47)
            {
              do
              {
                v34 = *--v31;
                v33 = v34;
                *v31 = 0;
                if (v34)
                {
                  MEMORY[0x259C63150](v33, 0x1000C8077774924);
                }
              }

              while (v31 != v30);
              v32 = v47;
            }

            v48 = v30;
            operator delete(v32);
          }

          if (v45 != v46)
          {
            free(v45);
          }
        }

        if (!v26)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v35 = *this - 16;
      }

      else
      {
        v35 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v41 = "requires attribute 'multipliers'";
    v43 = 259;
    mlir::OpState::emitOpError(this, &v41, v44);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v50 = v9;
        operator delete(v11);
      }

      v12 = v47;
      if (v47)
      {
        v13 = v48;
        v14 = v47;
        if (v48 != v47)
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
          v14 = v47;
        }

        v48 = v12;
        operator delete(v14);
      }

      if (v45 != v46)
      {
        free(v45);
      }
    }
  }

  return v8;
}

void mlir::anec::Transpose::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v19);
  __src = v20;
  v19 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v16, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Transpose>::inferReturnTypes(v7, v8, 1, v17[0], v17[1], Dictionary, v11, v12, v16[0], v16[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = v19;
  v14 = *(a2 + 72);
  if (v14 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v14), __src, 8 * v19);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Transpose>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Transpose::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::Transpose::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x277D85DE8];
  v51[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v51);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      Name = mlir::NamedAttribute::getName(v4);
      v7 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_30;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      *&v48 = v17;
      *(&v48 + 1) = v18;
      Type = mlir::ElementsAttr::getType(&v48);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v51[0] = v20;
      v51[1] = Type;
      mlir::ShapedType::getShape(v51);
      if (v21 != 2)
      {
        goto LABEL_30;
      }

      v46 = v17;
      v22 = mlir::DenseElementsAttr::getType(&v46);
      v23 = v22;
      if (v22)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
      }

      v47[0] = v23;
      v47[1] = v22;
      if (*(mlir::ShapedType::getShape(v47) + 8) != 2 || (v43 = v17, v44[0] = mlir::DenseElementsAttr::getType(&v43), v44[1] = v24, ElementType = mlir::ShapedType::getElementType(v44), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_30:
        v50 = 257;
        mlir::Operation::emitOpError(v51, v7, &v48);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v51, "attribute '");
        if (*v25)
        {
          v50 = 261;
          *&v48 = "transpose_list";
          *(&v48 + 1) = 14;
          v26 = v25;
          mlir::Diagnostic::operator<<((v25 + 1), &v48);
          v25 = v26;
          if (*v26)
          {
            v27 = v26[3];
            LODWORD(v48) = 3;
            *(&v48 + 1) = "' failed to satisfy constraint: list of 64-bits unsigned integer pairs";
            v49 = 70;
            v28 = *(v26 + 8);
            if (v28 >= *(v26 + 9))
            {
              if (v27 > &v48 || v27 + 24 * v28 <= &v48)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v29 = v27 + 24 * *(v26 + 8);
            v30 = v48;
            *(v29 + 16) = v49;
            *v29 = v30;
            ++*(v26 + 8);
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
        if (v51[0])
        {
          mlir::InFlightDiagnostic::report(v51);
        }

        if (v59 == 1)
        {
          if (v58 != &v59)
          {
            free(v58);
          }

          v32 = __p;
          if (__p)
          {
            v33 = v57;
            v34 = __p;
            if (v57 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v57 = v32;
            operator delete(v34);
          }

          v35 = v54;
          if (v54)
          {
            v36 = v55;
            v37 = v54;
            if (v55 != v54)
            {
              do
              {
                v39 = *--v36;
                v38 = v39;
                *v36 = 0;
                if (v39)
                {
                  MEMORY[0x259C63150](v38, 0x1000C8077774924);
                }
              }

              while (v36 != v35);
              v37 = v54;
            }

            v55 = v35;
            operator delete(v37);
          }

          if (v52 != v53)
          {
            free(v52);
          }
        }

        if (!v31)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v40 = *this - 16;
      }

      else
      {
        v40 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    *&v48 = "requires attribute 'transpose_list'";
    v50 = 259;
    mlir::OpState::emitOpError(this, &v48, v51);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v57;
        v11 = __p;
        if (v57 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v57 = v9;
        operator delete(v11);
      }

      v12 = v54;
      if (v54)
      {
        v13 = v55;
        v14 = v54;
        if (v55 != v54)
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
          v14 = v54;
        }

        v55 = v12;
        operator delete(v14);
      }

      if (v52 != v53)
      {
        free(v52);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Unflatten>::inferReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = v29;
  v28 = 0x600000000;
  v25 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v25, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = RankPromotionTypeForANE;
      v21 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      v17 = v26 + 1;
      v26 = v17;
      if (v17 == a5)
      {
        v23 = v27;
        goto LABEL_13;
      }
    }

    result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v21 = 0;
    v23 = v29;
LABEL_13:
    mlir::TypeRange::TypeRange(&v25, v23, v21);
    result = mlir::anec::Unflatten::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v25, v26, a11);
  }

  if (v27 != v29)
  {
    v24 = result;
    free(v27);
    return v24;
  }

  return result;
}

BOOL mlir::anec::Unflatten::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'destination_size'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 != v30)
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
LABEL_41:
        v12 = v30;
      }

LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    v25[0] = "requires attribute 'flatten_mode'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 != v30)
      {
        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = v4[1];
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 += 2;
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(*this, v4[1], "flatten_mode", 0xC) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v15, "destination_size", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
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
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::UnrealizedConversionCast::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
    v4 = *this;
    v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
      v35[0] = v5;
      v35[1] = v6;
      mlir::ShapedType::getElementType(v35);
      return 1;
    }

    v32 = 261;
    v31[0] = "result";
    v31[1] = 6;
    mlir::Operation::emitOpError(v35, v4, v31);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v35, " #");
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v33) = 5;
      *(&v33 + 1) = 0;
      v9 = *(v7 + 32);
      if (v9 >= *(v7 + 36))
      {
        if (v8 > &v33 || v8 + 24 * v9 <= &v33)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v8 + 24 * *(v7 + 32);
      v11 = v33;
      *(v10 + 16) = v34;
      *v10 = v11;
      v12 = *(v7 + 32) + 1;
      *(v7 + 32) = v12;
      if (*v7)
      {
        LODWORD(v33) = 3;
        *(&v33 + 1) = " must be shaped of any type values, but got ";
        v34 = 44;
        v13 = *(v7 + 24);
        if (v12 >= *(v7 + 36))
        {
          if (v13 > &v33 || v13 + 24 * v12 <= &v33)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v13 + 24 * *(v7 + 32);
        v15 = v33;
        *(v14 + 16) = v34;
        *v14 = v15;
        ++*(v7 + 32);
        if (*v7)
        {
          v16 = v7;
          mlir::DiagnosticArgument::DiagnosticArgument(&v33, v5);
          v17 = *(v16 + 32);
          v18 = *(v16 + 24);
          if (v17 >= *(v16 + 36))
          {
            if (v18 > &v33 || v18 + 24 * v17 <= &v33)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v16;
          v19 = v18 + 24 * *(v16 + 32);
          v20 = v33;
          *(v19 + 16) = v34;
          *v19 = v20;
          ++*(v16 + 32);
        }
      }
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v7);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v41;
        v24 = __p;
        if (v41 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v41 = v22;
        operator delete(v24);
      }

      v25 = v38;
      if (v38)
      {
        v26 = v39;
        v27 = v38;
        if (v39 != v38)
        {
          do
          {
            v29 = *--v26;
            v28 = v29;
            *v26 = 0;
            if (v29)
            {
              MEMORY[0x259C63150](v28, 0x1000C8077774924);
            }
          }

          while (v26 != v25);
          v27 = v38;
        }

        v39 = v25;
        operator delete(v27);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }

    if (v21)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::anec::calcStrides(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v101 = *MEMORY[0x277D85DE8];
  v91 = a1;
  mlir::MemRefType::getShape(&v91);
  if (!v7)
  {
    if (a4)
    {
      mlir::emitError(a3, v92);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v92, "calcStrides MemRef rank should not be 0");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
      if (v92[0])
      {
        mlir::InFlightDiagnostic::report(v92);
      }

      if (v100 == 1)
      {
        if (v99 != &v100)
        {
          free(v99);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v98;
          v16 = __p;
          if (v98 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v98 = v14;
          operator delete(v16);
        }

        v17 = v95;
        if (v95)
        {
          v18 = v96;
          v19 = v95;
          if (v96 != v95)
          {
            do
            {
              v21 = *--v18;
              v20 = v21;
              *v18 = 0;
              if (v21)
              {
                MEMORY[0x259C63150](v20, 0x1000C8077774924);
              }
            }

            while (v18 != v17);
            v19 = v95;
          }

          v96 = v17;
          operator delete(v19);
        }

        if (v93 != v94)
        {
          free(v93);
        }
      }
    }

    return 0;
  }

  v92[0] = mlir::MemRefType::getLayout(&v91);
  v92[1] = v8;
  AffineMap = mlir::MemRefLayoutAttrInterface::getAffineMap(v92);
  Results = mlir::AffineMap::getResults(&AffineMap);
  v10 = *Results;
  if (*Results && (v92[0] = *Results, mlir::AffineExpr::getKind(v92) < 5))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v92, v11);
  AffineMap = v92[0];
  if (v92[0] && !mlir::AffineExpr::getKind(&AffineMap))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&AffineMap);
    if (RHS && (v33 = RHS, v92[0] = RHS, mlir::AffineExpr::getKind(v92) < 5))
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v92, v34);
    v89 = v92[0];
    if (v92[0])
    {
      if (mlir::AffineExpr::getKind(&v89) == 2)
      {
        mlir::MemRefType::getShape(&v91);
        v43 = v42;
        v44 = *(a2 + 8);
        if (v42 != v44)
        {
          if (v42 >= v44)
          {
            if (v42 > *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v42 != v44)
            {
              bzero((*a2 + 8 * v44), 8 * (v42 - v44));
            }
          }

          *(a2 + 8) = v43;
        }

        if (v10 && (v92[0] = v10, mlir::AffineExpr::getKind(v92) < 5))
        {
          v45 = v10;
        }

        else
        {
          v45 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v92, v45);
        AffineMap = v92[0];
        LHS = mlir::AffineBinaryOpExpr::getLHS(&AffineMap);
        if (LHS && (v50 = LHS, v92[0] = LHS, mlir::AffineExpr::getKind(v92) < 5))
        {
          v51 = v50;
        }

        else
        {
          v51 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v92, v51);
        AffineMap = v92[0];
        v52 = v43 - 1;
        if (v43 - 1 >= 1)
        {
          v53 = v52 & 0x7FFFFFFF;
          do
          {
            v56 = mlir::AffineBinaryOpExpr::getRHS(&AffineMap);
            if (v56 && (v57 = v56, v92[0] = v56, mlir::AffineExpr::getKind(v92) < 5))
            {
              v58 = v57;
            }

            else
            {
              v58 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v92, v58);
            v89 = v92[0];
            v59 = mlir::AffineBinaryOpExpr::getRHS(&v89);
            if (v59 && (v60 = v59, v92[0] = v59, mlir::AffineExpr::getKind(v92) == 5))
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            mlir::AffineConstantExpr::AffineConstantExpr(v92, v61);
            v88 = v92[0];
            *(*a2 + 8 * v53) = mlir::AffineConstantExpr::getValue(&v88);
            v62 = mlir::AffineBinaryOpExpr::getLHS(&AffineMap);
            if (v62 && (v63 = v62, v92[0] = v62, mlir::AffineExpr::getKind(v92) < 5))
            {
              v54 = v63;
            }

            else
            {
              v54 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v92, v54);
            AffineMap = v92[0];
          }

          while (v53-- > 1);
        }

        v64 = mlir::AffineBinaryOpExpr::getRHS(&AffineMap);
        if (v64 && (v65 = v64, v92[0] = v64, mlir::AffineExpr::getKind(v92) == 5))
        {
          v66 = v65;
        }

        else
        {
          v66 = 0;
        }

        mlir::AffineConstantExpr::AffineConstantExpr(v92, v66);
        v89 = v92[0];
        **a2 = mlir::AffineConstantExpr::getValue(&v89);
        v92[0] = mlir::MemRefType::getElementType(&v91);
        if (mlir::Type::getIntOrFloatBitWidth(v92) == 4)
        {
          if (v43 >= 2)
          {
            v67 = *a2;
            if (v43 > 4)
            {
              v68 = v52 & 0xFFFFFFFFFFFFFFFCLL;
              v78 = v67 + 1;
              v79 = v52 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v80 = vshrq_n_s64(vsraq_n_u64(*v78, *v78, 0x3FuLL), 1uLL);
                v78[-1] = vshrq_n_s64(vsraq_n_u64(v78[-1], v78[-1], 0x3FuLL), 1uLL);
                *v78 = v80;
                v78 += 2;
                v79 -= 4;
              }

              while (v79);
              if (v52 == v68)
              {
                return 1;
              }
            }

            else
            {
              v68 = 0;
            }

            v81 = &v67->i64[v68];
            v82 = ~v68 + v43;
            do
            {
              *v81++ /= 2;
              --v82;
            }

            while (v82);
          }
        }

        else
        {
          ElementTypeBitWidth = mlir::detail::ShapedTypeTrait<mlir::MemRefType>::getElementTypeBitWidth(&v91);
          if (v43 >= 2)
          {
            v75 = ElementTypeBitWidth >> 3;
            v76 = *a2;
            if (v43 == 2)
            {
              v77 = 0;
            }

            else
            {
              v77 = v52 & 0xFFFFFFFFFFFFFFFELL;
              v83 = &v76->i64[1];
              v84 = v52 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                v85 = *v83 * v75;
                *(v83 - 1) *= v75;
                *v83 = v85;
                v83 += 2;
                v84 -= 2;
              }

              while (v84);
              if (v52 == v77)
              {
                return 1;
              }
            }

            v86 = &v76->i64[v77];
            v87 = ~v77 + v43;
            do
            {
              *v86++ *= v75;
              --v87;
            }

            while (v87);
          }
        }

        return 1;
      }
    }
  }

  if ((mlir::getStrideInBytes(v91, a2, 1) & 1) == 0)
  {
    if (a4)
    {
      mlir::emitError(a3, v92);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v92, "Unable to get the stride in bytes!");
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
      v23 = result;
      if (v92[0])
      {
        mlir::InFlightDiagnostic::report(v92);
        result = v23;
      }

      if (v100 == 1)
      {
        if (v99 != &v100)
        {
          free(v99);
          result = v23;
        }

        v24 = __p;
        if (__p)
        {
          v25 = v98;
          v26 = __p;
          if (v98 != __p)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = __p;
          }

          v98 = v24;
          operator delete(v26);
          result = v23;
        }

        v27 = v95;
        if (v95)
        {
          v28 = v96;
          v29 = v95;
          if (v96 != v95)
          {
            do
            {
              v31 = *--v28;
              v30 = v31;
              *v28 = 0;
              if (v31)
              {
                MEMORY[0x259C63150](v30, 0x1000C8077774924);
              }
            }

            while (v28 != v27);
            v29 = v95;
          }

          v96 = v27;
          operator delete(v29);
          result = v23;
        }

        if (v93 != v94)
        {
          free(v93);
          return v23;
        }
      }

      return result;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 1;
  }

  mlir::MemRefType::getShape(&v91);
  v36 = *(a2 + 8);
  if (v35 != v36)
  {
    if (v35 >= v36)
    {
      if (v35 > *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v35 != v36)
      {
        v37 = v35;
        bzero((*a2 + 8 * v36), 8 * (v35 - v36));
        LODWORD(v35) = v37;
      }
    }

    *(a2 + 8) = v35;
  }

  Shape = mlir::MemRefType::getShape(&v91);
  v40 = v39;
  v92[0] = mlir::MemRefType::getElementType(&v91);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v92);
  if (IntOrFloatBitWidth != 4 && (IntOrFloatBitWidth & 7) != 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a3, a4, "Type's bitwidth not byte aligned");
  }

  v46 = IntOrFloatBitWidth >> 3;
  mlir::MemRefType::getShape(&v91);
  v47 = *a2;
  if (v48 == 1)
  {
    *v47 = v46;
    return 1;
  }

  else
  {
    v69 = &v47[v40];
    *(v69 - 1) = v46;
    v70 = v40 - 2;
    if (v40 != 2)
    {
      v71 = *(v69 - 1);
      do
      {
        v72 = *(Shape - 8 + 8 * v40) * v71;
        v71 = (v72 - (v72 != 0) + ((v72 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
        v47[v40-- - 2] = v71;
      }

      while (v40 != 2);
    }

    v73 = *(Shape + 8) * v47[1];
    *v47 = (v73 - (v73 != 0) + ((v73 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
    if ((v47[v70] & 0x3F) == 0)
    {
      return 1;
    }

    return mlir::emitOptionalError<char const(&)[39]>(a3, a4, "Row stride should follow 64 byte alignment");
  }
}