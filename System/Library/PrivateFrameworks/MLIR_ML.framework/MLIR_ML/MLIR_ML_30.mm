uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v50[0] = a2;
    v50[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ShapedType::hasRank(v50))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v41 = a2;
      v42 = v11;
      mlir::ShapedType::getShape(&v41);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), *&v48 = a2, *(&v48 + 1) = v13, mlir::ShapedType::getShape(&v48), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v46[0] = a2, v46[1] = v15, mlir::ShapedType::getShape(v46), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v45[0] = a2, v45[1] = v17, mlir::ShapedType::getShape(v45), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v44[0] = a2;
        v44[1] = v19;
        ElementType = mlir::ShapedType::getElementType(v44);
        if (mlir::Type::isSignedInteger(&ElementType, 2) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 1) || mlir::Type::isUnsignedInteger(&ElementType, 2) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v43 = 261;
  v41 = a3;
  v42 = a4;
  mlir::Operation::emitOpError(v50, a1, &v41);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, " #");
  if (*v20)
  {
    v21 = *(v20 + 24);
    LODWORD(v48) = 5;
    *(&v48 + 1) = a5;
    v22 = *(v20 + 32);
    if (v22 >= *(v20 + 36))
    {
      if (v21 > &v48 || v21 + 24 * v22 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v21 + 24 * *(v20 + 32);
    v24 = v48;
    *(v23 + 16) = v49;
    *v23 = v24;
    ++*(v20 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v20, " must be 0D/1D/2D/3D tensor of quantized values, but got ");
  if (*v25)
  {
    v26 = v25;
    mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
    v25 = v26;
    v27 = v26[3];
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

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v56;
      v34 = __p;
      if (v56 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v56 = v32;
      operator delete(v34);
    }

    v35 = v53;
    if (v53)
    {
      v36 = v54;
      v37 = v53;
      if (v54 != v53)
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
        v37 = v53;
      }

      v54 = v35;
      operator delete(v37);
    }

    if (v51 != &v52)
    {
      free(v51);
    }
  }

  return v31;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v53[0] = a2;
    v53[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ShapedType::hasRank(v53))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v44 = a2;
      v45 = v11;
      mlir::ShapedType::getShape(&v44);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), *&v51 = a2, *(&v51 + 1) = v13, mlir::ShapedType::getShape(&v51), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v49[0] = a2, v49[1] = v15, mlir::ShapedType::getShape(v49), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v48[0] = a2, v48[1] = v17, mlir::ShapedType::getShape(v48), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v47[0] = a2;
        v47[1] = v19;
        ElementType = mlir::ShapedType::getElementType(v47);
        if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 2) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 1) || mlir::Type::isUnsignedInteger(&ElementType, 2) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v46 = 261;
  v44 = a3;
  v45 = a4;
  mlir::Operation::emitOpError(v53, a1, &v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v53, " #");
  if (*v20)
  {
    v21 = *(v20 + 24);
    LODWORD(v51) = 5;
    *(&v51 + 1) = a5;
    v22 = *(v20 + 32);
    if (v22 >= *(v20 + 36))
    {
      if (v21 > &v51 || v21 + 24 * v22 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v21 + 24 * *(v20 + 32);
    v24 = v51;
    *(v23 + 16) = v52;
    *v23 = v24;
    v25 = *(v20 + 32) + 1;
    *(v20 + 32) = v25;
    if (*v20)
    {
      LODWORD(v51) = 3;
      *(&v51 + 1) = " must be 0D/1D/2D/3D tensor of floating point or quantized values, but got ";
      v52 = 75;
      v26 = *(v20 + 24);
      if (v25 >= *(v20 + 36))
      {
        if (v26 > &v51 || v26 + 24 * v25 <= &v51)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v26 + 24 * *(v20 + 32);
      v28 = v51;
      *(v27 + 16) = v52;
      *v27 = v28;
      ++*(v20 + 32);
      if (*v20)
      {
        v29 = v20;
        mlir::DiagnosticArgument::DiagnosticArgument(&v51, a2);
        v20 = v29;
        v30 = *(v29 + 32);
        v31 = *(v29 + 24);
        if (v30 >= *(v29 + 36))
        {
          if (v31 > &v51 || v31 + 24 * v30 <= &v51)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v31 + 24 * *(v29 + 32);
        v33 = v51;
        *(v32 + 16) = v52;
        *v32 = v33;
        ++*(v29 + 32);
      }
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v53[0])
  {
    mlir::InFlightDiagnostic::report(v53);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v59;
      v37 = __p;
      if (v59 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v59 = v35;
      operator delete(v37);
    }

    v38 = v56;
    if (v56)
    {
      v39 = v57;
      v40 = v56;
      if (v57 != v56)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v56;
      }

      v57 = v38;
      operator delete(v40);
    }

    if (v54 != &v55)
    {
      free(v54);
    }
  }

  return v34;
}

void mlir::mpsx::QuantizedGatherOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v5 + 16 * v6), *(*(*(*this + 6) + 96) + 24));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttrDictionary = 0;
    if (a2)
    {
LABEL_3:
      mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
    }
  }

  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

uint64_t mlir::mpsx::QuantizedGatherOp::getDtype(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedGatherOp::getAllowNegativeIndicesAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4 - 48), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::QuantizedGatherOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v43 = *MEMORY[0x277D85DE8];
  v34[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v34);
  if (!v3)
  {
LABEL_6:
    v31 = "requires attribute 'batch_dims'";
    v32 = 259;
    mlir::OpState::emitOpError(this, &v31, v34);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42[0] != 1)
    {
      return v6;
    }

    if (v41 != v42)
    {
      free(v41);
    }

    v7 = v39;
    if (v39)
    {
      v8 = v40;
      v9 = v39;
      if (v40 != v39)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = v39;
      }

      v40 = v7;
      operator delete(v9);
    }

    v10 = v37;
    if (!v37)
    {
      goto LABEL_64;
    }

    v11 = v38;
    v12 = v37;
    if (v38 == v37)
    {
LABEL_63:
      v38 = v10;
      operator delete(v12);
LABEL_64:
      if (v35 != &v36)
      {
        free(v35);
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
    goto LABEL_62;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    mlir::NamedAttribute::getName(v4);
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (!v5)
  {
LABEL_26:
    v31 = "requires attribute 'dtype'";
    v32 = 259;
    mlir::OpState::emitOpError(this, &v31, v34);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42[0] != 1)
    {
      return v6;
    }

    if (v41 != v42)
    {
      free(v41);
    }

    v17 = v39;
    if (v39)
    {
      v18 = v40;
      v19 = v39;
      if (v40 != v39)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = v39;
      }

      v40 = v17;
      operator delete(v19);
    }

    v10 = v37;
    if (!v37)
    {
      goto LABEL_64;
    }

    v20 = v38;
    v12 = v37;
    if (v38 == v37)
    {
      goto LABEL_63;
    }

    do
    {
      v22 = *--v20;
      v21 = v22;
      *v20 = 0;
      if (v22)
      {
        MEMORY[0x259C63150](v21, 0x1000C8077774924);
      }
    }

    while (v20 != v10);
LABEL_62:
    v12 = v37;
    goto LABEL_63;
  }

  v15 = 0;
  while (1)
  {
    v16 = (v4 + v15);
    if (mlir::NamedAttribute::getName((v4 + v15)) == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_26;
    }
  }

  for (i = v5 - v15; i; i -= 16)
  {
    if (mlir::NamedAttribute::getName(v16) == *(*(*(*this + 6) + 96) + 24))
    {
      v33 = *(v16 + 1);
      mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
    }

    v16 = (v16 + 16);
  }

  v31 = "requires attribute 'operandSegmentSizes'";
  v32 = 259;
  mlir::OpState::emitOpError(this, &v31, v34);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42[0] == 1)
  {
    if (v41 != v42)
    {
      free(v41);
    }

    v24 = v39;
    if (v39)
    {
      v25 = v40;
      v26 = v39;
      if (v40 != v39)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = v39;
      }

      v40 = v24;
      operator delete(v26);
    }

    v10 = v37;
    if (!v37)
    {
      goto LABEL_64;
    }

    v27 = v38;
    v12 = v37;
    if (v38 == v37)
    {
      goto LABEL_63;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v10);
    goto LABEL_62;
  }

  return v6;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps18(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v38[0] = a2;
    v38[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v34[0] = mlir::ShapedType::getElementType(v38);
    if (mlir::Type::isSignedInteger(v34, 2))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 4))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v34, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 1))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 2))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 4))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v34, 32))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v34[0] + 17) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
    {
      return 1;
    }
  }

  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  mlir::Operation::emitOpError(v38, a1, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    LODWORD(v36) = 5;
    *(&v36 + 1) = a5;
    v15 = *(v13 + 32);
    if (v15 >= *(v13 + 36))
    {
      if (v14 > &v36 || v14 + 24 * v15 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v14 + 24 * *(v13 + 32);
    v17 = v36;
    *(v16 + 16) = v37;
    *v16 = v17;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, " must be tensor of quantized values, but got ");
  if (*v18)
  {
    v19 = v18;
    mlir::DiagnosticArgument::DiagnosticArgument(&v36, a2);
    v18 = v19;
    v20 = v19[3];
    v21 = *(v19 + 8);
    if (v21 >= *(v19 + 9))
    {
      if (v20 > &v36 || v20 + 24 * v21 <= &v36)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v20 + 24 * *(v19 + 8);
    v23 = v36;
    *(v22 + 16) = v37;
    *v22 = v23;
    ++*(v19 + 8);
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
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

    v25 = __p;
    if (__p)
    {
      v26 = v44;
      v27 = __p;
      if (v44 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v44 = v25;
      operator delete(v27);
    }

    v28 = v41;
    if (v41)
    {
      v29 = v42;
      v30 = v41;
      if (v42 != v41)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x259C63150](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        v30 = v41;
      }

      v42 = v28;
      operator delete(v30);
    }

    if (v39 != &v40)
    {
      free(v39);
    }
  }

  return v24;
}

uint64_t mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase::getWeightsQuantParamsAxis(mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 32), v3, *(*(*(this + 1) + 96) + 40));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    return v8 | v6 | v9;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v14 = v6;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  mlir::IntegerAttr::getValue(&v14, &v12);
  if (v13 > 0x40)
  {
    v11 = *v12;
    MEMORY[0x259C63150]();
  }

  else if (v13)
  {
    v11 = (v12 << -v13) >> -v13;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v6 = v11 & 0xFFFFFF00;
  v9 = v11;
  v8 = 0x100000000;
  return v8 | v6 | v9;
}

void mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v5 + 16 * v6 - 16), *(*(*(*this + 6) + 96) + 8));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttrDictionary = 0;
    if (a2)
    {
LABEL_3:
      mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
    }
  }

  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedMatMulOp::getInputQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *v3;
      MEMORY[0x259C63150]();
    }

    else if (v4)
    {
      v2 = (v3 << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &v3);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *v3;
      MEMORY[0x259C63150]();
    }

    else if (v4)
    {
      v2 = (v3 << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getTransposeLhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::getTransposeRhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::populateDefaultAttrs(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 96);
  Context = mlir::Attribute::getContext(v3);
  if (!mlir::NamedAttrList::get(a2, v3[3]))
  {
    v4 = v3[3];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v10, v4, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v10, v11);
  }

  result = mlir::NamedAttrList::get(a2, v3[4]);
  if (!result)
  {
    v7 = v3[4];
    v8 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v10, v7, v8);
    return mlir::NamedAttrList::push_back(a2, v10, v11);
  }

  return result;
}

BOOL mlir::mpsx::QuantizedMatMulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v27);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
    {
      mlir::NamedAttribute::getName(v4);
      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    if (v5)
    {
      for (i = 0; i != v5; i += 16)
      {
        v16 = (v4 + i);
        if (mlir::NamedAttribute::getName((v4 + i)) == *(*(*(*this + 6) + 96) + 16))
        {
          v23 = v5 - i;
          if (v5 != i)
          {
            do
            {
              if (mlir::NamedAttribute::getName(v16) != *(*(*(*this + 6) + 96) + 24) && mlir::NamedAttribute::getName(v16) != *(*(*(*this + 6) + 96) + 32))
              {
                mlir::NamedAttribute::getName(v16);
              }

              v16 = (v16 + 16);
              v23 -= 16;
            }

            while (v23);
          }

          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }
      }
    }

    v25[0] = "requires attribute 'output_type'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
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

      v17 = __p;
      if (__p)
      {
        v18 = v33;
        v19 = __p;
        if (v33 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v33 = v17;
        operator delete(v19);
      }

      v10 = v30;
      if (!v30)
      {
        goto LABEL_51;
      }

      v20 = v31;
      v12 = v30;
      if (v31 == v30)
      {
        goto LABEL_50;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v20 != v10);
      goto LABEL_49;
    }
  }

  else
  {
LABEL_6:
    v25[0] = "requires attribute 'operandSegmentSizes'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
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
      if (!v30)
      {
        goto LABEL_51;
      }

      v11 = v31;
      v12 = v30;
      if (v31 == v30)
      {
LABEL_50:
        v31 = v10;
        operator delete(v12);
LABEL_51:
        if (v28 != &v29)
        {
          free(v28);
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
LABEL_49:
      v12 = v30;
      goto LABEL_50;
    }
  }

  return v6;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getTransposeLhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getTransposeRhsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::populateDefaultAttrs(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 96);
  Context = mlir::Attribute::getContext(v3);
  if (!mlir::NamedAttrList::get(a2, v3[1]))
  {
    v4 = v3[1];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v10, v4, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v10, v11);
  }

  result = mlir::NamedAttrList::get(a2, v3[2]);
  if (!result)
  {
    v7 = v3[2];
    v8 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v10, v7, v8);
    return mlir::NamedAttrList::push_back(a2, v10, v11);
  }

  return result;
}

BOOL mlir::mpsx::SparseDenseMatMulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v138 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
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
    if (v5)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = mlir::NamedAttribute::getName(v4);
        v7 = *this;
        if (v20 == *(*(*(*this + 6) + 96) + 8))
        {
          v18 = *(v4 + 1);
        }

        else
        {
          v21 = mlir::NamedAttribute::getName(v4);
          v7 = *this;
          if (v21 == *(*(*(*this + 6) + 96) + 16))
          {
            v19 = *(v4 + 1);
          }
        }

        v4 = (v4 + 16);
        v5 -= 16;
      }

      while (v5);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(v7, v18, "transpose_lhs", 0xD) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v19, "transpose_rhs", 0xD) & 1) == 0)
    {
      return 0;
    }

    v22 = *this;
    if (v17 && *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
    {
      v122 = 257;
      mlir::Operation::emitOpError(&AttrDictionary, v22, &v120);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "attribute '");
      if (*v23)
      {
        v122 = 261;
        v120 = "storage_type";
        v121 = 12;
        v24 = v23;
        mlir::Diagnostic::operator<<((v23 + 1), &v120);
        v23 = v24;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "' failed to satisfy constraint: valid SparseTensorStorage");
      v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v137 == 1)
      {
        if (v136 != &v137)
        {
          free(v136);
        }

        v27 = __p;
        if (__p)
        {
          v28 = v135;
          v29 = __p;
          if (v135 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v135 = v27;
          operator delete(v29);
        }

        v30 = v132;
        if (v132)
        {
          v31 = v133;
          v32 = v132;
          if (v133 != v132)
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
            v32 = v132;
          }

          v133 = v30;
          operator delete(v32);
        }

        if (v130 != v131)
        {
          free(v130);
        }
      }

      if (!v26)
      {
        return 0;
      }

      v22 = *this;
    }

    v35 = (*(*(*(v22 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v36 = *v35;
    v37 = *(*v35 + 17);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v36 + 8);
      AttrDictionary = v35;
      v129 = v38;
      ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
      if (mlir::Type::isF32(&ElementType))
      {
LABEL_95:
        if (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
        {
          v63 = *this;
          v64 = *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
          v65 = *(*v64 + 136);
          if (v65 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v65 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
          {
            v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v64 + 8);
            AttrDictionary = v64;
            v129 = v67;
            v120 = mlir::ShapedType::getElementType(&AttrDictionary);
            if (mlir::Type::isSignedInteger(&v120, 32) || mlir::Type::isSignedInteger(&v120, 64))
            {
              goto LABEL_131;
            }
          }

          v122 = 261;
          v120 = "operand";
          v121 = 7;
          mlir::Operation::emitOpError(&AttrDictionary, v63, &v120);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, " #");
          if (*v68)
          {
            v69 = *(v68 + 24);
            LODWORD(v126) = 5;
            *(&v126 + 1) = 3;
            v70 = *(v68 + 32);
            if (v70 >= *(v68 + 36))
            {
              if (v69 > &v126 || v69 + 24 * v70 <= &v126)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v71 = v69 + 24 * *(v68 + 32);
            v72 = v126;
            *(v71 + 16) = v127;
            *v71 = v72;
            ++*(v68 + 32);
          }

          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v68, " must be tensor of mps index type values, but got ");
          if (*v73)
          {
            v74 = v73;
            mlir::DiagnosticArgument::DiagnosticArgument(&v126, v64);
            v75 = v74[3];
            v76 = *(v74 + 8);
            if (v76 >= *(v74 + 9))
            {
              if (v75 > &v126 || v75 + 24 * v76 <= &v126)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v73 = v74;
            v77 = v75 + 24 * *(v74 + 8);
            v78 = v126;
            *(v77 + 16) = v127;
            *v77 = v78;
            ++*(v74 + 8);
          }

          v79 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
          if (AttrDictionary)
          {
            mlir::InFlightDiagnostic::report(&AttrDictionary);
          }

          if (v137 == 1)
          {
            if (v136 != &v137)
            {
              free(v136);
            }

            v80 = __p;
            if (__p)
            {
              v81 = v135;
              v82 = __p;
              if (v135 != __p)
              {
                do
                {
                  v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
                }

                while (v81 != v80);
                v82 = __p;
              }

              v135 = v80;
              operator delete(v82);
            }

            v83 = v132;
            if (v132)
            {
              v84 = v133;
              v85 = v132;
              if (v133 != v132)
              {
                do
                {
                  v87 = *--v84;
                  v86 = v87;
                  *v84 = 0;
                  if (v87)
                  {
                    MEMORY[0x259C63150](v86, 0x1000C8077774924);
                  }
                }

                while (v84 != v83);
                v85 = v132;
              }

              v133 = v83;
              operator delete(v85);
            }

            if (v130 != v131)
            {
              free(v130);
            }
          }

          if (v79)
          {
LABEL_131:
            v88 = *this;
            v89 = (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
            v90 = *v89;
            v91 = *(*v89 + 17);
            if (v91 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v90 + 8);
              AttrDictionary = v89;
              v129 = v92;
              ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
              if (mlir::Type::isF32(&ElementType))
              {
LABEL_165:
                if (*(*this + 9))
                {
                  v117 = *this - 16;
                }

                else
                {
                  v117 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v117, 0);
                return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }

              v90 = *v89;
              v91 = *(*v89 + 17);
            }

            if (v91 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v90 + 8);
              v120 = v89;
              v121 = v93;
              if (mlir::ShapedType::hasRank(&v120))
              {
                v94 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
                *&v126 = v89;
                *(&v126 + 1) = v94;
                mlir::ShapedType::getShape(&v126);
                if (v95 == 2)
                {
                  v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v89 + 8);
                  v123 = v89;
                  v124 = v96;
                  ElementType = mlir::ShapedType::getElementType(&v123);
                  if (mlir::Type::isF32(&ElementType))
                  {
                    goto LABEL_165;
                  }
                }
              }
            }

            v122 = 261;
            v120 = "operand";
            v121 = 7;
            mlir::Operation::emitOpError(&AttrDictionary, v88, &v120);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, " #");
            if (*v97)
            {
              v98 = *(v97 + 24);
              LODWORD(v126) = 5;
              *(&v126 + 1) = 4;
              v99 = *(v97 + 32);
              if (v99 >= *(v97 + 36))
              {
                if (v98 > &v126 || v98 + 24 * v99 <= &v126)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v100 = v98 + 24 * *(v97 + 32);
              v101 = v126;
              *(v100 + 16) = v127;
              *v100 = v101;
              ++*(v97 + 32);
            }

            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v97, " must be unranked tensor of 32-bit float values or 2D tensor of 32-bit float values, but got ");
            if (*v102)
            {
              v103 = v102;
              mlir::DiagnosticArgument::DiagnosticArgument(&v126, v89);
              v104 = v103[3];
              v105 = *(v103 + 8);
              if (v105 >= *(v103 + 9))
              {
                if (v104 > &v126 || v104 + 24 * v105 <= &v126)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v102 = v103;
              v106 = v104 + 24 * *(v103 + 8);
              v107 = v126;
              *(v106 + 16) = v127;
              *v106 = v107;
              ++*(v103 + 8);
            }

            v108 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v137 == 1)
            {
              if (v136 != &v137)
              {
                free(v136);
              }

              v109 = __p;
              if (__p)
              {
                v110 = v135;
                v111 = __p;
                if (v135 != __p)
                {
                  do
                  {
                    v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
                  }

                  while (v110 != v109);
                  v111 = __p;
                }

                v135 = v109;
                operator delete(v111);
              }

              v112 = v132;
              if (v132)
              {
                v113 = v133;
                v114 = v132;
                if (v133 != v132)
                {
                  do
                  {
                    v116 = *--v113;
                    v115 = v116;
                    *v113 = 0;
                    if (v116)
                    {
                      MEMORY[0x259C63150](v115, 0x1000C8077774924);
                    }
                  }

                  while (v113 != v112);
                  v114 = v132;
                }

                v133 = v112;
                operator delete(v114);
              }

              if (v130 != v131)
              {
                free(v130);
              }
            }

            if (v108)
            {
              goto LABEL_165;
            }
          }
        }

        return 0;
      }

      v36 = *v35;
      v37 = *(*v35 + 17);
    }

    if (v37 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v36 + 8), v120 = v35, v121 = v39, !mlir::ShapedType::hasRank(&v120)) || (v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8), *&v126 = v35, *(&v126 + 1) = v40, mlir::ShapedType::getShape(&v126), v41 != 1) || (v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8), v123 = v35, v124 = v42, ElementType = mlir::ShapedType::getElementType(&v123), !mlir::Type::isF32(&ElementType)))
    {
      v122 = 261;
      v120 = "operand";
      v121 = 7;
      mlir::Operation::emitOpError(&AttrDictionary, v22, &v120);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, " #");
      if (*v43)
      {
        v44 = *(v43 + 24);
        LODWORD(v126) = 5;
        *(&v126 + 1) = 0;
        v45 = *(v43 + 32);
        if (v45 >= *(v43 + 36))
        {
          if (v44 > &v126 || v44 + 24 * v45 <= &v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v44 + 24 * *(v43 + 32);
        v47 = v126;
        *(v46 + 16) = v127;
        *v46 = v47;
        ++*(v43 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v43, " must be unranked tensor of 32-bit float values or 1D tensor of 32-bit float values, but got ");
      if (*v48)
      {
        v49 = v48;
        mlir::DiagnosticArgument::DiagnosticArgument(&v126, v35);
        v50 = v49[3];
        v51 = *(v49 + 8);
        if (v51 >= *(v49 + 9))
        {
          if (v50 > &v126 || v50 + 24 * v51 <= &v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v48 = v49;
        v52 = v50 + 24 * *(v49 + 8);
        v53 = v126;
        *(v52 + 16) = v127;
        *v52 = v53;
        ++*(v49 + 8);
      }

      v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v137 == 1)
      {
        if (v136 != &v137)
        {
          free(v136);
        }

        v55 = __p;
        if (__p)
        {
          v56 = v135;
          v57 = __p;
          if (v135 != __p)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = __p;
          }

          v135 = v55;
          operator delete(v57);
        }

        v58 = v132;
        if (v132)
        {
          v59 = v133;
          v60 = v132;
          if (v133 != v132)
          {
            do
            {
              v62 = *--v59;
              v61 = v62;
              *v59 = 0;
              if (v62)
              {
                MEMORY[0x259C63150](v61, 0x1000C8077774924);
              }
            }

            while (v59 != v58);
            v60 = v132;
          }

          v133 = v58;
          operator delete(v60);
        }

        if (v130 != v131)
        {
          free(v130);
        }
      }

      if (!v54)
      {
        return 0;
      }
    }

    goto LABEL_95;
  }

LABEL_5:
  v120 = "requires attribute 'storage_type'";
  v122 = 259;
  mlir::OpState::emitOpError(this, &v120, &AttrDictionary);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v137 == 1)
  {
    if (v136 != &v137)
    {
      free(v136);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v135;
      v11 = __p;
      if (v135 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v135 = v9;
      operator delete(v11);
    }

    v12 = v132;
    if (v132)
    {
      v13 = v133;
      v14 = v132;
      if (v133 != v132)
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
        v14 = v132;
      }

      v133 = v12;
      operator delete(v14);
    }

    if (v130 != v131)
    {
      free(v130);
    }
  }

  return v8;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps20(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(*a2 + 17);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v46[0] = a2;
    v46[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    ElementType = mlir::ShapedType::getElementType(v46);
    if (mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64))
    {
      return 1;
    }

    v10 = *a2;
    v11 = *(*a2 + 17);
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v39 = a2;
    v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::ShapedType::hasRank(&v39))
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      *&v44 = a2;
      *(&v44 + 1) = v12;
      mlir::ShapedType::getShape(&v44);
      if (v13 == 1)
      {
        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v42[0] = a2;
        v42[1] = v14;
        ElementType = mlir::ShapedType::getElementType(v42);
        if (mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64))
        {
          return 1;
        }
      }
    }
  }

  v41 = 261;
  v39 = a3;
  v40 = a4;
  mlir::Operation::emitOpError(v46, a1, &v39);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v46, " #");
  if (*v15)
  {
    v16 = *(v15 + 24);
    LODWORD(v44) = 5;
    *(&v44 + 1) = a5;
    v17 = *(v15 + 32);
    if (v17 >= *(v15 + 36))
    {
      if (v16 > &v44 || v16 + 24 * v17 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v16 + 24 * *(v15 + 32);
    v19 = v44;
    *(v18 + 16) = v45;
    *v18 = v19;
    v20 = *(v15 + 32) + 1;
    *(v15 + 32) = v20;
    if (*v15)
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = " must be unranked tensor of 32/64-bit signed integer values or 1D tensor of 32/64-bit signed integer values, but got ";
      v45 = 117;
      v21 = *(v15 + 24);
      if (v20 >= *(v15 + 36))
      {
        if (v21 > &v44 || v21 + 24 * v20 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v21 + 24 * *(v15 + 32);
      v23 = v44;
      *(v22 + 16) = v45;
      *v22 = v23;
      ++*(v15 + 32);
      if (*v15)
      {
        v24 = v15;
        mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
        v15 = v24;
        v25 = *(v24 + 32);
        v26 = *(v24 + 24);
        if (v25 >= *(v24 + 36))
        {
          if (v26 > &v44 || v26 + 24 * v25 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v26 + 24 * *(v24 + 32);
        v28 = v44;
        *(v27 + 16) = v45;
        *v27 = v28;
        ++*(v24 + 32);
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v33 = v49;
    if (v49)
    {
      v34 = v50;
      v35 = v49;
      if (v50 != v49)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x259C63150](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v49;
      }

      v50 = v33;
      operator delete(v35);
    }

    if (v47 != &v48)
    {
      free(v47);
    }
  }

  return v29;
}

uint64_t mlir::mpsx::TensorToBufferOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v55);
  if (v4 == mlir::DictionaryAttr::end(&v55))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
      {
        v5 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 24))
      {
        v9 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 32))
      {
        v8 = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    while (v4 != mlir::DictionaryAttr::end(&v55));
    if (v8)
    {
      if (!mlir::DenseIntElementsAttr::classof(v8))
      {
        goto LABEL_20;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v48 = v8;
      v49 = v10;
      Type = mlir::ElementsAttr::getType(&v48);
      v12 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v56 = v12;
      v57 = Type;
      mlir::ShapedType::getShape(&v56);
      if (v13 != 1 || (v51 = v8, v52 = mlir::DenseElementsAttr::getType(&v51), v53 = v14, ElementType = mlir::ShapedType::getElementType(&v52), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_20:
        v48 = "'mpsx.tensor_to_buffer' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v63;
            v18 = __p;
            if (v63 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v63 = v16;
            operator delete(v18);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v20 = v61;
          v21 = v60;
          if (v61 == v60)
          {
LABEL_100:
            v61 = v19;
            operator delete(v21);
LABEL_101:
            if (v58 != &v59)
            {
              free(v58);
            }

            return v15;
          }

          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
LABEL_99:
          v21 = v60;
          goto LABEL_100;
        }

        return v15;
      }
    }
  }

  if (!v9)
  {
LABEL_56:
    if (!v5)
    {
      goto LABEL_63;
    }

    if (!mlir::DenseIntElementsAttr::classof(v5))
    {
      goto LABEL_67;
    }

    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    v48 = v5;
    v49 = v30;
    v31 = mlir::ElementsAttr::getType(&v48);
    v32 = v31;
    if (v31)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    v56 = v32;
    v57 = v31;
    mlir::ShapedType::getShape(&v56);
    if (v33 == 1 && (v51 = v5, v52 = mlir::DenseElementsAttr::getType(&v51), v53 = v34, ElementType = mlir::ShapedType::getElementType(&v52), mlir::Type::isUnsignedInteger(&ElementType, 64)))
    {
LABEL_63:
      if (v7 && !mlir::BoolAttr::classof(v7))
      {
        v48 = "'mpsx.tensor_to_buffer' op attribute 'isTensorBufferOp' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v41 = __p;
          if (__p)
          {
            v42 = v63;
            v43 = __p;
            if (v63 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v63 = v41;
            operator delete(v43);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v44 = v61;
          v21 = v60;
          if (v61 == v60)
          {
            goto LABEL_100;
          }

          do
          {
            v46 = *--v44;
            v45 = v46;
            *v44 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v44 != v19);
          goto LABEL_99;
        }
      }

      else if (v6 && !mlir::BoolAttr::classof(v6))
      {
        v48 = "'mpsx.tensor_to_buffer' op attribute 'isChannelAndInterleaveSame' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v57);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
LABEL_67:
      v48 = "'mpsx.tensor_to_buffer' op attribute 'interleave' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v50 = 259;
      mlir::emitError(a2, &v48, &v56);
      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v63;
          v37 = __p;
          if (v63 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v63 = v35;
          operator delete(v37);
        }

        v19 = v60;
        if (!v60)
        {
          goto LABEL_101;
        }

        v38 = v61;
        v21 = v60;
        if (v61 == v60)
        {
          goto LABEL_100;
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

        while (v38 != v19);
        goto LABEL_99;
      }
    }

    return v15;
  }

  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v56 = v9;
    mlir::TypeAttr::getValue(&v56);
    goto LABEL_56;
  }

  v48 = "'mpsx.tensor_to_buffer' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v50 = 259;
  mlir::emitError(a2, &v48, &v56);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v19 = v60;
    if (!v60)
    {
      goto LABEL_101;
    }

    v27 = v61;
    v21 = v60;
    if (v61 == v60)
    {
      goto LABEL_100;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v19);
    goto LABEL_99;
  }

  return v15;
}

uint64_t mlir::mpsx::TensorToBufferOp::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 16 * v3;
    do
    {
      Name = mlir::NamedAttribute::getName(v4);
      v12 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v13 = mlir::NamedAttribute::getName(v4);
        v12 = *this;
        if (v13 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v14 = mlir::NamedAttribute::getName(v4);
          v12 = *this;
          if (v14 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }

          else
          {
            v15 = mlir::NamedAttribute::getName(v4);
            v12 = *this;
            if (v15 == *(*(*(*this + 6) + 96) + 24))
            {
              v8 = *(v4 + 1);
            }

            else
            {
              v16 = mlir::NamedAttribute::getName(v4);
              v12 = *this;
              if (v16 == *(*(*(*this + 6) + 96) + 32))
              {
                v9 = *(v4 + 1);
              }
            }
          }
        }
      }

      v4 = (v4 + 16);
      v10 -= 16;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v12 = *this;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(v12, v9, "shape", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps7(*this, v8, "resultElementType", 0x11) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(*this, v5, "interleave", 10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v7, "isTensorBufferOp", 0x10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v6, "isChannelAndInterleaveSame", 0x1A) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::VarHandleOp::getIdentifier(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::StringAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::VarHandleOp::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(*this, v4[1], "identifier", 0xA))
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
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'identifier'";
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

uint64_t mlir::Diagnostic::append<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  LODWORD(v16) = 3;
  *(&v16 + 1) = __s;
  v17 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v16 || v11 + 24 * v12 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v16;
  *(v13 + 16) = v17;
  *v13 = v14;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(a1, a3, a4, a5);
}

__n128 mlir::Diagnostic::append<char const(&)[22]>(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 16);
  v9.n128_u32[0] = 3;
  v9.n128_u64[1] = __s;
  v10 = v4;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v5 > &v9 || v5 + 24 * v6 <= &v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (v5 + 24 * *(a1 + 24));
  result = v9;
  v7[1].n128_u64[0] = v10;
  *v7 = result;
  ++*(a1 + 24);
  return result;
}

uint64_t mlir::Diagnostic::append<mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(uint64_t a1, uint64_t *a2, char *a3, uint64_t *a4)
{
  mlir::DiagnosticArgument::DiagnosticArgument(&v12, *a2);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v12 || v7 + 24 * v8 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v7 + 24 * *(a1 + 24);
  v10 = v12;
  *(v9 + 16) = v13;
  *v9 = v10;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(a1, a3, a4);
}

uint64_t mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  LODWORD(v16) = 3;
  *(&v16 + 1) = __s;
  v17 = v6;
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v16 || v7 + 24 * v8 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v7 + 24 * *(a1 + 24);
  v10 = v16;
  *(v9 + 16) = v17;
  *v9 = v10;
  ++*(a1 + 24);
  mlir::DiagnosticArgument::DiagnosticArgument(&v16, *a3);
  v11 = *(a1 + 24);
  v12 = *(a1 + 16);
  if (v11 >= *(a1 + 28))
  {
    if (v12 > &v16 || v12 + 24 * v11 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v12 + 24 * *(a1 + 24);
  v14 = v16;
  *(v13 + 16) = v17;
  *v13 = v14;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(uint64_t a1, char *__s, unsigned int *a3, char *a4)
{
  v8 = strlen(__s);
  v9 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = v8;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    if (v9 > &v14 || v9 + 24 * v10 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v9 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<unsigned int &,char const(&)[47]>(a1, a3, a4);
}

uint64_t mlir::Diagnostic::append<unsigned int &,char const(&)[47]>(uint64_t a1, unsigned int *a2, char *__s)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  LODWORD(v14) = 5;
  *(&v14 + 1) = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v14 || v4 + 24 * v6 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v14;
  *(v7 + 16) = v15;
  *v7 = v8;
  v9 = *(a1 + 24) + 1;
  *(a1 + 24) = v9;
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = strlen(__s);
  v10 = *(a1 + 16);
  if (v9 >= *(a1 + 28))
  {
    if (v10 > &v14 || v10 + 24 * v9 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v10 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  return a1;
}

double mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(uint64_t a1, char *__s, char *a3, uint64_t *a4, char *a5, unsigned int *a6)
{
  v12 = strlen(__s);
  v13 = *(a1 + 16);
  LODWORD(v18) = 3;
  *(&v18 + 1) = __s;
  v19 = v12;
  v14 = *(a1 + 24);
  if (v14 >= *(a1 + 28))
  {
    if (v13 > &v18 || v13 + 24 * v14 <= &v18)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v13 + 24 * *(a1 + 24);
  v16 = v18;
  *(v15 + 16) = v19;
  *v15 = v16;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[19],long long &,char const(&)[4],unsigned int &>(a1, a3, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[19],long long &,char const(&)[4],unsigned int &>(uint64_t a1, char *__s, uint64_t *a3, char *a4, unsigned int *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v13 = *(a1 + 16);
  a1 += 16;
  v12 = v13;
  LODWORD(v24) = 3;
  *(&v24 + 1) = __s;
  v25 = v10;
  v14 = *(a1 + 8);
  if (v14 >= *(a1 + 12))
  {
    if (v12 > &v24 || v12 + 24 * v14 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v12 + 24 * *(v11 + 24);
  v16 = v24;
  *(v15 + 16) = v25;
  *v15 = v16;
  v17 = *(v11 + 28);
  v18 = *(v11 + 24) + 1;
  *(v11 + 24) = v18;
  v19 = *a3;
  LODWORD(v24) = 2;
  *(&v24 + 1) = v19;
  v20 = *(v11 + 16);
  if (v18 >= v17)
  {
    if (v20 > &v24 || v20 + 24 * v18 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v20 + 24 * *(v11 + 24);
  v22 = v24;
  *(v21 + 16) = v25;
  *v21 = v22;
  ++*(v11 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[21],unsigned int>(v11, a4, a5).n128_u64[0];
  return result;
}

uint64_t mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(uint64_t a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  LODWORD(v16) = 3;
  *(&v16 + 1) = __s;
  v17 = v6;
  v8 = *(a1 + 24);
  if (v8 >= *(a1 + 28))
  {
    if (v7 > &v16 || v7 + 24 * v8 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = v7 + 24 * *(a1 + 24);
  v10 = v16;
  *(v9 + 16) = v17;
  *v9 = v10;
  v11 = *(a1 + 24) + 1;
  *(a1 + 24) = v11;
  LODWORD(v16) = 3;
  *(&v16 + 1) = a3;
  v17 = strlen(a3);
  v12 = *(a1 + 16);
  if (v11 >= *(a1 + 28))
  {
    if (v12 > &v16 || v12 + 24 * v11 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v12 + 24 * *(a1 + 24);
  v14 = v16;
  *(v13 + 16) = v17;
  *v13 = v14;
  ++*(a1 + 24);
  return a1;
}

__n128 std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286864A70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mpsx::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(void *ElementType, uint64_t *a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(**a2 + 136);
  {
    v25 = v6;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    v6 = v25;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  if (v6 != mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    goto LABEL_6;
  }

  v8 = *(*v5 + 136);
  {
    goto LABEL_34;
  }

  while (v8 == p_opt_class_meths[6])
  {
    ElementType = ElementType[1];
    v19 = *(*v4 + 136);
    {
      v27 = v19;
      mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
      v19 = v27;
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    }

    if (v19 == p_opt_class_meths[6])
    {
      v20 = v4;
    }

    else
    {
      v20 = 0;
    }

    v4 = *(v20 + 8);
    v21 = *(*v5 + 136);
    {
      v28 = v21;
      mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
      v21 = v28;
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    }

    if (v21 == p_opt_class_meths[6])
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22[1];
    v30[0] = v4;
    v29[0] = v23;
    v24 = ElementType[3];
    if (v24)
    {
      return (*(*v24 + 48))(v24, v30, v29);
    }

LABEL_33:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_34:
    v26 = v8;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    v8 = v26;
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
  }

LABEL_6:
  v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  if (v9)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v30[0] = v4;
  v30[1] = v9;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v10 = 0;
  }

  result = 0;
  v29[0] = v5;
  v29[1] = v10;
  if (!v4 || !v5)
  {
    return result;
  }

  v5 = ElementType[2];
  ElementType = mlir::ShapedType::getElementType(v30);
  v12 = mlir::ShapedType::getElementType(v29);
  v32 = ElementType;
  v31 = v12;
  v13 = v5[3];
  if (!v13)
  {
    goto LABEL_33;
  }

  result = (*(*v13 + 48))(v13, &v32, &v31);
  if (result)
  {
    if (mlir::ShapedType::hasRank(v29))
    {
      result = mlir::ShapedType::hasRank(v30);
      if (result)
      {
        Shape = mlir::ShapedType::getShape(v30);
        v16 = v15;
        v17 = mlir::ShapedType::getShape(v29);
        return mlir::mps::isMoreSpecializedShape(Shape, v16, v17, v18);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::AsmParser::parseKeyword(mlir::AsmParser *this, llvm::StringRef *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 40))(this);
  if ((*(*this + 416))(this, a2))
  {
    return 1;
  }

  v15 = "expected valid keyword";
  v16 = 259;
  (*(*this + 24))(v17, this, v4, &v15);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

    v6 = __p;
    if (__p)
    {
      v7 = v23;
      v8 = __p;
      if (v23 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v23 = v6;
      operator delete(v8);
    }

    v9 = v20;
    if (v20)
    {
      v10 = v21;
      v11 = v20;
      if (v21 != v20)
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
        v11 = v20;
      }

      v21 = v9;
      operator delete(v11);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v5;
}

mlir::NamedAttribute *mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(mlir::NamedAttribute *this, mlir::NamedAttribute *a2, uint64_t a3)
{
  v3 = this;
  v17 = a3;
  v4 = (a2 - this) >> 4;
  if (v4 >= 17)
  {
    Value = mlir::StringAttr::getValue(&v17);
    v7 = v6;
    while (1)
    {
      v8 = v4 >> 1;
      Name = mlir::NamedAttribute::getName((v3 + 16 * (v4 >> 1)));
      v9 = mlir::StringAttr::getValue(&Name);
      v11 = v10;
      v12 = v7 >= v10 ? v10 : v7;
      if (v12)
      {
        v13 = memcmp(v9, Value, v12);
        if (v13)
        {
          break;
        }
      }

      if (v11 == v7)
      {
        return (v3 + 16 * (v4 >> 1));
      }

      if (v11 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v4 = v8;
      if (v8 <= 0)
      {
        return v3;
      }
    }

    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v4 >> 1) + 16);
    v8 = v4 + ~v8;
    goto LABEL_4;
  }

  if (this == a2)
  {
    return a2;
  }

  while (mlir::NamedAttribute::getName(v3) != a3)
  {
    v3 = (v3 + 16);
    if (v3 == a2)
    {
      return a2;
    }
  }

  return v3;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.ane", 8, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286864AB8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::ANEOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getArgumentTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v3);
  return mlir::FunctionType::getInputs(&FunctionType);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getResultTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v3);
  return mlir::FunctionType::getResults(&FunctionType);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::cloneTypeWith(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v11);
  return mlir::FunctionType::clone(&FunctionType, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyBody(mlir::Operation **a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v1 = (((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  FunctionType = mlir::mpsx::ANEOp::getFunctionType(a1);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v5 = v4;
  v6 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + 48;
  v8 = *(v7 + 48);
  if (((*(v9 + 8) - v8) >> 3) != v4)
  {
    v43[0] = "entry block must have ";
    v44 = 259;
    mlir::OpState::emitOpError(a1, v43, &FunctionType);
    if (FunctionType)
    {
      LODWORD(v45) = 5;
      *(&v45 + 1) = v5;
      if (v50 >= v51)
      {
        if (v49 > &v45 || v49 + 24 * v50 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v49 + 24 * v50;
      v14 = v45;
      *(v13 + 2) = v46;
      *v13 = v14;
      ++v50;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&FunctionType, " arguments to match function signature");
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (FunctionType)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
    }

    if (v58 != 1)
    {
      return v12;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v56;
      v18 = __p;
      if (v56 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v56 = v16;
      operator delete(v18);
    }

    v19 = v53;
    if (v53)
    {
      v20 = v54;
      v21 = v53;
      if (v54 != v53)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v53;
      }

      v54 = v19;
      operator delete(v21);
    }

    v41 = v49;
    if (v49 == v52)
    {
      return v12;
    }

LABEL_57:
    free(v41);
    return v12;
  }

  if (!v4)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(v8 + 8 * v10) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v11)
    {
      break;
    }

    ++v10;
    ++Inputs;
    if (v4 == v10)
    {
      return 1;
    }
  }

  v24 = Inputs;
  v43[0] = "type of entry block argument #";
  v44 = 259;
  mlir::OpState::emitOpError(a1, v43, &FunctionType);
  if (FunctionType)
  {
    LODWORD(v45) = 5;
    *(&v45 + 1) = v10;
    if (v50 >= v51)
    {
      if (v49 > &v45 || v49 + 24 * v50 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v49 + 24 * v50;
    v26 = v45;
    *(v25 + 2) = v46;
    *v25 = v26;
    ++v50;
    if (FunctionType)
    {
      mlir::Diagnostic::operator<<(&v48, 40);
      if (FunctionType)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v45, v11);
        if (v50 >= v51)
        {
          if (v49 > &v45 || v49 + 24 * v50 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v49 + 24 * v50;
        v28 = v45;
        *(v27 + 2) = v46;
        *v27 = v28;
        ++v50;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&FunctionType, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v29, "function signature(");
  mlir::InFlightDiagnostic::append<mlir::Type const&>(v30, v24);
  if (*v31)
  {
    v32 = v31;
    mlir::Diagnostic::operator<<((v31 + 1), 41);
    v31 = v32;
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (FunctionType)
  {
    mlir::InFlightDiagnostic::report(&FunctionType);
  }

  if (v58)
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
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
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
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v37 != v36);
        v38 = v53;
      }

      v54 = v36;
      operator delete(v38);
    }

    v41 = v49;
    if (v49 != v52)
    {
      goto LABEL_57;
    }
  }

  return v12;
}

__n128 mlir::InFlightDiagnostic::append<mlir::Type const&>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v7, *a2);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v4 >= *(a1 + 36))
    {
      if (v3 <= &v7 && v3 + 24 * v4 > &v7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v3 + 24 * *(a1 + 32));
    result = v7;
    v5[1].n128_u64[0] = v8;
    *v5 = result;
    ++*(a1 + 32);
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 16);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::TargetLegalizerInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TargetLegalizerInterface]";
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>(uint64_t a1)
{
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a1 = v90;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v79 = v1;
    v91 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v1 = v79;
    a1 = v91;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v80 = v1;
    v92 = a1;
    v69 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v2 = v69;
    v1 = v80;
    a1 = v92;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v81 = v1;
    v93 = a1;
    v60 = v3;
    v70 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v60;
    v2 = v70;
    v1 = v81;
    a1 = v93;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v82 = v1;
    v94 = a1;
    v61 = v3;
    v71 = v2;
    v52 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v52;
    v3 = v61;
    v2 = v71;
    v1 = v82;
    a1 = v94;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v83 = v1;
    v95 = a1;
    v62 = v3;
    v72 = v2;
    v53 = v4;
    v45 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v45;
    v4 = v53;
    v3 = v62;
    v2 = v72;
    v1 = v83;
    a1 = v95;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v84 = v1;
    v96 = a1;
    v63 = v3;
    v73 = v2;
    v54 = v4;
    v39 = v6;
    v46 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v6 = v39;
    v5 = v46;
    v4 = v54;
    v3 = v63;
    v2 = v73;
    v1 = v84;
    a1 = v96;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v85 = v1;
    v97 = a1;
    v64 = v3;
    v74 = v2;
    v55 = v4;
    v40 = v6;
    v47 = v5;
    v34 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v7 = v34;
    v6 = v40;
    v5 = v47;
    v4 = v55;
    v3 = v64;
    v2 = v74;
    v1 = v85;
    a1 = v97;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v86 = v1;
    v98 = a1;
    v65 = v3;
    v75 = v2;
    v56 = v4;
    v41 = v6;
    v48 = v5;
    v30 = v8;
    v35 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v8 = v30;
    v7 = v35;
    v6 = v41;
    v5 = v48;
    v4 = v56;
    v3 = v65;
    v2 = v75;
    v1 = v86;
    a1 = v98;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v87 = v1;
    v99 = a1;
    v66 = v3;
    v76 = v2;
    v57 = v4;
    v42 = v6;
    v49 = v5;
    v31 = v8;
    v36 = v7;
    v27 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v9 = v27;
    v8 = v31;
    v7 = v36;
    v6 = v42;
    v5 = v49;
    v4 = v57;
    v3 = v66;
    v2 = v76;
    v1 = v87;
    a1 = v99;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v89 = v1;
    v101 = a1;
    v68 = v3;
    v78 = v2;
    v59 = v4;
    v44 = v6;
    v51 = v5;
    v33 = v8;
    v38 = v7;
    v26 = v10;
    v29 = v9;
    v24 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v11 = v24;
    v10 = v26;
    v9 = v29;
    v8 = v33;
    v7 = v38;
    v6 = v44;
    v5 = v51;
    v4 = v59;
    v3 = v68;
    v2 = v78;
    v1 = v89;
    a1 = v101;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneRegion<Empty>]";
  v6 = 81;
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroResults<Empty>]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroOperands<Empty>]";
  v6 = 84;
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

const char *llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolOpInterface::Trait<Empty>]";
  v6 = 87;
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

const char *llvm::getTypeName<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallableOpInterface::Trait<Empty>]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface::Trait<Empty>]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::RegionOp<Empty>]";
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

const char *llvm::getTypeName<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TargetLegalizerInterface::Trait<Empty>]";
  v6 = 94;
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

const char *llvm::getTypeName<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FormableRegionOpInterface::Trait<Empty>]";
  v6 = 95;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 16);
  Value = mlir::StringAttr::getValue(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, Value, v9, *(*(*(a2 + 48) + 96) + 8), *(*(*(a2 + 48) + 96) + 40));
}

BOOL mlir::Op<mlir::mpsx::ANEOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::ANEOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::ANEOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::ANEOp>,mlir::OpTrait::RegionOp<mlir::mpsx::ANEOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::ANEOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::ANEOp>>(a1, a2))
  {
    v5 = a1;
    return mlir::mpsx::ANEOp::verify(&v5);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::ANEOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::ANEOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::ANEOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::ANEOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::ANEOp>,mlir::OpTrait::RegionOp<mlir::mpsx::ANEOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::ANEOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::ANEOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v9 = a1, mlir::mpsx::ANEOp::verifyInvariantsImpl(&v9)) && mlir::detail::SymbolOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyTrait(a1, v6))
  {
    v7 = mlir::function_interface_impl::verifyTrait<mlir::mpsx::ANEOp>(a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyTrait(mlir::Operation *a1, mlir::Operation *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = a1;
  if (!mlir::detail::verifySymbol(a1, a2))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  if (!v3)
  {
    return 1;
  }

  ParentOp = mlir::Block::getParentOp(v3);
  if (!ParentOp)
  {
    return 1;
  }

  v5 = ParentOp;
  {
  }

  if (((*(**(v5 + 48) + 32))(*(v5 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

  v16 = "symbol's parent must have the SymbolTable trait";
  v17 = 259;
  mlir::OpState::emitOpError(&v18, &v16, v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::mpsx::ANEOp>(mlir::Operation *a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v119 = a1;
  ArgAttrsAttr = mlir::mpsx::ANEOp::getArgAttrsAttr(&v119);
  if (ArgAttrsAttr)
  {
    v122[0] = mlir::mpsx::ANEOp::getFunctionType(&v119);
    mlir::FunctionType::getInputs(v122);
    v2 = v1;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v3 = v2;
    if (v4 != v2)
    {
      v117 = 257;
      mlir::OpState::emitOpError(&v119, v116, v122);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v122, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      v31 = v30;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v31)
      {
        v33 = *(v31 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v32;
        v34 = *(v31 + 32);
        if (v34 >= *(v31 + 36))
        {
          if (v33 > &v120 || v33 + 24 * v34 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v33 + 24 * *(v31 + 32);
        v36 = v120;
        *(v35 + 16) = v121;
        *v35 = v36;
        ++*(v31 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v31, ", but expected ");
      if (*v37)
      {
        v38 = *(v37 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v3;
        v39 = *(v37 + 32);
        if (v39 >= *(v37 + 36))
        {
          if (v38 > &v120 || v38 + 24 * v39 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v38 + 24 * *(v37 + 32);
        v41 = v120;
        *(v40 + 16) = v121;
        *v40 = v41;
        ++*(v37 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 == 1)
      {
        if (v129 != &v130)
        {
          free(v129);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v128;
          v44 = __p;
          if (v128 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v128 = v42;
          operator delete(v44);
        }

        v45 = v125;
        if (!v125)
        {
          goto LABEL_174;
        }

        v46 = v126;
        v47 = v125;
        if (v126 == v125)
        {
          goto LABEL_173;
        }

        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        goto LABEL_172;
      }

      return v29;
    }

    if (v2)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v5);
        if (!v6)
        {
          v115 = 0;
LABEL_133:
          v117 = 257;
          mlir::OpState::emitOpError(&v119, v116, v122);
          v87 = v86;
          Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v87)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v120, *(Value + 8 * v5));
            v89 = *(v87 + 24);
            v90 = *(v87 + 32);
            if (v90 >= *(v87 + 36))
            {
              if (v89 > &v120 || v89 + 24 * v90 <= &v120)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v91 = v89 + 24 * *(v87 + 32);
            v92 = v120;
            *(v91 + 16) = v121;
            *v91 = v92;
            ++*(v87 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
          if (v122[0])
          {
            mlir::InFlightDiagnostic::report(v122);
          }

          if (v130 != 1)
          {
            return v29;
          }

          if (v129 != &v130)
          {
            free(v129);
          }

          v94 = __p;
          if (__p)
          {
            v95 = v128;
            v96 = __p;
            if (v128 != __p)
            {
              do
              {
                v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
              }

              while (v95 != v94);
              v96 = __p;
            }

            v128 = v94;
            operator delete(v96);
          }

          v45 = v125;
          if (!v125)
          {
            goto LABEL_174;
          }

          v97 = v126;
          v47 = v125;
          if (v126 == v125)
          {
            goto LABEL_173;
          }

          do
          {
            v99 = *--v97;
            v98 = v99;
            *v97 = 0;
            if (v99)
            {
              MEMORY[0x259C63150](v98, 0x1000C8077774924);
            }
          }

          while (v97 != v45);
          goto LABEL_172;
        }

        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = 0;
        }

        v115 = v6;
        if (!v6)
        {
          goto LABEL_133;
        }

        v7 = mlir::DictionaryAttr::begin(&v115);
        v8 = mlir::DictionaryAttr::end(&v115);
        if (v7 != v8)
        {
          break;
        }

LABEL_18:
        if (++v5 == v2)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
      while (1)
      {
        v120 = *v7;
        v122[0] = mlir::NamedAttribute::getName(&v120);
        v10 = mlir::StringAttr::getValue(v122);
        if (!v11)
        {
          break;
        }

        v12 = v10;
        v13 = memchr(v10, 46, v11);
        if (!v13 || v13 - v12 == -1)
        {
          break;
        }

        NameDialect = mlir::NamedAttribute::getNameDialect(&v120);
        if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v119, 0, v5, v120, *(&v120 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v7 == v9)
        {
          goto LABEL_18;
        }
      }

      v116[0] = "arguments may only have dialect attributes";
      v117 = 259;
      mlir::OpState::emitOpError(&v119, v116, v122);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 != 1)
      {
        return v29;
      }

      if (v129 != &v130)
      {
        free(v129);
      }

      v68 = __p;
      if (__p)
      {
        v69 = v128;
        v70 = __p;
        if (v128 != __p)
        {
          do
          {
            v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
          }

          while (v69 != v68);
          v70 = __p;
        }

        v128 = v68;
        operator delete(v70);
      }

      v45 = v125;
      if (!v125)
      {
        goto LABEL_174;
      }

      v71 = v126;
      v47 = v125;
      if (v126 == v125)
      {
        goto LABEL_173;
      }

      do
      {
        v73 = *--v71;
        v72 = v73;
        *v71 = 0;
        if (v73)
        {
          MEMORY[0x259C63150](v72, 0x1000C8077774924);
        }
      }

      while (v71 != v45);
      goto LABEL_172;
    }
  }

LABEL_19:
  ArgAttrsAttr = mlir::mpsx::ANEOp::getResAttrsAttr(&v119);
  if (ArgAttrsAttr)
  {
    v122[0] = mlir::mpsx::ANEOp::getFunctionType(&v119);
    mlir::FunctionType::getResults(v122);
    v16 = v15;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v17 = v16;
    if (v18 != v16)
    {
      v117 = 257;
      mlir::OpState::emitOpError(&v119, v116, v122);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v122, "expects result attribute array to have the same number of elements as the number of function results, got ");
      v51 = v50;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v51)
      {
        v53 = *(v51 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v52;
        v54 = *(v51 + 32);
        if (v54 >= *(v51 + 36))
        {
          if (v53 > &v120 || v53 + 24 * v54 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v55 = v53 + 24 * *(v51 + 32);
        v56 = v120;
        *(v55 + 16) = v121;
        *v55 = v56;
        ++*(v51 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v51, ", but expected ");
      if (*v57)
      {
        v58 = *(v57 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v17;
        v59 = *(v57 + 32);
        if (v59 >= *(v57 + 36))
        {
          if (v58 > &v120 || v58 + 24 * v59 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v60 = v58 + 24 * *(v57 + 32);
        v61 = v120;
        *(v60 + 16) = v121;
        *v60 = v61;
        ++*(v57 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 == 1)
      {
        if (v129 != &v130)
        {
          free(v129);
        }

        v62 = __p;
        if (__p)
        {
          v63 = v128;
          v64 = __p;
          if (v128 != __p)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = __p;
          }

          v128 = v62;
          operator delete(v64);
        }

        v45 = v125;
        if (!v125)
        {
          goto LABEL_174;
        }

        v65 = v126;
        v47 = v125;
        if (v126 == v125)
        {
          goto LABEL_173;
        }

        do
        {
          v67 = *--v65;
          v66 = v67;
          *v65 = 0;
          if (v67)
          {
            MEMORY[0x259C63150](v66, 0x1000C8077774924);
          }
        }

        while (v65 != v45);
        goto LABEL_172;
      }

      return v29;
    }

    if (v16)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v19);
        if (!v20)
        {
          v115 = 0;
LABEL_153:
          v117 = 257;
          mlir::OpState::emitOpError(&v119, v116, v122);
          v101 = v100;
          v102 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v101)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v120, *(v102 + 8 * v19));
            v103 = *(v101 + 24);
            v104 = *(v101 + 32);
            if (v104 >= *(v101 + 36))
            {
              if (v103 > &v120 || v103 + 24 * v104 <= &v120)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v105 = v103 + 24 * *(v101 + 32);
            v106 = v120;
            *(v105 + 16) = v121;
            *v105 = v106;
            ++*(v101 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
          if (v122[0])
          {
            mlir::InFlightDiagnostic::report(v122);
          }

          if (v130 != 1)
          {
            return v29;
          }

          if (v129 != &v130)
          {
            free(v129);
          }

          v108 = __p;
          if (__p)
          {
            v109 = v128;
            v110 = __p;
            if (v128 != __p)
            {
              do
              {
                v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
              }

              while (v109 != v108);
              v110 = __p;
            }

            v128 = v108;
            operator delete(v110);
          }

          v45 = v125;
          if (!v125)
          {
            goto LABEL_174;
          }

          v111 = v126;
          v47 = v125;
          if (v126 == v125)
          {
            goto LABEL_173;
          }

          do
          {
            v113 = *--v111;
            v112 = v113;
            *v111 = 0;
            if (v113)
            {
              MEMORY[0x259C63150](v112, 0x1000C8077774924);
            }
          }

          while (v111 != v45);
          goto LABEL_172;
        }

        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v20 = 0;
        }

        v115 = v20;
        if (!v20)
        {
          goto LABEL_153;
        }

        v21 = mlir::DictionaryAttr::begin(&v115);
        v22 = mlir::DictionaryAttr::end(&v115);
        if (v21 != v22)
        {
          break;
        }

LABEL_36:
        if (++v19 == v16)
        {
          goto LABEL_37;
        }
      }

      v23 = v22;
      while (1)
      {
        v120 = *v21;
        v122[0] = mlir::NamedAttribute::getName(&v120);
        v24 = mlir::StringAttr::getValue(v122);
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = memchr(v24, 46, v25);
        if (!v27 || v27 - v26 == -1)
        {
          break;
        }

        v28 = mlir::NamedAttribute::getNameDialect(&v120);
        if (v28 && ((*(*v28 + 88))(v28, v119, 0, v19, v120, *(&v120 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v21 == v23)
        {
          goto LABEL_36;
        }
      }

      v116[0] = "results may only have dialect attributes";
      v117 = 259;
      mlir::OpState::emitOpError(&v119, v116, v122);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 != 1)
      {
        return v29;
      }

      if (v129 != &v130)
      {
        free(v129);
      }

      v80 = __p;
      if (__p)
      {
        v81 = v128;
        v82 = __p;
        if (v128 != __p)
        {
          do
          {
            v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
          }

          while (v81 != v80);
          v82 = __p;
        }

        v128 = v80;
        operator delete(v82);
      }

      v45 = v125;
      if (!v125)
      {
        goto LABEL_174;
      }

      v83 = v126;
      v47 = v125;
      if (v126 == v125)
      {
        goto LABEL_173;
      }

      do
      {
        v85 = *--v83;
        v84 = v85;
        *v83 = 0;
        if (v85)
        {
          MEMORY[0x259C63150](v84, 0x1000C8077774924);
        }
      }

      while (v83 != v45);
      goto LABEL_172;
    }
  }

LABEL_37:
  if ((*(v119 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyBody(&v119);
  }

  v116[0] = "expects one region";
  v117 = 259;
  mlir::OpState::emitOpError(&v119, v116, v122);
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
  if (v122[0])
  {
    mlir::InFlightDiagnostic::report(v122);
  }

  if (v130 == 1)
  {
    if (v129 != &v130)
    {
      free(v129);
    }

    v74 = __p;
    if (__p)
    {
      v75 = v128;
      v76 = __p;
      if (v128 != __p)
      {
        do
        {
          v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
        }

        while (v75 != v74);
        v76 = __p;
      }

      v128 = v74;
      operator delete(v76);
    }

    v45 = v125;
    if (!v125)
    {
      goto LABEL_174;
    }

    v77 = v126;
    v47 = v125;
    if (v126 == v125)
    {
LABEL_173:
      v126 = v45;
      operator delete(v47);
LABEL_174:
      if (v123 != &v124)
      {
        free(v123);
      }

      return v29;
    }

    do
    {
      v79 = *--v77;
      v78 = v79;
      *v77 = 0;
      if (v79)
      {
        MEMORY[0x259C63150](v78, 0x1000C8077774924);
      }
    }

    while (v77 != v45);
LABEL_172:
    v47 = v125;
    goto LABEL_173;
  }

  return v29;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.buffer_to_tensor", 0x15, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286864B80;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::BufferToTensorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286865CE0;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::BufferToTensorOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::mpsx::BufferToTensorOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::TypeRange::TypeRange(v17, v18, v19);
    mlir::TypeRange::TypeRange(v16, *a11, *(a11 + 8));
    v21[0] = &unk_286865CE0;
    v22 = v21;
    if (v22 == v21)
    {
      (*(*v22 + 32))(v22);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v21[0] = "mpsx.buffer_to_tensor";
    v21[1] = 21;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286865CE0;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::mpsx::BufferToTensorOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16[0] = a1;
  v16[1] = v8;
  v16[2] = v9;
  v17 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v12, v11);
  v18[2] = a2;
  v18[3] = a3;
  v13 = mlir::mpsx::BufferToTensorOp::fold(v16);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<Empty>]";
  v6 = 110;
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

const char *llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneOperand<Empty>]";
  v6 = 82;
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

uint64_t mlir::Op<mlir::mpsx::BufferToTensorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::mpsx::BufferToTensorOp::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::mpsx::TensorToBufferOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.cpu", 8, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::CPUOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286864C48;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::CPUOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getArgumentTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v3);
  return mlir::FunctionType::getInputs(&FunctionType);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getResultTypes(uint64_t a1, mlir::Operation *a2)
{
  v3 = a2;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v3);
  return mlir::FunctionType::getResults(&FunctionType);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::cloneTypeWith(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  FunctionType = mlir::mpsx::CPUOp::getFunctionType(&v11);
  return mlir::FunctionType::clone(&FunctionType, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::CPUOp>::verifyBody(mlir::Operation **a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v1 = (((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  FunctionType = mlir::mpsx::CPUOp::getFunctionType(a1);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v5 = v4;
  v6 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7 + 48;
  v8 = *(v7 + 48);
  if (((*(v9 + 8) - v8) >> 3) != v4)
  {
    v43[0] = "entry block must have ";
    v44 = 259;
    mlir::OpState::emitOpError(a1, v43, &FunctionType);
    if (FunctionType)
    {
      LODWORD(v45) = 5;
      *(&v45 + 1) = v5;
      if (v50 >= v51)
      {
        if (v49 > &v45 || v49 + 24 * v50 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v49 + 24 * v50;
      v14 = v45;
      *(v13 + 2) = v46;
      *v13 = v14;
      ++v50;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&FunctionType, " arguments to match function signature");
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (FunctionType)
    {
      mlir::InFlightDiagnostic::report(&FunctionType);
    }

    if (v58 != 1)
    {
      return v12;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v56;
      v18 = __p;
      if (v56 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v56 = v16;
      operator delete(v18);
    }

    v19 = v53;
    if (v53)
    {
      v20 = v54;
      v21 = v53;
      if (v54 != v53)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v53;
      }

      v54 = v19;
      operator delete(v21);
    }

    v41 = v49;
    if (v49 == v52)
    {
      return v12;
    }

LABEL_57:
    free(v41);
    return v12;
  }

  if (!v4)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(v8 + 8 * v10) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v11)
    {
      break;
    }

    ++v10;
    ++Inputs;
    if (v4 == v10)
    {
      return 1;
    }
  }

  v24 = Inputs;
  v43[0] = "type of entry block argument #";
  v44 = 259;
  mlir::OpState::emitOpError(a1, v43, &FunctionType);
  if (FunctionType)
  {
    LODWORD(v45) = 5;
    *(&v45 + 1) = v10;
    if (v50 >= v51)
    {
      if (v49 > &v45 || v49 + 24 * v50 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v49 + 24 * v50;
    v26 = v45;
    *(v25 + 2) = v46;
    *v25 = v26;
    ++v50;
    if (FunctionType)
    {
      mlir::Diagnostic::operator<<(&v48, 40);
      if (FunctionType)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v45, v11);
        if (v50 >= v51)
        {
          if (v49 > &v45 || v49 + 24 * v50 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v49 + 24 * v50;
        v28 = v45;
        *(v27 + 2) = v46;
        *v27 = v28;
        ++v50;
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&FunctionType, ") must match the type of the corresponding argument in ");
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v29, "function signature(");
  mlir::InFlightDiagnostic::append<mlir::Type const&>(v30, v24);
  if (*v31)
  {
    v32 = v31;
    mlir::Diagnostic::operator<<((v31 + 1), 41);
    v31 = v32;
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (FunctionType)
  {
    mlir::InFlightDiagnostic::report(&FunctionType);
  }

  if (v58)
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
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
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
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v37 != v36);
        v38 = v53;
      }

      v54 = v36;
      operator delete(v38);
    }

    v41 = v49;
    if (v49 != v52)
    {
      goto LABEL_57;
    }
  }

  return v12;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::legalizeBody;
  v2[1] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::legalizeRegionBody;
  v2[2] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getFunctionType;
  v2[3] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setFunctionType;
  v2[4] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getBody;
  v2[5] = mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getBodyBlock;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a2 + 48) + 96) + 8);
  v5 = mlir::TypeAttr::get(a3);

  mlir::Operation::setAttr(a2, v4, v5);
}

uint64_t mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::getBodyBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    return v2 - 8;
  }

  else
  {
    return 0;
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::isRegionProfitable;
  v2[1] = mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::CPUOp>::build;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mpsx::CPUOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, Value, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::mpsx::CPUOp>,mlir::OpTrait::ZeroResults<mlir::mpsx::CPUOp>,mlir::OpTrait::ZeroSuccessors<mlir::mpsx::CPUOp>,mlir::OpTrait::ZeroOperands<mlir::mpsx::CPUOp>,mlir::OpTrait::OpInvariants<mlir::mpsx::CPUOp>,mlir::SymbolOpInterface::Trait<mlir::mpsx::CPUOp>,mlir::CallableOpInterface::Trait<mlir::mpsx::CPUOp>,mlir::FunctionOpInterface::Trait<mlir::mpsx::CPUOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::mpsx::CPUOp>,mlir::OpTrait::RegionOp<mlir::mpsx::CPUOp>,mlir::TargetLegalizerInterface::Trait<mlir::mpsx::CPUOp>,mlir::FormableRegionOpInterface::Trait<mlir::mpsx::CPUOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v9 = a1, mlir::mpsx::CPUOp::verifyInvariantsImpl(&v9)) && mlir::detail::SymbolOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyTrait(a1, v6))
  {
    v7 = mlir::function_interface_impl::verifyTrait<mlir::mpsx::CPUOp>(a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::mpsx::CPUOp>(mlir::Operation *a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v119 = a1;
  ArgAttrsAttr = mlir::mpsx::CPUOp::getArgAttrsAttr(&v119);
  if (ArgAttrsAttr)
  {
    v122[0] = mlir::mpsx::CPUOp::getFunctionType(&v119);
    mlir::FunctionType::getInputs(v122);
    v2 = v1;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v3 = v2;
    if (v4 != v2)
    {
      v117 = 257;
      mlir::OpState::emitOpError(&v119, v116, v122);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v122, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      v31 = v30;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v31)
      {
        v33 = *(v31 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v32;
        v34 = *(v31 + 32);
        if (v34 >= *(v31 + 36))
        {
          if (v33 > &v120 || v33 + 24 * v34 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v33 + 24 * *(v31 + 32);
        v36 = v120;
        *(v35 + 16) = v121;
        *v35 = v36;
        ++*(v31 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v31, ", but expected ");
      if (*v37)
      {
        v38 = *(v37 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v3;
        v39 = *(v37 + 32);
        if (v39 >= *(v37 + 36))
        {
          if (v38 > &v120 || v38 + 24 * v39 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v38 + 24 * *(v37 + 32);
        v41 = v120;
        *(v40 + 16) = v121;
        *v40 = v41;
        ++*(v37 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 == 1)
      {
        if (v129 != &v130)
        {
          free(v129);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v128;
          v44 = __p;
          if (v128 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v128 = v42;
          operator delete(v44);
        }

        v45 = v125;
        if (!v125)
        {
          goto LABEL_174;
        }

        v46 = v126;
        v47 = v125;
        if (v126 == v125)
        {
          goto LABEL_173;
        }

        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        goto LABEL_172;
      }

      return v29;
    }

    if (v2)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v5);
        if (!v6)
        {
          v115 = 0;
LABEL_133:
          v117 = 257;
          mlir::OpState::emitOpError(&v119, v116, v122);
          v87 = v86;
          Value = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v87)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v120, *(Value + 8 * v5));
            v89 = *(v87 + 24);
            v90 = *(v87 + 32);
            if (v90 >= *(v87 + 36))
            {
              if (v89 > &v120 || v89 + 24 * v90 <= &v120)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v91 = v89 + 24 * *(v87 + 32);
            v92 = v120;
            *(v91 + 16) = v121;
            *v91 = v92;
            ++*(v87 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
          if (v122[0])
          {
            mlir::InFlightDiagnostic::report(v122);
          }

          if (v130 != 1)
          {
            return v29;
          }

          if (v129 != &v130)
          {
            free(v129);
          }

          v94 = __p;
          if (__p)
          {
            v95 = v128;
            v96 = __p;
            if (v128 != __p)
            {
              do
              {
                v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
              }

              while (v95 != v94);
              v96 = __p;
            }

            v128 = v94;
            operator delete(v96);
          }

          v45 = v125;
          if (!v125)
          {
            goto LABEL_174;
          }

          v97 = v126;
          v47 = v125;
          if (v126 == v125)
          {
            goto LABEL_173;
          }

          do
          {
            v99 = *--v97;
            v98 = v99;
            *v97 = 0;
            if (v99)
            {
              MEMORY[0x259C63150](v98, 0x1000C8077774924);
            }
          }

          while (v97 != v45);
          goto LABEL_172;
        }

        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = 0;
        }

        v115 = v6;
        if (!v6)
        {
          goto LABEL_133;
        }

        v7 = mlir::DictionaryAttr::begin(&v115);
        v8 = mlir::DictionaryAttr::end(&v115);
        if (v7 != v8)
        {
          break;
        }

LABEL_18:
        if (++v5 == v2)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
      while (1)
      {
        v120 = *v7;
        v122[0] = mlir::NamedAttribute::getName(&v120);
        v10 = mlir::StringAttr::getValue(v122);
        if (!v11)
        {
          break;
        }

        v12 = v10;
        v13 = memchr(v10, 46, v11);
        if (!v13 || v13 - v12 == -1)
        {
          break;
        }

        NameDialect = mlir::NamedAttribute::getNameDialect(&v120);
        if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v119, 0, v5, v120, *(&v120 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v7 == v9)
        {
          goto LABEL_18;
        }
      }

      v116[0] = "arguments may only have dialect attributes";
      v117 = 259;
      mlir::OpState::emitOpError(&v119, v116, v122);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 != 1)
      {
        return v29;
      }

      if (v129 != &v130)
      {
        free(v129);
      }

      v68 = __p;
      if (__p)
      {
        v69 = v128;
        v70 = __p;
        if (v128 != __p)
        {
          do
          {
            v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
          }

          while (v69 != v68);
          v70 = __p;
        }

        v128 = v68;
        operator delete(v70);
      }

      v45 = v125;
      if (!v125)
      {
        goto LABEL_174;
      }

      v71 = v126;
      v47 = v125;
      if (v126 == v125)
      {
        goto LABEL_173;
      }

      do
      {
        v73 = *--v71;
        v72 = v73;
        *v71 = 0;
        if (v73)
        {
          MEMORY[0x259C63150](v72, 0x1000C8077774924);
        }
      }

      while (v71 != v45);
      goto LABEL_172;
    }
  }

LABEL_19:
  ArgAttrsAttr = mlir::mpsx::CPUOp::getResAttrsAttr(&v119);
  if (ArgAttrsAttr)
  {
    v122[0] = mlir::mpsx::CPUOp::getFunctionType(&v119);
    mlir::FunctionType::getResults(v122);
    v16 = v15;
    mlir::ArrayAttr::getValue(&ArgAttrsAttr);
    v17 = v16;
    if (v18 != v16)
    {
      v117 = 257;
      mlir::OpState::emitOpError(&v119, v116, v122);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v122, "expects result attribute array to have the same number of elements as the number of function results, got ");
      v51 = v50;
      mlir::ArrayAttr::getValue(&ArgAttrsAttr);
      if (*v51)
      {
        v53 = *(v51 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v52;
        v54 = *(v51 + 32);
        if (v54 >= *(v51 + 36))
        {
          if (v53 > &v120 || v53 + 24 * v54 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v55 = v53 + 24 * *(v51 + 32);
        v56 = v120;
        *(v55 + 16) = v121;
        *v55 = v56;
        ++*(v51 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v51, ", but expected ");
      if (*v57)
      {
        v58 = *(v57 + 24);
        LODWORD(v120) = 5;
        *(&v120 + 1) = v17;
        v59 = *(v57 + 32);
        if (v59 >= *(v57 + 36))
        {
          if (v58 > &v120 || v58 + 24 * v59 <= &v120)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v60 = v58 + 24 * *(v57 + 32);
        v61 = v120;
        *(v60 + 16) = v121;
        *v60 = v61;
        ++*(v57 + 32);
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 == 1)
      {
        if (v129 != &v130)
        {
          free(v129);
        }

        v62 = __p;
        if (__p)
        {
          v63 = v128;
          v64 = __p;
          if (v128 != __p)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = __p;
          }

          v128 = v62;
          operator delete(v64);
        }

        v45 = v125;
        if (!v125)
        {
          goto LABEL_174;
        }

        v65 = v126;
        v47 = v125;
        if (v126 == v125)
        {
          goto LABEL_173;
        }

        do
        {
          v67 = *--v65;
          v66 = v67;
          *v65 = 0;
          if (v67)
          {
            MEMORY[0x259C63150](v66, 0x1000C8077774924);
          }
        }

        while (v65 != v45);
        goto LABEL_172;
      }

      return v29;
    }

    if (v16)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(mlir::ArrayAttr::getValue(&ArgAttrsAttr) + 8 * v19);
        if (!v20)
        {
          v115 = 0;
LABEL_153:
          v117 = 257;
          mlir::OpState::emitOpError(&v119, v116, v122);
          v101 = v100;
          v102 = mlir::ArrayAttr::getValue(&ArgAttrsAttr);
          if (*v101)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v120, *(v102 + 8 * v19));
            v103 = *(v101 + 24);
            v104 = *(v101 + 32);
            if (v104 >= *(v101 + 36))
            {
              if (v103 > &v120 || v103 + 24 * v104 <= &v120)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v105 = v103 + 24 * *(v101 + 32);
            v106 = v120;
            *(v105 + 16) = v121;
            *v105 = v106;
            ++*(v101 + 32);
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
          if (v122[0])
          {
            mlir::InFlightDiagnostic::report(v122);
          }

          if (v130 != 1)
          {
            return v29;
          }

          if (v129 != &v130)
          {
            free(v129);
          }

          v108 = __p;
          if (__p)
          {
            v109 = v128;
            v110 = __p;
            if (v128 != __p)
            {
              do
              {
                v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
              }

              while (v109 != v108);
              v110 = __p;
            }

            v128 = v108;
            operator delete(v110);
          }

          v45 = v125;
          if (!v125)
          {
            goto LABEL_174;
          }

          v111 = v126;
          v47 = v125;
          if (v126 == v125)
          {
            goto LABEL_173;
          }

          do
          {
            v113 = *--v111;
            v112 = v113;
            *v111 = 0;
            if (v113)
            {
              MEMORY[0x259C63150](v112, 0x1000C8077774924);
            }
          }

          while (v111 != v45);
          goto LABEL_172;
        }

        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v20 = 0;
        }

        v115 = v20;
        if (!v20)
        {
          goto LABEL_153;
        }

        v21 = mlir::DictionaryAttr::begin(&v115);
        v22 = mlir::DictionaryAttr::end(&v115);
        if (v21 != v22)
        {
          break;
        }

LABEL_36:
        if (++v19 == v16)
        {
          goto LABEL_37;
        }
      }

      v23 = v22;
      while (1)
      {
        v120 = *v21;
        v122[0] = mlir::NamedAttribute::getName(&v120);
        v24 = mlir::StringAttr::getValue(v122);
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = memchr(v24, 46, v25);
        if (!v27 || v27 - v26 == -1)
        {
          break;
        }

        v28 = mlir::NamedAttribute::getNameDialect(&v120);
        if (v28 && ((*(*v28 + 88))(v28, v119, 0, v19, v120, *(&v120 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v21 == v23)
        {
          goto LABEL_36;
        }
      }

      v116[0] = "results may only have dialect attributes";
      v117 = 259;
      mlir::OpState::emitOpError(&v119, v116, v122);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
      if (v122[0])
      {
        mlir::InFlightDiagnostic::report(v122);
      }

      if (v130 != 1)
      {
        return v29;
      }

      if (v129 != &v130)
      {
        free(v129);
      }

      v80 = __p;
      if (__p)
      {
        v81 = v128;
        v82 = __p;
        if (v128 != __p)
        {
          do
          {
            v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
          }

          while (v81 != v80);
          v82 = __p;
        }

        v128 = v80;
        operator delete(v82);
      }

      v45 = v125;
      if (!v125)
      {
        goto LABEL_174;
      }

      v83 = v126;
      v47 = v125;
      if (v126 == v125)
      {
        goto LABEL_173;
      }

      do
      {
        v85 = *--v83;
        v84 = v85;
        *v83 = 0;
        if (v85)
        {
          MEMORY[0x259C63150](v84, 0x1000C8077774924);
        }
      }

      while (v83 != v45);
      goto LABEL_172;
    }
  }

LABEL_37:
  if ((*(v119 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::mpsx::CPUOp>::verifyBody(&v119);
  }

  v116[0] = "expects one region";
  v117 = 259;
  mlir::OpState::emitOpError(&v119, v116, v122);
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v122);
  if (v122[0])
  {
    mlir::InFlightDiagnostic::report(v122);
  }

  if (v130 == 1)
  {
    if (v129 != &v130)
    {
      free(v129);
    }

    v74 = __p;
    if (__p)
    {
      v75 = v128;
      v76 = __p;
      if (v128 != __p)
      {
        do
        {
          v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
        }

        while (v75 != v74);
        v76 = __p;
      }

      v128 = v74;
      operator delete(v76);
    }

    v45 = v125;
    if (!v125)
    {
      goto LABEL_174;
    }

    v77 = v126;
    v47 = v125;
    if (v126 == v125)
    {
LABEL_173:
      v126 = v45;
      operator delete(v47);
LABEL_174:
      if (v123 != &v124)
      {
        free(v123);
      }

      return v29;
    }

    do
    {
      v79 = *--v77;
      v78 = v79;
      *v77 = 0;
      if (v79)
      {
        MEMORY[0x259C63150](v78, 0x1000C8077774924);
      }
    }

    while (v77 != v45);
LABEL_172:
    v47 = v125;
    goto LABEL_173;
  }

  return v29;
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.deinterleave", 0x11, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::DeinterleaveOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286864D10;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::DeinterleaveOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286865CE0;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::DeinterleaveOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286865CE0;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::DeinterleaveOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::mpsx::DeinterleaveOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::TypeRange::TypeRange(v17, v18, v19);
    mlir::TypeRange::TypeRange(v16, *a11, *(a11 + 8));
    v21[0] = &unk_286865CE0;
    v22 = v21;
    if (v22 == v21)
    {
      (*(*v22 + 32))(v22);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v21[0] = "mpsx.deinterleave";
    v21[1] = 17;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mpsx::DeinterleaveOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, mlir::mpsx::DeinterleaveOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    return mlir::mpsx::DeinterleaveOp::verify(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mpsx.fp_to_int_clamped", 0x16, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::FPToIntClampedOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286864DD8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::FPToIntClampedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FPToIntClampedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::getEffects;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286865CE0;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mpsx::FPToIntClampedOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::mpsx::FPToIntClampedOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::TypeRange::TypeRange(v17, v18, v19);
    mlir::TypeRange::TypeRange(v16, *a11, *(a11 + 8));
    v21[0] = &unk_286865CE0;
    v22 = v21;
    if (v22 == v21)
    {
      (*(*v22 + 32))(v22);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v22)
      {
        (*(*v22 + 40))(v22);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v21[0] = "mpsx.fp_to_int_clamped";
    v21[1] = 22;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::FPToIntClampedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v6[0] = &unk_286865CE0;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v77;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v67 = v1;
    v78 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v1 = v67;
    a1 = v78;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v68 = v1;
    v79 = a1;
    v58 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v58;
    v1 = v68;
    a1 = v79;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v69 = v1;
    v80 = a1;
    v50 = v3;
    v59 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v50;
    v2 = v59;
    v1 = v69;
    a1 = v80;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v70 = v1;
    v81 = a1;
    v51 = v3;
    v60 = v2;
    v43 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v43;
    v3 = v51;
    v2 = v60;
    v1 = v70;
    a1 = v81;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v71 = v1;
    v82 = a1;
    v52 = v3;
    v61 = v2;
    v44 = v4;
    v37 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v37;
    v4 = v44;
    v3 = v52;
    v2 = v61;
    v1 = v71;
    a1 = v82;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v72 = v1;
    v83 = a1;
    v53 = v3;
    v62 = v2;
    v45 = v4;
    v32 = v6;
    v38 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v6 = v32;
    v5 = v38;
    v4 = v45;
    v3 = v53;
    v2 = v62;
    v1 = v72;
    a1 = v83;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v73 = v1;
    v84 = a1;
    v54 = v3;
    v63 = v2;
    v46 = v4;
    v33 = v6;
    v39 = v5;
    v28 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v28;
    v6 = v33;
    v5 = v39;
    v4 = v46;
    v3 = v54;
    v2 = v63;
    v1 = v73;
    a1 = v84;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v74 = v1;
    v85 = a1;
    v55 = v3;
    v64 = v2;
    v47 = v4;
    v34 = v6;
    v40 = v5;
    v25 = v8;
    v29 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v25;
    v7 = v29;
    v6 = v34;
    v5 = v40;
    v4 = v47;
    v3 = v55;
    v2 = v64;
    v1 = v74;
    a1 = v85;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v76 = v1;
    v87 = a1;
    v57 = v3;
    v66 = v2;
    v49 = v4;
    v36 = v6;
    v42 = v5;
    v27 = v8;
    v31 = v7;
    v22 = v10;
    v24 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v22;
    v9 = v24;
    v8 = v27;
    v7 = v31;
    v6 = v36;
    v5 = v42;
    v4 = v49;
    v3 = v57;
    v2 = v66;
    v1 = v76;
    a1 = v87;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::FusionOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::FusionOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}