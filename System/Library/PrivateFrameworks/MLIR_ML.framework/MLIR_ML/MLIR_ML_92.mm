void mlir::mps::DequantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  v20 = mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DequantizeOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v29;
  v26 = *(a2 + 72);
  if (v26 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v29);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::DequantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v114 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v102 = v2;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v4, "dtype", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v102) & 1) == 0)
    {
      return 0;
    }

    v102 = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v5, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v102) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    v9 = *(*v7 + 17);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_57;
    }

    {
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = v8[1];
      v13 = *(v8 + 4);
      if (!v13)
      {
        goto LABEL_41;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v12 = v8[1];
      v13 = *(v8 + 4);
      if (!v13)
      {
        goto LABEL_41;
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
      v29 = v14[1];
LABEL_43:
      v102 = v7;
      v103 = v29;
      *&v100 = mlir::ShapedType::getElementType(&v102);
      if (mlir::Type::isSignlessInteger(&v100, 1) || mlir::Type::isSignedInteger(&v100, 8) || mlir::Type::isSignedInteger(&v100, 16) || mlir::Type::isSignedInteger(&v100, 32) || mlir::Type::isSignedInteger(&v100, 64) || mlir::Type::isUnsignedInteger(&v100, 8) || mlir::Type::isUnsignedInteger(&v100, 16) || mlir::Type::isUnsignedInteger(&v100, 32) || mlir::Type::isUnsignedInteger(&v100, 64) || mlir::Type::isF16(&v100) || mlir::Type::isF32(&v100) || mlir::Type::isBF16(&v100) || *(*v100 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_118;
      }

      v8 = *v7;
      v9 = *(*v7 + 17);
LABEL_57:
      if (v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
LABEL_88:
        v99 = 261;
        ElementType = "operand";
        v98 = 7;
        mlir::Operation::emitOpError(&v102, v6, &ElementType);
        if (v102)
        {
          LODWORD(v100) = 3;
          *(&v100 + 1) = " #";
          v101 = 2;
          if (v105 >= v106)
          {
            if (v104 > &v100 || v104 + 24 * v105 <= &v100)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v41 = v104 + 24 * v105;
          v42 = v100;
          *(v41 + 2) = v101;
          *v41 = v42;
          v43 = ++v105;
          if (v102)
          {
            LODWORD(v100) = 5;
            *(&v100 + 1) = 0;
            if (v43 >= v106)
            {
              if (v104 > &v100 || v104 + 24 * v43 <= &v100)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v44 = v104 + 24 * v105;
            v45 = v100;
            *(v44 + 2) = v101;
            *v44 = v45;
            v46 = ++v105;
            if (v102)
            {
              LODWORD(v100) = 3;
              *(&v100 + 1) = " must be tensor of mps native type values or tensor of quantized values, but got ";
              v101 = 81;
              if (v46 >= v106)
              {
                if (v104 > &v100 || v104 + 24 * v46 <= &v100)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v47 = v104 + 24 * v105;
              v48 = v100;
              *(v47 + 2) = v101;
              *v47 = v48;
              ++v105;
              if (v102)
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v100, v7);
                if (v105 >= v106)
                {
                  if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v49 = v104 + 24 * v105;
                v50 = v100;
                *(v49 + 2) = v101;
                *v49 = v50;
                ++v105;
              }
            }
          }
        }

        v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
        if (v102)
        {
          mlir::InFlightDiagnostic::report(&v102);
        }

        if (v113 == 1)
        {
          if (v112 != &v113)
          {
            free(v112);
          }

          v52 = __p;
          if (__p)
          {
            v53 = v111;
            v54 = __p;
            if (v111 != __p)
            {
              do
              {
                v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
              }

              while (v53 != v52);
              v54 = __p;
            }

            v111 = v52;
            operator delete(v54);
          }

          v55 = v108;
          if (v108)
          {
            v56 = v109;
            v57 = v108;
            if (v109 != v108)
            {
              do
              {
                v59 = *--v56;
                v58 = v59;
                *v56 = 0;
                if (v59)
                {
                  MEMORY[0x259C63150](v58, 0x1000C8077774924);
                }
              }

              while (v56 != v55);
              v57 = v108;
            }

            v109 = v55;
            operator delete(v57);
          }

          if (v104 != v107)
          {
            free(v104);
          }
        }

        if (!v51)
        {
          return 0;
        }

LABEL_118:
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
        {
          return 0;
        }

        v60 = *this;
        v61 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
        v62 = *v61;
        v63 = *(*v61 + 136);
        if (v63 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v63 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_162;
        }

        {
          v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v66 = *(v62 + 8);
          v67 = *(v62 + 16);
          if (v67)
          {
            goto LABEL_126;
          }
        }

        else
        {
          mlir::mps::ConstantOp::verify();
          v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v66 = *(v62 + 8);
          v67 = *(v62 + 16);
          if (v67)
          {
LABEL_126:
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
LABEL_146:
            if (v68 != &v66[2 * v67] && *v68 == v65)
            {
              v74 = v68[1];
            }

            else
            {
              v74 = 0;
            }

            v102 = v61;
            v103 = v74;
            ElementType = mlir::ShapedType::getElementType(&v102);
            if (mlir::Type::isSignedInteger(&ElementType, 2) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 1) || mlir::Type::isUnsignedInteger(&ElementType, 2) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || *(*ElementType + 17) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
            {
LABEL_192:
              if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u))
              {
                if (*(*this + 9))
                {
                  v94 = *this - 16;
                }

                else
                {
                  v94 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v94, 0);
                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }

              return 0;
            }

LABEL_162:
            v99 = 261;
            ElementType = "operand";
            v98 = 7;
            mlir::Operation::emitOpError(&v102, v60, &ElementType);
            if (v102)
            {
              LODWORD(v100) = 3;
              *(&v100 + 1) = " #";
              v101 = 2;
              if (v105 >= v106)
              {
                if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v75 = v104 + 24 * v105;
              v76 = v100;
              *(v75 + 2) = v101;
              *v75 = v76;
              v77 = ++v105;
              if (v102)
              {
                LODWORD(v100) = 5;
                *(&v100 + 1) = 2;
                if (v77 >= v106)
                {
                  if (v104 > &v100 || v104 + 24 * v77 <= &v100)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v78 = v104 + 24 * v105;
                v79 = v100;
                *(v78 + 2) = v101;
                *v78 = v79;
                v80 = ++v105;
                if (v102)
                {
                  LODWORD(v100) = 3;
                  *(&v100 + 1) = " must be tensor of quantized values, but got ";
                  v101 = 45;
                  if (v80 >= v106)
                  {
                    if (v104 > &v100 || v104 + 24 * v80 <= &v100)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v81 = v104 + 24 * v105;
                  v82 = v100;
                  *(v81 + 2) = v101;
                  *v81 = v82;
                  ++v105;
                  if (v102)
                  {
                    mlir::DiagnosticArgument::DiagnosticArgument(&v100, v61);
                    if (v105 >= v106)
                    {
                      if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v83 = v104 + 24 * v105;
                    v84 = v100;
                    *(v83 + 2) = v101;
                    *v83 = v84;
                    ++v105;
                  }
                }
              }
            }

            v85 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
            if (v102)
            {
              mlir::InFlightDiagnostic::report(&v102);
            }

            if (v113 == 1)
            {
              if (v112 != &v113)
              {
                free(v112);
              }

              v86 = __p;
              if (__p)
              {
                v87 = v111;
                v88 = __p;
                if (v111 != __p)
                {
                  do
                  {
                    v87 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v87 - 1);
                  }

                  while (v87 != v86);
                  v88 = __p;
                }

                v111 = v86;
                operator delete(v88);
              }

              v89 = v108;
              if (v108)
              {
                v90 = v109;
                v91 = v108;
                if (v109 != v108)
                {
                  do
                  {
                    v93 = *--v90;
                    v92 = v93;
                    *v90 = 0;
                    if (v93)
                    {
                      MEMORY[0x259C63150](v92, 0x1000C8077774924);
                    }
                  }

                  while (v90 != v89);
                  v91 = v108;
                }

                v109 = v89;
                operator delete(v91);
              }

              if (v104 != v107)
              {
                free(v104);
              }
            }

            if (!v85)
            {
              return 0;
            }

            goto LABEL_192;
          }
        }

        v67 = 0;
        v68 = v66;
        goto LABEL_146;
      }

      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = v8[1];
        v33 = *(v8 + 4);
        if (!v33)
        {
          goto LABEL_74;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = v8[1];
        v33 = *(v8 + 4);
        if (!v33)
        {
          goto LABEL_74;
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
      if (v34 != &v32[2 * v33] && *v34 == v31)
      {
        v40 = v34[1];
        goto LABEL_76;
      }

LABEL_74:
      v40 = 0;
LABEL_76:
      ElementType = v7;
      v98 = v40;
      *&v100 = mlir::ShapedType::getElementType(&ElementType);
      if (mlir::Type::isSignedInteger(&v100, 2) || mlir::Type::isSignedInteger(&v100, 4) || mlir::Type::isSignedInteger(&v100, 8) || mlir::Type::isSignedInteger(&v100, 16) || mlir::Type::isSignedInteger(&v100, 32) || mlir::Type::isUnsignedInteger(&v100, 1) || mlir::Type::isUnsignedInteger(&v100, 2) || mlir::Type::isUnsignedInteger(&v100, 4) || mlir::Type::isUnsignedInteger(&v100, 8) || mlir::Type::isUnsignedInteger(&v100, 16) || mlir::Type::isUnsignedInteger(&v100, 32) || *(*v100 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
      {
        goto LABEL_118;
      }

      goto LABEL_88;
    }

LABEL_41:
    v29 = 0;
    goto LABEL_43;
  }

  ElementType = "requires attribute 'dtype'";
  v99 = 259;
  mlir::OpState::emitOpError(this, &ElementType, &v102);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
  if (v102)
  {
    mlir::InFlightDiagnostic::report(&v102);
  }

  if (v113 == 1)
  {
    if (v112 != &v113)
    {
      free(v112);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v111;
      v23 = __p;
      if (v111 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v111 = v21;
      operator delete(v23);
    }

    v24 = v108;
    if (v108)
    {
      v25 = v109;
      v26 = v108;
      if (v109 != v108)
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
        v26 = v108;
      }

      v109 = v24;
      operator delete(v26);
    }

    if (v104 != v107)
    {
      free(v104);
    }
  }

  return v20;
}

uint64_t mlir::mps::DimensionSizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::DimensionSizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::DimensionSizeOp::inferReturnTypes(v7, v5, 1, v18[0], v18[1], v8, v9, v10, v13, v14, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = v20;
  v12 = *(a2 + 72);
  if (v12 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v12), __src, 8 * v20);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DimensionSizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::DimensionSizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DimensionSizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::DimensionSizeOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v24;
  v19 = *(a2 + 72);
  if (v19 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v24);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::mps::DimensionSizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  v12 = a1;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v9 + 8);
    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v44 = v9;
    mlir::TensorType::operator mlir::ShapedType();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v44 + 8);
    v15 = *(v44 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v49[0] = a2;
  v49[1] = v22;
  v45[0] = mlir::ShapedType::getElementType(v49);
  if (mlir::Type::isSignedInteger(v45, 32))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v45, 64);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_23:
  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(v49, a1, v45);
  if (v49[0])
  {
    LODWORD(v47) = 3;
    *(&v47 + 1) = " #";
    v48 = 2;
    if (v51 >= v52)
    {
      if (v50 > &v47 || v50 + 24 * v51 <= &v47)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v50 + 24 * v51;
    v26 = v47;
    *(v25 + 2) = v48;
    *v25 = v26;
    v27 = ++v51;
    if (v49[0])
    {
      LODWORD(v47) = 5;
      *(&v47 + 1) = a5;
      if (v27 >= v52)
      {
        if (v50 > &v47 || v50 + 24 * v27 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v50 + 24 * v51;
      v29 = v47;
      *(v28 + 2) = v48;
      *v28 = v29;
      v30 = ++v51;
      if (v49[0])
      {
        LODWORD(v47) = 3;
        *(&v47 + 1) = " must be tensor of mps index type values, but got ";
        v48 = 50;
        if (v30 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v30 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v50 + 24 * v51;
        v32 = v47;
        *(v31 + 2) = v48;
        *v31 = v32;
        ++v51;
        if (v49[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          if (v51 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v51 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v50 + 24 * v51;
          v34 = v47;
          *(v33 + 2) = v48;
          *v33 = v34;
          ++v51;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v57;
      v37 = __p;
      if (v57 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v57 = v35;
      operator delete(v37);
    }

    v38 = v54;
    if (v54)
    {
      v39 = v55;
      v40 = v54;
      if (v55 != v54)
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
        v40 = v54;
      }

      v55 = v38;
      operator delete(v40);
    }

    if (v50 != &v53)
    {
      free(v50);
    }
  }

  return v24;
}

uint64_t mlir::mps::DiracOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::DiracOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::DiracOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::DiracOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::DiracOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DiracOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::DiracOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::DiracOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::DivideOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::mps::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DivideOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::DivideOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::DynamicShapeCastOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

unint64_t mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::DynamicShapeCastOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "SDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257374322 + v6 + 3;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257374322 + v23 + 3);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257374322 + v5 + 3))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::mps::DynamicShapeCastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "unranked", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
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

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
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
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::DynamicShapeCastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "unranked", 8, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::mps::DynamicShapeCastOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::DynamicShapeCastOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x64656B6E61726E75)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::DynamicShapeCastOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x64656B6E61726E75)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::mps::DynamicShapeCastOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "unranked", 8uLL, *a2);
  }

  return result;
}

BOOL mlir::mps::DynamicShapeCastOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

uint64_t mlir::mps::DynamicShapeCastOp::setUnranked(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::mps::DynamicShapeCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a5;
  v14 = a4;
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  if (a5)
  {
    result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  }

  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a6;
  }

  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DynamicShapeCastOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v19, 1uLL);
  }

  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
  }

  __src = v25;
  v24 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DynamicShapeCastOp::inferReturnTypes(v10, v14, v15, v22[0], v22[1], Dictionary, v13, v16, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = v24;
  v18 = *(a2 + 72);
  if (v18 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v18), __src, 8 * v24);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DynamicShapeCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a6;
  v18 = a5;
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  }

  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a7;
  }

  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

uint64_t mlir::mps::DynamicShapeCastOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = a5;
  v16 = a4;
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a5)
  {
    result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  }

  if (a6)
  {
    result = mlir::Builder::getUnitAttr(a1, v12);
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = result;
  }

  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DynamicShapeCastOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v21, 1uLL);
  }

  if (a5)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = UnitAttr;
  }

  __src = v27;
  v26 = 0x200000000;
  v12 = *a1;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DynamicShapeCastOp::inferReturnTypes(v12, v16, v17, v24[0], v24[1], Dictionary, v15, v18, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v26;
  v20 = *(a2 + 72);
  if (v20 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v26);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v27)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DynamicShapeCastOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v19 = a6;
  v20 = a5;
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  }

  if (!a7)
  {
    v15 = *(a2 + 72);
    if (a4 + v15 <= *(a2 + 76))
    {
      goto LABEL_5;
    }

LABEL_11:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v14);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::mps::DynamicShapeCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DynamicShapeCastOp::build(mlir::Float32Type **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  v20 = mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DynamicShapeCastOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v29;
  v26 = *(a2 + 72);
  if (v26 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v29);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::DynamicShapeCastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v31[0] = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v3, "unranked", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 9))
      {
        v25 = v4 - 16;
      }

      else
      {
        v25 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(v4, (*(*(*(v4 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v27 = "operand group starting at #";
  v28 = 259;
  mlir::OpState::emitOpError(this, &v27, v31);
  if (v31[0])
  {
    LODWORD(v29) = 5;
    *(&v29 + 1) = 1;
    if (v33 >= v34)
    {
      if (v32 > &v29 || v32 + 24 * v33 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v32 + 24 * v33;
    v8 = v29;
    *(v7 + 2) = v30;
    *v7 = v8;
    v9 = ++v33;
    if (v31[0])
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = " requires 0 or 1 element, but found ";
      v30 = 36;
      if (v9 >= v34)
      {
        if (v32 > &v29 || v32 + 24 * v9 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v32 + 24 * v33;
      v11 = v29;
      *(v10 + 2) = v30;
      *v10 = v11;
      v12 = ++v33;
      if (v31[0])
      {
        LODWORD(v29) = 5;
        *(&v29 + 1) = v6;
        if (v12 >= v34)
        {
          if (v32 > &v29 || v32 + 24 * v12 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v32 + 24 * v33;
        v14 = v29;
        *(v13 + 2) = v30;
        *v13 = v14;
        ++v33;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  v16 = result;
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
    result = v16;
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
      result = v16;
    }

    v17 = __p;
    if (__p)
    {
      v18 = v39;
      v19 = __p;
      if (v39 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v39 = v17;
      operator delete(v19);
      result = v16;
    }

    v20 = v36;
    if (v36)
    {
      v21 = v37;
      v22 = v36;
      if (v37 != v36)
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
        v22 = v36;
      }

      v37 = v20;
      operator delete(v22);
      result = v16;
    }

    if (v32 != &v35)
    {
      free(v32);
      return v16;
    }
  }

  return result;
}

uint64_t mlir::mps::EluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::EluOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::mps::EluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::EluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::EluOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::EluOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v15;
  v14 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v12, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v11, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = v14;
  v8 = *(a2 + 72);
  if (v8 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v8), __src, 8 * v14);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v15)
  {
    free(__src);
  }
}

unint64_t mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::EqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v19[2] = *MEMORY[0x277D85DE8];
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
  __src = v19;
  v18 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = v18;
  v15 = *(a2 + 72);
  if (v15 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v15), __src, 8 * v18);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v19)
  {
    free(__src);
  }
}

BOOL mlir::mps::EqualToOp::verifyInvariantsImpl(mlir::Operation **this)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = a1;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      if (!v15)
      {
        goto LABEL_18;
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
    if (v16 != &v14[2 * v15] && *v16 == v13)
    {
      v22 = v16[1];
LABEL_20:
      v48[0] = a2;
      v48[1] = v22;
      v44[0] = mlir::ShapedType::getElementType(v48);
      v23 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(v44, 1);
      a1 = v12;
      if (isSignlessInteger)
      {
        return v23;
      }

      goto LABEL_21;
    }

LABEL_18:
    v22 = 0;
    goto LABEL_20;
  }

LABEL_21:
  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(v48, a1, v44);
  if (v48[0])
  {
    LODWORD(v46) = 3;
    *(&v46 + 1) = " #";
    v47 = 2;
    if (v50 >= v51)
    {
      if (v49 > &v46 || v49 + 24 * v50 <= &v46)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v49 + 24 * v50;
    v26 = v46;
    *(v25 + 2) = v47;
    *v25 = v26;
    v27 = ++v50;
    if (v48[0])
    {
      LODWORD(v46) = 5;
      *(&v46 + 1) = a5;
      if (v27 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v27 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v49 + 24 * v50;
      v29 = v46;
      *(v28 + 2) = v47;
      *v28 = v29;
      v30 = ++v50;
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = " must be tensor of 1-bit signless integer values, but got ";
        v47 = 58;
        if (v30 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v30 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v49 + 24 * v50;
        v32 = v46;
        *(v31 + 2) = v47;
        *v31 = v32;
        ++v50;
        if (v48[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          if (v50 >= v51)
          {
            if (v49 > &v46 || v49 + 24 * v50 <= &v46)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v49 + 24 * v50;
          v34 = v46;
          *(v33 + 2) = v47;
          *v33 = v34;
          ++v50;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
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

    v35 = __p;
    if (__p)
    {
      v36 = v56;
      v37 = __p;
      if (v56 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v56 = v35;
      operator delete(v37);
    }

    v38 = v53;
    if (v53)
    {
      v39 = v54;
      v40 = v53;
      if (v54 != v53)
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
        v40 = v53;
      }

      v54 = v38;
      operator delete(v40);
    }

    if (v49 != &v52)
    {
      free(v49);
    }
  }

  return v23;
}

uint64_t mlir::mps::ErfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ErfOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::ErfOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::ErfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ErfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ErfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::ErfOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::ErfOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::ExpandDimsOp::inferReturnTypes(v7, v5, 1, v18[0], v18[1], v8, v9, v10, v13, v14, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = v20;
  v12 = *(a2 + 72);
  if (v12 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v12), __src, 8 * v20);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::ExpandDimsOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v24;
  v19 = *(a2 + 72);
  if (v19 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v24);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ExpandDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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

uint64_t mlir::mps::ExponentBase10Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ExponentBase10Op::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::ExponentBase10Op::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::ExponentBase10Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ExponentBase10Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ExponentBase10Op::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::ExponentBase10Op::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::ExponentBase10Op::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::ExponentBase2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ExponentBase2Op::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::ExponentBase2Op::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::ExponentBase2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ExponentBase2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ExponentBase2Op::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::ExponentBase2Op::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::ExponentBase2Op::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::ExponentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ExponentOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::ExponentOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::ExponentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ExponentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ExponentOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::ExponentOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::ExponentOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::detail::FastFourierTransformOpGenericAdaptorBase::FastFourierTransformOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::FastFourierTransformOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = "expected DictionaryAttr to set properties";
      v45 = 41;
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v47 + 24 * v48;
      v23 = v44;
      *(v22 + 2) = v45;
      *v22 = v23;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v54;
      v26 = __p;
      if (v54 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v54 = v24;
      operator delete(v26);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "inverse", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 52;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v47 + 24 * v48;
        v11 = v44;
        *(v10 + 2) = v45;
        *v10 = v11;
        ++v48;
        if (v46[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v47 + 24 * v48;
          v13 = v44;
          *(v12 + 2) = v45;
          *v12 = v13;
          ++v48;
          if (v46[0])
          {
            mlir::InFlightDiagnostic::report(v46);
          }
        }
      }

      if ((v56 & 1) == 0)
      {
        return 0;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
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

  v30 = mlir::DictionaryAttr::get(&v43, "scaling_mode", 0xCuLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 57;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
    ++v48;
    if (v46[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v31);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
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
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::FastFourierTransformOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "inverse", 7, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "scaling_mode", 0xC, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::FastFourierTransformOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::mps::FastFourierTransformOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 12)
  {
    if (a4 == 7 && *a3 == 1702260329 && *(a3 + 3) == 1702064741)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x5F676E696C616373 || a3[2] != 1701080941)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::mps::FastFourierTransformOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12)
  {
    if (*a2 == 0x5F676E696C616373 && *(a2 + 8) == 1701080941)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
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
  }

  else if (a3 == 7 && *a2 == 1702260329 && *(a2 + 3) == 1702064741)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  return result;
}

void mlir::mps::FastFourierTransformOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inverse", 7uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "scaling_mode", 0xCuLL, v5);
  }
}

BOOL mlir::mps::FastFourierTransformOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "inverse", 7, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v9, "scaling_mode", 12, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid FFT scaling mode";
        v22 = 54;
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

uint64_t mlir::mps::FastFourierTransformOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::FFTScalingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::FFTScalingModeAttr]";
  *(&v28 + 1) = 79;
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

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
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
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::mps::FastFourierTransformOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::FastFourierTransformOp::setScalingMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::FastFourierTransformOp::setInverse(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::mps::FastFourierTransformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = a6;
  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a7;
  }

  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::FastFourierTransformOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 8) = a5;
  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a6;
  }

  __src = v27;
  v26 = 0x200000000;
  v12 = *a1;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::FastFourierTransformOp::inferReturnTypes(v12, v16, v17, v24[0], v24[1], Dictionary, v15, v18, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v26;
  v20 = *(a2 + 72);
  if (v20 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v26);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v27)
  {
    free(__src);
  }
}

unint64_t mlir::mps::FastFourierTransformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a7;
  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a8;
  }

  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

uint64_t mlir::mps::FastFourierTransformOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v21 = a5;
  v22 = a4;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v23[1] = v12;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v27[1] = v23;
  v26 = a6;
  v14 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v14);
  v24[0] = &v26;
  v24[1] = v27;
  v25 = &v26;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = result;
  if (a7)
  {
    result = mlir::Builder::getUnitAttr(a1, v17);
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *v20 = result;
    v19 = *(a2 + 72);
    if (v19 >= *(a2 + 76))
    {
LABEL_4:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v19 = *(a2 + 72);
    if (v19 >= *(a2 + 76))
    {
      goto LABEL_4;
    }
  }

  *(*(a2 + 64) + 8 * v19) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::FastFourierTransformOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v10 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v35 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v36 = v10;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33 = &v35;
  v31 = a5;
  v12 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v12);
  v30 = &v31;
  v37 = &v31;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v37);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = ParametricStorageTypeImpl;
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v15);
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *v18 = UnitAttr;
  }

  __src = v34;
  v33 = 0x200000000;
  v19 = *a1;
  mlir::ValueRange::ValueRange(&v37, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v35, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::FastFourierTransformOp::inferReturnTypes(v19, v23, v24, v37, p_src, Dictionary, v22, v25, v35, v36, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = v33;
  v27 = *(a2 + 72);
  if (v27 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v27), __src, 8 * v33);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + v26;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::FastFourierTransformOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v25 = a6;
  v26 = a5;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v14 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v27[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v27[1] = v14;
  v31[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v31[1] = v27;
  v30 = a7;
  v16 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v16);
  v28[0] = &v30;
  v28[1] = v31;
  v29 = &v30;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 32) >> 15) ^ (-348639895 * (v16 ^ (v17 >> 47) ^ v17))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v28);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 8) = result;
  if (!a8)
  {
    v21 = *(a2 + 72);
    if (a4 + v21 <= *(a2 + 76))
    {
      goto LABEL_4;
    }

LABEL_11:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v19);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = result;
  v21 = *(a2 + 72);
  if (a4 + v21 > *(a2 + 76))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (a4)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v21;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v23);
      *(v24 + 8 * v23++) = result;
    }

    while (a4 != v23);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + a4;
  return result;
}

uint64_t mlir::mps::FastFourierTransformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::FastFourierTransformOp::build(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  v20 = mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::FastFourierTransformOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v29;
  v26 = *(a2 + 72);
  if (v26 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v29);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::FastFourierTransformOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v20[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(v4, "scaling_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) != 0 && (v20[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "inverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps20(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = "requires attribute 'scaling_mode'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v9 = __p;
      if (__p)
      {
        v10 = v26;
        v11 = __p;
        if (v26 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v26 = v9;
        operator delete(v11);
      }

      v12 = v23;
      if (v23)
      {
        v13 = v24;
        v14 = v23;
        if (v24 != v23)
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
          v14 = v23;
        }

        v24 = v12;
        operator delete(v14);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v8;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps27(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 17);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  {
    v61 = a1;
    v21 = v9;
    mlir::TensorType::operator mlir::ShapedType();
    a1 = v61;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = v21[1];
    v14 = *(v21 + 4);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = v9[1];
  v14 = *(v9 + 4);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v70[0] = a2;
  v70[1] = v23;
  *&v68 = mlir::ShapedType::getElementType(v70);
  if (mlir::Type::isF16(&v68) || mlir::Type::isF32(&v68) || mlir::Type::isBF16(&v68))
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 17);
  a1 = v22;
LABEL_24:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_45;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::mps::ConstantOp::verify();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = v35[1];
    v27 = *(v35 + 4);
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_41:
    v36 = a1;
    v37 = 0;
    goto LABEL_43;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = v9[1];
  v27 = *(v9 + 4);
  if (!v27)
  {
    goto LABEL_41;
  }

LABEL_31:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_41;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_43:
  v62 = a2;
  v63 = v37;
  ElementType = mlir::ShapedType::getElementType(&v62);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v58 = ElementType;
    v67 = ElementType;
    *&v68 = mlir::ComplexType::getElementType(&v67);
    if (!mlir::Type::isF16(&v68))
    {
      v65 = v58;
      v66 = mlir::ComplexType::getElementType(&v65);
      isF32 = mlir::Type::isF32(&v66);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_45;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_45:
  v64 = 261;
  v62 = a3;
  v63 = a4;
  mlir::Operation::emitOpError(v70, a1, &v62);
  if (v70[0])
  {
    LODWORD(v68) = 3;
    *(&v68 + 1) = " #";
    v69 = 2;
    if (v72 >= v73)
    {
      if (v71 > &v68 || v71 + 24 * v72 <= &v68)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v71 + 24 * v72;
    v40 = v68;
    *(v39 + 2) = v69;
    *v39 = v40;
    v41 = ++v72;
    if (v70[0])
    {
      LODWORD(v68) = 5;
      *(&v68 + 1) = a5;
      if (v41 >= v73)
      {
        if (v71 > &v68 || v71 + 24 * v41 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v71 + 24 * v72;
      v43 = v68;
      *(v42 + 2) = v69;
      *v42 = v43;
      v44 = ++v72;
      if (v70[0])
      {
        LODWORD(v68) = 3;
        *(&v68 + 1) = " must be tensor of floating point values or tensor of complex values, but got ";
        v69 = 78;
        if (v44 >= v73)
        {
          if (v71 > &v68 || v71 + 24 * v44 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v71 + 24 * v72;
        v46 = v68;
        *(v45 + 2) = v69;
        *v45 = v46;
        ++v72;
        if (v70[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v68, a2);
          if (v72 >= v73)
          {
            if (v71 > &v68 || v71 + 24 * v72 <= &v68)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v71 + 24 * v72;
          v48 = v68;
          *(v47 + 2) = v69;
          *v47 = v48;
          ++v72;
        }
      }
    }
  }

  v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
  if (v70[0])
  {
    mlir::InFlightDiagnostic::report(v70);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v78;
      v52 = __p;
      if (v78 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v78 = v50;
      operator delete(v52);
    }

    v53 = v75;
    if (v75)
    {
      v54 = v76;
      v55 = v75;
      if (v76 != v75)
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
        v55 = v75;
      }

      v76 = v53;
      operator delete(v55);
    }

    if (v71 != &v74)
    {
      free(v71);
    }
  }

  return v49;
}

uint64_t mlir::mps::Flatten2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::Flatten2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::Flatten2DOp::inferReturnTypes(v7, v5, 1, v18[0], v18[1], v8, v9, v10, v13, v14, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = v20;
  v12 = *(a2 + 72);
  if (v12 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v12), __src, 8 * v20);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::mps::Flatten2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::Flatten2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::Flatten2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::Flatten2DOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v24;
  v19 = *(a2 + 72);
  if (v19 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v24);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::mps::Flatten2DOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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

uint64_t mlir::mps::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::FloorDivideOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::mps::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::FloorDivideOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::FloorDivideOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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

uint64_t mlir::mps::FloorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::FloorOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::FloorOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::FloorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::FloorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::FloorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::FloorOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::FloorOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::detail::GRUGradientOpGenericAdaptorBase::GRUGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  *(a1 + 24) = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(a1 + 88) = v3[4];
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 104), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 104), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  *(a1 + 24) = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(a1 + 88) = v3[4];
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 104), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 104), 0, 0);
  }

  return a1;
}

unint64_t mlir::mps::detail::GRUGradientOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::GRUGradientOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 72);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 88);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 72);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::mps::GRUGradientOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
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
  a2(a3, v9, "gradient_recurrent_weight", 25);
  if (*(*a1 + 36))
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 2);
  v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  a2(a3, v12, "gradient_input_state", 20);
  v13 = *a1;
  v14 = *(*a1 + 36);
  v15 = v13 - 16;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 3);
  if (v14 != 3)
  {
    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v18, "gradient_bias", 13);
  }

  return result;
}

uint64_t mlir::mps::GRUGradientOp::getODSResults(mlir::mps::GRUGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_257388CC0 + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "MPSBytecodeDialectInterfaceE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_257388CC0 + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 4) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 4) * v5);
  }

  return result;
}

unint64_t mlir::mps::GRUGradientOp::getODSOperandIndexAndLength(mlir::mps::GRUGradientOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 112);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 128);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 112);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

unint64_t mlir::mps::GRUGradientOp::getODSResultIndexAndLength(mlir::mps::GRUGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "MPSBytecodeDialectInterfaceE";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_257388CC0 + v5;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_257388CC0 + v22);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = *(*this + 36);
  v31 = 0x100000000;
  if (*(&dword_257388CC0 + v4))
  {
    v31 = (v30 - 3) << 32;
  }

  return v31 | (a2 + (v30 - 4) * v6);
}

uint64_t mlir::mps::GRUGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v59 + 24 * v60;
      v23 = v55;
      *(v22 + 2) = v56;
      *v22 = v23;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v66;
      v26 = __p;
      if (v66 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v66 = v24;
      operator delete(v26);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_70;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_69:
      v64 = v17;
      operator delete(v19);
LABEL_70:
      if (v59 != &v62)
      {
        free(v59);
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
    v19 = v63;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "flip_z", 6uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 51;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v59 + 24 * v60;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v59 + 24 * v60;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v66;
        v16 = __p;
        if (v66 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v66 = v14;
        operator delete(v16);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_70;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
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

  v30 = mlir::DictionaryAttr::get(&v54, "gate_layout", 0xBuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
    {
      v31 = v30;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 56;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v59 + 24 * v60;
        v33 = v55;
        *(v32 + 2) = v56;
        *v32 = v33;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v31);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v59 + 24 * v60;
          v35 = v55;
          *(v34 + 2) = v56;
          *v34 = v35;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v66;
        v38 = __p;
        if (v66 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v66 = v36;
        operator delete(v38);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_70;
      }

      v39 = v64;
      v19 = v63;
      if (v64 == v63)
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

  v42 = mlir::DictionaryAttr::get(&v54, "ogate_activation", 0x10uLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v43 = v42;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 61;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v59 + 24 * v60;
        v45 = v55;
        *(v44 + 2) = v56;
        *v44 = v45;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v43);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v59 + 24 * v60;
          v47 = v55;
          *(v46 + 2) = v56;
          *v46 = v47;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v54, "reset_after", 0xBuLL);
  *&v55 = v48;
  if (v48)
  {
    if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v57, a4);
LABEL_96:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v55);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
      return 0;
    }

    a1[3] = v48;
  }

  v50 = mlir::DictionaryAttr::get(&v54, "rgate_activation", 0x10uLL);
  *&v55 = v50;
  if (v50)
  {
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v57, a4);
LABEL_95:
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v57, v51);
      goto LABEL_96;
    }

    a1[4] = v50;
  }

  v52 = mlir::DictionaryAttr::get(&v54, "zgate_activation", 0x10uLL);
  *&v55 = v52;
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v57, a4);
      goto LABEL_95;
    }

    a1[5] = v52;
  }

  if (mlir::DictionaryAttr::get(&v54, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v54, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::GRUGradientOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = v29;
  v28 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v26, "flip_z", 6, *a2);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v27 + 16 * v28);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v28) = v28 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v26, "gate_layout", 0xB, v6);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v27 + 16 * v28);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v28) = v28 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v26, "ogate_activation", 0x10, v10);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v27 + 16 * v28);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v28) = v28 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v26, "reset_after", 0xB, v14);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v27 + 16 * v28);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v28) = v28 + 1;
  }

  v18 = a2[4];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v26, "rgate_activation", 0x10, v18);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = (v27 + 16 * v28);
    *v21 = v19;
    v21[1] = v20;
    LODWORD(v28) = v28 + 1;
  }

  v22 = a2[5];
  if (v22)
  {
    v23 = mlir::Builder::getNamedAttr(&v26, "zgate_activation", 0x10, v22);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = (v27 + 16 * v28);
    *v25 = v23;
    v25[1] = v24;
    LODWORD(v28) = v28 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::GRUGradientOp::computePropertiesHash(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[3];
  v8 = HIDWORD(a1[2]);
  v9 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v8);
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v30 = v6;
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v28 = v12;
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = 0xB492B66FBE98F273 * a1[6];
  v20 = 0x9AE16A3B2F90404FLL * *(a1 + 68);
  v21 = __ROR8__(v20 ^ 0xFF51AFD7ED558CCDLL, 30);
  v22 = __ROR8__(v19 - v18, 43) - 0x3C5A37A36834CED9 * *(a1 + 60);
  v23 = v19 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v20 + 28;
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)))) ^ ((0x9DDFEA08EB382D69 * (v23 ^ ((0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v22 + v21) ^ v23)))) >> 47));
  memset(v32, 0, sizeof(v32));
  v33 = 0xFF51AFD7ED558CCDLL;
  v31 = 0x9DDFEA08EB382D69 * v3;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v31, 0, v32, &v32[3] + 8, &v30, &v29, &v28, &v27, &v26, &v25);
}

uint64_t mlir::mps::GRUGradientOp::getInherentAttr(int a1, void *a2, _WORD *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n == 6)
    {
      if (*__s1 == 1885957222 && __s1[2] == 31327)
      {
        return *a2;
      }
    }

    else if (__n == 11)
    {
      if (memcmp(__s1, "gate_layout", 0xBuLL))
      {
        if (!memcmp(__s1, "reset_after", 0xBuLL))
        {
          return a2[3];
        }

        return 0;
      }

      return a2[1];
    }

    return 0;
  }

  if (__n != 16)
  {
    if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        goto LABEL_21;
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
LABEL_21:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  if (!memcmp(__s1, "ogate_activation", 0x10uLL))
  {
    return a2[2];
  }

  if (memcmp(__s1, "rgate_activation", 0x10uLL))
  {
    if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
    {
      return a2[5];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::GRUGradientOp::setInherentAttr(uint64_t result, _WORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 15)
  {
    if (a3 == 6)
    {
      if (*__s1 == 1885957222 && __s1[2] == 31327)
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

          *result = v12;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 11)
    {
      result = memcmp(__s1, "gate_layout", 0xBuLL);
      if (result)
      {
        result = memcmp(__s1, "reset_after", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v5[1] = v14;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else
  {
    if (a3 != 16)
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (a3 != 21)
        {
          return result;
        }

        result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
        if (result)
        {
          return result;
        }
      }

      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::classof();
      }

      return result;
    }

    result = memcmp(__s1, "ogate_activation", 0x10uLL);
    if (result)
    {
      result = memcmp(__s1, "rgate_activation", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x63615F657461677ALL && *(__s1 + 1) == 0x6E6F697461766974)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
            {
              v10 = a4;
            }

            else
            {
              v10 = 0;
            }

            v5[5] = v10;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v15 = a4;
        }

        else
        {
          v15 = 0;
        }

        v5[4] = v15;
      }

      else
      {
        v5[4] = 0;
      }
    }

    else if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v5[2] = v13;
    }

    else
    {
      v5[2] = 0;
    }
  }

  return result;
}

void mlir::mps::GRUGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "flip_z", 6uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 0xBuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "reset_after", 0xBuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "rgate_activation", 0x10uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 0x10uLL, v9);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::GRUGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "flip_z", 6, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(v9, "gate_layout", 11, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v10, "ogate_activation", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "reset_after", 11, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "rgate_activation", 16, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v13, "zgate_activation", 16, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid GRU gate layout";
        v22 = 53;
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid RNN activation";
        v22 = 52;
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

uint64_t mlir::mps::GRUGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::GRUGateLayoutAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 2))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 5))
      {
        v5[0] = a1;
        v5[1] = (v3 + 6);
        return mlir::mps::GRUGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v5) & 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 8)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5[0] = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(v8, a1, v5);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
      }
    }
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::GRUGateLayoutAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::GRUGateLayoutAttr]";
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::RNNActivationAttr]";
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

uint64_t mlir::mps::GRUGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 7uLL);
}

uint64_t mlir::mps::GRUGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 24))(a2, *(v5 + 16));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 24))(a2, *(v5 + 24));
  (*(*a2 + 24))(a2, *(v5 + 32));
  (*(*a2 + 24))(a2, *(v5 + 40));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 48), 7);
  }

  return result;
}

uint64_t mlir::mps::GRUGradientOp::setZgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::mps::GRUGradientOp::setRgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::GRUGradientOp::setOgateActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::GRUGradientOp::setGateLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::GRUGradientOp::setResetAfter(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 88) = this;
  }

  else
  {
    *(v2 + 88) = 0;
  }

  return this;
}

uint64_t mlir::mps::GRUGradientOp::setFlipZ(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::mps::GRUGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = a18;
  v48 = a8;
  v49 = a7;
  v46 = a10;
  v47 = a9;
  v44 = a18;
  v45 = a17;
  v43 = a19;
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  mlir::OperationState::addOperands(a2, &v48, 1uLL);
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v46, 1uLL);
  if (a17)
  {
    result = mlir::OperationState::addOperands(a2, &v45, 1uLL);
    v23 = v44;
  }

  if (v23)
  {
    result = mlir::OperationState::addOperands(a2, &v44, 1uLL);
  }

  if (v43)
  {
    result = mlir::OperationState::addOperands(a2, &v43, 1uLL);
    v25 = v43 != 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = v45 != 0;
  v27 = v44 != 0;
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *&v29 = 0x100000001;
  *(&v29 + 1) = 0x100000001;
  *(v28 + 48) = v29;
  *(v28 + 64) = v26;
  *(v28 + 68) = v27;
  *(v28 + 72) = v25;
  if (a11)
  {
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *(v30 + 40) = a11;
  }

  if (a12)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 32) = a12;
  }

  if (a13)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 16) = a13;
  }

  if (a14)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 8) = a14;
  }

  if (a15)
  {
    v34 = *(a2 + 256);
    if (!v34)
    {
      operator new();
    }

    *(v34 + 24) = a15;
  }

  if (a16)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *v35 = a16;
  }

  v36 = *(a2 + 72);
  if (v36 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v36) = a3;
  v37 = *(a2 + 76);
  v38 = *(a2 + 72) + 1;
  *(a2 + 72) = v38;
  if (v38 >= v37)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v38) = a4;
  v39 = *(a2 + 76);
  v40 = *(a2 + 72) + 1;
  *(a2 + 72) = v40;
  if (v40 >= v39)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v40) = a5;
  v41 = *(a2 + 72) + 1;
  *(a2 + 72) = v41;
  if (a6)
  {
    if (v41 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v41) = a6;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::GRUGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = a14;
  v49[2] = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a3;
  v41 = a6;
  v42 = a5;
  v39 = a14;
  v40 = a13;
  v38 = a15;
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  if (a13)
  {
    mlir::OperationState::addOperands(a2, &v40, 1uLL);
    v18 = v39;
  }

  if (v18)
  {
    mlir::OperationState::addOperands(a2, &v39, 1uLL);
  }

  if (v38)
  {
    mlir::OperationState::addOperands(a2, &v38, 1uLL);
    v19 = v38 != 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v40 != 0;
  v21 = v39 != 0;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *&v23 = 0x100000001;
  *(&v23 + 1) = 0x100000001;
  *(v22 + 48) = v23;
  *(v22 + 64) = v20;
  *(v22 + 68) = v21;
  *(v22 + 72) = v19;
  if (a7)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 40) = a7;
  }

  if (a8)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 32) = a8;
  }

  if (a9)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 16) = a9;
  }

  if (a10)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 8) = a10;
  }

  if (a11)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 24) = a11;
  }

  if (a12)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *v29 = a12;
  }

  v47 = v49;
  v48 = 0x200000000;
  v30 = *a2;
  mlir::ValueRange::ValueRange(v46, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v33 = *(a2 + 256);
  v34 = mlir::RegionRange::RegionRange(v45, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::GRUGradientOp::inferReturnTypes(v34, v30, 1, v46[0], v46[1], Dictionary, v33, v35, v45[0], v45[1], &v47))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v36 = v48;
  v37 = *(a2 + 72);
  if (v37 + v48 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v48)
  {
    memcpy((*(a2 + 64) + 8 * v37), v47, 8 * v48);
    LODWORD(v37) = *(a2 + 72);
  }

  *(a2 + 72) = v37 + v36;
  if (v47 != v49)
  {
    free(v47);
  }
}

unint64_t mlir::mps::GRUGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = a16;
  v41 = a6;
  v42 = a5;
  v39 = a8;
  v40 = a7;
  v37 = a16;
  v38 = a15;
  v36 = a17;
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v39, 1uLL);
  if (a15)
  {
    result = mlir::OperationState::addOperands(a2, &v38, 1uLL);
    v20 = v37;
  }

  if (v20)
  {
    result = mlir::OperationState::addOperands(a2, &v37, 1uLL);
  }

  if (v36)
  {
    result = mlir::OperationState::addOperands(a2, &v36, 1uLL);
    v22 = v36 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = v38 != 0;
  v24 = v37 != 0;
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *&v26 = 0x100000001;
  *(&v26 + 1) = 0x100000001;
  *(v25 + 48) = v26;
  *(v25 + 64) = v23;
  *(v25 + 68) = v24;
  *(v25 + 72) = v22;
  if (a9)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 40) = a9;
  }

  if (a10)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 32) = a10;
  }

  if (a11)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a11;
  }

  if (a12)
  {
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *(v30 + 8) = a12;
  }

  if (a13)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = a13;
  }

  if (a14)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *v32 = a14;
  }

  v33 = *(a2 + 72);
  if (a4 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v34 = 0;
    v35 = *(a2 + 64) + 8 * v33;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v34);
      *(v35 + 8 * v34++) = result;
    }

    while (a4 != v34);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + a4;
  return result;
}