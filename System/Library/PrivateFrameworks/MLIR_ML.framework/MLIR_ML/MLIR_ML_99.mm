uint64_t mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase::getIndicesResultType(mlir::mps::detail::PoolMaxGradientOpGenericAdaptorBase *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::PoolMaxGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v143 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v130 = a1[5];
  v4 = a1[11];
  if (!v4)
  {
    v127 = "'mps.pooling_max_gradient' op requires attribute 'window_sizes'";
    v129 = 259;
    mlir::emitError(a2, &v127, &v133);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
    if (v133)
    {
      mlir::InFlightDiagnostic::report(&v133);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v140;
        v20 = __p;
        if (v140 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v140 = v18;
        operator delete(v20);
      }

      v21 = v137;
      if (!v137)
      {
        goto LABEL_172;
      }

      v22 = v138;
      v23 = v137;
      if (v138 == v137)
      {
        goto LABEL_171;
      }

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
      goto LABEL_170;
    }

    return v17;
  }

  v5 = a1[8];
  v6 = a1[10];
  v7 = *v4;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v26 = v7;
    mlir::mps::ConstantOp::getAsAttribute();
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v9 = *(v26 + 8);
    v10 = *(v26 + 16);
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v28 = v11[1];
    v127 = v4;
    v128 = v28;
    Type = mlir::ElementsAttr::getType(&v127);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v127 = v4;
  v128 = 0;
  Type = mlir::ElementsAttr::getType(&v127);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v29 = *Type;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    if (!v32)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v120 = v29;
    v121 = Type;
    mlir::mps::ConstantOp::verify();
    Type = v121;
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v120 + 8);
    v32 = *(v120 + 16);
    if (!v32)
    {
      goto LABEL_45;
    }
  }

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
  if (v33 != &v31[2 * v32] && *v33 == v30)
  {
    v39 = v33[1];
    goto LABEL_46;
  }

LABEL_45:
  v39 = 0;
LABEL_46:
  v133 = Type;
  v134 = v39;
  Shape = mlir::ShapedType::getShape(&v133);
  v132 = 4;
  if (v41 != 1 || *Shape != v132 || (v124 = v4, v125 = mlir::DenseElementsAttr::getType(&v124), v126 = v42, ElementType = mlir::ShapedType::getElementType(&v125), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
  {
    v127 = "'mps.pooling_max_gradient' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v129 = 259;
    mlir::emitError(a2, &v127, &v133);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
    if (v133)
    {
      mlir::InFlightDiagnostic::report(&v133);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v140;
        v55 = __p;
        if (v140 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v140 = v53;
        operator delete(v55);
      }

      v21 = v137;
      if (!v137)
      {
        goto LABEL_172;
      }

      v56 = v138;
      v23 = v137;
      if (v138 == v137)
      {
        goto LABEL_171;
      }

      do
      {
        v58 = *--v56;
        v57 = v58;
        *v56 = 0;
        if (v58)
        {
          MEMORY[0x259C63150](v57, 0x1000C8077774924);
        }
      }

      while (v56 != v21);
      goto LABEL_170;
    }

    return v17;
  }

  if (!v6)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v75 = *v3;
    {
      v76 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (v78)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v76 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v77 = *(v75 + 8);
      v78 = *(v75 + 16);
      if (v78)
      {
LABEL_101:
        v79 = v77;
        v80 = v78;
        do
        {
          v81 = v80 >> 1;
          v82 = &v79[2 * (v80 >> 1)];
          v84 = *v82;
          v83 = v82 + 2;
          v80 += ~(v80 >> 1);
          if (v84 < v76)
          {
            v79 = v83;
          }

          else
          {
            v80 = v81;
          }
        }

        while (v80);
LABEL_126:
        if (v79 != &v77[2 * v78] && *v79 == v76)
        {
          v91 = v79[1];
        }

        else
        {
          v91 = 0;
        }

        v127 = v3;
        v128 = v91;
        v92 = mlir::ElementsAttr::getType(&v127);
        if (!v92)
        {
          goto LABEL_143;
        }

        v93 = *v92;
        {
          v94 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v95 = *(v93 + 8);
          v96 = *(v93 + 16);
          if (v96)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v103 = v92;
          mlir::mps::ConstantOp::verify();
          v92 = v103;
          v94 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v95 = *(v93 + 8);
          v96 = *(v93 + 16);
          if (v96)
          {
LABEL_133:
            v97 = v95;
            v98 = v96;
            do
            {
              v99 = v98 >> 1;
              v100 = &v97[2 * (v98 >> 1)];
              v102 = *v100;
              v101 = v100 + 2;
              v98 += ~(v98 >> 1);
              if (v102 < v94)
              {
                v97 = v101;
              }

              else
              {
                v98 = v99;
              }
            }

            while (v98);
LABEL_141:
            if (v97 != &v95[2 * v96] && *v97 == v94)
            {
              v104 = v97[1];
              goto LABEL_144;
            }

LABEL_143:
            v104 = 0;
LABEL_144:
            v133 = v92;
            v134 = v104;
            v105 = mlir::ShapedType::getShape(&v133);
            v132 = 4;
            if (v106 == 1 && *v105 == v132)
            {
              v124 = v3;
              v125 = mlir::DenseElementsAttr::getType(&v124);
              v126 = v107;
              ElementType = mlir::ShapedType::getElementType(&v125);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_147:
                if (!v130 || (v127 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v130), v128 = v108, v132 = mlir::ElementsAttr::getType(&v127), v133 = mlir::TensorType::operator mlir::ShapedType(&v132), v134 = v109, v110 = mlir::ShapedType::getShape(&v133), ElementType = 8, v111 == 1) && *v110 == ElementType && (v123 = v130, v125 = mlir::DenseElementsAttr::getType(&v123), v126 = v112, v124 = mlir::ShapedType::getElementType(&v125), mlir::Type::isUnsignedInteger(&v124, 64)))
                {
                  if (v5)
                  {
                    v133 = v5;
                    mlir::TypeAttr::getValue(&v133);
                  }

                  return 1;
                }

                else
                {
                  v127 = "'mps.pooling_max_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                  v129 = 259;
                  mlir::emitError(a2, &v127, &v133);
                  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
                  if (v133)
                  {
                    mlir::InFlightDiagnostic::report(&v133);
                  }

                  if (v142 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v134);
                  }
                }

                return v17;
              }
            }

            v127 = "'mps.pooling_max_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v129 = 259;
            mlir::emitError(a2, &v127, &v133);
            v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
            if (v133)
            {
              mlir::InFlightDiagnostic::report(&v133);
            }

            if (v142 == 1)
            {
              if (v141 != &v142)
              {
                free(v141);
              }

              v113 = __p;
              if (__p)
              {
                v114 = v140;
                v115 = __p;
                if (v140 != __p)
                {
                  do
                  {
                    v114 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v114 - 1);
                  }

                  while (v114 != v113);
                  v115 = __p;
                }

                v140 = v113;
                operator delete(v115);
              }

              v21 = v137;
              if (!v137)
              {
                goto LABEL_172;
              }

              v116 = v138;
              v23 = v137;
              if (v138 == v137)
              {
LABEL_171:
                v138 = v21;
                operator delete(v23);
LABEL_172:
                if (v135 != &v136)
                {
                  free(v135);
                }

                return v17;
              }

              do
              {
                v118 = *--v116;
                v117 = v118;
                *v116 = 0;
                if (v118)
                {
                  MEMORY[0x259C63150](v117, 0x1000C8077774924);
                }
              }

              while (v116 != v21);
LABEL_170:
              v23 = v137;
              goto LABEL_171;
            }

            return v17;
          }
        }

        v96 = 0;
        v97 = v95;
        goto LABEL_141;
      }
    }

    v78 = 0;
    v79 = v77;
    goto LABEL_126;
  }

  v43 = *v6;
  {
    v44 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v45 = *(v43 + 8);
    v46 = *(v43 + 16);
    if (v46)
    {
      goto LABEL_52;
    }

LABEL_76:
    v46 = 0;
    v47 = v45;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v44 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  if (!v46)
  {
    goto LABEL_76;
  }

LABEL_52:
  v47 = v45;
  v48 = v46;
  do
  {
    v49 = v48 >> 1;
    v50 = &v47[2 * (v48 >> 1)];
    v52 = *v50;
    v51 = v50 + 2;
    v48 += ~(v48 >> 1);
    if (v52 < v44)
    {
      v47 = v51;
    }

    else
    {
      v48 = v49;
    }
  }

  while (v48);
LABEL_77:
  if (v47 != &v45[2 * v46] && *v47 == v44)
  {
    v60 = v47[1];
    v127 = v6;
    v128 = v60;
    v59 = mlir::ElementsAttr::getType(&v127);
    if (!v59)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v127 = v6;
    v128 = 0;
    v59 = mlir::ElementsAttr::getType(&v127);
    if (!v59)
    {
      goto LABEL_94;
    }
  }

  v61 = *v59;
  {
    v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v63 = *(v61 + 8);
    v64 = *(v61 + 16);
    if (v64)
    {
      goto LABEL_84;
    }

LABEL_91:
    v64 = 0;
    v65 = v63;
    goto LABEL_92;
  }

  v122 = v59;
  mlir::mps::ConstantOp::verify();
  v59 = v122;
  v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v63 = *(v61 + 8);
  v64 = *(v61 + 16);
  if (!v64)
  {
    goto LABEL_91;
  }

LABEL_84:
  v65 = v63;
  v66 = v64;
  do
  {
    v67 = v66 >> 1;
    v68 = &v65[2 * (v66 >> 1)];
    v70 = *v68;
    v69 = v68 + 2;
    v66 += ~(v66 >> 1);
    if (v70 < v62)
    {
      v65 = v69;
    }

    else
    {
      v66 = v67;
    }
  }

  while (v66);
LABEL_92:
  if (v65 != &v63[2 * v64] && *v65 == v62)
  {
    v71 = v65[1];
    goto LABEL_95;
  }

LABEL_94:
  v71 = 0;
LABEL_95:
  v133 = v59;
  v134 = v71;
  v72 = mlir::ShapedType::getShape(&v133);
  v132 = 4;
  if (v73 == 1 && *v72 == v132)
  {
    v124 = v6;
    v125 = mlir::DenseElementsAttr::getType(&v124);
    v126 = v74;
    ElementType = mlir::ShapedType::getElementType(&v125);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      goto LABEL_98;
    }
  }

  v127 = "'mps.pooling_max_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v129 = 259;
  mlir::emitError(a2, &v127, &v133);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
  if (v133)
  {
    mlir::InFlightDiagnostic::report(&v133);
  }

  if (v142 == 1)
  {
    if (v141 != &v142)
    {
      free(v141);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v140;
      v87 = __p;
      if (v140 != __p)
      {
        do
        {
          v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v140 = v85;
      operator delete(v87);
    }

    v21 = v137;
    if (!v137)
    {
      goto LABEL_172;
    }

    v88 = v138;
    v23 = v137;
    if (v138 == v137)
    {
      goto LABEL_171;
    }

    do
    {
      v90 = *--v88;
      v89 = v90;
      *v88 = 0;
      if (v90)
      {
        MEMORY[0x259C63150](v89, 0x1000C8077774924);
      }
    }

    while (v88 != v21);
    goto LABEL_170;
  }

  return v17;
}

unint64_t mlir::mps::PoolMaxGradientOp::getODSOperandIndexAndLength(mlir::mps::PoolMaxGradientOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 136);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 152);
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

  v12 = (16 * v2 + 4 * v5 + *this + 136);
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

uint64_t mlir::mps::PoolMaxGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(&v62, a4);
    if (v62)
    {
      LODWORD(v60) = 3;
      *(&v60 + 1) = "expected DictionaryAttr to set properties";
      v61 = 41;
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v64 + 24 * v65;
      v23 = v60;
      *(v22 + 2) = v61;
      *v22 = v23;
      ++v65;
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v71;
      v26 = __p;
      if (v71 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v71 = v24;
      operator delete(v26);
    }

    v17 = v68;
    if (!v68)
    {
      goto LABEL_77;
    }

    v27 = v69;
    v19 = v68;
    if (v69 == v68)
    {
LABEL_76:
      v69 = v17;
      operator delete(v19);
LABEL_77:
      if (v64 != &v67)
      {
        free(v64);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v59, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v62, a4);
      if (v62)
      {
        LODWORD(v60) = 3;
        v61 = 54;
        if (v65 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v65 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v64 + 24 * v65;
        v11 = v60;
        *(v10 + 2) = v61;
        *v10 = v11;
        ++v65;
        if (v62)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          if (v65 >= v66)
          {
            if (v64 > &v60 || v64 + 24 * v65 <= &v60)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v64 + 24 * v65;
          v13 = v60;
          *(v12 + 2) = v61;
          *v12 = v13;
          ++v65;
          if (v62)
          {
            mlir::InFlightDiagnostic::report(&v62);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v71;
        v16 = __p;
        if (v71 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v71 = v14;
        operator delete(v16);
      }

      v17 = v68;
      if (!v68)
      {
        goto LABEL_77;
      }

      v18 = v69;
      v19 = v68;
      if (v69 == v68)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v59, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v62, a4);
    if (v62)
    {
      LODWORD(v60) = 3;
      v61 = 59;
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v64 + 24 * v65;
      v37 = v60;
      *(v36 + 2) = v61;
      *v36 = v37;
      ++v65;
      if (v62)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v60, v31);
        if (v65 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v65 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v64 + 24 * v65;
        v39 = v60;
        *(v38 + 2) = v61;
        *v38 = v39;
        ++v65;
        if (v62)
        {
          mlir::InFlightDiagnostic::report(&v62);
        }
      }
    }

    if ((v73 & 1) == 0)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v71;
      v42 = __p;
      if (v71 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v71 = v40;
      operator delete(v42);
    }

    v17 = v68;
    if (!v68)
    {
      goto LABEL_77;
    }

    v43 = v69;
    v19 = v68;
    if (v69 == v68)
    {
      goto LABEL_76;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        MEMORY[0x259C63150](v44, 0x1000C8077774924);
      }
    }

    while (v43 != v17);
LABEL_75:
    v19 = v68;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v59, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v62, a4);
      if (v62)
      {
        LODWORD(v60) = 3;
        v61 = 61;
        if (v65 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v65 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v64 + 24 * v65;
        v47 = v60;
        *(v46 + 2) = v61;
        *v46 = v47;
        ++v65;
        if (v62)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v33);
          if (v65 >= v66)
          {
            if (v64 > &v60 || v64 + 24 * v65 <= &v60)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v64 + 24 * v65;
          v49 = v60;
          *(v48 + 2) = v61;
          *v48 = v49;
          ++v65;
          if (v62)
          {
            mlir::InFlightDiagnostic::report(&v62);
          }
        }
      }

      if (v73 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v63);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v59, "include_zero_pad", 0x10uLL);
  *&v60 = v34;
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v62, a4);
LABEL_112:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
      return 0;
    }

    a1[3] = v34;
  }

  v50 = mlir::DictionaryAttr::get(&v59, "indices_mode", 0xCuLL);
  *&v60 = v50;
  if (v50)
  {
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
    {
      a3(&v62, a4);
LABEL_91:
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v62, v51);
      goto LABEL_112;
    }

    a1[4] = v50;
  }

  v52 = mlir::DictionaryAttr::get(&v59, "indices_result_type", 0x13uLL);
  *&v60 = v52;
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      a3(&v62, a4);
      goto LABEL_112;
    }

    a1[5] = v52;
  }

  v53 = mlir::DictionaryAttr::get(&v59, "padding_style", 0xDuLL);
  *&v60 = v53;
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
    {
      a3(&v62, a4);
      goto LABEL_112;
    }

    a1[6] = v53;
  }

  v54 = mlir::DictionaryAttr::get(&v59, "strides", 7uLL);
  *&v60 = v54;
  if (v54)
  {
    v55 = v54;
    if (!mlir::DenseIntElementsAttr::classof(v54))
    {
      a3(&v62, a4);
      goto LABEL_112;
    }

    a1[7] = v55;
  }

  v56 = mlir::DictionaryAttr::get(&v59, "window_sizes", 0xCuLL);
  *&v60 = v56;
  if (v56)
  {
    v57 = v56;
    if (!mlir::DenseIntElementsAttr::classof(v56))
    {
      a3(&v62, a4);
      goto LABEL_91;
    }

    a1[8] = v57;
  }

  if (mlir::DictionaryAttr::get(&v59, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v59, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::PoolMaxGradientOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v41[6] = *MEMORY[0x277D85DE8];
  v38 = a1;
  v39 = v41;
  v40 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v38, "ceil_mode", 9, *a2);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v39 + 16 * v40);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v40) = v40 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v38, "dilation_rates", 0xE, v6);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v39 + 16 * v40);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v40) = v40 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v38, "explicit_padding", 0x10, v10);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v39 + 16 * v40);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v40) = v40 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v38, "include_zero_pad", 0x10, v14);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v39 + 16 * v40);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v40) = v40 + 1;
  }

  v18 = a2[4];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v38, "indices_mode", 0xC, v18);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = (v39 + 16 * v40);
    *v21 = v19;
    v21[1] = v20;
    LODWORD(v40) = v40 + 1;
  }

  v22 = a2[5];
  if (v22)
  {
    v23 = mlir::Builder::getNamedAttr(&v38, "indices_result_type", 0x13, v22);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = (v39 + 16 * v40);
    *v25 = v23;
    v25[1] = v24;
    LODWORD(v40) = v40 + 1;
  }

  v26 = a2[6];
  if (v26)
  {
    v27 = mlir::Builder::getNamedAttr(&v38, "padding_style", 0xD, v26);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v29 = (v39 + 16 * v40);
    *v29 = v27;
    v29[1] = v28;
    LODWORD(v40) = v40 + 1;
  }

  v30 = a2[7];
  if (v30)
  {
    v31 = mlir::Builder::getNamedAttr(&v38, "strides", 7, v30);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = (v39 + 16 * v40);
    *v33 = v31;
    v33[1] = v32;
    LODWORD(v40) = v40 + 1;
  }

  v34 = a2[8];
  if (v34)
  {
    v35 = mlir::Builder::getNamedAttr(&v38, "window_sizes", 0xC, v34);
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v37 = (v39 + 16 * v40);
    *v37 = v35;
    v37[1] = v36;
    LODWORD(v40) = v40 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::PoolMaxGradientOp::computePropertiesHash(void *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = v10 ^ (v11 >> 47) ^ v11;
  v13 = a1[5];
  v14 = HIDWORD(a1[4]);
  v15 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v14);
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v16 = HIDWORD(v13);
  v17 = 0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13));
  v38 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  v18 = a1[7];
  v19 = HIDWORD(a1[6]);
  v20 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v19);
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) ^ ((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 47));
  v21 = HIDWORD(v18);
  v22 = 0x9DDFEA08EB382D69 * ((8 * v18 - 0xAE502812AA7333) ^ HIDWORD(v18));
  v36 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  v23 = a1[9];
  v24 = HIDWORD(a1[8]);
  v25 = 0x9DDFEA08EB382D69 * ((8 * a1[8] - 0xAE502812AA7333) ^ v24);
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
  v27 = 0x9DDFEA08EB382D69 * v12;
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) ^ ((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 47));
  v28 = a1[10];
  v29 = __ROR8__(v28 + 16, 16);
  v34 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)))) ^ ((0x9DDFEA08EB382D69 * (v29 ^ ((0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ 0xFF51AFD7ED558CCDLL ^ v29)))) >> 47))) ^ v28;
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  v45 = 0;
  v46 = 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
  v42[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v42[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v40 = 0;
  v31 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v42, &v40, v43, v44, v26);
  v41 = v40;
  v32 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v42, &v41, v31, v44, v30);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v42, v41, v32, v44, &v39, &v38, &v37, &v36, &v35, &v34);
}

uint64_t mlir::mps::PoolMaxGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    if (__n <= 18)
    {
      if (__n == 14)
      {
        if (!memcmp(__s1, "dilation_rates", 0xEuLL))
        {
          return a2[1];
        }

        return 0;
      }

      if (__n == 16)
      {
        if (!memcmp(__s1, "explicit_padding", 0x10uLL))
        {
          return a2[2];
        }

        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          return a2[3];
        }
      }

      return 0;
    }

    if (__n == 19)
    {
      if (!memcmp(__s1, "indices_result_type", 0x13uLL))
      {
        return a2[5];
      }

      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n <= 11)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[7];
      }
    }

    else if (__n == 9 && *__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 12)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (memcmp(__s1, "indices_mode", 0xCuLL))
  {
    if (!memcmp(__s1, "window_sizes", 0xCuLL))
    {
      return a2[8];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::PoolMaxGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 > 18)
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "indices_result_type", 0x13uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v17 = a4;
            }

            else
            {
              v17 = 0;
            }

            v5[5] = v17;
          }

          else
          {
            v5[5] = 0;
          }

          return result;
        }

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
    }

    else if (a3 == 14)
    {
      result = memcmp(__s1, "dilation_rates", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
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

            v5[3] = v9;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }

        v5[2] = v19;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else if (a3 > 11)
  {
    if (a3 == 12)
    {
      result = memcmp(__s1, "indices_mode", 0xCuLL);
      if (result)
      {
        result = memcmp(__s1, "window_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            v5[8] = v14;
          }

          else
          {
            v5[8] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        v5[4] = v16;
      }

      else
      {
        v5[4] = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "padding_style", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[6] = v10;
        }

        else
        {
          v5[6] = 0;
        }
      }
    }
  }

  else if (a3 == 7)
  {
    result = memcmp(__s1, "strides", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        v5[7] = v11;
      }

      else
      {
        v5[7] = 0;
      }
    }
  }

  else if (a3 == 9 && *__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v18 = a4;
      }

      else
      {
        v18 = 0;
      }

      *result = v18;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::PoolMaxGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "indices_mode", 0xCuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "indices_result_type", 0x13uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v11);
  }

  v12 = a2[8];
  if (v12)
  {
    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v12);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::PoolMaxGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "include_zero_pad", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v12, "indices_mode", 12, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v13, "indices_result_type", 19, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v14, "padding_style", 13, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4) & 1) != 0)
                {
                  v16 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 64));
                  if (!v16 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v16, "window_sizes", 12, a3, a4) & 1) != 0)
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
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: max pool return indices mode";
        v22 = 60;
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

uint64_t mlir::mps::PoolMaxGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 5))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 8))
      {
        v5[0] = a1;
        v5[1] = (v3 + 9);
        return mlir::mps::PoolMaxGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v5) & 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 5)
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PoolIndicesModeAttr]";
  *(&v28 + 1) = 80;
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

uint64_t mlir::mps::PoolMaxGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 4uLL);
}

uint64_t mlir::mps::PoolMaxGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 24))(a2, *(v5 + 16));
  (*(*a2 + 24))(a2, *(v5 + 24));
  (*(*a2 + 24))(a2, *(v5 + 32));
  (*(*a2 + 24))(a2, *(v5 + 40));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 24))(a2, *(v5 + 48));
  (*(*a2 + 24))(a2, *(v5 + 56));
  (*(*a2 + 16))(a2, *(v5 + 64));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 72), 4);
  }

  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::getIndicesResultType(mlir::mps::PoolMaxGradientOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  if (v2)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::PoolMaxGradientOp::setPaddingStyle(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 112) = result;
  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::setCeilMode(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolMaxGradientOp::setIncludeZeroPad(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolMaxGradientOp::setIndicesMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::setIndicesResultType(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = *(*a1 + 44);
  if (a3)
  {
    result = mlir::TypeAttr::get(a2);
    *(v3 + 16 * ((v4 >> 23) & 1) + 104) = result;
  }

  else
  {
    result = 0;
    *(v3 + 16 * ((v4 >> 23) & 1) + 104) = 0;
  }

  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = a6;
  v44 = a5;
  v45 = a4;
  v42 = a7;
  v43 = a6;
  result = mlir::OperationState::addOperands(a2, &v45, 1uLL);
  if (a5)
  {
    result = mlir::OperationState::addOperands(a2, &v44, 1uLL);
    v17 = v43;
  }

  if (v17)
  {
    result = mlir::OperationState::addOperands(a2, &v43, 1uLL);
  }

  if (v42)
  {
    result = mlir::OperationState::addOperands(a2, &v42, 1uLL);
    v22 = v42 != 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = v44 != 0;
  v24 = v43 != 0;
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  v25[18] = 1;
  v25[19] = v23;
  v25[20] = v24;
  v25[21] = v22;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 64) = a8;
  if (a9)
  {
    v34 = *(a2 + 256);
    if (!v34)
    {
      operator new();
    }

    *(v34 + 56) = a9;
    v27 = a11;
    if (!a10)
    {
LABEL_12:
      v28 = a12;
      if (!v27)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v27 = a11;
    if (!a10)
    {
      goto LABEL_12;
    }
  }

  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 8) = a10;
  v28 = a12;
  if (!v27)
  {
LABEL_13:
    v29 = a13;
    if (!v28)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_29:
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 48) = v27;
  v29 = a13;
  if (!v28)
  {
LABEL_14:
    v30 = a14;
    if (!v29)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_32:
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 16) = v28;
  v30 = a14;
  if (!v29)
  {
LABEL_15:
    v31 = a15;
    if (!v30)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_35:
  v38 = *(a2 + 256);
  if (!v38)
  {
    operator new();
  }

  *v38 = v29;
  v31 = a15;
  if (!v30)
  {
LABEL_16:
    v32 = a16;
    if (!v31)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_38:
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 24) = v30;
  v32 = a16;
  if (!v31)
  {
LABEL_17:
    if (!v32)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_41:
  v40 = *(a2 + 256);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 32) = v31;
  if (!v32)
  {
LABEL_18:
    v33 = *(a2 + 72);
    if (v33 >= *(a2 + 76))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_44:
  v41 = *(a2 + 256);
  if (!v41)
  {
    operator new();
  }

  *(v41 + 40) = v32;
  v33 = *(a2 + 72);
  if (v33 >= *(a2 + 76))
  {
LABEL_19:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_20:
  *(*(a2 + 64) + 8 * v33) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolMaxGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = a5;
  v52[2] = *MEMORY[0x277D85DE8];
  v46 = a4;
  v47 = a3;
  v44 = a6;
  v45 = a5;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v46, 1uLL);
    v17 = v45;
  }

  if (v17)
  {
    mlir::OperationState::addOperands(a2, &v45, 1uLL);
  }

  if (v44)
  {
    mlir::OperationState::addOperands(a2, &v44, 1uLL);
    v20 = v44 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = v46 != 0;
  v22 = v45 != 0;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  v23[18] = 1;
  v23[19] = v21;
  v23[20] = v22;
  v23[21] = v20;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 64) = a7;
  if (a8)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 56) = a8;
    v25 = a10;
    if (!a9)
    {
LABEL_12:
      v26 = a11;
      if (!v25)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v25 = a10;
    if (!a9)
    {
      goto LABEL_12;
    }
  }

  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 8) = a9;
  v26 = a11;
  if (!v25)
  {
LABEL_13:
    v27 = a12;
    if (!v26)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_27:
  v33 = *(a2 + 256);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 48) = v25;
  v27 = a12;
  if (!v26)
  {
LABEL_14:
    v28 = a13;
    if (!v27)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_30:
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 16) = v26;
  v28 = a13;
  if (!v27)
  {
LABEL_15:
    v29 = a14;
    if (!v28)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_33:
  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *v35 = v27;
  v29 = a14;
  if (!v28)
  {
LABEL_16:
    v30 = a15;
    if (!v29)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_36:
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 24) = v28;
  v30 = a15;
  if (!v29)
  {
LABEL_17:
    if (!v30)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

LABEL_39:
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 32) = v29;
  if (v30)
  {
LABEL_42:
    v38 = *(a2 + 256);
    if (!v38)
    {
      operator new();
    }

    *(v38 + 40) = v30;
  }

LABEL_45:
  __src = v52;
  v51 = 0x200000000;
  mlir::ValueRange::ValueRange(v49, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v40 = mlir::RegionRange::RegionRange(&v48, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v40, v41, v49[0], v49[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v42 = v51;
  v43 = *(a2 + 72);
  if (v43 + v51 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v51)
  {
    memcpy((*(a2 + 64) + 8 * v43), __src, 8 * v51);
    LODWORD(v43) = *(a2 + 72);
  }

  *(a2 + 72) = v43 + v42;
  if (__src != v52)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolMaxGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = a7;
  v47 = a6;
  v48 = a5;
  v45 = a8;
  v46 = a7;
  result = mlir::OperationState::addOperands(a2, &v48, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v47, 1uLL);
    v17 = v46;
  }

  if (v17)
  {
    result = mlir::OperationState::addOperands(a2, &v46, 1uLL);
  }

  if (v45)
  {
    result = mlir::OperationState::addOperands(a2, &v45, 1uLL);
    v23 = v45 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = v47 != 0;
  v25 = v46 != 0;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  v26[18] = 1;
  v26[19] = v24;
  v26[20] = v25;
  v26[21] = v23;
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 64) = a9;
  if (a10)
  {
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *(v37 + 56) = a10;
    v28 = a12;
    if (!a11)
    {
LABEL_12:
      v29 = a13;
      if (!v28)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v28 = a12;
    if (!a11)
    {
      goto LABEL_12;
    }
  }

  v38 = *(a2 + 256);
  if (!v38)
  {
    operator new();
  }

  *(v38 + 8) = a11;
  v29 = a13;
  if (!v28)
  {
LABEL_13:
    v30 = a14;
    if (!v29)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_33:
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 48) = v28;
  v30 = a14;
  if (!v29)
  {
LABEL_14:
    v31 = a15;
    if (!v30)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_36:
  v40 = *(a2 + 256);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 16) = v29;
  v31 = a15;
  if (!v30)
  {
LABEL_15:
    v32 = a16;
    if (!v31)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_39:
  v41 = *(a2 + 256);
  if (!v41)
  {
    operator new();
  }

  *v41 = v30;
  v32 = a16;
  if (!v31)
  {
LABEL_16:
    v33 = a17;
    if (!v32)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_42:
  v42 = *(a2 + 256);
  if (!v42)
  {
    operator new();
  }

  *(v42 + 24) = v31;
  v33 = a17;
  if (!v32)
  {
LABEL_17:
    if (!v33)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_45:
  v43 = *(a2 + 256);
  if (!v43)
  {
    operator new();
  }

  *(v43 + 32) = v32;
  if (!v33)
  {
LABEL_18:
    v34 = *(a2 + 72);
    if (a4 + v34 > *(a2 + 76))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_48:
  v44 = *(a2 + 256);
  if (!v44)
  {
    operator new();
  }

  *(v44 + 40) = v33;
  v34 = *(a2 + 72);
  if (a4 + v34 > *(a2 + 76))
  {
LABEL_19:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_20:
  if (a4)
  {
    v35 = 0;
    v36 = *(a2 + 64) + 8 * v34;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v35);
      *(v36 + 8 * v35++) = result;
    }

    while (a4 != v35);
    LODWORD(v34) = *(a2 + 72);
  }

  *(a2 + 72) = v34 + a4;
  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, char a13, char a14, unsigned int a15, uint64_t a16)
{
  v17 = a6;
  v49 = a7;
  v51 = a5;
  v52 = a4;
  v50 = a6;
  mlir::OperationState::addOperands(a2, &v52, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v51, 1uLL);
    v17 = v50;
  }

  if (v17)
  {
    mlir::OperationState::addOperands(a2, &v50, 1uLL);
  }

  if (v49)
  {
    mlir::OperationState::addOperands(a2, &v49, 1uLL);
    v21 = v49 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v51 != 0;
  v23 = v50 != 0;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  v24[18] = 1;
  v24[19] = v22;
  v24[20] = v23;
  v24[21] = v21;
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 64) = a8;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 56) = a9;
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 8) = a10;
  v28 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v54 = v28;
  v59 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v60 = &v53;
  v58 = a11;
  v30 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v31 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v30 >> 47) ^ v30);
  v55 = &v58;
  v56 = &v59;
  v57 = &v58;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v31 >> 47) ^ v31), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v57, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 48) = ParametricStorageTypeImpl;
  if (a12)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *(v35 + 16) = a12;
  }

  if (a13)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v32);
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *v37 = UnitAttr;
  }

  if (a14)
  {
    v38 = mlir::Builder::getUnitAttr(a1, v32);
    v39 = *(a2 + 256);
    if (!v39)
    {
      operator new();
    }

    *(v39 + 24) = v38;
  }

  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(v40);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v54 = v40;
  v59 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v60 = &v53;
  v58 = a15;
  v42 = 0x9DDFEA08EB382D69 * (((8 * a15) | 4) ^ a15 ^ 0xFF51AFD7ED558CCDLL);
  v43 = 0x9DDFEA08EB382D69 * (a15 ^ 0xFF51AFD7ED558CCDLL ^ (v42 >> 47) ^ v42);
  v55 = &v58;
  v56 = &v59;
  v57 = &v58;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v57, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v45 = *(a2 + 256);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 32) = result;
  if (a16)
  {
    v46 = *(a2 + 256);
    if (!v46)
    {
      operator new();
    }

    *(v46 + 40) = a16;
  }

  v47 = *(a2 + 72);
  if (v47 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v47) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolMaxGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, char a12, char a13, unsigned int a14, uint64_t a15)
{
  v17 = a5;
  v65 = *MEMORY[0x277D85DE8];
  v54 = a4;
  v55 = a3;
  v52 = a6;
  v53 = a5;
  mlir::OperationState::addOperands(a2, &v55, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v54, 1uLL);
    v17 = v53;
  }

  if (v17)
  {
    mlir::OperationState::addOperands(a2, &v53, 1uLL);
  }

  if (v52)
  {
    mlir::OperationState::addOperands(a2, &v52, 1uLL);
    v21 = v52 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v54 != 0;
  v23 = v53 != 0;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  v24[18] = 1;
  v24[19] = v22;
  v24[20] = v23;
  v24[21] = v21;
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 64) = a7;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 56) = a8;
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 8) = a9;
  v28 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v61 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v62 = v28;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v59 = &v61;
  v57 = a10;
  v30 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v31 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v30 >> 47) ^ v30);
  v56 = &v57;
  v63 = &v57;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v31 >> 47) ^ v31), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v56, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 48) = ParametricStorageTypeImpl;
  if (a11)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *(v35 + 16) = a11;
  }

  if (a12)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v32);
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *v37 = UnitAttr;
  }

  if (a13)
  {
    v38 = mlir::Builder::getUnitAttr(a1, v32);
    v39 = *(a2 + 256);
    if (!v39)
    {
      operator new();
    }

    *(v39 + 24) = v38;
  }

  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(v40);
  v61 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v62 = v40;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v59 = &v61;
  v57 = a14;
  v42 = 0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL);
  v43 = 0x9DDFEA08EB382D69 * (a14 ^ 0xFF51AFD7ED558CCDLL ^ (v42 >> 47) ^ v42);
  v56 = &v57;
  v63 = &v57;
  p_src = &__src;
  v44 = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v56, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
  v45 = *(a2 + 256);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 32) = v44;
  if (a15)
  {
    v46 = *(a2 + 256);
    if (!v46)
    {
      operator new();
    }

    *(v46 + 40) = a15;
  }

  __src = v60;
  v59 = 0x200000000;
  mlir::ValueRange::ValueRange(&v63, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v48 = mlir::RegionRange::RegionRange(&v61, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v48, v49, v63, p_src, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v50 = v59;
  v51 = *(a2 + 72);
  if (v51 + v59 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v59)
  {
    memcpy((*(a2 + 64) + 8 * v51), __src, 8 * v59);
    LODWORD(v51) = *(a2 + 72);
  }

  *(a2 + 72) = v51 + v50;
  if (__src != v60)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolMaxGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, char a14, char a15, unsigned int a16, uint64_t a17)
{
  v17 = a7;
  v54 = a6;
  v55 = a5;
  v52 = a8;
  v53 = a7;
  mlir::OperationState::addOperands(a2, &v55, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v54, 1uLL);
    v17 = v53;
  }

  if (v17)
  {
    mlir::OperationState::addOperands(a2, &v53, 1uLL);
  }

  if (v52)
  {
    mlir::OperationState::addOperands(a2, &v52, 1uLL);
    v23 = v52 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = v54 != 0;
  v25 = v53 != 0;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  v26[18] = 1;
  v26[19] = v24;
  v26[20] = v25;
  v26[21] = v23;
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 64) = a9;
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 56) = a10;
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *(v29 + 8) = a11;
  v30 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v56 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v57 = v30;
  v62 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v63 = &v56;
  v61 = a12;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v58 = &v61;
  v59 = &v62;
  v60 = &v61;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v60, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v58);
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 48) = ParametricStorageTypeImpl;
  if (a13)
  {
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *(v37 + 16) = a13;
  }

  if (a14)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v34);
    v39 = *(a2 + 256);
    if (!v39)
    {
      operator new();
    }

    *v39 = UnitAttr;
  }

  if (a15)
  {
    v40 = mlir::Builder::getUnitAttr(a1, v34);
    v41 = *(a2 + 256);
    if (!v41)
    {
      operator new();
    }

    *(v41 + 24) = v40;
  }

  v42 = *a1;
  v43 = mlir::MLIRContext::getAttributeUniquer(v42);
  v56 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v57 = v42;
  v62 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v63 = &v56;
  v61 = a16;
  v44 = 0x9DDFEA08EB382D69 * (((8 * a16) | 4) ^ a16 ^ 0xFF51AFD7ED558CCDLL);
  v45 = 0x9DDFEA08EB382D69 * (a16 ^ 0xFF51AFD7ED558CCDLL ^ (v44 >> 47) ^ v44);
  v58 = &v61;
  v59 = &v62;
  v60 = &v61;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v43, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v45 >> 47) ^ v45), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v60, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v58);
  v47 = *(a2 + 256);
  if (!v47)
  {
    operator new();
  }

  *(v47 + 32) = result;
  if (a17)
  {
    v48 = *(a2 + 256);
    if (!v48)
    {
      operator new();
    }

    *(v48 + 40) = a17;
  }

  v49 = *(a2 + 72);
  if (a4 + v49 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v50 = 0;
    v51 = *(a2 + 64) + 8 * v49;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v50);
      *(v51 + 8 * v50++) = result;
    }

    while (a4 != v50);
    LODWORD(v49) = *(a2 + 72);
  }

  *(a2 + 72) = v49 + a4;
  return result;
}

uint64_t mlir::mps::PoolMaxGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PoolMaxGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  v18 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::inferPool4DGradientOpReturnTypes(v18, v19, a3, a4, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), __src, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::PoolMaxGradientOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *&v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v12 = result;
  if (a2[7])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v12, 64, 0);
    v13 = mlir::RankedTensorType::get(&v19, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(&v13);
    v17 = xmmword_25737C738;
    v18 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
    a2[7] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v19 = 4;
  v6 = mlir::Builder::getIntegerType(&v12, 64, 0);
  v13 = mlir::RankedTensorType::get(&v19, 1, v6, 0);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v13);
  v17 = xmmword_25737C738;
  v18 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v7);
  a2[1] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[4])
    {
      return result;
    }

LABEL_9:
    v10 = v12;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
    v19 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
    v20 = v10;
    *&v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v17 + 1) = &v19;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[4] = result;
    return result;
  }

LABEL_8:
  v8 = v12;
  v9 = mlir::MLIRContext::getAttributeUniquer(v12);
  v19 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v20 = v8;
  *&v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v17 + 1) = &v19;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v9, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[6] = result;
  if (!a2[4])
  {
    goto LABEL_9;
  }

  return result;
}

BOOL mlir::mps::PoolMaxGradientOp::verifyInvariantsImpl(mlir::mps::PoolMaxGradientOp *this)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[16];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[14];
    v12 = v3[15];
    v59[0] = v2;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "include_zero_pad", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v10, "indices_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v9, "indices_result_type", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v56 = 0;
    v13 = *(*this + 44);
    v14 = *(*this + 16 * ((v13 >> 23) & 1) + 136);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(*this + 72);
      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      if (v14)
      {
LABEL_13:
        v16 = 0;
        v17 = v15 + 24;
        while (1)
        {
          v18 = *this;
          v19 = *(*v17 + 8);
          v56 = v16 + 1;
          if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v18, v19 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v16) & 1) == 0)
          {
            return 0;
          }

          ++v16;
          v17 += 32;
          if (v14 == v16)
          {
            goto LABEL_39;
          }
        }
      }
    }

    LODWORD(v16) = 0;
LABEL_39:
    ODSOperands = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 1u);
    v31 = v30;
    if (v30 >= 2)
    {
      v57[0] = "operand group starting at #";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      mlir::InFlightDiagnostic::operator<<<unsigned int &>(v59, &v56);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, " requires 0 or 1 element, but found ");
      v55 = v31;
LABEL_41:
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(v33, &v55);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
      return v20;
    }

    if (v30)
    {
      v35 = *(ODSOperands + 24);
      v36 = *this;
      v37 = *(v35 + 8);
      v56 = v16 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v36, v37 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v16) & 1) == 0)
      {
        return 0;
      }
    }

    v39 = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 2u);
    v41 = v40;
    if (v40 >= 2)
    {
      goto LABEL_47;
    }

    if (v40)
    {
      v43 = *(v39 + 24);
      v44 = *this;
      v45 = *(v43 + 8);
      v46 = v56++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v44, v45 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v46) & 1) == 0)
      {
        return 0;
      }
    }

    v47 = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 3u);
    v41 = v48;
    if (v48 >= 2)
    {
LABEL_47:
      v57[0] = "operand group starting at #";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      mlir::InFlightDiagnostic::operator<<<unsigned int &>(v59, &v56);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v42, " requires 0 or 1 element, but found ");
      v55 = v41;
      goto LABEL_41;
    }

    if (v48)
    {
      v49 = *(v47 + 24);
      v50 = *this;
      v51 = *(v49 + 8);
      v52 = v56++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v50, v51 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v52) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*this + 36))
    {
      v53 = *this - 16;
    }

    else
    {
      v53 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  else
  {
    v57[0] = "requires attribute 'window_sizes'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v59);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v65;
        v23 = __p;
        if (v65 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v65 = v21;
        operator delete(v23);
      }

      v24 = v62;
      if (v62)
      {
        v25 = v63;
        v26 = v62;
        if (v63 != v62)
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
          v26 = v62;
        }

        v63 = v24;
        operator delete(v26);
      }

      if (v60 != &v61)
      {
        free(v60);
      }
    }
  }

  return v20;
}

uint64_t mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  *(a1 + 24) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 88) = *(v3 + 64);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 96), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 96), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  *(a1 + 24) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 88) = *(v3 + 64);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 96), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 96), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::detail::PoolMaxOpGenericAdaptorBase::getIndicesResultType(mlir::mps::detail::PoolMaxOpGenericAdaptorBase *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::PoolMaxOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, NextResultAtOffset, "result", 6);
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

  return (a2)(a3, v9, "indices", 7);
}

uint64_t mlir::mps::PoolMaxOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(&v62, a4);
    if (v62)
    {
      LODWORD(v60) = 3;
      *(&v60 + 1) = "expected DictionaryAttr to set properties";
      v61 = 41;
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v64 + 24 * v65;
      v23 = v60;
      *(v22 + 2) = v61;
      *v22 = v23;
      ++v65;
      if (v62)
      {
        mlir::InFlightDiagnostic::report(&v62);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v71;
      v26 = __p;
      if (v71 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v71 = v24;
      operator delete(v26);
    }

    v17 = v68;
    if (!v68)
    {
      goto LABEL_77;
    }

    v27 = v69;
    v19 = v68;
    if (v69 == v68)
    {
LABEL_76:
      v69 = v17;
      operator delete(v19);
LABEL_77:
      if (v64 != &v67)
      {
        free(v64);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v59, "ceil_mode", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v62, a4);
      if (v62)
      {
        LODWORD(v60) = 3;
        v61 = 54;
        if (v65 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v65 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v64 + 24 * v65;
        v11 = v60;
        *(v10 + 2) = v61;
        *v10 = v11;
        ++v65;
        if (v62)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
          if (v65 >= v66)
          {
            if (v64 > &v60 || v64 + 24 * v65 <= &v60)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v64 + 24 * v65;
          v13 = v60;
          *(v12 + 2) = v61;
          *v12 = v13;
          ++v65;
          if (v62)
          {
            mlir::InFlightDiagnostic::report(&v62);
          }
        }
      }

      if ((v73 & 1) == 0)
      {
        return 0;
      }

      if (v72 != &v73)
      {
        free(v72);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v71;
        v16 = __p;
        if (v71 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v71 = v14;
        operator delete(v16);
      }

      v17 = v68;
      if (!v68)
      {
        goto LABEL_77;
      }

      v18 = v69;
      v19 = v68;
      if (v69 == v68)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v59, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v62, a4);
    if (v62)
    {
      LODWORD(v60) = 3;
      v61 = 59;
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v64 + 24 * v65;
      v37 = v60;
      *(v36 + 2) = v61;
      *v36 = v37;
      ++v65;
      if (v62)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v60, v31);
        if (v65 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v65 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v64 + 24 * v65;
        v39 = v60;
        *(v38 + 2) = v61;
        *v38 = v39;
        ++v65;
        if (v62)
        {
          mlir::InFlightDiagnostic::report(&v62);
        }
      }
    }

    if ((v73 & 1) == 0)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v71;
      v42 = __p;
      if (v71 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v71 = v40;
      operator delete(v42);
    }

    v17 = v68;
    if (!v68)
    {
      goto LABEL_77;
    }

    v43 = v69;
    v19 = v68;
    if (v69 == v68)
    {
      goto LABEL_76;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        MEMORY[0x259C63150](v44, 0x1000C8077774924);
      }
    }

    while (v43 != v17);
LABEL_75:
    v19 = v68;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v59, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v62, a4);
      if (v62)
      {
        LODWORD(v60) = 3;
        v61 = 61;
        if (v65 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v65 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v64 + 24 * v65;
        v47 = v60;
        *(v46 + 2) = v61;
        *v46 = v47;
        ++v65;
        if (v62)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v33);
          if (v65 >= v66)
          {
            if (v64 > &v60 || v64 + 24 * v65 <= &v60)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v64 + 24 * v65;
          v49 = v60;
          *(v48 + 2) = v61;
          *v48 = v49;
          ++v65;
          if (v62)
          {
            mlir::InFlightDiagnostic::report(&v62);
          }
        }
      }

      if (v73 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v63);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v59, "include_zero_pad", 0x10uLL);
  *&v60 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v59, "indices_mode", 0xCuLL);
    *&v60 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
      {
        a3(&v62, a4);
LABEL_91:
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v62, v51);
        goto LABEL_109;
      }

      a1[4] = v50;
    }

    v52 = mlir::DictionaryAttr::get(&v59, "indices_result_type", 0x13uLL);
    *&v60 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(&v62, a4);
        goto LABEL_109;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v59, "padding_style", 0xDuLL);
    *&v60 = v53;
    if (v53)
    {
      if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v62, a4);
        goto LABEL_109;
      }

      a1[6] = v53;
    }

    v54 = mlir::DictionaryAttr::get(&v59, "strides", 7uLL);
    *&v60 = v54;
    if (v54)
    {
      v55 = v54;
      if (!mlir::DenseIntElementsAttr::classof(v54))
      {
        a3(&v62, a4);
        goto LABEL_109;
      }

      a1[7] = v55;
    }

    v56 = mlir::DictionaryAttr::get(&v59, "window_sizes", 0xCuLL);
    *&v60 = v56;
    if (v56)
    {
      v57 = v56;
      if (!mlir::DenseIntElementsAttr::classof(v56))
      {
        a3(&v62, a4);
        goto LABEL_91;
      }

      a1[8] = v57;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v62, a4);
LABEL_109:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v60);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
  return 0;
}

uint64_t mlir::mps::PoolMaxOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v42 = a1;
  v43 = v45;
  v44 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v42, "ceil_mode", 9, *a2);
  if (v44 >= HIDWORD(v44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v43 + 16 * v44);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v44 + 1;
  LODWORD(v44) = v44 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v42, "dilation_rates", 0xE, v7);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v43 + 16 * v44);
    *v10 = v8;
    v10[1] = v9;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v42, "explicit_padding", 0x10, v11);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v43 + 16 * v44);
    *v14 = v12;
    v14[1] = v13;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v42, "include_zero_pad", 0x10, v15);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v43 + 16 * v44);
    *v18 = v16;
    v18[1] = v17;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v42, "indices_mode", 0xC, v19);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v43 + 16 * v44);
    *v22 = v20;
    v22[1] = v21;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v42, "indices_result_type", 0x13, v23);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v43 + 16 * v44);
    *v26 = v24;
    v26[1] = v25;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v27 = a2[6];
  if (v27)
  {
    v28 = mlir::Builder::getNamedAttr(&v42, "padding_style", 0xD, v27);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = (v43 + 16 * v44);
    *v30 = v28;
    v30[1] = v29;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v31 = a2[7];
  if (v31)
  {
    v32 = mlir::Builder::getNamedAttr(&v42, "strides", 7, v31);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v34 = (v43 + 16 * v44);
    *v34 = v32;
    v34[1] = v33;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v35 = a2[8];
  if (v35)
  {
    v36 = mlir::Builder::getNamedAttr(&v42, "window_sizes", 0xC, v35);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v38 = (v43 + 16 * v44);
    *v38 = v36;
    v38[1] = v37;
    v6 = v44 + 1;
    LODWORD(v44) = v44 + 1;
  }

  v39 = v43;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v43 == v45)
    {
      return DictionaryAttr;
    }

    goto LABEL_31;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v42, v43, v6);
  v39 = v43;
  if (v43 != v45)
  {
LABEL_31:
    free(v39);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PoolMaxOp::computePropertiesHash(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v30 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v28 = v19;
  v22 = HIDWORD(a1[8]);
  v23 = 0x9DDFEA08EB382D69 * ((8 * a1[8] - 0xAE502812AA7333) ^ v22);
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 47));
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  v36 = 0;
  v37 = 0xFF51AFD7ED558CCDLL;
  v33[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v33[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v32 = 0;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v32, v34, v35, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v33, v32, v24, v35, &v31, &v30, &v29, &v28, &v27, &v26);
}

uint64_t mlir::mps::PoolMaxOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    switch(__n)
    {
      case 7:
        if (!memcmp(__s1, "strides", 7uLL))
        {
          return a2[7];
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          return *a2;
        }

        break;
      case 12:
        if (!memcmp(__s1, "indices_mode", 0xCuLL))
        {
          return a2[4];
        }

        if (!memcmp(__s1, "window_sizes", 0xCuLL))
        {
          return a2[8];
        }

        break;
    }

    return 0;
  }

  if (__n > 15)
  {
    if (__n == 16)
    {
      if (!memcmp(__s1, "explicit_padding", 0x10uLL))
      {
        return a2[2];
      }

      if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
      {
        return a2[3];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "indices_result_type", 0x13uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n != 14 || memcmp(__s1, "dilation_rates", 0xEuLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::mps::PoolMaxOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[7] = v9;
          }

          else
          {
            v5[7] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            *result = v15;
          }

          else
          {
            *result = 0;
          }
        }

        break;
      case 12:
        result = memcmp(__s1, "indices_mode", 0xCuLL);
        if (result)
        {
          result = memcmp(__s1, "window_sizes", 0xCuLL);
          if (!result)
          {
            if (a4)
            {
              result = mlir::DenseIntElementsAttr::classof(a4);
              if (result)
              {
                v7 = a4;
              }

              else
              {
                v7 = 0;
              }

              v5[8] = v7;
            }

            else
            {
              v5[8] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }

          v5[4] = v18;
        }

        else
        {
          v5[4] = 0;
        }

        break;
    }
  }

  else if (a3 > 15)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[3] = v13;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        v5[2] = v16;
      }

      else
      {
        v5[2] = 0;
      }
    }

    else if (a3 == 19)
    {
      result = memcmp(__s1, "indices_result_type", 0x13uLL);
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

          v5[5] = v8;
        }

        else
        {
          v5[5] = 0;
        }
      }
    }
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "padding_style", 0xDuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        v5[6] = v10;
      }

      else
      {
        v5[6] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    result = memcmp(__s1, "dilation_rates", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }

        v5[1] = v17;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::PoolMaxOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "include_zero_pad", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "indices_mode", 0xCuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "indices_result_type", 0x13uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v10);
  }

  v11 = a2[7];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v11);
  }

  v12 = a2[8];
  if (v12)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 0xCuLL, v12);
  }
}

BOOL mlir::mps::PoolMaxOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "ceil_mode", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "include_zero_pad", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v12, "indices_mode", 12, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v13, "indices_result_type", 19, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v14, "padding_style", 13, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v15, "strides", 7, a3, a4) & 1) != 0)
                {
                  v16 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 64));
                  if (!v16 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v16, "window_sizes", 12, a3, a4) & 1) != 0)
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
  }

  return result;
}

BOOL mlir::mps::PoolMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 8);
}

uint64_t mlir::mps::PoolMaxOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  (*(*a2 + 24))(a2, v3[15]);
  v4 = v3[16];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::PoolMaxOp::getIndicesResultType(mlir::mps::PoolMaxOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  if (v2)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::PoolMaxOp::setPaddingStyle(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 112) = result;
  return result;
}

uint64_t mlir::mps::PoolMaxOp::setCeilMode(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolMaxOp::setIncludeZeroPad(uint64_t this, int a2)
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

uint64_t mlir::mps::PoolMaxOp::setIndicesMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::PoolMaxOp::setIndicesResultType(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v4 = *(*a1 + 44);
  if (a3)
  {
    result = mlir::TypeAttr::get(a2);
    *(v3 + 16 * ((v4 >> 23) & 1) + 104) = result;
  }

  else
  {
    result = 0;
    *(v3 + 16 * ((v4 >> 23) & 1) + 104) = 0;
  }

  return result;
}

void mlir::mps::PoolMaxOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10)
{
  v18 = mlir::IntegerType::get(*a1, 32, 1u);
  v19 = mlir::TypeAttr::get(v18);
  mlir::mps::PoolMaxOp::build(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0, v19);
}

void mlir::mps::PoolMaxOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10, unsigned int a11, uint64_t a12)
{
  v59 = *MEMORY[0x277D85DE8];
  v50 = a3;
  mlir::OperationState::addOperands(a2, &v50, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 64) = a4;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 56) = a5;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a6;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v56 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  *(&v56 + 1) = v22;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v56;
  v52 = a7;
  v24 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v25 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v24);
  v51 = &v52;
  v57 = &v52;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v24 ^ (v25 >> 47) ^ v25)) >> 32) >> 15) ^ (-348639895 * (v24 ^ (v25 >> 47) ^ v25))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v57);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 48) = ParametricStorageTypeImpl;
  if (a8)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a8;
  }

  if (a9)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v26);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *v31 = UnitAttr;
  }

  if (a10)
  {
    v32 = mlir::Builder::getUnitAttr(a1, v26);
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 24) = v32;
  }

  v34 = *a1;
  v35 = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v56 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  *(&v56 + 1) = v34;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v56;
  v52 = a11;
  v36 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v37 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v36 >> 47) ^ v36);
  v51 = &v52;
  v57 = &v52;
  p_src = &__src;
  v38 = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v57);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 32) = v38;
  if (a12)
  {
    v40 = *(a2 + 256);
    if (!v40)
    {
      operator new();
    }

    *(v40 + 40) = a12;
  }

  __src = v55;
  v54 = 0x200000000;
  v41 = *a1;
  mlir::ValueRange::ValueRange(&v57, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v44 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v56, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolMaxOp::inferReturnTypes(v41, v45, v46, v57, p_src, Dictionary, v44, v47, v56, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v48 = v54;
  v49 = *(a2 + 72);
  if (v49 + v54 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v54)
  {
    memcpy((*(a2 + 64) + 8 * v49), __src, 8 * v54);
    LODWORD(v49) = *(a2 + 72);
  }

  *(a2 + 72) = v49 + v48;
  if (__src != v55)
  {
    free(__src);
  }
}

uint64_t mlir::mps::PoolMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = a5;
  result = mlir::OperationState::addOperands(a2, &v33, 1uLL);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 64) = a6;
  if (a7)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 56) = a7;
  }

  if (a8)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a8;
  }

  if (a9)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 48) = a9;
  }

  if (a10)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 16) = a10;
  }

  if (a11)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *v26 = a11;
  }

  if (a12)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 24) = a12;
  }

  if (a13)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 32) = a13;
  }

  if (a14)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 40) = a14;
  }

  v30 = *(a2 + 72);
  if (v30 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v30) = a3;
  v31 = *(a2 + 76);
  v32 = *(a2 + 72) + 1;
  *(a2 + 72) = v32;
  if (v32 >= v31)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v32) = a4;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PoolMaxOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v37 = a3;
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 64) = a4;
  if (a5)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 56) = a5;
  }

  if (a6)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a6;
  }

  if (a7)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 48) = a7;
  }

  if (a8)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a8;
  }

  if (a9)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *v24 = a9;
  }

  if (a10)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 24) = a10;
  }

  if (a11)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *(v26 + 32) = a11;
  }

  if (a12)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 40) = a12;
  }

  __src = v42;
  v41 = 0x200000000;
  v28 = *a1;
  mlir::ValueRange::ValueRange(v39, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v31 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v38, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolMaxOp::inferReturnTypes(v28, v32, v33, v39[0], v39[1], Dictionary, v31, v34, v38, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v35 = v41;
  v36 = *(a2 + 72);
  if (v36 + v41 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v41)
  {
    memcpy((*(a2 + 64) + 8 * v36), __src, 8 * v41);
    LODWORD(v36) = *(a2 + 72);
  }

  *(a2 + 72) = v36 + v35;
  if (__src != v42)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PoolMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = a5;
  result = mlir::OperationState::addOperands(a2, &v33, 1uLL);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 64) = a6;
  if (a7)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 56) = a7;
  }

  if (a8)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 8) = a8;
  }

  if (a9)
  {
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 48) = a9;
  }

  if (a10)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 16) = a10;
  }

  if (a11)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *v26 = a11;
  }

  if (a12)
  {
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *(v27 + 24) = a12;
  }

  if (a13)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 32) = a13;
  }

  if (a14)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 40) = a14;
  }

  v30 = *(a2 + 72);
  if (a4 + v30 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v31 = 0;
    v32 = *(a2 + 64) + 8 * v30;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v31);
      *(v32 + 8 * v31++) = result;
    }

    while (a4 != v31);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + a4;
  return result;
}

uint64_t mlir::mps::PoolMaxOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, char a12, unsigned int a13, uint64_t a14)
{
  v46 = a5;
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 64) = a6;
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

  *(v21 + 8) = a8;
  v22 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v47 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v48 = v22;
  v53 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v47;
  v52 = a9;
  v24 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v25 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v24 >> 47) ^ v24);
  v49 = &v52;
  v50 = &v53;
  v51 = &v52;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v25 >> 47) ^ v25), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v49);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 48) = ParametricStorageTypeImpl;
  if (a10)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 16) = a10;
  }

  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v26);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *v31 = UnitAttr;
  }

  if (a12)
  {
    v32 = mlir::Builder::getUnitAttr(a1, v26);
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 24) = v32;
  }

  v34 = *a1;
  v35 = mlir::MLIRContext::getAttributeUniquer(v34);
  v47 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v48 = v34;
  v53 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v47;
  v52 = a13;
  v36 = 0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL);
  v37 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ (v36 >> 47) ^ v36);
  v49 = &v52;
  v50 = &v53;
  v51 = &v52;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v49);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 32) = result;
  if (a14)
  {
    v40 = *(a2 + 256);
    if (!v40)
    {
      operator new();
    }

    *(v40 + 40) = a14;
  }

  v41 = *(a2 + 72);
  if (v41 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v41) = a3;
  v42 = *(a2 + 76);
  v43 = *(a2 + 72) + 1;
  *(a2 + 72) = v43;
  if (v43 >= v42)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v43) = a4;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::mps::PoolMaxOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, char a11, char a12, unsigned int a13, uint64_t a14)
{
  v46 = a5;
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 64) = a6;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 56) = a7;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a8;
  v24 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v47 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v48 = v24;
  v53 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v47;
  v52 = a9;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v27 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v26 >> 47) ^ v26);
  v49 = &v52;
  v50 = &v53;
  v51 = &v52;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v27 >> 47) ^ v27), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v49);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 48) = ParametricStorageTypeImpl;
  if (a10)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 16) = a10;
  }

  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v28);
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *v33 = UnitAttr;
  }

  if (a12)
  {
    v34 = mlir::Builder::getUnitAttr(a1, v28);
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *(v35 + 24) = v34;
  }

  v36 = *a1;
  v37 = mlir::MLIRContext::getAttributeUniquer(v36);
  v47 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v48 = v36;
  v53 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v47;
  v52 = a13;
  v38 = 0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL);
  v39 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ (v38 >> 47) ^ v38);
  v49 = &v52;
  v50 = &v53;
  v51 = &v52;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v37, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v39 >> 47) ^ v39), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v49);
  v41 = *(a2 + 256);
  if (!v41)
  {
    operator new();
  }

  *(v41 + 32) = result;
  if (a14)
  {
    v42 = *(a2 + 256);
    if (!v42)
    {
      operator new();
    }

    *(v42 + 40) = a14;
  }

  v43 = *(a2 + 72);
  if (a4 + v43 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v44 = 0;
    v45 = *(a2 + 64) + 8 * v43;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v44);
      *(v45 + 8 * v44++) = result;
    }

    while (a4 != v44);
    LODWORD(v43) = *(a2 + 72);
  }

  *(a2 + 72) = v43 + a4;
  return result;
}

uint64_t mlir::mps::PoolMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PoolMaxOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  mlir::RegionRange::RegionRange(&v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolMaxOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27, &__src) & 1) == 0)
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

mlir::MLIRContext *mlir::mps::PoolMaxOp::populateDefaultProperties(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *&v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v12 = result;
  if (a2[7])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = 4;
    IntegerType = mlir::Builder::getIntegerType(&v12, 64, 0);
    v13 = mlir::RankedTensorType::get(&v19, 1, IntegerType, 0);
    v5 = mlir::TensorType::operator mlir::ShapedType(&v13);
    v17 = xmmword_25737C738;
    v18 = unk_25737C748;
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
    a2[7] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v19 = 4;
  v6 = mlir::Builder::getIntegerType(&v12, 64, 0);
  v13 = mlir::RankedTensorType::get(&v19, 1, v6, 0);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v13);
  v17 = xmmword_25737C738;
  v18 = unk_25737C748;
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v7);
  a2[1] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[4])
    {
      return result;
    }

LABEL_9:
    v10 = v12;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
    v19 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
    v20 = v10;
    *&v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *(&v17 + 1) = &v19;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[4] = result;
    return result;
  }

LABEL_8:
  v8 = v12;
  v9 = mlir::MLIRContext::getAttributeUniquer(v12);
  v19 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v20 = v8;
  *&v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  *(&v17 + 1) = &v19;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v9, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[6] = result;
  if (!a2[4])
  {
    goto LABEL_9;
  }

  return result;
}

BOOL mlir::mps::PoolMaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[16];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[14];
    v12 = v3[15];
    v30[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) != 0 && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "include_zero_pad", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v10, "indices_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v9, "indices_result_type", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (*(*this + 9) ? (v13 = *this - 16) : (v13 = 0), v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0), (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v14 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 1);
      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v28 = "requires attribute 'window_sizes'";
    v29 = 259;
    mlir::OpState::emitOpError(this, &v28, v30);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v36;
        v21 = __p;
        if (v36 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v36 = v19;
        operator delete(v21);
      }

      v22 = v33;
      if (v33)
      {
        v23 = v34;
        v24 = v33;
        if (v34 != v33)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              MEMORY[0x259C63150](v25, 0x1000C8077774924);
            }
          }

          while (v23 != v22);
          v24 = v33;
        }

        v34 = v22;
        operator delete(v24);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }
  }

  return v18;
}

uint64_t mlir::mps::PowerOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::PowerOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::mps::PowerOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::PowerOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PowerOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::PowerOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::detail::PruningGradientOpGenericAdaptorBase::PruningGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::PruningGradientOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40))
  {
    return 1;
  }

  v13[0] = *(a1 + 40);
  v15[0] = mlir::FloatAttr::getType(v13);
  if (mlir::Type::isF32(v15))
  {
    return 1;
  }

  v13[0] = "'mps.prune_gradient' op attribute 'sparsity' failed to satisfy constraint: 32-bit float attribute";
  v14 = 259;
  mlir::emitError(a2, v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
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
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
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

  return v3;
}

uint64_t mlir::mps::PruningGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v49 = v6;
  if (!v6)
  {
    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      *(&v50 + 1) = "expected DictionaryAttr to set properties";
      v51 = 41;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v54 + 24 * v55;
      v23 = v50;
      *(v22 + 2) = v51;
      *v22 = v23;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 != 1)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v61;
      v26 = __p;
      if (v61 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v61 = v24;
      operator delete(v26);
    }

    v17 = v58;
    if (!v58)
    {
      goto LABEL_70;
    }

    v27 = v59;
    v19 = v58;
    if (v59 == v58)
    {
LABEL_69:
      v59 = v17;
      operator delete(v19);
LABEL_70:
      if (v54 != &v57)
      {
        free(v54);
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
    v19 = v58;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "pruning_metric", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 59;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v54 + 24 * v55;
        v11 = v50;
        *(v10 + 2) = v51;
        *v10 = v11;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v9);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v54 + 24 * v55;
          v13 = v50;
          *(v12 + 2) = v51;
          *v12 = v13;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v61;
        v16 = __p;
        if (v61 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v61 = v14;
        operator delete(v16);
      }

      v17 = v58;
      if (!v58)
      {
        goto LABEL_70;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
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

  v30 = mlir::DictionaryAttr::get(&v49, "pruning_structure", 0x11uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
    {
      v31 = v30;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 62;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v54 + 24 * v55;
        v33 = v50;
        *(v32 + 2) = v51;
        *v32 = v33;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v31);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v54 + 24 * v55;
          v35 = v50;
          *(v34 + 2) = v51;
          *v34 = v35;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v61;
        v38 = __p;
        if (v61 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v61 = v36;
        operator delete(v38);
      }

      v17 = v58;
      if (!v58)
      {
        goto LABEL_70;
      }

      v39 = v59;
      v19 = v58;
      if (v59 == v58)
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

  v43 = mlir::DictionaryAttr::get(&v49, "sparsity", 8uLL);
  if (!v43)
  {
    return 1;
  }

  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[2] = v43;
    return 1;
  }

  v44 = v43;
  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 53;
    if (v55 >= v56)
    {
      if (v54 > &v50 || v54 + 24 * v55 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v45 = v54 + 24 * v55;
    v46 = v50;
    *(v45 + 2) = v51;
    *v45 = v46;
    ++v55;
    if (v52)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v44);
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v54 + 24 * v55;
      v48 = v50;
      *(v47 + 2) = v51;
      *v47 = v48;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }
  }

  if (v63 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v53);
  }

  return 0;
}

uint64_t mlir::mps::PruningGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "pruning_metric", 0xE, *a2);
  if (v20 >= HIDWORD(v20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v19 + 16 * v20);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v20 + 1;
  LODWORD(v20) = v20 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v18, "pruning_structure", 0x11, v7);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v19 + 16 * v20);
    *v10 = v8;
    v10[1] = v9;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v18, "sparsity", 8, v11);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v19 + 16 * v20);
    *v14 = v12;
    v14[1] = v13;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

  v15 = v19;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v19 == v21)
    {
      return DictionaryAttr;
    }

    goto LABEL_13;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v18, v19, v6);
  v15 = v19;
  if (v19 != v21)
  {
LABEL_13:
    free(v15);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PruningGradientOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
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
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

uint64_t mlir::mps::PruningGradientOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 8)
  {
    if (!memcmp(__s1, "sparsity", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 17)
  {
    if (!memcmp(__s1, "pruning_structure", 0x11uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x5F676E696E757270 || *(__s1 + 6) != 0x63697274656D5F67)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::PruningGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 8)
  {
    result = memcmp(__s1, "sparsity", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *(v5 + 16) = v8;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 17)
  {
    result = memcmp(__s1, "pruning_structure", 0x11uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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

  else if (a3 == 14 && *__s1 == 0x5F676E696E757270 && *(__s1 + 6) == 0x63697274656D5F67)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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

  return result;
}

void mlir::mps::PruningGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "pruning_metric", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "pruning_structure", 0x11uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "sparsity", 8uLL, v6);
  }
}

BOOL mlir::mps::PruningGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v8, "pruning_metric", 14, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v9, "pruning_structure", 17, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "sparsity", 8, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: pruning metrics";
        v22 = 47;
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: pruning structure";
        v22 = 49;
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

BOOL mlir::mps::PruningGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, (v3 + 16));
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PruningMetricAttr]";
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PruningStructureAttr]";
  *(&v28 + 1) = 81;
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

uint64_t mlir::mps::PruningGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::PruningGradientOp::setPruningMetric(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::PruningGradientOp::setPruningStructure(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::PruningGradientOp::setSparsity(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::PruningGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a5;
  v19 = a4;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a6)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a6;
  }

  if (a7)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a7;
  }

  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 16) = a8;
  }

  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PruningGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  if (a5)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a5;
  }

  if (a6)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 8) = a6;
  }

  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 16) = a7;
  }

  __src = v25;
  v24 = 0x200000000;
  mlir::ValueRange::ValueRange(&v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  v26 = v22;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v15 = mlir::ValueRange::dereference_iterator(&v26, 0);
  v16 = __src;
  *__src = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = v24;
  v18 = *(a2 + 72);
  if (v18 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v24);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::mps::PruningGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::PruningGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a7)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a7;
  }

  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a8;
  }

  if (a9)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 16) = a9;
  }

  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::mps::PruningGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8)
{
  v31 = a5;
  v32 = a4;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v33 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v34 = v12;
  v39 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v40 = &v33;
  v38 = a6;
  v14 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v14);
  v35 = &v38;
  v36 = &v39;
  v37 = &v38;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = ParametricStorageTypeImpl;
  v18 = *a1;
  v19 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v33 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v34 = v18;
  v39 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v40 = &v33;
  v38 = a7;
  v20 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v20);
  v36 = &v39;
  v37 = &v38;
  v35 = &v38;
  v23 = mlir::StorageUniquer::getParametricStorageTypeImpl(v19, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 32) >> 15) ^ (-348639895 * (v20 ^ (v21 >> 47) ^ v21))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = v23;
  F32Type = mlir::Builder::getF32Type(a1, v22);
  result = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 16) = result;
  v28 = *(a2 + 72);
  if (v28 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v28) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PruningGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v42 = *MEMORY[0x277D85DE8];
  v33 = a4;
  v34 = a3;
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  v11 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v40 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  *(&v40 + 1) = v11;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38 = &v40;
  v35 = a5;
  v13 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v13);
  v36[0] = &v35;
  *&v41 = &v35;
  *(&v41 + 1) = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v41);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = ParametricStorageTypeImpl;
  v17 = *a1;
  v18 = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v40 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  *(&v40 + 1) = v17;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38 = &v40;
  v35 = a6;
  v19 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v19);
  v36[0] = &v35;
  *&v41 = &v35;
  *(&v41 + 1) = &__src;
  v22 = mlir::StorageUniquer::getParametricStorageTypeImpl(v18, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v41);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = v22;
  F32Type = mlir::Builder::getF32Type(a1, v21);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a7);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 16) = FloatAttr;
  __src = v39;
  v38 = 0x200000000;
  mlir::ValueRange::ValueRange(&v40, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v36, *(a2 + 224), *(a2 + 232));
  v41 = v40;
  if (v38 != 1)
  {
    if (!v38)
    {
      if (!HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v38) = 1;
  }

  v28 = mlir::ValueRange::dereference_iterator(&v41, 0);
  v29 = __src;
  *__src = *(v28 + 8) & 0xFFFFFFFFFFFFFFF8;
  v30 = v38;
  v31 = *(a2 + 72);
  if (v31 + v38 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v31), v29, 8 * v38);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v30;
  if (__src != v39)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PruningGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9)
{
  v34 = a6;
  v35 = a5;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  v14 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v37 = v14;
  v42 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43 = &v36;
  v41 = a7;
  v16 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v16);
  v38 = &v41;
  v39 = &v42;
  v40 = &v41;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 32) >> 15) ^ (-348639895 * (v16 ^ (v17 >> 47) ^ v17))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = ParametricStorageTypeImpl;
  v20 = *a1;
  v21 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v37 = v20;
  v42 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43 = &v36;
  v41 = a8;
  v22 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v22);
  v39 = &v42;
  v40 = &v41;
  v38 = &v41;
  v25 = mlir::StorageUniquer::getParametricStorageTypeImpl(v21, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 32) >> 15) ^ (-348639895 * (v22 ^ (v23 >> 47) ^ v23))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v40, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 8) = v25;
  F32Type = mlir::Builder::getF32Type(a1, v24);
  result = mlir::Builder::getFloatAttr(a1, F32Type, a9);
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *(v29 + 16) = result;
  v30 = *(a2 + 72);
  if (a4 + v30 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v31 = 0;
    v32 = *(a2 + 64) + 8 * v30;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v31);
      *(v32 + 8 * v31++) = result;
    }

    while (a4 != v31);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + a4;
  return result;
}

uint64_t mlir::mps::PruningGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PruningGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 0);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

mlir::Float32Type *mlir::mps::PruningGradientOp::populateDefaultProperties(uint64_t a1, mlir::Float32Type **a2)
{
  v16 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v16);
  v5 = result;
  v9 = result;
  if (*a2)
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v10 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
    v11 = v5;
    v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v17 = &v10;
    v15 = 0;
    v13 = &v16;
    v14 = &v15;
    v12 = &v15;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
    *a2 = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      F32Type = mlir::Builder::getF32Type(&v9, v4);
      result = mlir::Builder::getFloatAttr(0.5, &v9, F32Type);
      a2[2] = result;
      return result;
    }
  }

  v7 = mlir::MLIRContext::getAttributeUniquer(v5);
  v10 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v11 = v5;
  v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v17 = &v10;
  v15 = 1;
  v12 = &v15;
  v13 = &v16;
  v14 = &v15;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, 0x17790227u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  a2[1] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mlir::mps::PruningGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v10 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v4, "pruning_metric", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v5, "pruning_structure", 17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "sparsity", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::detail::PruningOpGenericAdaptorBase::PruningOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::PruningOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40))
  {
    return 1;
  }

  v13[0] = *(a1 + 40);
  v15[0] = mlir::FloatAttr::getType(v13);
  if (mlir::Type::isF32(v15))
  {
    return 1;
  }

  v13[0] = "'mps.prune' op attribute 'sparsity' failed to satisfy constraint: 32-bit float attribute";
  v14 = 259;
  mlir::emitError(a2, v13, v15);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
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
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
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

  return v3;
}

uint64_t mlir::mps::PruningOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v49 = v6;
  if (!v6)
  {
    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      *(&v50 + 1) = "expected DictionaryAttr to set properties";
      v51 = 41;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v54 + 24 * v55;
      v23 = v50;
      *(v22 + 2) = v51;
      *v22 = v23;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 != 1)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v61;
      v26 = __p;
      if (v61 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v61 = v24;
      operator delete(v26);
    }

    v17 = v58;
    if (!v58)
    {
      goto LABEL_70;
    }

    v27 = v59;
    v19 = v58;
    if (v59 == v58)
    {
LABEL_69:
      v59 = v17;
      operator delete(v19);
LABEL_70:
      if (v54 != &v57)
      {
        free(v54);
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
    v19 = v58;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "pruning_metric", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 59;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v54 + 24 * v55;
        v11 = v50;
        *(v10 + 2) = v51;
        *v10 = v11;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v9);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v54 + 24 * v55;
          v13 = v50;
          *(v12 + 2) = v51;
          *v12 = v13;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v61;
        v16 = __p;
        if (v61 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v61 = v14;
        operator delete(v16);
      }

      v17 = v58;
      if (!v58)
      {
        goto LABEL_70;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
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

  v30 = mlir::DictionaryAttr::get(&v49, "pruning_structure", 0x11uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
    {
      v31 = v30;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 62;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v54 + 24 * v55;
        v33 = v50;
        *(v32 + 2) = v51;
        *v32 = v33;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v31);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v54 + 24 * v55;
          v35 = v50;
          *(v34 + 2) = v51;
          *v34 = v35;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v61;
        v38 = __p;
        if (v61 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v61 = v36;
        operator delete(v38);
      }

      v17 = v58;
      if (!v58)
      {
        goto LABEL_70;
      }

      v39 = v59;
      v19 = v58;
      if (v59 == v58)
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

  v43 = mlir::DictionaryAttr::get(&v49, "sparsity", 8uLL);
  if (!v43)
  {
    return 1;
  }

  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[2] = v43;
    return 1;
  }

  v44 = v43;
  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 53;
    if (v55 >= v56)
    {
      if (v54 > &v50 || v54 + 24 * v55 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v45 = v54 + 24 * v55;
    v46 = v50;
    *(v45 + 2) = v51;
    *v45 = v46;
    ++v55;
    if (v52)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v44);
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v54 + 24 * v55;
      v48 = v50;
      *(v47 + 2) = v51;
      *v47 = v48;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }
  }

  if (v63 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v53);
  }

  return 0;
}

uint64_t mlir::mps::PruningOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "pruning_metric", 0xE, *a2);
  if (v20 >= HIDWORD(v20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v19 + 16 * v20);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v20 + 1;
  LODWORD(v20) = v20 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v18, "pruning_structure", 0x11, v7);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v19 + 16 * v20);
    *v10 = v8;
    v10[1] = v9;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v18, "sparsity", 8, v11);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v19 + 16 * v20);
    *v14 = v12;
    v14[1] = v13;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

  v15 = v19;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v19 == v21)
    {
      return DictionaryAttr;
    }

    goto LABEL_13;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v18, v19, v6);
  v15 = v19;
  if (v19 != v21)
  {
LABEL_13:
    free(v15);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PruningOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
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
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}