void mlir::mps::StencilOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "offsets", 7uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "paddingConstant", 0xFuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "paddingMode", 0xBuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "reductionMode", 0xDuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v11);
  }
}

BOOL mlir::mps::StencilOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "dilation_rates", 14, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v9, "explicit_padding", 16, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(v10, "offsets", 7, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "paddingConstant", 15, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(v12, "paddingMode", 11, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v13, "padding_style", 13, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(v14, "reductionMode", 13, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4) & 1) != 0)
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v72 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v51 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v51 + 8);
      v13 = *(v51 + 16);
      if (!v13)
      {
        goto LABEL_15;
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
      *&v56 = a1;
      *(&v56 + 1) = v21;
      Type = mlir::ElementsAttr::getType(&v56);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v56 = a1;
    Type = mlir::ElementsAttr::getType(&v56);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v50 = v22;
      v52 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v52;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v50 + 8);
      v25 = *(v50 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v59 = Type;
    v60 = v32;
    Shape = mlir::ShapedType::getShape(&v59);
    v71 = 4;
    if (v34 == 1 && *Shape == v71)
    {
      v53 = a1;
      v54[0] = mlir::DenseElementsAttr::getType(&v53);
      v54[1] = v35;
      ElementType = mlir::ShapedType::getElementType(v54);
      if (mlir::Type::isSignedInteger(&ElementType, 64))
      {
        return 1;
      }
    }
  }

  a4(&v59, a5);
  if (v59)
  {
    LODWORD(v56) = 3;
    *(&v56 + 1) = "attribute '";
    v57 = 11;
    if (v62 >= v63)
    {
      if (v61 > &v56 || v61 + 24 * v62 <= &v56)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v37 = v61 + 24 * v62;
    v38 = v56;
    *(v37 + 2) = v57;
    *v37 = v38;
    ++v62;
    if (v59)
    {
      v58 = 261;
      *&v56 = a2;
      *(&v56 + 1) = a3;
      mlir::Diagnostic::operator<<(&v60, &v56);
      if (v59)
      {
        LODWORD(v56) = 3;
        *(&v56 + 1) = "' failed to satisfy constraint: si64 elements attribute of shape {4}";
        v57 = 68;
        if (v62 >= v63)
        {
          if (v61 > &v56 || v61 + 24 * v62 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v39 = v61 + 24 * v62;
        v40 = v56;
        *(v39 + 2) = v57;
        *v39 = v40;
        ++v62;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v68;
      v43 = __p;
      if (v68 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v68 = v41;
      operator delete(v43);
    }

    v44 = v65;
    if (v65)
    {
      v45 = v66;
      v46 = v65;
      if (v66 != v65)
      {
        do
        {
          v48 = *--v45;
          v47 = v48;
          *v45 = 0;
          if (v48)
          {
            MEMORY[0x259C63150](v47, 0x1000C8077774924);
          }
        }

        while (v45 != v44);
        v46 = v65;
      }

      v66 = v44;
      operator delete(v46);
    }

    if (v61 != &v64)
    {
      free(v61);
    }
  }

  return v36;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: valid StencilPaddingMode";
        v22 = 56;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: valid ReductionMode";
        v22 = 51;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

BOOL mlir::mps::StencilOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::StencilPaddingModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::ReductionModeAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::StencilPaddingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::StencilPaddingModeAttr]";
  *(&v28 + 1) = 83;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::ReductionModeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::ReductionModeAttr]";
  *(&v28 + 1) = 78;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::mps::StencilOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::StencilOp::setPaddingConstant(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::StencilOp::setReductionMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 112) = result;
  return result;
}

uint64_t mlir::mps::StencilOp::setPaddingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::StencilOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::mps::StencilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a5;
  v29 = a4;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v28, 1uLL);
  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 16) = a6;
  }

  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 56) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *v21 = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 48) = a11;
  }

  if (a12)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 32) = a12;
  }

  if (a13)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 40) = a13;
  }

  v27 = *(a2 + 72);
  if (v27 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v27) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StencilOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v34 = a4;
  v35 = a3;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  if (a5)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 16) = a5;
  }

  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 56) = a6;
  }

  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *v20 = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 24) = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 48) = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 32) = a11;
  }

  if (a12)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 40) = a12;
  }

  __src = v40;
  v39 = 0x200000000;
  v26 = *a1;
  v27 = *a2;
  mlir::ValueRange::ValueRange(v37, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v30 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v36, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StencilOp::inferReturnTypes(v26, v27, 1, v37[0], v37[1], Dictionary, v30, v31, v36[0], v36[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v32 = v39;
  v33 = *(a2 + 72);
  if (v33 + v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v39)
  {
    memcpy((*(a2 + 64) + 8 * v33), __src, 8 * v39);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (__src != v40)
  {
    free(__src);
  }
}

unint64_t mlir::mps::StencilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a6;
  v32 = a5;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v31, 1uLL);
  if (a7)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 16) = a7;
  }

  if (a8)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 56) = a8;
  }

  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *v22 = a9;
  }

  if (a10)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a10;
  }

  if (a11)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 24) = a11;
  }

  if (a12)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 48) = a12;
  }

  if (a13)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 32) = a13;
  }

  if (a14)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 40) = a14;
  }

  v28 = *(a2 + 72);
  if (a4 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v29 = 0;
    v30 = *(a2 + 64) + 8 * v28;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v29);
      *(v30 + 8 * v29++) = result;
    }

    while (a4 != v29);
    LODWORD(v28) = *(a2 + 72);
  }

  *(a2 + 72) = v28 + a4;
  return result;
}

uint64_t mlir::mps::StencilOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  v46 = a5;
  v47 = a4;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  if (a6)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 16) = a6;
  }

  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 56) = a7;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a8;
  if (a9)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = a9;
  }

  F32Type = mlir::Builder::getF32Type(a1, v18);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a10);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = FloatAttr;
  v26 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v48 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v49 = v26;
  v54 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v55 = &v48;
  v53 = a11;
  v28 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v29 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v28 >> 47) ^ v28);
  v50 = &v53;
  v51 = &v54;
  v52 = &v53;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((v29 >> 47) ^ v29), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v52, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v50);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 48) = ParametricStorageTypeImpl;
  v32 = *a1;
  v33 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v48 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v49 = v32;
  v54 = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v55 = &v48;
  v53 = a12;
  v34 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v51 = &v54;
  v52 = &v53;
  v50 = &v53;
  v36 = mlir::StorageUniquer::getParametricStorageTypeImpl(v33, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v52, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v50);
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 32) = v36;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v48 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v49 = v38;
  v54 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v55 = &v48;
  v53 = a13;
  v40 = 0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL);
  v41 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ (v40 >> 47) ^ v40);
  v50 = &v53;
  v51 = &v54;
  v52 = &v53;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v52, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v50);
  v43 = *(a2 + 256);
  if (!v43)
  {
    operator new();
  }

  *(v43 + 40) = result;
  v44 = *(a2 + 72);
  if (v44 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v44) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StencilOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v63 = *MEMORY[0x277D85DE8];
  v52 = a4;
  v53 = a3;
  mlir::OperationState::addOperands(a2, &v53, 1uLL);
  mlir::OperationState::addOperands(a2, &v52, 1uLL);
  if (a5)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 16) = a5;
  }

  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 56) = a6;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a7;
  if (a8)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = a8;
  }

  F32Type = mlir::Builder::getF32Type(a1, v18);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a9);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = FloatAttr;
  v26 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v59 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v60 = v26;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v57 = &v59;
  v55 = a10;
  v28 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v29 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v28 >> 47) ^ v28);
  v54 = &v55;
  v61 = &v55;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((v29 >> 47) ^ v29), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v54, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v61);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 48) = ParametricStorageTypeImpl;
  v32 = *a1;
  v33 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v59 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v60 = v32;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v57 = &v59;
  v55 = a11;
  v34 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v54 = &v55;
  v61 = &v55;
  p_src = &__src;
  v36 = mlir::StorageUniquer::getParametricStorageTypeImpl(v33, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v54, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v61);
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 32) = v36;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v59 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v60 = v38;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v57 = &v59;
  v55 = a12;
  v40 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v41 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v40 >> 47) ^ v40);
  v54 = &v55;
  v61 = &v55;
  p_src = &__src;
  v42 = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v54, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v61);
  v43 = *(a2 + 256);
  if (!v43)
  {
    operator new();
  }

  *(v43 + 40) = v42;
  __src = v58;
  v57 = 0x200000000;
  v44 = *a1;
  v45 = *a2;
  mlir::ValueRange::ValueRange(&v61, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v48 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v59, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StencilOp::inferReturnTypes(v44, v45, 1, v61, p_src, Dictionary, v48, v49, v59, v60, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v50 = v57;
  v51 = *(a2 + 72);
  if (v51 + v57 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v57)
  {
    memcpy((*(a2 + 64) + 8 * v51), __src, 8 * v57);
    LODWORD(v51) = *(a2 + 72);
  }

  *(a2 + 72) = v51 + v50;
  if (__src != v58)
  {
    free(__src);
  }
}

unint64_t mlir::mps::StencilOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  v49 = a6;
  v50 = a5;
  mlir::OperationState::addOperands(a2, &v50, 1uLL);
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  if (a7)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 16) = a7;
  }

  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 56) = a8;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *v23 = a9;
  if (a10)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 8) = a10;
  }

  F32Type = mlir::Builder::getF32Type(a1, v20);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a11);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 24) = FloatAttr;
  v28 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v52 = v28;
  v57 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v58 = &v51;
  v56 = a12;
  v30 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v31 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v30 >> 47) ^ v30);
  v53 = &v56;
  v54 = &v57;
  v55 = &v56;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((v31 >> 47) ^ v31), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v33 = *(a2 + 256);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 48) = ParametricStorageTypeImpl;
  v34 = *a1;
  v35 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v52 = v34;
  v57 = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v58 = &v51;
  v56 = a13;
  v36 = 0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL);
  v37 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ (v36 >> 47) ^ v36);
  v54 = &v57;
  v55 = &v56;
  v53 = &v56;
  v38 = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 32) = v38;
  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v52 = v40;
  v57 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v58 = &v51;
  v56 = a14;
  v42 = 0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL);
  v43 = 0x9DDFEA08EB382D69 * (a14 ^ 0xFF51AFD7ED558CCDLL ^ (v42 >> 47) ^ v42);
  v53 = &v56;
  v54 = &v57;
  v55 = &v56;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v45 = *(a2 + 256);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 40) = result;
  v46 = *(a2 + 72);
  if (a4 + v46 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v47 = 0;
    v48 = *(a2 + 64) + 8 * v46;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v47);
      *(v48 + 8 * v47++) = result;
    }

    while (a4 != v47);
    LODWORD(v46) = *(a2 + 72);
  }

  *(a2 + 72) = v46 + a4;
  return result;
}

uint64_t mlir::mps::StencilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::mps::StencilOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StencilOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::StencilOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *&v21 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v21);
  v16 = result;
  if (a2[7])
  {
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v16, 64, 0);
    v17 = mlir::RankedTensorType::get(&v23, 1, IntegerType, 0);
    v6 = mlir::TensorType::operator mlir::ShapedType(&v17);
    v21 = xmmword_25737C738;
    v22 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v6);
    a2[7] = result;
    if (*a2)
    {
LABEL_3:
      if (a2[3])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v23 = 4;
  v7 = mlir::Builder::getIntegerType(&v16, 64, 0);
  v17 = mlir::RankedTensorType::get(&v23, 1, v7, 0);
  v8 = mlir::TensorType::operator mlir::ShapedType(&v17);
  v21 = xmmword_25737C738;
  v22 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v8);
  *a2 = result;
  if (a2[3])
  {
LABEL_4:
    if (a2[6])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  F32Type = mlir::Builder::getF32Type(&v16, v4);
  result = mlir::Builder::getFloatAttr(0.0, &v16, F32Type);
  a2[3] = result;
  if (a2[6])
  {
LABEL_5:
    if (a2[4])
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = v16;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v16);
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v24 = v10;
  *&v21 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v21 + 1) = &v23;
  v20 = 2;
  v17 = &v20;
  v18 = &v21;
  v19 = &v20;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
  a2[6] = result;
  if (a2[4])
  {
LABEL_6:
    if (a2[5])
    {
      return result;
    }

LABEL_13:
    v14 = v16;
    v15 = mlir::MLIRContext::getAttributeUniquer(v16);
    v23 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
    v24 = v14;
    *&v21 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v21 + 1) = &v23;
    v20 = 2;
    v17 = &v20;
    v18 = &v21;
    v19 = &v20;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v15, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
    a2[5] = result;
    return result;
  }

LABEL_12:
  v12 = v16;
  v13 = mlir::MLIRContext::getAttributeUniquer(v16);
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v24 = v12;
  *&v21 = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v21 + 1) = &v23;
  v20 = 4;
  v17 = &v20;
  v18 = &v21;
  v19 = &v20;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v13, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, 0xCA312C5D, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
  a2[4] = result;
  if (!a2[5])
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t mlir::mps::StencilOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v5 = v3[8];
  v4 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v10 = v3[14];
  v11 = v3[15];
  v15 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(v6, "offsets", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps43(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v11, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v4, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v7, "paddingConstant", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(v10, "reductionMode", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps44(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(v9, "paddingMode", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps45(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0)
  {
    return 0;
  }

  v15 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v8, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v15) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::StridedSliceGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

uint64_t *mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::getBeginMask(mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 3);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::getEndMask(mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 5);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::getShrinkAxisMask(mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::StridedSliceGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[6];
      if (v4)
      {
        v33[0] = a1[3];
        Type = mlir::IntegerAttr::getType(v33);
        if (mlir::Type::isUnsignedInteger(&Type, 32))
        {
          v33[0] = v3;
          Type = mlir::IntegerAttr::getType(v33);
          if (mlir::Type::isUnsignedInteger(&Type, 32))
          {
            v33[0] = v4;
            Type = mlir::IntegerAttr::getType(v33);
            if (mlir::Type::isUnsignedInteger(&Type, 32))
            {
              return 1;
            }

            else
            {
              v33[0] = "'mps.strided_slice_gradient' op attribute 'shrink_axis_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
              v34 = 259;
              mlir::emitError(a2, v33, &Type);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
            }
          }

          else
          {
            v33[0] = "'mps.strided_slice_gradient' op attribute 'end_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
            v34 = 259;
            mlir::emitError(a2, v33, &Type);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
            if (Type)
            {
              mlir::InFlightDiagnostic::report(&Type);
            }

            if (v44 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v36);
            }
          }

          return v5;
        }

        v33[0] = "'mps.strided_slice_gradient' op attribute 'begin_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
        v34 = 259;
        mlir::emitError(a2, v33, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

          v26 = __p;
          if (__p)
          {
            v27 = v42;
            v28 = __p;
            if (v42 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v42 = v26;
            operator delete(v28);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v29 = v40;
          v11 = v39;
          if (v40 == v39)
          {
LABEL_73:
            v40 = v9;
            operator delete(v11);
LABEL_74:
            if (v37 != &v38)
            {
              free(v37);
            }

            return v5;
          }

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

          while (v29 != v9);
LABEL_72:
          v11 = v39;
          goto LABEL_73;
        }
      }

      else
      {
        v33[0] = "'mps.strided_slice_gradient' op requires attribute 'shrink_axis_mask'";
        v34 = 259;
        mlir::emitError(a2, v33, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

          v20 = __p;
          if (__p)
          {
            v21 = v42;
            v22 = __p;
            if (v42 != __p)
            {
              do
              {
                v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
              }

              while (v21 != v20);
              v22 = __p;
            }

            v42 = v20;
            operator delete(v22);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v23 = v40;
          v11 = v39;
          if (v40 == v39)
          {
            goto LABEL_73;
          }

          do
          {
            v25 = *--v23;
            v24 = v25;
            *v23 = 0;
            if (v25)
            {
              MEMORY[0x259C63150](v24, 0x1000C8077774924);
            }
          }

          while (v23 != v9);
          goto LABEL_72;
        }
      }
    }

    else
    {
      v33[0] = "'mps.strided_slice_gradient' op requires attribute 'end_mask'";
      v34 = 259;
      mlir::emitError(a2, v33, &Type);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

        v14 = __p;
        if (__p)
        {
          v15 = v42;
          v16 = __p;
          if (v42 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v42 = v14;
          operator delete(v16);
        }

        v9 = v39;
        if (!v39)
        {
          goto LABEL_74;
        }

        v17 = v40;
        v11 = v39;
        if (v40 == v39)
        {
          goto LABEL_73;
        }

        do
        {
          v19 = *--v17;
          v18 = v19;
          *v17 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v17 != v9);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v33[0] = "'mps.strided_slice_gradient' op requires attribute 'begin_mask'";
    v34 = 259;
    mlir::emitError(a2, v33, &Type);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

      v6 = __p;
      if (__p)
      {
        v7 = v42;
        v8 = __p;
        if (v42 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v42 = v6;
        operator delete(v8);
      }

      v9 = v39;
      if (!v39)
      {
        goto LABEL_74;
      }

      v10 = v40;
      v11 = v39;
      if (v40 == v39)
      {
        goto LABEL_73;
      }

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
      goto LABEL_72;
    }
  }

  return v5;
}

uint64_t mlir::mps::StridedSliceGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

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

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
      }

      return 0;
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

    while (v27 != v17);
LABEL_68:
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "begin_mask", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 55;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v51, "end_is_size", 0xBuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 56;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_68;
    }

    a1[1] = v30;
  }

  v43 = mlir::DictionaryAttr::get(&v51, "end_mask", 8uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 53;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "shrink_axis_mask", 0x10uLL);
  *&v52 = v49;
  if (!v49)
  {
    return 1;
  }

  if (*(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v49;
    return 1;
  }

  a3(&v54, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return 0;
}

uint64_t mlir::mps::StridedSliceGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v22, "begin_mask", 0xA, *a2);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v23 + 16 * v24);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v24 + 1;
  LODWORD(v24) = v24 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v22, "end_is_size", 0xB, v7);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v23 + 16 * v24);
    *v10 = v8;
    v10[1] = v9;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v22, "end_mask", 8, v11);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v23 + 16 * v24);
    *v14 = v12;
    v14[1] = v13;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v22, "shrink_axis_mask", 0x10, v15);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v23 + 16 * v24);
    *v18 = v16;
    v18[1] = v17;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v19 = v23;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v6);
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::StridedSliceGradientOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
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
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::mps::StridedSliceGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "end_is_size", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "shrink_axis_mask", 0x10uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "end_mask", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 10)
  {
    return 0;
  }

  if (*__s1 != 0x616D5F6E69676562 || *(__s1 + 4) != 27507)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::StridedSliceGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "end_is_size", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

    else if (a3 == 16)
    {
      result = memcmp(__s1, "shrink_axis_mask", 0x10uLL);
      if (!result)
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

          v5[3] = v7;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "end_mask", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else if (a3 == 10 && *__s1 == 0x616D5F6E69676562 && *(__s1 + 4) == 27507)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::StridedSliceGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "begin_mask", 0xAuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "end_is_size", 0xBuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "end_mask", 8uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {

    mlir::NamedAttrList::append(a3, "shrink_axis_mask", 0x10uLL, v7);
  }
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "begin_mask", 10, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "end_is_size", 11, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v10, "end_mask", 8, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v11, "shrink_axis_mask", 16, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::StridedSliceGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::StridedSliceGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::mps::StridedSliceGradientOp::getBeginMask(mlir::mps::StridedSliceGradientOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::StridedSliceGradientOp::getEndMask(mlir::mps::StridedSliceGradientOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::StridedSliceGradientOp::getShrinkAxisMask(mlir::mps::StridedSliceGradientOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::StridedSliceGradientOp::setBeginMask(mlir::mps::StridedSliceGradientOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceGradientOp::setEndMask(mlir::mps::StridedSliceGradientOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceGradientOp::setShrinkAxisMask(mlir::mps::StridedSliceGradientOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceGradientOp::setEndIsSize(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::StridedSliceGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a5;
  v24 = a4;
  v21 = a7;
  v22 = a6;
  v20 = a8;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a9;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a10;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a11;
  if (a12)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a12;
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StridedSliceGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a3;
  v28 = a6;
  v29 = a5;
  v27 = a7;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a8;
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) = a9;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = a10;
  if (a11)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a11;
  }

  v34 = v36;
  v35 = 0x200000000;
  v17 = *a2;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = mlir::RegionRange::RegionRange(&v32, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceGradientOp::inferReturnTypes(v19, v17, 1, v33[0], v33[1], v20, v21, v22, v25, v26, &v34) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v35;
  v24 = *(a2 + 72);
  if (v24 + v35 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v35)
  {
    memcpy((*(a2 + 64) + 8 * v24), v34, 8 * v35);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (v34 != v36)
  {
    free(v34);
  }
}

unint64_t mlir::mps::StridedSliceGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a6;
  v28 = a5;
  v25 = a8;
  v26 = a7;
  v24 = a9;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = a10;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a11;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a12;
  if (a13)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a13;
    v20 = *(a2 + 72);
    if (a4 + v20 > *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v20 = *(a2 + 72);
    if (a4 + v20 > *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  if (a4)
  {
    v21 = 0;
    v22 = *(a2 + 64) + 8 * v20;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v21);
      *(v22 + 8 * v21++) = result;
    }

    while (a4 != v21);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + a4;
  return result;
}

uint64_t mlir::mps::StridedSliceGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, char a12)
{
  v30 = a5;
  v31 = a4;
  v28 = a7;
  v29 = a6;
  v27 = a8;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = IntegerAttr;
  v18 = mlir::Builder::getIntegerType(a1, 32, 0);
  v19 = mlir::Builder::getIntegerAttr(a1, v18, a10);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = v19;
  v21 = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, v21, a11);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = result;
  if (a12)
  {
    result = mlir::Builder::getUnitAttr(a1, v23);
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 8) = result;
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
LABEL_8:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
      goto LABEL_8;
    }
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StridedSliceGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v39 = a4;
  v40 = a3;
  v37 = a6;
  v38 = a5;
  v36 = a7;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = IntegerAttr;
  v17 = mlir::Builder::getIntegerType(a1, 32, 0);
  v18 = mlir::Builder::getIntegerAttr(a1, v17, a9);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = v18;
  v20 = mlir::Builder::getIntegerType(a1, 32, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a10);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = v21;
  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 8) = UnitAttr;
  }

  v43 = v45;
  v44 = 0x200000000;
  v26 = *a2;
  mlir::ValueRange::ValueRange(v42, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v28 = mlir::RegionRange::RegionRange(&v41, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceGradientOp::inferReturnTypes(v28, v26, 1, v42[0], v42[1], v29, v30, v31, v34, v35, &v43) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v32 = v44;
  v33 = *(a2 + 72);
  if (v33 + v44 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v44)
  {
    memcpy((*(a2 + 64) + 8 * v33), v43, 8 * v44);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (v43 != v45)
  {
    free(v43);
  }
}

unint64_t mlir::mps::StridedSliceGradientOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12, char a13)
{
  v34 = a6;
  v35 = a5;
  v32 = a8;
  v33 = a7;
  v31 = a9;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a10);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = IntegerAttr;
  v20 = mlir::Builder::getIntegerType(a1, 32, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a11);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = v21;
  v23 = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, v23, a12);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 24) = result;
  if (!a13)
  {
    v27 = *(a2 + 72);
    if (a4 + v27 <= *(a2 + 76))
    {
      goto LABEL_8;
    }

LABEL_15:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v25);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 8) = result;
  v27 = *(a2 + 72);
  if (a4 + v27 > *(a2 + 76))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (a4)
  {
    v29 = 0;
    v30 = *(a2 + 64) + 8 * v27;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v29);
      *(v30 + 8 * v29++) = result;
    }

    while (a4 != v29);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + a4;
  return result;
}

uint64_t mlir::mps::StridedSliceGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::mps::StridedSliceGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v30;
  v29 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  v19 = mlir::RegionRange::RegionRange(&v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceGradientOp::inferReturnTypes(v19, v17, 1, a3, a4, v20, v21, v22, v25, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v29;
  v24 = *(a2 + 72);
  if (v24 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v29);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = (v1 + 64);
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "end_is_size", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
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
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_67:
          v39 = v15;
          operator delete(v17);
LABEL_68:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

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

        while (v29 != v15);
LABEL_66:
        v17 = v38;
        goto LABEL_67;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_67;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
        goto LABEL_66;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
      }

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
      goto LABEL_66;
    }
  }

  return v11;
}

BOOL mlir::mps::StridedSliceGradientOp::verifyInvariants(mlir::Operation **this)
{
  result = 0;
  if (mlir::mps::StridedSliceGradientOp::verifyInvariantsImpl(this))
  {
    v2 = *(*this + 9);
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::detail::StridedSliceOpGenericAdaptorBase::StridedSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::StridedSliceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

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

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
      }

      return 0;
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

    while (v27 != v17);
LABEL_68:
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "begin_mask", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 55;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v51, "end_is_size", 0xBuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 56;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_68;
    }

    a1[1] = v30;
  }

  v43 = mlir::DictionaryAttr::get(&v51, "end_mask", 8uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 53;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "shrink_axis_mask", 0x10uLL);
  *&v52 = v49;
  if (!v49)
  {
    return 1;
  }

  if (*(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v49;
    return 1;
  }

  a3(&v54, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return 0;
}

uint64_t mlir::mps::StridedSliceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v22, "begin_mask", 0xA, *a2);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v23 + 16 * v24);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v24 + 1;
  LODWORD(v24) = v24 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v22, "end_is_size", 0xB, v7);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v23 + 16 * v24);
    *v10 = v8;
    v10[1] = v9;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v22, "end_mask", 8, v11);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v23 + 16 * v24);
    *v14 = v12;
    v14[1] = v13;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v22, "shrink_axis_mask", 0x10, v15);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v23 + 16 * v24);
    *v18 = v16;
    v18[1] = v17;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v19 = v23;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v6);
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::StridedSliceOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
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
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::mps::StridedSliceOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "end_is_size", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "shrink_axis_mask", 0x10uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "end_mask", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 10)
  {
    return 0;
  }

  if (*__s1 != 0x616D5F6E69676562 || *(__s1 + 4) != 27507)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::StridedSliceOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "end_is_size", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

    else if (a3 == 16)
    {
      result = memcmp(__s1, "shrink_axis_mask", 0x10uLL);
      if (!result)
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

          v5[3] = v7;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "end_mask", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else if (a3 == 10 && *__s1 == 0x616D5F6E69676562 && *(__s1 + 4) == 27507)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::StridedSliceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "begin_mask", 0xAuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "end_is_size", 0xBuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "end_mask", 8uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {

    mlir::NamedAttrList::append(a3, "shrink_axis_mask", 0x10uLL, v7);
  }
}

BOOL mlir::mps::StridedSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "begin_mask", 10, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "end_is_size", 11, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v10, "end_mask", 8, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v11, "shrink_axis_mask", 16, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::StridedSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::StridedSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::mps::StridedSliceOp::getBeginMask(mlir::mps::StridedSliceOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::StridedSliceOp::getEndMask(mlir::mps::StridedSliceOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::StridedSliceOp::getShrinkAxisMask(mlir::mps::StridedSliceOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::StridedSliceOp::setBeginMask(mlir::mps::StridedSliceOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceOp::setEndMask(mlir::mps::StridedSliceOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceOp::setShrinkAxisMask(mlir::mps::StridedSliceOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceOp::setEndIsSize(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::StridedSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a5;
  v23 = a4;
  v20 = a7;
  v21 = a6;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a8;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a9;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a10;
  if (a11)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a11;
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StridedSliceOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a7;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 16) = a8;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = a9;
  if (a10)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 8) = a10;
  }

  __src = v34;
  v33 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceOp::inferReturnTypes(v18, v19, 1, v31[0], v31[1], Dictionary, v22, v23, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v33;
  v25 = *(a2 + 72);
  if (v25 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v33);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::StridedSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a6;
  v26 = a5;
  v23 = a8;
  v24 = a7;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = a9;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = a10;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = a11;
  if (a12)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = a12;
    v19 = *(a2 + 72);
    if (a4 + v19 > *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v19 = *(a2 + 72);
    if (a4 + v19 > *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  if (a4)
  {
    v20 = 0;
    v21 = *(a2 + 64) + 8 * v19;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v20);
      *(v21 + 8 * v20++) = result;
    }

    while (a4 != v20);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + a4;
  return result;
}

uint64_t mlir::mps::StridedSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11)
{
  v29 = a5;
  v30 = a4;
  v27 = a7;
  v28 = a6;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = IntegerAttr;
  v18 = mlir::Builder::getIntegerType(a1, 32, 0);
  v19 = mlir::Builder::getIntegerAttr(a1, v18, a9);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = v19;
  v21 = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, v21, a10);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = result;
  if (a11)
  {
    result = mlir::Builder::getUnitAttr(a1, v23);
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 8) = result;
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
LABEL_8:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
      goto LABEL_8;
    }
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StridedSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, char a10)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v36 = a4;
  v37 = a3;
  v34 = a6;
  v35 = a5;
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = IntegerAttr;
  v17 = mlir::Builder::getIntegerType(a1, 32, 0);
  v18 = mlir::Builder::getIntegerAttr(a1, v17, a8);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = v18;
  v20 = mlir::Builder::getIntegerType(a1, 32, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a9);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = v21;
  if (a10)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 8) = UnitAttr;
  }

  __src = v42;
  v41 = 0x200000000;
  v26 = *a1;
  v27 = *a2;
  mlir::ValueRange::ValueRange(v39, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v30 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v38, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceOp::inferReturnTypes(v26, v27, 1, v39[0], v39[1], Dictionary, v30, v31, v38[0], v38[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v32 = v41;
  v33 = *(a2 + 72);
  if (v33 + v41 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v41)
  {
    memcpy((*(a2 + 64) + 8 * v33), __src, 8 * v41);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (__src != v42)
  {
    free(__src);
  }
}

unint64_t mlir::mps::StridedSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, char a12)
{
  v32 = a6;
  v33 = a5;
  v30 = a8;
  v31 = a7;
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = IntegerAttr;
  v19 = mlir::Builder::getIntegerType(a1, 32, 0);
  v20 = mlir::Builder::getIntegerAttr(a1, v19, a10);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = v20;
  v22 = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, v22, a11);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = result;
  if (!a12)
  {
    v26 = *(a2 + 72);
    if (a4 + v26 <= *(a2 + 76))
    {
      goto LABEL_8;
    }

LABEL_15:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v24);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 8) = result;
  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (a4)
  {
    v28 = 0;
    v29 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v28);
      *(v29 + 8 * v28++) = result;
    }

    while (a4 != v28);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::mps::StridedSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::mps::StridedSliceOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::StridedSliceOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

BOOL mlir::mps::StridedSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = (v1 + 64);
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "end_is_size", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
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
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_67;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_66:
          v39 = v15;
          operator delete(v17);
LABEL_67:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

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

        while (v29 != v15);
LABEL_65:
        v17 = v38;
        goto LABEL_66;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_67;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_66;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
        goto LABEL_65;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_67;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_66;
      }

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
      goto LABEL_65;
    }
  }

  return v11;
}

uint64_t mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::StridedSliceUpdateOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

uint64_t *mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::getBeginMask(mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase *this)
{
  v5 = *(this + 3);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::getEndMask(mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase *this)
{
  v5 = *(this + 5);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::getShrinkAxisMask(mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::StridedSliceUpdateOpAdaptor::verify(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[6];
      if (v4)
      {
        v33[0] = a1[3];
        Type = mlir::IntegerAttr::getType(v33);
        if (mlir::Type::isUnsignedInteger(&Type, 32))
        {
          v33[0] = v3;
          Type = mlir::IntegerAttr::getType(v33);
          if (mlir::Type::isUnsignedInteger(&Type, 32))
          {
            v33[0] = v4;
            Type = mlir::IntegerAttr::getType(v33);
            if (mlir::Type::isUnsignedInteger(&Type, 32))
            {
              return 1;
            }

            else
            {
              v33[0] = "'mps.strided_slice_update' op attribute 'shrink_axis_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
              v34 = 259;
              mlir::emitError(a2, v33, &Type);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
            }
          }

          else
          {
            v33[0] = "'mps.strided_slice_update' op attribute 'end_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
            v34 = 259;
            mlir::emitError(a2, v33, &Type);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
            if (Type)
            {
              mlir::InFlightDiagnostic::report(&Type);
            }

            if (v44 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v36);
            }
          }

          return v5;
        }

        v33[0] = "'mps.strided_slice_update' op attribute 'begin_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
        v34 = 259;
        mlir::emitError(a2, v33, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

          v26 = __p;
          if (__p)
          {
            v27 = v42;
            v28 = __p;
            if (v42 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v42 = v26;
            operator delete(v28);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v29 = v40;
          v11 = v39;
          if (v40 == v39)
          {
LABEL_73:
            v40 = v9;
            operator delete(v11);
LABEL_74:
            if (v37 != &v38)
            {
              free(v37);
            }

            return v5;
          }

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

          while (v29 != v9);
LABEL_72:
          v11 = v39;
          goto LABEL_73;
        }
      }

      else
      {
        v33[0] = "'mps.strided_slice_update' op requires attribute 'shrink_axis_mask'";
        v34 = 259;
        mlir::emitError(a2, v33, &Type);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

          v20 = __p;
          if (__p)
          {
            v21 = v42;
            v22 = __p;
            if (v42 != __p)
            {
              do
              {
                v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
              }

              while (v21 != v20);
              v22 = __p;
            }

            v42 = v20;
            operator delete(v22);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v23 = v40;
          v11 = v39;
          if (v40 == v39)
          {
            goto LABEL_73;
          }

          do
          {
            v25 = *--v23;
            v24 = v25;
            *v23 = 0;
            if (v25)
            {
              MEMORY[0x259C63150](v24, 0x1000C8077774924);
            }
          }

          while (v23 != v9);
          goto LABEL_72;
        }
      }
    }

    else
    {
      v33[0] = "'mps.strided_slice_update' op requires attribute 'end_mask'";
      v34 = 259;
      mlir::emitError(a2, v33, &Type);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

        v14 = __p;
        if (__p)
        {
          v15 = v42;
          v16 = __p;
          if (v42 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v42 = v14;
          operator delete(v16);
        }

        v9 = v39;
        if (!v39)
        {
          goto LABEL_74;
        }

        v17 = v40;
        v11 = v39;
        if (v40 == v39)
        {
          goto LABEL_73;
        }

        do
        {
          v19 = *--v17;
          v18 = v19;
          *v17 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v17 != v9);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v33[0] = "'mps.strided_slice_update' op requires attribute 'begin_mask'";
    v34 = 259;
    mlir::emitError(a2, v33, &Type);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
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

      v6 = __p;
      if (__p)
      {
        v7 = v42;
        v8 = __p;
        if (v42 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v42 = v6;
        operator delete(v8);
      }

      v9 = v39;
      if (!v39)
      {
        goto LABEL_74;
      }

      v10 = v40;
      v11 = v39;
      if (v40 == v39)
      {
        goto LABEL_73;
      }

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
      goto LABEL_72;
    }
  }

  return v5;
}

uint64_t mlir::mps::StridedSliceUpdateOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

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

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
      }

      return 0;
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

    while (v27 != v17);
LABEL_68:
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "begin_mask", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 55;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v51, "end_is_size", 0xBuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 56;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_68;
    }

    a1[1] = v30;
  }

  v43 = mlir::DictionaryAttr::get(&v51, "end_mask", 8uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 53;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "shrink_axis_mask", 0x10uLL);
  *&v52 = v49;
  if (!v49)
  {
    return 1;
  }

  if (*(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v49;
    return 1;
  }

  a3(&v54, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return 0;
}

uint64_t mlir::mps::StridedSliceUpdateOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v22, "begin_mask", 0xA, *a2);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v23 + 16 * v24);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v24 + 1;
  LODWORD(v24) = v24 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v22, "end_is_size", 0xB, v7);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v23 + 16 * v24);
    *v10 = v8;
    v10[1] = v9;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v22, "end_mask", 8, v11);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v23 + 16 * v24);
    *v14 = v12;
    v14[1] = v13;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v22, "shrink_axis_mask", 0x10, v15);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v23 + 16 * v24);
    *v18 = v16;
    v18[1] = v17;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v19 = v23;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v6);
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::StridedSliceUpdateOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
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
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::mps::StridedSliceUpdateOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "end_is_size", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "shrink_axis_mask", 0x10uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "end_mask", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 10)
  {
    return 0;
  }

  if (*__s1 != 0x616D5F6E69676562 || *(__s1 + 4) != 27507)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::StridedSliceUpdateOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      result = memcmp(__s1, "end_is_size", 0xBuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

    else if (a3 == 16)
    {
      result = memcmp(__s1, "shrink_axis_mask", 0x10uLL);
      if (!result)
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

          v5[3] = v7;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "end_mask", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else if (a3 == 10 && *__s1 == 0x616D5F6E69676562 && *(__s1 + 4) == 27507)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = a4;
      }

      else
      {
        v10 = 0;
      }

      *result = v10;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::StridedSliceUpdateOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "begin_mask", 0xAuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "end_is_size", 0xBuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "end_mask", 8uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {

    mlir::NamedAttrList::append(a3, "shrink_axis_mask", 0x10uLL, v7);
  }
}

BOOL mlir::mps::StridedSliceUpdateOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "begin_mask", 10, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "end_is_size", 11, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v10, "end_mask", 8, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v11, "shrink_axis_mask", 16, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::StridedSliceUpdateOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::StridedSliceUpdateOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::mps::StridedSliceUpdateOp::getBeginMask(mlir::mps::StridedSliceUpdateOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::StridedSliceUpdateOp::getEndMask(mlir::mps::StridedSliceUpdateOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t *mlir::mps::StridedSliceUpdateOp::getShrinkAxisMask(mlir::mps::StridedSliceUpdateOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::StridedSliceUpdateOp::setBeginMask(mlir::mps::StridedSliceUpdateOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceUpdateOp::setEndMask(mlir::mps::StridedSliceUpdateOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceUpdateOp::setShrinkAxisMask(mlir::mps::StridedSliceUpdateOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::StridedSliceUpdateOp::setEndIsSize(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::StridedSliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a5;
  v24 = a4;
  v21 = a7;
  v22 = a6;
  v20 = a8;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a9;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a10;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a11;
  if (a12)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a12;
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v18 = *(a2 + 72);
    if (v18 >= *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StridedSliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v26 = a4;
  v27 = a3;
  v24 = a6;
  v25 = a5;
  v23 = a7;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a8;
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) = a9;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = a10;
  if (a11)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a11;
  }

  __src = v33;
  v32 = 0x200000000;
  v17 = *a2;
  mlir::ValueRange::ValueRange(&v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v28, *(a2 + 224), *(a2 + 232));
  v34[0] = v29;
  v34[1] = v30;
  if (v30)
  {
    v19 = *(mlir::ValueRange::dereference_iterator(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v32) = v19;
    v20 = v32 + 1;
    LODWORD(v32) = v20;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v20 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v17, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v20 = v32;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v32 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v22), v21, 8 * v20);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  if (__src != v33)
  {
    free(__src);
  }
}

unint64_t mlir::mps::StridedSliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a6;
  v28 = a5;
  v25 = a8;
  v26 = a7;
  v24 = a9;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = a10;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a11;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a12;
  if (a13)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a13;
    v20 = *(a2 + 72);
    if (a4 + v20 > *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v20 = *(a2 + 72);
    if (a4 + v20 > *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  if (a4)
  {
    v21 = 0;
    v22 = *(a2 + 64) + 8 * v20;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v21);
      *(v22 + 8 * v21++) = result;
    }

    while (a4 != v21);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + a4;
  return result;
}

uint64_t mlir::mps::StridedSliceUpdateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, char a12)
{
  v30 = a5;
  v31 = a4;
  v28 = a7;
  v29 = a6;
  v27 = a8;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = IntegerAttr;
  v18 = mlir::Builder::getIntegerType(a1, 32, 0);
  v19 = mlir::Builder::getIntegerAttr(a1, v18, a10);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = v19;
  v21 = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, v21, a11);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = result;
  if (a12)
  {
    result = mlir::Builder::getUnitAttr(a1, v23);
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 8) = result;
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
LABEL_8:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
      goto LABEL_8;
    }
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::StridedSliceUpdateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v35 = a4;
  v36 = a3;
  v33 = a6;
  v34 = a5;
  v32 = a7;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = IntegerAttr;
  v17 = mlir::Builder::getIntegerType(a1, 32, 0);
  v18 = mlir::Builder::getIntegerAttr(a1, v17, a9);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = v18;
  v20 = mlir::Builder::getIntegerType(a1, 32, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a10);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = v21;
  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 8) = UnitAttr;
  }

  __src = v42;
  v41 = 0x200000000;
  v26 = *a2;
  mlir::ValueRange::ValueRange(&v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v37, *(a2 + 224), *(a2 + 232));
  v43[0] = v38;
  v43[1] = v39;
  if (v39)
  {
    v28 = *(mlir::ValueRange::dereference_iterator(v43, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v41 >= HIDWORD(v41))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v41) = v28;
    v29 = v41 + 1;
    LODWORD(v41) = v29;
    v30 = __src;
    v31 = *(a2 + 72);
    if (v31 + v29 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v26, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v29 = v41;
    v30 = __src;
    v31 = *(a2 + 72);
    if (v31 + v41 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v31), v30, 8 * v29);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v29;
  if (__src != v42)
  {
    free(__src);
  }
}

unint64_t mlir::mps::StridedSliceUpdateOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12, char a13)
{
  v34 = a6;
  v35 = a5;
  v32 = a8;
  v33 = a7;
  v31 = a9;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a10);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = IntegerAttr;
  v20 = mlir::Builder::getIntegerType(a1, 32, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a11);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = v21;
  v23 = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, v23, a12);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 24) = result;
  if (!a13)
  {
    v27 = *(a2 + 72);
    if (a4 + v27 <= *(a2 + 76))
    {
      goto LABEL_8;
    }

LABEL_15:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v25);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 8) = result;
  v27 = *(a2 + 72);
  if (a4 + v27 > *(a2 + 76))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (a4)
  {
    v29 = 0;
    v30 = *(a2 + 64) + 8 * v27;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v29);
      *(v30 + 8 * v29++) = result;
    }

    while (a4 != v29);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + a4;
  return result;
}

uint64_t mlir::mps::StridedSliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::mps::StridedSliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v26;
  v25 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (a4)
  {
    v19 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v25) = v19;
    v20 = v25 + 1;
    LODWORD(v25) = v20;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v20 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v17, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v20 = v25;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v25 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v22), v21, 8 * v20);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::mps::StridedSliceUpdateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = (v1 + 64);
  v2 = v4;
  if (v4)
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      if (v6)
      {
        v8 = v3[1];
        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "begin_mask", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v5, "end_mask", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v6, "shrink_axis_mask", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
        {
          return 0;
        }

        v35[0] = *this;
        if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "end_is_size", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
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
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

      v33[0] = "requires attribute 'shrink_axis_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

        v26 = __p;
        if (__p)
        {
          v27 = v41;
          v28 = __p;
          if (v41 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v41 = v26;
          operator delete(v28);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v29 = v39;
        v17 = v38;
        if (v39 == v38)
        {
LABEL_67:
          v39 = v15;
          operator delete(v17);
LABEL_68:
          if (v36 != &v37)
          {
            free(v36);
          }

          return v11;
        }

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

        while (v29 != v15);
LABEL_66:
        v17 = v38;
        goto LABEL_67;
      }
    }

    else
    {
      v33[0] = "requires attribute 'end_mask'";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, v35);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

        v20 = __p;
        if (__p)
        {
          v21 = v41;
          v22 = __p;
          if (v41 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v41 = v20;
          operator delete(v22);
        }

        v15 = v38;
        if (!v38)
        {
          goto LABEL_68;
        }

        v23 = v39;
        v17 = v38;
        if (v39 == v38)
        {
          goto LABEL_67;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
        goto LABEL_66;
      }
    }
  }

  else
  {
    v33[0] = "requires attribute 'begin_mask'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
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

      v12 = __p;
      if (__p)
      {
        v13 = v41;
        v14 = __p;
        if (v41 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v41 = v12;
        operator delete(v14);
      }

      v15 = v38;
      if (!v38)
      {
        goto LABEL_68;
      }

      v16 = v39;
      v17 = v38;
      if (v39 == v38)
      {
        goto LABEL_67;
      }

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
      goto LABEL_66;
    }
  }

  return v11;
}

BOOL mlir::mps::StridedSliceUpdateOp::verifyInvariants(mlir::Operation **this)
{
  result = 0;
  if (mlir::mps::StridedSliceUpdateOp::verifyInvariantsImpl(this))
  {
    v2 = *(*this + 9);
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::SubtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::SubtractOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), __src, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SubtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::mps::SubtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::SubtractOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v20;
  v19 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::SubtractOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::SwishOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::SwishOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::SwishOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::SwishOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::SwishOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::SwishOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::SwishOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::SwishOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::TanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::TanOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TanOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::TanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::TanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::TanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::TanOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::mps::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::mps::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::TanhOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::TileGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::TileGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a3;
  v11 = a5;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v14, *(a2 + 224), *(a2 + 232));
  v19 = v15;
  v7 = *(mlir::ValueRange::dereference_iterator(&v19, 0) + 8);
  v8 = mlir::ValueRange::dereference_iterator(&v19, 1);
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v9 = v17;
  v10 = *(a2 + 72);
  if (v10 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v10), __src, 8 * v17);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + v9;
  if (__src != v18)
  {
    free(__src);
  }
}

unint64_t mlir::mps::TileGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::mps::TileGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::TileGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  v13 = *(mlir::ValueRange::dereference_iterator(v21, 0) + 8);
  v14 = mlir::ValueRange::dereference_iterator(v21, 1);
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::TileGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v6 = mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TileOp::inferReturnTypes(v6, v7, v8, v19[0], v19[1], v9, v10, v11, v14, v15, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v21;
  v13 = *(a2 + 72);
  if (v13 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v13), __src, 8 * v21);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v26;
  v25 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::TileOp::inferReturnTypes(v13, v14, v15, a3, a4, v16, v17, v18, v21, v22, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v25;
  v20 = *(a2 + 72);
  if (v20 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v25);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v26)
  {
    free(__src);
  }
}