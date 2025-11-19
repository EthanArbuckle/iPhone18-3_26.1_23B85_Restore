uint64_t mlir::mps::inferPool4DGradientOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v44[0] = a3;
  v44[1] = a4;
  v7 = (*(mlir::ValueRange::dereference_iterator(v44, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v34 = v12[1];
      v39 = v7;
      v40 = v34;
      if (a4 == 3)
      {
        goto LABEL_15;
      }

LABEL_33:
      v35 = mlir::ValueRange::dereference_iterator(v44, 1);
    }
  }

LABEL_14:
  v39 = v7;
  v40 = 0;
  if (a4 != 3)
  {
    goto LABEL_33;
  }

LABEL_15:
  v41 = v43;
  v42 = 0x400000000;
  v18 = mlir::ValueRange::dereference_iterator(v44, 2);
  if (mlir::matchConstantWithIntVector<long long>(v18, &v41))
  {
    v19 = v42;
    if (v42 >= 4)
    {
      v21 = v41;
      v23 = v41 + 8 * v42;
      v24 = 8 * v42 - 8;
      if (v24 >= 0x18)
      {
LABEL_20:
        v25 = (v24 >> 3) + 1;
        v26 = &v21->i64[v25 & 0x3FFFFFFFFFFFFFFCLL];
        v27 = v21 + 1;
        v28.i64[0] = -1;
        v28.i64[1] = -1;
        v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
        while (1)
        {
          v30 = vmovn_s64(vceqq_s64(v27[-1], v28));
          if (v30.i8[0])
          {
            v27[-1].i64[0] = 0x8000000000000000;
            if ((v30.i8[4] & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if ((v30.i8[4] & 1) == 0)
          {
LABEL_24:
            v31 = vmovn_s64(vceqq_s64(*v27, v28));
            if (v31.i8[0])
            {
              goto LABEL_25;
            }

            goto LABEL_29;
          }

          v27[-1].i64[1] = 0x8000000000000000;
          v31 = vmovn_s64(vceqq_s64(*v27, v28));
          if (v31.i8[0])
          {
LABEL_25:
            v27->i64[0] = 0x8000000000000000;
            if (v31.i8[4])
            {
              goto LABEL_30;
            }

            goto LABEL_21;
          }

LABEL_29:
          if (v31.i8[4])
          {
LABEL_30:
            v27->i64[1] = 0x8000000000000000;
          }

LABEL_21:
          v27 += 2;
          v29 -= 4;
          if (!v29)
          {
            if (v25 != (v25 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_39;
            }

            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      if (HIDWORD(v42) <= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v42;
      v21 = v41;
      memset_pattern16(v41 + 8 * v42, &unk_257369660, 32 - 8 * v42);
      v22 = v20 - v19;
      v19 = (v20 - v19 + 4);
      LODWORD(v42) = v22 + 4;
      if (v22 == -4)
      {
        v19 = 0;
        goto LABEL_42;
      }

      v23 = &v21->i8[8 * v19];
      v24 = 8 * v19 - 8;
      if (v24 >= 0x18)
      {
        goto LABEL_20;
      }
    }

    v26 = v21;
    do
    {
LABEL_39:
      if (*v26 == -1)
      {
        *v26 = 0x8000000000000000;
      }

      ++v26;
    }

    while (v26 != v23);
LABEL_42:
    ElementType = mlir::ShapedType::getElementType(&v39);
    v33 = mlir::RankedTensorType::get(v21, v19, ElementType, 0);
  }

  else
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
    v33 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

  v38 = *(a5 + 8);
  if (v38 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a5 + 8 * v38) = v33;
  ++*(a5 + 8);
  if (v41 != v43)
  {
    free(v41);
  }

  return 1;
}

uint64_t mlir::mps::PoolAvgOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v26 = a6;
  BYTE8(v26) = 0;
  v27[0] = 0;
  *&v27[8] = v15;
  *&v27[24] = v16;
  *&v27[40] = v17;
  *&v27[56] = v18;
  v28 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v26);
    if (v27[0] == 1)
    {
      v27[0] = 0;
    }

    mlir::OperationName::OperationName(&v26 + 8, "mps.pooling_average", 19, Context);
    v27[0] = 1;
  }

  *&v29 = a4;
  *(&v29 + 1) = a5;
  if (a5 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::PoolAvgOpAdaptor::verify(&v26, v20) & 1) != 0))
  {
    v25[4] = *&v27[48];
    v25[5] = v28;
    v25[6] = v29;
    v25[0] = v26;
    v25[1] = *v27;
    v25[2] = *&v27[16];
    v25[3] = *&v27[32];
    return mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(a2, a3, v25, a10);
  }

  else
  {
    v22 = mlir::Float32Type::get(this, a2);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a10 + 8);
    if (v24 >= *(a10 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v24) = v23;
    ++*(a10 + 8);
    return 1;
  }
}

uint64_t mlir::mps::PoolAvgOpAdaptor::verify(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v129 = a1[5];
  v4 = a1[9];
  if (!v4)
  {
    v126 = "'mps.pooling_average' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = a1[8];
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
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
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::mps::ConstantOp::verify();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  Shape = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v40 != 1 || *Shape != v131 || (v123 = v4, v124 = mlir::DenseElementsAttr::getType(&v123), v125 = v41, ElementType = mlir::ShapedType::getElementType(&v124), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
  {
    v126 = "'mps.pooling_average' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          MEMORY[0x259C63150](v56, 0x1000C8077774924);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
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
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::mps::ConstantOp::verify();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::ShapedType::getShape(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              v124 = mlir::DenseElementsAttr::getType(&v123);
              v125 = v106;
              ElementType = mlir::ShapedType::getElementType(&v124);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = mlir::TensorType::operator mlir::ShapedType(&v131);
                v133 = v108;
                v109 = mlir::ShapedType::getShape(&v132);
                ElementType = 8;
                if (v110 == 1 && *v109 == ElementType)
                {
                  v122 = v129;
                  v124 = mlir::DenseElementsAttr::getType(&v122);
                  v125 = v111;
                  v123 = mlir::ShapedType::getElementType(&v124);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_average' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_average' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
              }

              do
              {
                v117 = *--v115;
                v116 = v117;
                *v115 = 0;
                if (v117)
                {
                  MEMORY[0x259C63150](v116, 0x1000C8077774924);
                }
              }

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::mps::ConstantOp::verify();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    v124 = mlir::DenseElementsAttr::getType(&v123);
    v125 = v73;
    ElementType = mlir::ShapedType::getElementType(&v124);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_average' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        MEMORY[0x259C63150](v88, 0x1000C8077774924);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}

uint64_t mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a3[6];
  v14 = 0;
  v8 = *(mlir::ValueRange::dereference_iterator(&v17, 0) + 8);
  v9 = a3[5];
  v16[4] = a3[4];
  v16[5] = v9;
  v16[6] = a3[6];
  v10 = a3[1];
  v16[0] = *a3;
  v16[1] = v10;
  v11 = a3[3];
  v16[2] = a3[2];
  v16[3] = v11;
  v15 = *(mlir::ValueRange::dereference_iterator(&v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::Type::getContext(&v15);
  if ((mlir::mps::inferPool4DReturnType<mlir::mps::PoolAvgOpAdaptor>(a1, a2, (v8 & 0xFFFFFFFFFFFFFFF8), v16, &v14) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a4 + 8);
  if (v12 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v12) = v14;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::PoolAvgOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolAvgOp>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v144 = *MEMORY[0x277D85DE8];
  v130 = a1;
  v4 = &a1[4 * ((a1[11] >> 23) & 1)];
  v129 = *(v4 + 13);
  v128 = *(v4 + 9);
  v127 = *(v4 + 14);
  v126 = *(v4 + 10);
  if (v127)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v127) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v127, 0);
      v3 = v127;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v127);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v3, NumElements);
      while (v125 != v123)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
        if (v120 > 0x40)
        {
          if (*v119 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v120 || (v119 << -v120) >> -v120 <= 0)
        {
LABEL_7:
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          if (v120 > 0x40)
          {
            v6 = *v119;
            if (!v133[0])
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (v120)
            {
              v6 = (v119 << -v120) >> -v120;
            }

            else
            {
              v6 = 0;
            }

            if (!v133[0])
            {
              goto LABEL_21;
            }
          }

          LODWORD(v131) = 2;
          *(&v131 + 1) = v6;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v8 = v134 + 24 * v135;
          v9 = v131;
          *(v8 + 2) = v132;
          *v8 = v9;
          v10 = ++v135;
          if (v133[0])
          {
            LODWORD(v131) = 3;
            *(&v131 + 1) = ", all values should be positive.";
            v132 = 32;
            if (v10 >= v136)
            {
              if (v134 > &v131 || v134 + 24 * v10 <= &v131)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = v134 + 24 * v135;
            v12 = v131;
            *(v11 + 2) = v132;
            *v11 = v12;
            ++v135;
          }

LABEL_21:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
          if (v133[0])
          {
            mlir::InFlightDiagnostic::report(v133);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v13 = __p;
            if (__p)
            {
              v14 = v141;
              v15 = __p;
              if (v141 != __p)
              {
                do
                {
                  v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
                }

                while (v14 != v13);
                v15 = __p;
              }

              v141 = v13;
              operator delete(v15);
            }

            v16 = v138;
            if (v138)
            {
              v17 = v139;
              v18 = v138;
              if (v139 != v138)
              {
                do
                {
                  v20 = *--v17;
                  v19 = v20;
                  *v17 = 0;
                  if (v20)
                  {
                    MEMORY[0x259C63150](v19, 0x1000C8077774924);
                  }
                }

                while (v17 != v16);
                v18 = v138;
              }

              v139 = v16;
              operator delete(v18);
            }

            if (v134 != v137)
            {
              free(v134);
            }
          }

          v7 = 0;
          if (v120 < 0x41)
          {
            goto LABEL_44;
          }

LABEL_42:
          if (v119)
          {
            MEMORY[0x259C63150](v119, 0x1000C8000313F17);
          }

          goto LABEL_44;
        }

        v7 = 1;
        if (v120 >= 0x41)
        {
          goto LABEL_42;
        }

LABEL_44:
        if (!v7)
        {
          return v3;
        }

        ++v125;
      }
    }
  }

  if (v129)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v129) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v129, 0);
      v21 = v129;
      v22 = mlir::DenseElementsAttr::getNumElements(&v129);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v21, v22);
      while (v125 != v123)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
        if (v120 > 0x40)
        {
          if (*v119 <= 0)
          {
            goto LABEL_102;
          }
        }

        else if (!v120 || (v119 << -v120) >> -v120 <= 0)
        {
LABEL_102:
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          if (v120 > 0x40)
          {
            v47 = *v119;
            if (!v133[0])
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (v120)
            {
              v47 = (v119 << -v120) >> -v120;
            }

            else
            {
              v47 = 0;
            }

            if (!v133[0])
            {
              goto LABEL_116;
            }
          }

          LODWORD(v131) = 2;
          *(&v131 + 1) = v47;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v49 = v134 + 24 * v135;
          v50 = v131;
          *(v49 + 2) = v132;
          *v49 = v50;
          v51 = ++v135;
          if (v133[0])
          {
            LODWORD(v131) = 3;
            *(&v131 + 1) = ", all values should be positive.";
            v132 = 32;
            if (v51 >= v136)
            {
              if (v134 > &v131 || v134 + 24 * v51 <= &v131)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v52 = v134 + 24 * v135;
            v53 = v131;
            *(v52 + 2) = v132;
            *v52 = v53;
            ++v135;
          }

LABEL_116:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
          if (v133[0])
          {
            mlir::InFlightDiagnostic::report(v133);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v54 = __p;
            if (__p)
            {
              v55 = v141;
              v56 = __p;
              if (v141 != __p)
              {
                do
                {
                  v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
                }

                while (v55 != v54);
                v56 = __p;
              }

              v141 = v54;
              operator delete(v56);
            }

            v57 = v138;
            if (v138)
            {
              v58 = v139;
              v59 = v138;
              if (v139 != v138)
              {
                do
                {
                  v61 = *--v58;
                  v60 = v61;
                  *v58 = 0;
                  if (v61)
                  {
                    MEMORY[0x259C63150](v60, 0x1000C8077774924);
                  }
                }

                while (v58 != v57);
                v59 = v138;
              }

              v139 = v57;
              operator delete(v59);
            }

            if (v134 != v137)
            {
              free(v134);
            }
          }

          v48 = 0;
          if (v120 < 0x41)
          {
            goto LABEL_139;
          }

LABEL_137:
          if (v119)
          {
            MEMORY[0x259C63150](v119, 0x1000C8000313F17);
          }

          goto LABEL_139;
        }

        v48 = 1;
        if (v120 >= 0x41)
        {
          goto LABEL_137;
        }

LABEL_139:
        if (!v48)
        {
          return v3;
        }

        ++v125;
      }
    }
  }

  if (v128)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v128) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v128, 0);
      v23 = v128;
      v24 = mlir::DenseElementsAttr::getNumElements(&v128);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v23, v24);
      while (v125 != v123)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
        if (v120 > 0x40)
        {
          if (*v119 <= 0)
          {
            goto LABEL_153;
          }
        }

        else if (!v120 || (v119 << -v120) >> -v120 <= 0)
        {
LABEL_153:
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          if (v120 > 0x40)
          {
            v62 = *v119;
            if (!v133[0])
            {
              goto LABEL_167;
            }
          }

          else
          {
            if (v120)
            {
              v62 = (v119 << -v120) >> -v120;
            }

            else
            {
              v62 = 0;
            }

            if (!v133[0])
            {
              goto LABEL_167;
            }
          }

          LODWORD(v131) = 2;
          *(&v131 + 1) = v62;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v64 = v134 + 24 * v135;
          v65 = v131;
          *(v64 + 2) = v132;
          *v64 = v65;
          v66 = ++v135;
          if (v133[0])
          {
            LODWORD(v131) = 3;
            *(&v131 + 1) = ", all values should be positive.";
            v132 = 32;
            if (v66 >= v136)
            {
              if (v134 > &v131 || v134 + 24 * v66 <= &v131)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v67 = v134 + 24 * v135;
            v68 = v131;
            *(v67 + 2) = v132;
            *v67 = v68;
            ++v135;
          }

LABEL_167:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
          if (v133[0])
          {
            mlir::InFlightDiagnostic::report(v133);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v141;
              v71 = __p;
              if (v141 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v141 = v69;
              operator delete(v71);
            }

            v72 = v138;
            if (v138)
            {
              v73 = v139;
              v74 = v138;
              if (v139 != v138)
              {
                do
                {
                  v76 = *--v73;
                  v75 = v76;
                  *v73 = 0;
                  if (v76)
                  {
                    MEMORY[0x259C63150](v75, 0x1000C8077774924);
                  }
                }

                while (v73 != v72);
                v74 = v138;
              }

              v139 = v72;
              operator delete(v74);
            }

            if (v134 != v137)
            {
              free(v134);
            }
          }

          v63 = 0;
          if (v120 < 0x41)
          {
            goto LABEL_190;
          }

LABEL_188:
          if (v119)
          {
            MEMORY[0x259C63150](v119, 0x1000C8000313F17);
          }

          goto LABEL_190;
        }

        v63 = 1;
        if (v120 >= 0x41)
        {
          goto LABEL_188;
        }

LABEL_190:
        if (!v63)
        {
          return v3;
        }

        ++v125;
      }
    }
  }

  if (v126)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v126) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v126, 0);
      v25 = v126;
      v26 = mlir::DenseElementsAttr::getNumElements(&v126);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v25, v26);
      if (v125 != v123)
      {
        v77 = 0x1000C8000313F17;
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
          if (v120 > 0x40)
          {
            break;
          }

          if (v120)
          {
            v79 = (v119 << -v120) >> -v120;
            if (v79 < 0)
            {
              goto LABEL_207;
            }

LABEL_214:
            if (v120 >= 0x41)
            {
LABEL_242:
              if (v119)
              {
                MEMORY[0x259C63150](v119, v77);
              }
            }

LABEL_202:
            if (v79 < 0)
            {
              return v3;
            }
          }

          if (++v125 == v123)
          {
            goto LABEL_64;
          }
        }

        v79 = *v119;
        if ((*v119 & 0x8000000000000000) == 0)
        {
          goto LABEL_214;
        }

LABEL_207:
        v117[0] = v78;
        v118 = 259;
        mlir::OpState::emitOpError(&v130, v117, v133);
        if (v120 > 0x40)
        {
          v80 = *v119;
          if (!v133[0])
          {
            goto LABEL_221;
          }
        }

        else
        {
          if (v120)
          {
            v80 = (v119 << -v120) >> -v120;
          }

          else
          {
            v80 = 0;
          }

          if (!v133[0])
          {
            goto LABEL_221;
          }
        }

        LODWORD(v131) = 2;
        *(&v131 + 1) = v80;
        if (v135 >= v136)
        {
          if (v134 > &v131 || v134 + 24 * v135 <= &v131)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v81 = v134 + 24 * v135;
        v82 = v131;
        *(v81 + 2) = v132;
        *v81 = v82;
        v83 = ++v135;
        if (v133[0])
        {
          LODWORD(v131) = 3;
          *(&v131 + 1) = ", all values should be non-negative.";
          v132 = 36;
          if (v83 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v83 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v84 = v134 + 24 * v135;
          v85 = v131;
          *(v84 + 2) = v132;
          *v84 = v85;
          ++v135;
        }

LABEL_221:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
        if (v133[0])
        {
          mlir::InFlightDiagnostic::report(v133);
        }

        if (v143 == 1)
        {
          if (v142 != &v143)
          {
            free(v142);
          }

          v86 = v78;
          v87 = __p;
          if (__p)
          {
            v88 = v141;
            v89 = __p;
            if (v141 != __p)
            {
              do
              {
                v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
              }

              while (v88 != v87);
              v89 = __p;
            }

            v141 = v87;
            operator delete(v89);
          }

          v90 = v138;
          if (v138)
          {
            v91 = v77;
            v92 = v139;
            v93 = v138;
            if (v139 != v138)
            {
              do
              {
                v95 = *--v92;
                v94 = v95;
                *v92 = 0;
                if (v95)
                {
                  MEMORY[0x259C63150](v94, 0x1000C8077774924);
                }
              }

              while (v92 != v90);
              v93 = v138;
            }

            v139 = v90;
            operator delete(v93);
            v77 = v91;
          }

          v78 = v86;
          if (v134 != v137)
          {
            free(v134);
          }
        }

        if (v120 >= 0x41)
        {
          goto LABEL_242;
        }

        goto LABEL_202;
      }
    }
  }

LABEL_64:
  v27 = *(*(v130 + 2 * ((*(v130 + 11) >> 23) & 1) + 12) + 8);
  if (v27 == 3)
  {
    v118 = 259;
    mlir::OpState::emitOpError(&v130, v117, v133);
    if (v133[0])
    {
      LODWORD(v124) = 3;
      *(&v124 + 1) = "not supported by this op.";
      v125 = 25;
      if (v135 >= v136)
      {
        if (v134 > &v124 || v134 + 24 * v135 <= &v124)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33 = v134 + 24 * v135;
      v34 = v124;
      *(v33 + 2) = v125;
      *v33 = v34;
      ++v135;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
    if (v133[0])
    {
      mlir::InFlightDiagnostic::report(v133);
    }

    if (v143 == 1)
    {
      if (v142 != &v143)
      {
        free(v142);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v141;
        v37 = __p;
        if (v141 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v141 = v35;
        operator delete(v37);
      }

      v38 = v138;
      if (!v138)
      {
        goto LABEL_275;
      }

      v39 = v139;
      v40 = v138;
      if (v139 == v138)
      {
        goto LABEL_274;
      }

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
      goto LABEL_273;
    }
  }

  else
  {
    if (v27 || v126)
    {
      if (a2)
      {
        v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
        *&v124 = v28;
        *(&v124 + 1) = v29;
        v30 = a3;
        if (a3)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v28 = 0;
        v124 = 0uLL;
        v30 = a3;
        if (a3)
        {
LABEL_69:
          v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v30 + 8) & 0xFFFFFFFFFFFFFFF8));
          v121 = v31;
          v122 = v32;
          if (!v28)
          {
            return 1;
          }

          goto LABEL_92;
        }
      }

      v31 = 0;
      v121 = 0;
      v122 = 0;
      if (!v28)
      {
        return 1;
      }

LABEL_92:
      if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v31 != 0 && *(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        mlir::ShapedType::getShape(&v124);
        v45 = v44;
        mlir::ShapedType::getShape(&v121);
        if (v45 != v46)
        {
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          mlir::ShapedType::getShape(&v124);
          *&v131 = v108;
          mlir::InFlightDiagnostic::operator<<<unsigned long &>(v133, &v131);
          v111 = v110;
          mlir::ShapedType::getShape(&v121);
          v119 = v112;
          mlir::InFlightDiagnostic::operator<<<unsigned long &>(v111, &v119);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v113, ".");
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v133);
          return v3;
        }
      }

      return 1;
    }

    v118 = 259;
    mlir::OpState::emitOpError(&v130, v117, v133);
    if (v133[0])
    {
      LODWORD(v124) = 3;
      *(&v124 + 1) = "invalid type. Must be specified when ";
      v125 = 37;
      if (v135 >= v136)
      {
        if (v134 > &v124 || v134 + 24 * v135 <= &v124)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v96 = v134 + 24 * v135;
      v97 = v124;
      *(v96 + 2) = v125;
      *v96 = v97;
      v98 = ++v135;
      if (v133[0])
      {
        LODWORD(v124) = 3;
        v125 = 31;
        if (v98 >= v136)
        {
          if (v134 > &v124 || v134 + 24 * v98 <= &v124)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v99 = v134 + 24 * v135;
        v100 = v124;
        *(v99 + 2) = v125;
        *v99 = v100;
        ++v135;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
    if (v133[0])
    {
      mlir::InFlightDiagnostic::report(v133);
    }

    if (v143 == 1)
    {
      if (v142 != &v143)
      {
        free(v142);
      }

      v101 = __p;
      if (__p)
      {
        v102 = v141;
        v103 = __p;
        if (v141 != __p)
        {
          do
          {
            v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
          }

          while (v102 != v101);
          v103 = __p;
        }

        v141 = v101;
        operator delete(v103);
      }

      v38 = v138;
      if (!v138)
      {
        goto LABEL_275;
      }

      v104 = v139;
      v40 = v138;
      if (v139 == v138)
      {
LABEL_274:
        v139 = v38;
        operator delete(v40);
LABEL_275:
        if (v134 != v137)
        {
          free(v134);
        }

        return v3;
      }

      do
      {
        v106 = *--v104;
        v105 = v106;
        *v104 = 0;
        if (v106)
        {
          MEMORY[0x259C63150](v105, 0x1000C8077774924);
        }
      }

      while (v104 != v38);
LABEL_273:
      v40 = v138;
      goto LABEL_274;
    }
  }

  return v3;
}

uint64_t mlir::mps::PoolL2NormOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *&v26 = a6;
  BYTE8(v26) = 0;
  v27[0] = 0;
  *&v27[8] = v15;
  *&v27[24] = v16;
  *&v27[40] = v17;
  *&v27[56] = v18;
  v28 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v26);
    if (v27[0] == 1)
    {
      v27[0] = 0;
    }

    mlir::OperationName::OperationName(&v26 + 8, "mps.pooling_l2_norm", 19, Context);
    v27[0] = 1;
  }

  *&v29 = a4;
  *(&v29 + 1) = a5;
  if (a5 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::PoolL2NormOpAdaptor::verify(&v26, v20) & 1) != 0))
  {
    v25[4] = *&v27[48];
    v25[5] = v28;
    v25[6] = v29;
    v25[0] = v26;
    v25[1] = *v27;
    v25[2] = *&v27[16];
    v25[3] = *&v27[32];
    return mlir::mps::inferPooling4DOpReturnTypes<mlir::mps::PoolAvgOpAdaptor>(a2, a3, v25, a10);
  }

  else
  {
    v22 = mlir::Float32Type::get(this, a2);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a10 + 8);
    if (v24 >= *(a10 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v24) = v23;
    ++*(a10 + 8);
    return 1;
  }
}

uint64_t mlir::mps::PoolL2NormOpAdaptor::verify(void *a1, uint64_t a2)
{
  v142 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v129 = a1[5];
  v4 = a1[9];
  if (!v4)
  {
    v126 = "'mps.pooling_l2_norm' op requires attribute 'window_sizes'";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v139;
        v19 = __p;
        if (v139 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v139 = v17;
        operator delete(v19);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v21 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

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
      goto LABEL_168;
    }

    return v16;
  }

  v5 = a1[8];
  v6 = *v4;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = v6;
    mlir::mps::ConstantOp::getAsAttribute();
    v7 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v8 = *(v25 + 8);
    v9 = *(v25 + 16);
    if (!v9)
    {
      goto LABEL_30;
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
    v27 = v10[1];
    v126 = v4;
    v127 = v27;
    Type = mlir::ElementsAttr::getType(&v126);
    if (!Type)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_30:
  v126 = v4;
  v127 = 0;
  Type = mlir::ElementsAttr::getType(&v126);
  if (!Type)
  {
    goto LABEL_45;
  }

LABEL_33:
  v28 = *Type;
  {
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v119 = v28;
    v120 = Type;
    mlir::mps::ConstantOp::verify();
    Type = v120;
    v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v30 = *(v119 + 8);
    v31 = *(v119 + 16);
    if (!v31)
    {
      goto LABEL_45;
    }
  }

  v32 = v30;
  v33 = v31;
  do
  {
    v34 = v33 >> 1;
    v35 = &v32[2 * (v33 >> 1)];
    v37 = *v35;
    v36 = v35 + 2;
    v33 += ~(v33 >> 1);
    if (v37 < v29)
    {
      v32 = v36;
    }

    else
    {
      v33 = v34;
    }
  }

  while (v33);
  if (v32 != &v30[2 * v31] && *v32 == v29)
  {
    v38 = v32[1];
    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
LABEL_46:
  v132 = Type;
  v133 = v38;
  Shape = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v40 != 1 || *Shape != v131 || (v123 = v4, v124 = mlir::DenseElementsAttr::getType(&v123), v125 = v41, ElementType = mlir::ShapedType::getElementType(&v124), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
  {
    v126 = "'mps.pooling_l2_norm' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v128 = 259;
    mlir::emitError(a2, &v126, &v132);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
    if (v132)
    {
      mlir::InFlightDiagnostic::report(&v132);
    }

    if (v141 == 1)
    {
      if (v140 != &v141)
      {
        free(v140);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v139;
        v54 = __p;
        if (v139 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v139 = v52;
        operator delete(v54);
      }

      v20 = v136;
      if (!v136)
      {
        goto LABEL_170;
      }

      v55 = v137;
      v22 = v136;
      if (v137 == v136)
      {
        goto LABEL_169;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          MEMORY[0x259C63150](v56, 0x1000C8077774924);
        }
      }

      while (v55 != v20);
      goto LABEL_168;
    }

    return v16;
  }

  if (!v5)
  {
LABEL_98:
    if (!v3)
    {
      goto LABEL_147;
    }

    v74 = *v3;
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
        goto LABEL_101;
      }
    }

    else
    {
      mlir::mps::PoolAvgOpAdaptor::verify();
      v75 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v76 = *(v74 + 8);
      v77 = *(v74 + 16);
      if (v77)
      {
LABEL_101:
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
LABEL_126:
        if (v78 != &v76[2 * v77] && *v78 == v75)
        {
          v90 = v78[1];
        }

        else
        {
          v90 = 0;
        }

        v126 = v3;
        v127 = v90;
        v91 = mlir::ElementsAttr::getType(&v126);
        if (!v91)
        {
          goto LABEL_143;
        }

        v92 = *v91;
        {
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v91;
          mlir::mps::ConstantOp::verify();
          v91 = v102;
          v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v94 = *(v92 + 8);
          v95 = *(v92 + 16);
          if (v95)
          {
LABEL_133:
            v96 = v94;
            v97 = v95;
            do
            {
              v98 = v97 >> 1;
              v99 = &v96[2 * (v97 >> 1)];
              v101 = *v99;
              v100 = v99 + 2;
              v97 += ~(v97 >> 1);
              if (v101 < v93)
              {
                v96 = v100;
              }

              else
              {
                v97 = v98;
              }
            }

            while (v97);
LABEL_141:
            if (v96 != &v94[2 * v95] && *v96 == v93)
            {
              v103 = v96[1];
              goto LABEL_144;
            }

LABEL_143:
            v103 = 0;
LABEL_144:
            v132 = v91;
            v133 = v103;
            v104 = mlir::ShapedType::getShape(&v132);
            v131 = 4;
            if (v105 == 1 && *v104 == v131)
            {
              v123 = v3;
              v124 = mlir::DenseElementsAttr::getType(&v123);
              v125 = v106;
              ElementType = mlir::ShapedType::getElementType(&v124);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_147:
                if (!v129)
                {
                  return 1;
                }

                v126 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
                v127 = v107;
                v131 = mlir::ElementsAttr::getType(&v126);
                v132 = mlir::TensorType::operator mlir::ShapedType(&v131);
                v133 = v108;
                v109 = mlir::ShapedType::getShape(&v132);
                ElementType = 8;
                if (v110 == 1 && *v109 == ElementType)
                {
                  v122 = v129;
                  v124 = mlir::DenseElementsAttr::getType(&v122);
                  v125 = v111;
                  v123 = mlir::ShapedType::getElementType(&v124);
                  if (mlir::Type::isUnsignedInteger(&v123, 64))
                  {
                    return 1;
                  }
                }

                v126 = "'mps.pooling_l2_norm' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
                v128 = 259;
                mlir::emitError(a2, &v126, &v132);
                v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
                if (v132)
                {
                  mlir::InFlightDiagnostic::report(&v132);
                }

                if (v141 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v133);
                }

                return v16;
              }
            }

            v126 = "'mps.pooling_l2_norm' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            v128 = 259;
            mlir::emitError(a2, &v126, &v132);
            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
            if (v132)
            {
              mlir::InFlightDiagnostic::report(&v132);
            }

            if (v141 == 1)
            {
              if (v140 != &v141)
              {
                free(v140);
              }

              v112 = __p;
              if (__p)
              {
                v113 = v139;
                v114 = __p;
                if (v139 != __p)
                {
                  do
                  {
                    v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
                  }

                  while (v113 != v112);
                  v114 = __p;
                }

                v139 = v112;
                operator delete(v114);
              }

              v20 = v136;
              if (!v136)
              {
                goto LABEL_170;
              }

              v115 = v137;
              v22 = v136;
              if (v137 == v136)
              {
LABEL_169:
                v137 = v20;
                operator delete(v22);
LABEL_170:
                if (v134 != &v135)
                {
                  free(v134);
                }

                return v16;
              }

              do
              {
                v117 = *--v115;
                v116 = v117;
                *v115 = 0;
                if (v117)
                {
                  MEMORY[0x259C63150](v116, 0x1000C8077774924);
                }
              }

              while (v115 != v20);
LABEL_168:
              v22 = v136;
              goto LABEL_169;
            }

            return v16;
          }
        }

        v95 = 0;
        v96 = v94;
        goto LABEL_141;
      }
    }

    v77 = 0;
    v78 = v76;
    goto LABEL_126;
  }

  v42 = *v5;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    if (v45)
    {
      goto LABEL_52;
    }

LABEL_76:
    v45 = 0;
    v46 = v44;
    goto LABEL_77;
  }

  mlir::mps::PoolAvgOpAdaptor::verify();
  v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (!v45)
  {
    goto LABEL_76;
  }

LABEL_52:
  v46 = v44;
  v47 = v45;
  do
  {
    v48 = v47 >> 1;
    v49 = &v46[2 * (v47 >> 1)];
    v51 = *v49;
    v50 = v49 + 2;
    v47 += ~(v47 >> 1);
    if (v51 < v43)
    {
      v46 = v50;
    }

    else
    {
      v47 = v48;
    }
  }

  while (v47);
LABEL_77:
  if (v46 != &v44[2 * v45] && *v46 == v43)
  {
    v59 = v46[1];
    v126 = v5;
    v127 = v59;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v126 = v5;
    v127 = 0;
    v58 = mlir::ElementsAttr::getType(&v126);
    if (!v58)
    {
      goto LABEL_94;
    }
  }

  v60 = *v58;
  {
    v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    if (v63)
    {
      goto LABEL_84;
    }

LABEL_91:
    v63 = 0;
    v64 = v62;
    goto LABEL_92;
  }

  v121 = v58;
  mlir::mps::ConstantOp::verify();
  v58 = v121;
  v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  if (!v63)
  {
    goto LABEL_91;
  }

LABEL_84:
  v64 = v62;
  v65 = v63;
  do
  {
    v66 = v65 >> 1;
    v67 = &v64[2 * (v65 >> 1)];
    v69 = *v67;
    v68 = v67 + 2;
    v65 += ~(v65 >> 1);
    if (v69 < v61)
    {
      v64 = v68;
    }

    else
    {
      v65 = v66;
    }
  }

  while (v65);
LABEL_92:
  if (v64 != &v62[2 * v63] && *v64 == v61)
  {
    v70 = v64[1];
    goto LABEL_95;
  }

LABEL_94:
  v70 = 0;
LABEL_95:
  v132 = v58;
  v133 = v70;
  v71 = mlir::ShapedType::getShape(&v132);
  v131 = 4;
  if (v72 == 1 && *v71 == v131)
  {
    v123 = v5;
    v124 = mlir::DenseElementsAttr::getType(&v123);
    v125 = v73;
    ElementType = mlir::ShapedType::getElementType(&v124);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      goto LABEL_98;
    }
  }

  v126 = "'mps.pooling_l2_norm' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v128 = 259;
  mlir::emitError(a2, &v126, &v132);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v132);
  if (v132)
  {
    mlir::InFlightDiagnostic::report(&v132);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v84 = __p;
    if (__p)
    {
      v85 = v139;
      v86 = __p;
      if (v139 != __p)
      {
        do
        {
          v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
        }

        while (v85 != v84);
        v86 = __p;
      }

      v139 = v84;
      operator delete(v86);
    }

    v20 = v136;
    if (!v136)
    {
      goto LABEL_170;
    }

    v87 = v137;
    v22 = v136;
    if (v137 == v136)
    {
      goto LABEL_169;
    }

    do
    {
      v89 = *--v87;
      v88 = v89;
      *v87 = 0;
      if (v89)
      {
        MEMORY[0x259C63150](v88, 0x1000C8077774924);
      }
    }

    while (v87 != v20);
    goto LABEL_168;
  }

  return v16;
}

uint64_t mlir::mps::PoolL2NormOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::PoolAvgGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::PoolMaxGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolMaxGradientOp>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v143 = *MEMORY[0x277D85DE8];
  v129 = a1;
  v4 = &a1[4 * ((a1[11] >> 23) & 1)];
  v128 = *(v4 + 15);
  v127 = *(v4 + 9);
  v126 = *(v4 + 16);
  v125 = *(v4 + 10);
  if (v126)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v126) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v123, v126, 0);
      v3 = v126;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v126);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v120, v3, NumElements);
      while (v124 != v122)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v123, &v118);
        if (v119 > 0x40)
        {
          if (*v118 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v119 || (v118 << -v119) >> -v119 <= 0)
        {
LABEL_7:
          v117 = 259;
          mlir::OpState::emitOpError(&v129, v116, v132);
          if (v119 > 0x40)
          {
            v6 = *v118;
            if (!v132[0])
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (v119)
            {
              v6 = (v118 << -v119) >> -v119;
            }

            else
            {
              v6 = 0;
            }

            if (!v132[0])
            {
              goto LABEL_21;
            }
          }

          LODWORD(v130) = 2;
          *(&v130 + 1) = v6;
          if (v134 >= v135)
          {
            if (v133 > &v130 || v133 + 24 * v134 <= &v130)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v8 = v133 + 24 * v134;
          v9 = v130;
          *(v8 + 2) = v131;
          *v8 = v9;
          v10 = ++v134;
          if (v132[0])
          {
            LODWORD(v130) = 3;
            *(&v130 + 1) = ", all values should be positive.";
            v131 = 32;
            if (v10 >= v135)
            {
              if (v133 > &v130 || v133 + 24 * v10 <= &v130)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = v133 + 24 * v134;
            v12 = v130;
            *(v11 + 2) = v131;
            *v11 = v12;
            ++v134;
          }

LABEL_21:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
          if (v132[0])
          {
            mlir::InFlightDiagnostic::report(v132);
          }

          if (v142 == 1)
          {
            if (v141 != &v142)
            {
              free(v141);
            }

            v13 = __p;
            if (__p)
            {
              v14 = v140;
              v15 = __p;
              if (v140 != __p)
              {
                do
                {
                  v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
                }

                while (v14 != v13);
                v15 = __p;
              }

              v140 = v13;
              operator delete(v15);
            }

            v16 = v137;
            if (v137)
            {
              v17 = v138;
              v18 = v137;
              if (v138 != v137)
              {
                do
                {
                  v20 = *--v17;
                  v19 = v20;
                  *v17 = 0;
                  if (v20)
                  {
                    MEMORY[0x259C63150](v19, 0x1000C8077774924);
                  }
                }

                while (v17 != v16);
                v18 = v137;
              }

              v138 = v16;
              operator delete(v18);
            }

            if (v133 != v136)
            {
              free(v133);
            }
          }

          v7 = 0;
          if (v119 < 0x41)
          {
            goto LABEL_44;
          }

LABEL_42:
          if (v118)
          {
            MEMORY[0x259C63150](v118, 0x1000C8000313F17);
          }

          goto LABEL_44;
        }

        v7 = 1;
        if (v119 >= 0x41)
        {
          goto LABEL_42;
        }

LABEL_44:
        if (!v7)
        {
          return v3;
        }

        ++v124;
      }
    }
  }

  if (v128)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v128) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v123, v128, 0);
      v21 = v128;
      v22 = mlir::DenseElementsAttr::getNumElements(&v128);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v120, v21, v22);
      while (v124 != v122)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v123, &v118);
        if (v119 > 0x40)
        {
          if (*v118 <= 0)
          {
            goto LABEL_110;
          }
        }

        else if (!v119 || (v118 << -v119) >> -v119 <= 0)
        {
LABEL_110:
          v117 = 259;
          mlir::OpState::emitOpError(&v129, v116, v132);
          if (v119 > 0x40)
          {
            v49 = *v118;
            if (!v132[0])
            {
              goto LABEL_124;
            }
          }

          else
          {
            if (v119)
            {
              v49 = (v118 << -v119) >> -v119;
            }

            else
            {
              v49 = 0;
            }

            if (!v132[0])
            {
              goto LABEL_124;
            }
          }

          LODWORD(v130) = 2;
          *(&v130 + 1) = v49;
          if (v134 >= v135)
          {
            if (v133 > &v130 || v133 + 24 * v134 <= &v130)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v51 = v133 + 24 * v134;
          v52 = v130;
          *(v51 + 2) = v131;
          *v51 = v52;
          v53 = ++v134;
          if (v132[0])
          {
            LODWORD(v130) = 3;
            *(&v130 + 1) = ", all values should be positive.";
            v131 = 32;
            if (v53 >= v135)
            {
              if (v133 > &v130 || v133 + 24 * v53 <= &v130)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v54 = v133 + 24 * v134;
            v55 = v130;
            *(v54 + 2) = v131;
            *v54 = v55;
            ++v134;
          }

LABEL_124:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
          if (v132[0])
          {
            mlir::InFlightDiagnostic::report(v132);
          }

          if (v142 == 1)
          {
            if (v141 != &v142)
            {
              free(v141);
            }

            v56 = __p;
            if (__p)
            {
              v57 = v140;
              v58 = __p;
              if (v140 != __p)
              {
                do
                {
                  v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
                }

                while (v57 != v56);
                v58 = __p;
              }

              v140 = v56;
              operator delete(v58);
            }

            v59 = v137;
            if (v137)
            {
              v60 = v138;
              v61 = v137;
              if (v138 != v137)
              {
                do
                {
                  v63 = *--v60;
                  v62 = v63;
                  *v60 = 0;
                  if (v63)
                  {
                    MEMORY[0x259C63150](v62, 0x1000C8077774924);
                  }
                }

                while (v60 != v59);
                v61 = v137;
              }

              v138 = v59;
              operator delete(v61);
            }

            if (v133 != v136)
            {
              free(v133);
            }
          }

          v50 = 0;
          if (v119 < 0x41)
          {
            goto LABEL_147;
          }

LABEL_145:
          if (v118)
          {
            MEMORY[0x259C63150](v118, 0x1000C8000313F17);
          }

          goto LABEL_147;
        }

        v50 = 1;
        if (v119 >= 0x41)
        {
          goto LABEL_145;
        }

LABEL_147:
        if (!v50)
        {
          return v3;
        }

        ++v124;
      }
    }
  }

  if (v127)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v127) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v123, v127, 0);
      v23 = v127;
      v24 = mlir::DenseElementsAttr::getNumElements(&v127);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v120, v23, v24);
      while (v124 != v122)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v123, &v118);
        if (v119 > 0x40)
        {
          if (*v118 <= 0)
          {
            goto LABEL_166;
          }
        }

        else if (!v119 || (v118 << -v119) >> -v119 <= 0)
        {
LABEL_166:
          v117 = 259;
          mlir::OpState::emitOpError(&v129, v116, v132);
          if (v119 > 0x40)
          {
            v65 = *v118;
            if (!v132[0])
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (v119)
            {
              v65 = (v118 << -v119) >> -v119;
            }

            else
            {
              v65 = 0;
            }

            if (!v132[0])
            {
              goto LABEL_180;
            }
          }

          LODWORD(v130) = 2;
          *(&v130 + 1) = v65;
          if (v134 >= v135)
          {
            if (v133 > &v130 || v133 + 24 * v134 <= &v130)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v67 = v133 + 24 * v134;
          v68 = v130;
          *(v67 + 2) = v131;
          *v67 = v68;
          v69 = ++v134;
          if (v132[0])
          {
            LODWORD(v130) = 3;
            *(&v130 + 1) = ", all values should be positive.";
            v131 = 32;
            if (v69 >= v135)
            {
              if (v133 > &v130 || v133 + 24 * v69 <= &v130)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v70 = v133 + 24 * v134;
            v71 = v130;
            *(v70 + 2) = v131;
            *v70 = v71;
            ++v134;
          }

LABEL_180:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
          if (v132[0])
          {
            mlir::InFlightDiagnostic::report(v132);
          }

          if (v142 == 1)
          {
            if (v141 != &v142)
            {
              free(v141);
            }

            v72 = __p;
            if (__p)
            {
              v73 = v140;
              v74 = __p;
              if (v140 != __p)
              {
                do
                {
                  v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
                }

                while (v73 != v72);
                v74 = __p;
              }

              v140 = v72;
              operator delete(v74);
            }

            v75 = v137;
            if (v137)
            {
              v76 = v138;
              v77 = v137;
              if (v138 != v137)
              {
                do
                {
                  v79 = *--v76;
                  v78 = v79;
                  *v76 = 0;
                  if (v79)
                  {
                    MEMORY[0x259C63150](v78, 0x1000C8077774924);
                  }
                }

                while (v76 != v75);
                v77 = v137;
              }

              v138 = v75;
              operator delete(v77);
            }

            if (v133 != v136)
            {
              free(v133);
            }
          }

          v66 = 0;
          if (v119 < 0x41)
          {
            goto LABEL_203;
          }

LABEL_201:
          if (v118)
          {
            MEMORY[0x259C63150](v118, 0x1000C8000313F17);
          }

          goto LABEL_203;
        }

        v66 = 1;
        if (v119 >= 0x41)
        {
          goto LABEL_201;
        }

LABEL_203:
        if (!v66)
        {
          return v3;
        }

        ++v124;
      }
    }
  }

  if (v125)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v125) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v123, v125, 0);
      v25 = v125;
      v26 = mlir::DenseElementsAttr::getNumElements(&v125);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v120, v25, v26);
      if (v124 != v122)
      {
        v80 = 0x1000C8000313F17;
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v123, &v118);
          if (v119 > 0x40)
          {
            break;
          }

          if (v119)
          {
            v82 = (v118 << -v119) >> -v119;
            if (v82 < 0)
            {
              goto LABEL_220;
            }

LABEL_227:
            if (v119 >= 0x41)
            {
LABEL_255:
              if (v118)
              {
                MEMORY[0x259C63150](v118, v80);
              }
            }

LABEL_215:
            if (v82 < 0)
            {
              return v3;
            }
          }

          if (++v124 == v122)
          {
            goto LABEL_64;
          }
        }

        v82 = *v118;
        if ((*v118 & 0x8000000000000000) == 0)
        {
          goto LABEL_227;
        }

LABEL_220:
        v116[0] = v81;
        v117 = 259;
        mlir::OpState::emitOpError(&v129, v116, v132);
        if (v119 > 0x40)
        {
          v83 = *v118;
          if (!v132[0])
          {
            goto LABEL_234;
          }
        }

        else
        {
          if (v119)
          {
            v83 = (v118 << -v119) >> -v119;
          }

          else
          {
            v83 = 0;
          }

          if (!v132[0])
          {
            goto LABEL_234;
          }
        }

        LODWORD(v130) = 2;
        *(&v130 + 1) = v83;
        if (v134 >= v135)
        {
          if (v133 > &v130 || v133 + 24 * v134 <= &v130)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v84 = v133 + 24 * v134;
        v85 = v130;
        *(v84 + 2) = v131;
        *v84 = v85;
        v86 = ++v134;
        if (v132[0])
        {
          LODWORD(v130) = 3;
          *(&v130 + 1) = ", all values should be non-negative.";
          v131 = 36;
          if (v86 >= v135)
          {
            if (v133 > &v130 || v133 + 24 * v86 <= &v130)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v87 = v133 + 24 * v134;
          v88 = v130;
          *(v87 + 2) = v131;
          *v87 = v88;
          ++v134;
        }

LABEL_234:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
        if (v132[0])
        {
          mlir::InFlightDiagnostic::report(v132);
        }

        if (v142 == 1)
        {
          if (v141 != &v142)
          {
            free(v141);
          }

          v89 = v81;
          v90 = __p;
          if (__p)
          {
            v91 = v140;
            v92 = __p;
            if (v140 != __p)
            {
              do
              {
                v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
              }

              while (v91 != v90);
              v92 = __p;
            }

            v140 = v90;
            operator delete(v92);
          }

          v93 = v137;
          if (v137)
          {
            v94 = v80;
            v95 = v138;
            v96 = v137;
            if (v138 != v137)
            {
              do
              {
                v98 = *--v95;
                v97 = v98;
                *v95 = 0;
                if (v98)
                {
                  MEMORY[0x259C63150](v97, 0x1000C8077774924);
                }
              }

              while (v95 != v93);
              v96 = v137;
            }

            v138 = v93;
            operator delete(v96);
            v80 = v94;
          }

          v81 = v89;
          if (v133 != v136)
          {
            free(v133);
          }
        }

        if (v119 >= 0x41)
        {
          goto LABEL_255;
        }

        goto LABEL_215;
      }
    }
  }

LABEL_64:
  v27 = *(*(v129 + 2 * ((*(v129 + 11) >> 23) & 1) + 14) + 8);
  if (v27 == 3)
  {
    v117 = 259;
    mlir::OpState::emitOpError(&v129, v116, v132);
    if (v132[0])
    {
      LODWORD(v123) = 3;
      *(&v123 + 1) = "not supported by this op.";
      v124 = 25;
      if (v134 >= v135)
      {
        if (v133 > &v123 || v133 + 24 * v134 <= &v123)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v133 + 24 * v134;
      v42 = v123;
      *(v41 + 2) = v124;
      *v41 = v42;
      ++v134;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
    if (v132[0])
    {
      mlir::InFlightDiagnostic::report(v132);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v140;
        v45 = __p;
        if (v140 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v140 = v43;
        operator delete(v45);
      }

      v36 = v137;
      if (!v137)
      {
        goto LABEL_160;
      }

      v46 = v138;
      v38 = v137;
      if (v138 == v137)
      {
        goto LABEL_159;
      }

      do
      {
        v48 = *--v46;
        v47 = v48;
        *v46 = 0;
        if (v48)
        {
          MEMORY[0x259C63150](v47, 0x1000C8077774924);
        }
      }

      while (v46 != v36);
      goto LABEL_158;
    }
  }

  else if (v27 || v125)
  {
    if (mlir::mps::checkInputTensors<mlir::mps::PoolMaxGradientOp>(v129))
    {
      if (a2)
      {
        v99 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
        *&v123 = v99;
        *(&v123 + 1) = v100;
      }

      else
      {
        v99 = 0;
        v123 = 0uLL;
      }

      if (a3)
      {
        v101 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
        v120 = v101;
        v121 = v102;
      }

      else
      {
        v101 = 0;
        v120 = 0;
        v121 = 0;
      }

      if (!v99)
      {
        return 1;
      }

      if (*(*v99 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v101 == 0)
      {
        return 1;
      }

      if (*(*v101 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        return 1;
      }

      mlir::ShapedType::getShape(&v123);
      v105 = v104;
      mlir::ShapedType::getShape(&v120);
      if (v105 == v106)
      {
        return 1;
      }

      else
      {
        v117 = 259;
        mlir::OpState::emitOpError(&v129, v116, v132);
        mlir::ShapedType::getShape(&v123);
        *&v130 = v107;
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(v132, &v130);
        v110 = v109;
        mlir::ShapedType::getShape(&v120);
        v118 = v111;
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(v110, &v118);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v112, ".");
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v113);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v132);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v117 = 259;
    mlir::OpState::emitOpError(&v129, v116, v132);
    if (v132[0])
    {
      LODWORD(v123) = 3;
      *(&v123 + 1) = "invalid type. Must be specified when ";
      v124 = 37;
      if (v134 >= v135)
      {
        if (v133 > &v123 || v133 + 24 * v134 <= &v123)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v133 + 24 * v134;
      v29 = v123;
      *(v28 + 2) = v124;
      *v28 = v29;
      v30 = ++v134;
      if (v132[0])
      {
        LODWORD(v123) = 3;
        v124 = 31;
        if (v30 >= v135)
        {
          if (v133 > &v123 || v133 + 24 * v30 <= &v123)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v133 + 24 * v134;
        v32 = v123;
        *(v31 + 2) = v124;
        *v31 = v32;
        ++v134;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
    if (v132[0])
    {
      mlir::InFlightDiagnostic::report(v132);
    }

    if (v142 == 1)
    {
      if (v141 != &v142)
      {
        free(v141);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v140;
        v35 = __p;
        if (v140 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v140 = v33;
        operator delete(v35);
      }

      v36 = v137;
      if (!v137)
      {
        goto LABEL_160;
      }

      v37 = v138;
      v38 = v137;
      if (v138 == v137)
      {
LABEL_159:
        v138 = v36;
        operator delete(v38);
LABEL_160:
        if (v133 != v136)
        {
          free(v133);
        }

        return v3;
      }

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
LABEL_158:
      v38 = v137;
      goto LABEL_159;
    }
  }

  return v3;
}

uint64_t mlir::mps::PoolL2NormGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::PoolMaxOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, __int128 a9, uint64_t a10)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
    v15 = a7[2];
    v16 = a7[3];
    v17 = *(a7 + 8);
  }

  else
  {
    v17 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *&v65 = a6;
  BYTE8(v65) = 0;
  v66[0] = 0;
  *&v66[8] = v13;
  *&v66[24] = v14;
  *&v66[40] = v15;
  *&v66[56] = v16;
  *&v66[72] = v17;
  v67 = a9;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v65);
    if (v66[0] == 1)
    {
      v66[0] = 0;
    }

    mlir::OperationName::OperationName(&v65 + 8, "mps.pooling_max", 15, Context);
    v66[0] = 1;
  }

  *&v68 = a4;
  *(&v68 + 1) = a5;
  if (!a5 || (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::PoolMaxOpAdaptor::verify(&v65, v19) & 1) == 0))
  {
    v37 = mlir::Float32Type::get(this, a2);
    v38 = mlir::UnrankedTensorType::get(v37);
    v39 = *(a10 + 8);
    if (v39 >= *(a10 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v39) = v38;
    ++*(a10 + 8);
    v40 = mlir::IntegerType::get(this, 32, 1u);
    if (!v40)
    {
      v40 = mlir::Float32Type::get(this, v41);
    }

    v42 = mlir::UnrankedTensorType::get(v40);
    v43 = *(a10 + 8);
    if (v43 >= *(a10 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v43) = v42;
    goto LABEL_40;
  }

  v53[0] = v68;
  v53[1] = 0;
  v20 = mlir::ValueRange::dereference_iterator(v53, 0);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v52[0] = v21;
  v52[1] = v22;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
  v24 = mlir::IntegerType::get(this, 32, 1u);
  v51 = *&v66[48];
  if (*&v66[48])
  {
    v53[0] = mlir::TypeAttr::getValue(&v51);
    if (mlir::Type::isSignedInteger(v53, 32) || mlir::Type::isSignedInteger(v53, 64))
    {
      v24 = v53[0];
    }
  }

  if (!v21 || (mlir::ShapedType::hasRank(v52) & 1) == 0)
  {
    v44 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v45 = mlir::UnrankedTensorType::get(v24);
    v46 = *(a10 + 8);
    if (v46 >= *(a10 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v46) = v44;
    v47 = *(a10 + 12);
    v48 = *(a10 + 8) + 1;
    *(a10 + 8) = v48;
    if (v48 >= v47)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v48) = v45;
LABEL_40:
    ++*(a10 + 8);
    return 1;
  }

  v63[0] = v64;
  v63[1] = 0x400000000;
  v61[0] = v62;
  v61[1] = 0x400000000;
  v59[0] = v60;
  v59[1] = 0x800000000;
  v57[0] = v58;
  v57[1] = 0x400000000;
  v55[0] = v56;
  v55[1] = 0x400000000;
  v50 = 0;
  v49 = 2;
  Shape = mlir::ShapedType::getShape(v52);
  v54[3] = *&v66[48];
  v54[4] = *&v66[64];
  v54[5] = v67;
  v54[6] = v68;
  *v53 = v65;
  v54[0] = *v66;
  v54[1] = *&v66[16];
  v54[2] = *&v66[32];
  mlir::mps::getPool4dParams<mlir::mps::PoolMaxOpAdaptor>(Shape, v26, v53, v63, v61, v59, v57, v55, &v49, &v50 + 1, &v50);
  v53[0] = v54;
  v53[1] = 0x400000000;
  v29 = mlir::mps::inferPool4DShape(v27, v28, v61, v63, v57, v55, v59, v49, HIBYTE(v50), v53);
  result = 0;
  if (v29)
  {
    v31 = mlir::RankedTensorType::get(v53[0], LODWORD(v53[1]), ElementTypeOrSelf, 0);
    v32 = mlir::RankedTensorType::get(v53[0], LODWORD(v53[1]), v24, 0);
    v33 = *(a10 + 8);
    if (v33 >= *(a10 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v33) = v31;
    v34 = *(a10 + 12);
    v35 = *(a10 + 8) + 1;
    *(a10 + 8) = v35;
    if (v35 >= v34)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a10 + 8 * v35) = v32;
    ++*(a10 + 8);
    result = 1;
  }

  v36 = result;
  if (v53[0] != v54)
  {
    free(v53[0]);
    result = v36;
  }

  if (v55[0] != v56)
  {
    free(v55[0]);
    result = v36;
  }

  if (v57[0] != v58)
  {
    free(v57[0]);
    result = v36;
  }

  if (v59[0] != v60)
  {
    free(v59[0]);
    result = v36;
  }

  if (v61[0] != v62)
  {
    free(v61[0]);
    result = v36;
  }

  if (v63[0] != v64)
  {
    free(v63[0]);
    return v36;
  }

  return result;
}

uint64_t mlir::mps::PoolMaxOpAdaptor::verify(void *a1, uint64_t a2)
{
  v143 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v130 = a1[5];
  v4 = a1[11];
  if (!v4)
  {
    v127 = "'mps.pooling_max' op requires attribute 'window_sizes'";
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
    v127 = "'mps.pooling_max' op attribute 'window_sizes' failed to satisfy constraint: ui64 elements attribute of shape {4}";
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
                  v127 = "'mps.pooling_max' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
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

            v127 = "'mps.pooling_max' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
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

  v127 = "'mps.pooling_max' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
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

void mlir::mps::getPool4dParams<mlir::mps::PoolMaxOpAdaptor>(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, BOOL *a10, BOOL *a11)
{
  v18 = a3[11];
  v55 = a3[10];
  v56 = v18;
  v19 = a3[5];
  v46 = a3[4];
  v53 = v19;
  v54 = v46;
  *a9 = 2;
  v20 = a3[9];
  if (v20)
  {
    *a9 = *(v20 + 8);
  }

  *a10 = a3[3] != 0;
  *a11 = a3[6] != 0;
  v21 = *(a6 + 8);
  if (v21 == 8)
  {
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 == 4)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v23)
    {
      *(a7 + 8) = 4;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (*(a7 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16((*a7 + 8 * v22), &unk_257369660, 32 - 8 * v22);
      *(a7 + 8) = 4;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 == 4)
    {
      goto LABEL_7;
    }

LABEL_26:
    if (v27)
    {
      *(a5 + 8) = 4;
      if (a2 <= *(a4 + 12))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (*(a5 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16((*a5 + 8 * v26), &unk_257369660, 32 - 8 * v26);
      *(a5 + 8) = 4;
      if (a2 <= *(a4 + 12))
      {
        goto LABEL_32;
      }
    }

LABEL_8:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21 <= 8)
  {
    if (*(a6 + 12) <= 7u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero((*a6 + 8 * v21), 64 - 8 * v21);
    *(a6 + 8) = 8;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a6 + 8) = 8;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_14;
    }
  }

LABEL_5:
  v24 = *(a8 + 8);
  v25 = v24 > 4;
  if (v24 == 4)
  {
    goto LABEL_6;
  }

LABEL_20:
  if (v25)
  {
    *(a8 + 8) = 4;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*(a8 + 12) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16((*a8 + 8 * v24), &unk_257369660, 32 - 8 * v24);
    *(a8 + 8) = 4;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_26;
    }
  }

LABEL_7:
  if (a2 > *(a4 + 12))
  {
    goto LABEL_8;
  }

LABEL_32:
  if (a2)
  {
    v28 = *(a4 + 8);
    v29 = 8 * a2;
    do
    {
      if (v28 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v28) = *a1;
      v28 = *(a4 + 8) + 1;
      *(a4 + 8) = v28;
      ++a1;
      v29 -= 8;
    }

    while (v29);
    v18 = v56;
  }

  if (v18)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v56) == 4)
    {
      *(a5 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v56, 0);
      v30 = v56;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v56);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v30, NumElements);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v38 = *v47;
        }

        else if (v48)
        {
          v38 = (v47 << -v48) >> -v48;
        }

        else
        {
          v38 = 0;
        }

        v39 = *(a5 + 8);
        if (v39 >= *(a5 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a5 + 8 * v39) = v38;
        ++*(a5 + 8);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v55)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v55) == 4)
    {
      *(a7 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v55, 0);
      v32 = v55;
      v33 = mlir::DenseElementsAttr::getNumElements(&v55);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v32, v33);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v40 = *v47;
        }

        else if (v48)
        {
          v40 = (v47 << -v48) >> -v48;
        }

        else
        {
          v40 = 0;
        }

        v41 = *(a7 + 8);
        if (v41 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v41) = v40;
        ++*(a7 + 8);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v46)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v54) == 4)
    {
      *(a8 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v54, 0);
      v34 = v54;
      v35 = mlir::DenseElementsAttr::getNumElements(&v54);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v34, v35);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v42 = *v47;
        }

        else if (v48)
        {
          v42 = (v47 << -v48) >> -v48;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(a8 + 8);
        if (v43 >= *(a8 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a8 + 8 * v43) = v42;
        ++*(a8 + 8);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v19)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v53) == 8)
    {
      *(a6 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v53, 0);
      v36 = v53;
      v37 = mlir::DenseElementsAttr::getNumElements(&v53);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v36, v37);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v44 = *v47;
        }

        else if (v48)
        {
          v44 = (v47 << -v48) >> -v48;
        }

        else
        {
          v44 = 0;
        }

        v45 = *(a6 + 8);
        if (v45 >= *(a6 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a6 + 8 * v45) = v44;
        ++*(a6 + 8);
        if (v48 >= 0x41)
        {
          if (v47)
          {
            MEMORY[0x259C63150](v47, 0x1000C8000313F17);
          }
        }
      }
    }
  }
}

uint64_t mlir::mps::PoolMaxOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::verifyPooling4D<mlir::mps::PoolMaxOp>(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v144 = *MEMORY[0x277D85DE8];
  v130 = a1;
  v4 = &a1[4 * ((a1[11] >> 23) & 1)];
  v129 = *(v4 + 15);
  v128 = *(v4 + 9);
  v127 = *(v4 + 16);
  v126 = *(v4 + 10);
  if (v127)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v127) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v127, 0);
      v3 = v127;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v127);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v3, NumElements);
      while (v125 != v123)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
        if (v120 > 0x40)
        {
          if (*v119 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v120 || (v119 << -v120) >> -v120 <= 0)
        {
LABEL_7:
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          if (v120 > 0x40)
          {
            v6 = *v119;
            if (!v133[0])
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (v120)
            {
              v6 = (v119 << -v120) >> -v120;
            }

            else
            {
              v6 = 0;
            }

            if (!v133[0])
            {
              goto LABEL_21;
            }
          }

          LODWORD(v131) = 2;
          *(&v131 + 1) = v6;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v8 = v134 + 24 * v135;
          v9 = v131;
          *(v8 + 2) = v132;
          *v8 = v9;
          v10 = ++v135;
          if (v133[0])
          {
            LODWORD(v131) = 3;
            *(&v131 + 1) = ", all values should be positive.";
            v132 = 32;
            if (v10 >= v136)
            {
              if (v134 > &v131 || v134 + 24 * v10 <= &v131)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = v134 + 24 * v135;
            v12 = v131;
            *(v11 + 2) = v132;
            *v11 = v12;
            ++v135;
          }

LABEL_21:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
          if (v133[0])
          {
            mlir::InFlightDiagnostic::report(v133);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v13 = __p;
            if (__p)
            {
              v14 = v141;
              v15 = __p;
              if (v141 != __p)
              {
                do
                {
                  v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
                }

                while (v14 != v13);
                v15 = __p;
              }

              v141 = v13;
              operator delete(v15);
            }

            v16 = v138;
            if (v138)
            {
              v17 = v139;
              v18 = v138;
              if (v139 != v138)
              {
                do
                {
                  v20 = *--v17;
                  v19 = v20;
                  *v17 = 0;
                  if (v20)
                  {
                    MEMORY[0x259C63150](v19, 0x1000C8077774924);
                  }
                }

                while (v17 != v16);
                v18 = v138;
              }

              v139 = v16;
              operator delete(v18);
            }

            if (v134 != v137)
            {
              free(v134);
            }
          }

          v7 = 0;
          if (v120 < 0x41)
          {
            goto LABEL_44;
          }

LABEL_42:
          if (v119)
          {
            MEMORY[0x259C63150](v119, 0x1000C8000313F17);
          }

          goto LABEL_44;
        }

        v7 = 1;
        if (v120 >= 0x41)
        {
          goto LABEL_42;
        }

LABEL_44:
        if (!v7)
        {
          return v3;
        }

        ++v125;
      }
    }
  }

  if (v129)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v129) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v129, 0);
      v21 = v129;
      v22 = mlir::DenseElementsAttr::getNumElements(&v129);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v21, v22);
      while (v125 != v123)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
        if (v120 > 0x40)
        {
          if (*v119 <= 0)
          {
            goto LABEL_102;
          }
        }

        else if (!v120 || (v119 << -v120) >> -v120 <= 0)
        {
LABEL_102:
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          if (v120 > 0x40)
          {
            v47 = *v119;
            if (!v133[0])
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (v120)
            {
              v47 = (v119 << -v120) >> -v120;
            }

            else
            {
              v47 = 0;
            }

            if (!v133[0])
            {
              goto LABEL_116;
            }
          }

          LODWORD(v131) = 2;
          *(&v131 + 1) = v47;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v49 = v134 + 24 * v135;
          v50 = v131;
          *(v49 + 2) = v132;
          *v49 = v50;
          v51 = ++v135;
          if (v133[0])
          {
            LODWORD(v131) = 3;
            *(&v131 + 1) = ", all values should be positive.";
            v132 = 32;
            if (v51 >= v136)
            {
              if (v134 > &v131 || v134 + 24 * v51 <= &v131)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v52 = v134 + 24 * v135;
            v53 = v131;
            *(v52 + 2) = v132;
            *v52 = v53;
            ++v135;
          }

LABEL_116:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
          if (v133[0])
          {
            mlir::InFlightDiagnostic::report(v133);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v54 = __p;
            if (__p)
            {
              v55 = v141;
              v56 = __p;
              if (v141 != __p)
              {
                do
                {
                  v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
                }

                while (v55 != v54);
                v56 = __p;
              }

              v141 = v54;
              operator delete(v56);
            }

            v57 = v138;
            if (v138)
            {
              v58 = v139;
              v59 = v138;
              if (v139 != v138)
              {
                do
                {
                  v61 = *--v58;
                  v60 = v61;
                  *v58 = 0;
                  if (v61)
                  {
                    MEMORY[0x259C63150](v60, 0x1000C8077774924);
                  }
                }

                while (v58 != v57);
                v59 = v138;
              }

              v139 = v57;
              operator delete(v59);
            }

            if (v134 != v137)
            {
              free(v134);
            }
          }

          v48 = 0;
          if (v120 < 0x41)
          {
            goto LABEL_139;
          }

LABEL_137:
          if (v119)
          {
            MEMORY[0x259C63150](v119, 0x1000C8000313F17);
          }

          goto LABEL_139;
        }

        v48 = 1;
        if (v120 >= 0x41)
        {
          goto LABEL_137;
        }

LABEL_139:
        if (!v48)
        {
          return v3;
        }

        ++v125;
      }
    }
  }

  if (v128)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v128) == 4)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v128, 0);
      v23 = v128;
      v24 = mlir::DenseElementsAttr::getNumElements(&v128);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v23, v24);
      while (v125 != v123)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
        if (v120 > 0x40)
        {
          if (*v119 <= 0)
          {
            goto LABEL_153;
          }
        }

        else if (!v120 || (v119 << -v120) >> -v120 <= 0)
        {
LABEL_153:
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          if (v120 > 0x40)
          {
            v62 = *v119;
            if (!v133[0])
            {
              goto LABEL_167;
            }
          }

          else
          {
            if (v120)
            {
              v62 = (v119 << -v120) >> -v120;
            }

            else
            {
              v62 = 0;
            }

            if (!v133[0])
            {
              goto LABEL_167;
            }
          }

          LODWORD(v131) = 2;
          *(&v131 + 1) = v62;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v64 = v134 + 24 * v135;
          v65 = v131;
          *(v64 + 2) = v132;
          *v64 = v65;
          v66 = ++v135;
          if (v133[0])
          {
            LODWORD(v131) = 3;
            *(&v131 + 1) = ", all values should be positive.";
            v132 = 32;
            if (v66 >= v136)
            {
              if (v134 > &v131 || v134 + 24 * v66 <= &v131)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v67 = v134 + 24 * v135;
            v68 = v131;
            *(v67 + 2) = v132;
            *v67 = v68;
            ++v135;
          }

LABEL_167:
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
          if (v133[0])
          {
            mlir::InFlightDiagnostic::report(v133);
          }

          if (v143 == 1)
          {
            if (v142 != &v143)
            {
              free(v142);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v141;
              v71 = __p;
              if (v141 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v141 = v69;
              operator delete(v71);
            }

            v72 = v138;
            if (v138)
            {
              v73 = v139;
              v74 = v138;
              if (v139 != v138)
              {
                do
                {
                  v76 = *--v73;
                  v75 = v76;
                  *v73 = 0;
                  if (v76)
                  {
                    MEMORY[0x259C63150](v75, 0x1000C8077774924);
                  }
                }

                while (v73 != v72);
                v74 = v138;
              }

              v139 = v72;
              operator delete(v74);
            }

            if (v134 != v137)
            {
              free(v134);
            }
          }

          v63 = 0;
          if (v120 < 0x41)
          {
            goto LABEL_190;
          }

LABEL_188:
          if (v119)
          {
            MEMORY[0x259C63150](v119, 0x1000C8000313F17);
          }

          goto LABEL_190;
        }

        v63 = 1;
        if (v120 >= 0x41)
        {
          goto LABEL_188;
        }

LABEL_190:
        if (!v63)
        {
          return v3;
        }

        ++v125;
      }
    }
  }

  if (v126)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v126) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v124, v126, 0);
      v25 = v126;
      v26 = mlir::DenseElementsAttr::getNumElements(&v126);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v121, v25, v26);
      if (v125 != v123)
      {
        v77 = 0x1000C8000313F17;
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v124, &v119);
          if (v120 > 0x40)
          {
            break;
          }

          if (v120)
          {
            v79 = (v119 << -v120) >> -v120;
            if (v79 < 0)
            {
              goto LABEL_207;
            }

LABEL_214:
            if (v120 >= 0x41)
            {
LABEL_242:
              if (v119)
              {
                MEMORY[0x259C63150](v119, v77);
              }
            }

LABEL_202:
            if (v79 < 0)
            {
              return v3;
            }
          }

          if (++v125 == v123)
          {
            goto LABEL_64;
          }
        }

        v79 = *v119;
        if ((*v119 & 0x8000000000000000) == 0)
        {
          goto LABEL_214;
        }

LABEL_207:
        v117[0] = v78;
        v118 = 259;
        mlir::OpState::emitOpError(&v130, v117, v133);
        if (v120 > 0x40)
        {
          v80 = *v119;
          if (!v133[0])
          {
            goto LABEL_221;
          }
        }

        else
        {
          if (v120)
          {
            v80 = (v119 << -v120) >> -v120;
          }

          else
          {
            v80 = 0;
          }

          if (!v133[0])
          {
            goto LABEL_221;
          }
        }

        LODWORD(v131) = 2;
        *(&v131 + 1) = v80;
        if (v135 >= v136)
        {
          if (v134 > &v131 || v134 + 24 * v135 <= &v131)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v81 = v134 + 24 * v135;
        v82 = v131;
        *(v81 + 2) = v132;
        *v81 = v82;
        v83 = ++v135;
        if (v133[0])
        {
          LODWORD(v131) = 3;
          *(&v131 + 1) = ", all values should be non-negative.";
          v132 = 36;
          if (v83 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v83 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v84 = v134 + 24 * v135;
          v85 = v131;
          *(v84 + 2) = v132;
          *v84 = v85;
          ++v135;
        }

LABEL_221:
        v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
        if (v133[0])
        {
          mlir::InFlightDiagnostic::report(v133);
        }

        if (v143 == 1)
        {
          if (v142 != &v143)
          {
            free(v142);
          }

          v86 = v78;
          v87 = __p;
          if (__p)
          {
            v88 = v141;
            v89 = __p;
            if (v141 != __p)
            {
              do
              {
                v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
              }

              while (v88 != v87);
              v89 = __p;
            }

            v141 = v87;
            operator delete(v89);
          }

          v90 = v138;
          if (v138)
          {
            v91 = v77;
            v92 = v139;
            v93 = v138;
            if (v139 != v138)
            {
              do
              {
                v95 = *--v92;
                v94 = v95;
                *v92 = 0;
                if (v95)
                {
                  MEMORY[0x259C63150](v94, 0x1000C8077774924);
                }
              }

              while (v92 != v90);
              v93 = v138;
            }

            v139 = v90;
            operator delete(v93);
            v77 = v91;
          }

          v78 = v86;
          if (v134 != v137)
          {
            free(v134);
          }
        }

        if (v120 >= 0x41)
        {
          goto LABEL_242;
        }

        goto LABEL_202;
      }
    }
  }

LABEL_64:
  v27 = *(*(v130 + 2 * ((*(v130 + 11) >> 23) & 1) + 14) + 8);
  if (v27 == 3)
  {
    v118 = 259;
    mlir::OpState::emitOpError(&v130, v117, v133);
    if (v133[0])
    {
      LODWORD(v124) = 3;
      *(&v124 + 1) = "not supported by this op.";
      v125 = 25;
      if (v135 >= v136)
      {
        if (v134 > &v124 || v134 + 24 * v135 <= &v124)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33 = v134 + 24 * v135;
      v34 = v124;
      *(v33 + 2) = v125;
      *v33 = v34;
      ++v135;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
    if (v133[0])
    {
      mlir::InFlightDiagnostic::report(v133);
    }

    if (v143 == 1)
    {
      if (v142 != &v143)
      {
        free(v142);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v141;
        v37 = __p;
        if (v141 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v141 = v35;
        operator delete(v37);
      }

      v38 = v138;
      if (!v138)
      {
        goto LABEL_275;
      }

      v39 = v139;
      v40 = v138;
      if (v139 == v138)
      {
        goto LABEL_274;
      }

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
      goto LABEL_273;
    }
  }

  else
  {
    if (v27 || v126)
    {
      if (a2)
      {
        v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
        *&v124 = v28;
        *(&v124 + 1) = v29;
        v30 = a3;
        if (a3)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v28 = 0;
        v124 = 0uLL;
        v30 = a3;
        if (a3)
        {
LABEL_69:
          v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v30 + 8) & 0xFFFFFFFFFFFFFFF8));
          v121 = v31;
          v122 = v32;
          if (!v28)
          {
            return 1;
          }

          goto LABEL_92;
        }
      }

      v31 = 0;
      v121 = 0;
      v122 = 0;
      if (!v28)
      {
        return 1;
      }

LABEL_92:
      if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v31 != 0 && *(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        mlir::ShapedType::getShape(&v124);
        v45 = v44;
        mlir::ShapedType::getShape(&v121);
        if (v45 != v46)
        {
          v118 = 259;
          mlir::OpState::emitOpError(&v130, v117, v133);
          mlir::ShapedType::getShape(&v124);
          *&v131 = v108;
          mlir::InFlightDiagnostic::operator<<<unsigned long &>(v133, &v131);
          v111 = v110;
          mlir::ShapedType::getShape(&v121);
          v119 = v112;
          mlir::InFlightDiagnostic::operator<<<unsigned long &>(v111, &v119);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v113, ".");
          v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v133);
          return v3;
        }
      }

      return 1;
    }

    v118 = 259;
    mlir::OpState::emitOpError(&v130, v117, v133);
    if (v133[0])
    {
      LODWORD(v124) = 3;
      *(&v124 + 1) = "invalid type. Must be specified when ";
      v125 = 37;
      if (v135 >= v136)
      {
        if (v134 > &v124 || v134 + 24 * v135 <= &v124)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v96 = v134 + 24 * v135;
      v97 = v124;
      *(v96 + 2) = v125;
      *v96 = v97;
      v98 = ++v135;
      if (v133[0])
      {
        LODWORD(v124) = 3;
        v125 = 31;
        if (v98 >= v136)
        {
          if (v134 > &v124 || v134 + 24 * v98 <= &v124)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v99 = v134 + 24 * v135;
        v100 = v124;
        *(v99 + 2) = v125;
        *v99 = v100;
        ++v135;
      }
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
    if (v133[0])
    {
      mlir::InFlightDiagnostic::report(v133);
    }

    if (v143 == 1)
    {
      if (v142 != &v143)
      {
        free(v142);
      }

      v101 = __p;
      if (__p)
      {
        v102 = v141;
        v103 = __p;
        if (v141 != __p)
        {
          do
          {
            v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
          }

          while (v102 != v101);
          v103 = __p;
        }

        v141 = v101;
        operator delete(v103);
      }

      v38 = v138;
      if (!v138)
      {
        goto LABEL_275;
      }

      v104 = v139;
      v40 = v138;
      if (v139 == v138)
      {
LABEL_274:
        v139 = v38;
        operator delete(v40);
LABEL_275:
        if (v134 != v137)
        {
          free(v134);
        }

        return v3;
      }

      do
      {
        v106 = *--v104;
        v105 = v106;
        *v104 = 0;
        if (v106)
        {
          MEMORY[0x259C63150](v105, 0x1000C8077774924);
        }
      }

      while (v104 != v38);
LABEL_273:
      v40 = v138;
      goto LABEL_274;
    }
  }

  return v3;
}

unint64_t mlir::mps::CallOp::getCallableForCallee(mlir::mps::CallOp *this)
{
  v1 = *this;
  if (!*(*this + 47) || (result = mlir::Operation::getInherentAttr(*this, "symbolName", 10), (v3 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(v1 + 56, "symbolName", 0xAuLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      result &= ~4uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::mps::CallOp::setCalleeFromCallable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v8 = 261;
  v7[0] = "symbolName";
  v7[1] = 10;
  v6 = mlir::StringAttr::get(Context, v7, v5);
  mlir::Operation::setAttr(v3, v6, a2 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::mps::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  Context = mlir::Attribute::getContext((*a1 + 24));
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "mps", 3);
  v7 = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(LoadedDialect);
  v19 = *(v7 + 40);
  v18 = *(v7 + 32);
  v9 = *(v4 + 64);
  v8 = v4 + 64;
  v17[4] = &unk_28685B550;
  (*(*a2 + 16))(a2, v9);
  if (!v18 || v18 == 1 && (HIDWORD(v18) < 3 || HIDWORD(v18) == 3 && v19 <= 1))
  {
    v17[0] = mlir::Attribute::getContext((*a1 + 24));
    memset(&v17[1], 0, 24);
    v15[0] = mlir::SymbolRefAttr::getRootReference((v8 + 8));
    Value = mlir::StringAttr::getValue(v15);
    v16 = 261;
    v15[0] = Value;
    v15[1] = v11;
    StringAttr = mlir::Builder::getStringAttr(v17, v15, v12);
  }

  else
  {
    StringAttr = *(v8 + 8);
  }

  return (*(*a2 + 16))(a2, StringAttr);
}

uint64_t mlir::mps::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::CallInlineModeAttr>(a1, *(a2 + 256)) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 24))(a1, "mps", 3);
  if ((v5 & 1) != 0 && ((v6 = v4[2]) == 0 || v6 == 1 && ((v7 = v4[3], v7 < 3) || v7 == 3 && v4[4] <= 1u)))
  {
    v14 = 0;
    v8 = mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, &v14);
    if (v8)
    {
      v9 = v8;
      Context = mlir::Attribute::getContext(&v14);
      Value = mlir::StringAttr::getValue(&v14);
      *(v3 + 8) = mlir::SymbolRefAttr::get(Context, Value, v12);
      return v9 & 1;
    }
  }

  else
  {
    v8 = mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, (v3 + 8));
  }

  return v8 & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::CallInlineModeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::CallInlineModeAttr]";
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

BOOL mlir::mps::BiasAddOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::BiasAddOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687F0B0;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687F0B0;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::BiasAddOp::verify(mlir::Operation **this)
{
  v110 = *MEMORY[0x277D85DE8];
  v2 = *(*(*this + 10) + 8);
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v86 = v4;
    v87 = v3;
    mlir::TensorType::operator mlir::ShapedType();
    v3 = v87;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v86 + 8);
    v7 = *(v86 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
    goto LABEL_14;
  }

  v14 = v8[1];
LABEL_15:
  v94[0] = v3;
  v94[1] = v14;
  v15 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *v15;
  {
    v88 = v15;
    v26 = v16;
    mlir::TensorType::operator mlir::ShapedType();
    v15 = v88;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v26 + 8);
    v19 = *(v26 + 16);
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_29:
    v27 = 0;
    goto LABEL_30;
  }

  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (!v19)
  {
    goto LABEL_29;
  }

LABEL_18:
  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 == &v18[2 * v19] || *v20 != v17)
  {
    goto LABEL_29;
  }

  v27 = v20[1];
LABEL_30:
  v93[0] = v15;
  v93[1] = v27;
  if (v2 == 1)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  if (mlir::ShapedType::hasRank(v94))
  {
    mlir::ShapedType::getShape(v94);
    if (v29 < v28)
    {
      v92 = 257;
      mlir::OpState::emitOpError(this, &v90, &v98);
      if (v98)
      {
        LODWORD(v95) = 3;
        *(&v95 + 1) = "requires value operand to have rank at least ";
        v96 = 45;
        if (v101 >= v102)
        {
          if (v100 > &v95 || v100 + 24 * v101 <= &v95)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v100 + 24 * v101;
        v31 = v95;
        *(v30 + 2) = v96;
        *v30 = v31;
        v32 = ++v101;
        if (v98)
        {
          LODWORD(v95) = 2;
          *(&v95 + 1) = v28;
          if (v32 >= v102)
          {
            if (v100 > &v95 || v100 + 24 * v32 <= &v95)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v100 + 24 * v101;
          v34 = v95;
          *(v33 + 2) = v96;
          *v33 = v34;
          v35 = ++v101;
          if (v98)
          {
            LODWORD(v95) = 3;
            v96 = 7;
            if (v35 >= v102)
            {
              if (v100 > &v95 || v100 + 24 * v35 <= &v95)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v36 = v100 + 24 * v101;
            v37 = v95;
            *(v36 + 2) = v96;
            *v36 = v37;
            ++v101;
          }
        }
      }

      if (v2 > 0xA)
      {
        v38 = 0;
        v39 = "";
        if (!v98)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v38 = qword_257388C18[v2];
        v39 = (&off_27983AC60)[v2];
        if (!v98)
        {
          goto LABEL_83;
        }
      }

      v97 = 261;
      *&v95 = v39;
      *(&v95 + 1) = v38;
      mlir::Diagnostic::operator<<(&v99, &v95);
      if (v98)
      {
        LODWORD(v95) = 3;
        v96 = 21;
        if (v101 >= v102)
        {
          if (v100 > &v95 || v100 + 24 * v101 <= &v95)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v63 = v100 + 24 * v101;
        v64 = v95;
        *(v63 + 2) = v96;
        *v63 = v64;
        ++v101;
      }

LABEL_83:
      mlir::ShapedType::getShape(v94);
      if (v98)
      {
        LODWORD(v95) = 2;
        *(&v95 + 1) = v65;
        if (v101 >= v102)
        {
          if (v100 > &v95 || v100 + 24 * v101 <= &v95)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v66 = v100 + 24 * v101;
        v67 = v95;
        *(v66 + 2) = v96;
        *v66 = v67;
        v68 = ++v101;
        if (v98)
        {
          LODWORD(v95) = 3;
          *(&v95 + 1) = ".";
          v96 = 1;
          if (v68 >= v102)
          {
            if (v100 > &v95 || v100 + 24 * v68 <= &v95)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v69 = v100 + 24 * v101;
          v70 = v95;
          *(v69 + 2) = v96;
          *v69 = v70;
          ++v101;
        }
      }

      v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }

      if (v109 == 1)
      {
        if (v108 != &v109)
        {
          free(v108);
        }

        v71 = __p;
        if (__p)
        {
          v72 = v107;
          v73 = __p;
          if (v107 != __p)
          {
            do
            {
              v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
            }

            while (v72 != v71);
            v73 = __p;
          }

          v107 = v71;
          operator delete(v73);
        }

        v58 = v104;
        if (!v104)
        {
          goto LABEL_106;
        }

        v74 = v105;
        v60 = v104;
        if (v105 == v104)
        {
LABEL_105:
          v105 = v58;
          operator delete(v60);
LABEL_106:
          if (v100 != &v103)
          {
            free(v100);
          }

          return v43;
        }

        do
        {
          v76 = *--v74;
          v75 = v76;
          *v74 = 0;
          if (v76)
          {
            MEMORY[0x259C63150](v75, 0x1000C8077774924);
          }
        }

        while (v74 != v58);
LABEL_104:
        v60 = v104;
        goto LABEL_105;
      }

      return v43;
    }
  }

  if (mlir::ShapedType::hasRank(v93) && (mlir::ShapedType::getShape(v93), v40 != 1))
  {
    v97 = 257;
    mlir::OpState::emitOpError(this, &v95, &v98);
    if (v98)
    {
      LODWORD(v90) = 3;
      *(&v90 + 1) = "requires bias operand to have rank exactly one.";
      v91 = 47;
      if (v101 >= v102)
      {
        if (v100 > &v90 || v100 + 24 * v101 <= &v90)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v44 = v100 + 24 * v101;
      v45 = v90;
      *(v44 + 2) = v91;
      *v44 = v45;
      v46 = ++v101;
      if (v98)
      {
        LODWORD(v90) = 3;
        *(&v90 + 1) = " Found ";
        v91 = 7;
        if (v46 >= v102)
        {
          if (v100 > &v90 || v100 + 24 * v46 <= &v90)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v47 = v100 + 24 * v101;
        v48 = v90;
        *(v47 + 2) = v91;
        *v47 = v48;
        ++v101;
      }
    }

    mlir::ShapedType::getShape(v93);
    if (v98)
    {
      LODWORD(v90) = 2;
      *(&v90 + 1) = v49;
      if (v101 >= v102)
      {
        if (v100 > &v90 || v100 + 24 * v101 <= &v90)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v50 = v100 + 24 * v101;
      v51 = v90;
      *(v50 + 2) = v91;
      *v50 = v51;
      v52 = ++v101;
      if (v98)
      {
        LODWORD(v90) = 3;
        *(&v90 + 1) = ".";
        v91 = 1;
        if (v52 >= v102)
        {
          if (v100 > &v90 || v100 + 24 * v52 <= &v90)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v53 = v100 + 24 * v101;
        v54 = v90;
        *(v53 + 2) = v91;
        *v53 = v54;
        ++v101;
      }
    }

    v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v109 == 1)
    {
      if (v108 != &v109)
      {
        free(v108);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v107;
        v57 = __p;
        if (v107 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v107 = v55;
        operator delete(v57);
      }

      v58 = v104;
      if (!v104)
      {
        goto LABEL_106;
      }

      v59 = v105;
      v60 = v104;
      if (v105 == v104)
      {
        goto LABEL_105;
      }

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
      goto LABEL_104;
    }
  }

  else if (mlir::ShapedType::hasRank(v93) && mlir::ShapedType::hasRank(v94))
  {
    if (v2 == 1)
    {
      mlir::ShapedType::getShape(v94);
      v42 = (v41 - 1);
    }

    else
    {
      v42 = 1;
    }

    v77 = *(mlir::ShapedType::getShape(v94) + 8 * v42);
    *&v90 = v77;
    v78 = *mlir::ShapedType::getShape(v93);
    v89 = v78;
    v43 = 1;
    if (v77 != 0x8000000000000000 && v78 != 0x8000000000000000 && v77 != v78)
    {
      v97 = 257;
      mlir::OpState::emitOpError(this, &v95, &v98);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v98, "requires feature dimension and bias dimension to match. ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v79, "Found ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v80, &v90);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v81, " and ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v82, &v89);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v83, ", respectively.");
      v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v84);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
    }
  }

  else
  {
    return 1;
  }

  return v43;
}

uint64_t mlir::mps::BiasAddGradOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v66[0] = a4;
  v66[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v58 = a6;
  v59[0] = 0;
  v60 = 0;
  v61 = v16;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v58);
    if (v60 == 1)
    {
      v60 = 0;
    }

    mlir::OperationName::OperationName(v59, "mps.bias_add_grad", 17, Context);
    v60 = 1;
  }

  v64 = a4;
  v65 = a5;
  if (!a5 || (v18 = mlir::UnknownLoc::get(this, a2), (mlir::mps::BiasAddGradOpAdaptor::verify(&v58, v18) & 1) == 0))
  {
    v29 = mlir::Float32Type::get(this, a2);
    v30 = mlir::UnrankedTensorType::get(v29);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v19 = mlir::ValueRange::dereference_iterator(v66, 0);
  v20 = *(v61 + 8);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v50[0] = v21;
  v50[1] = v22;
  if (!v21)
  {
LABEL_22:
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
    v30 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
LABEL_23:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_19:
    *(*a11 + 8 * v31) = v30;
    ++*(a11 + 8);
    return 1;
  }

  if ((mlir::ShapedType::hasRank(v50) & 1) == 0)
  {
    v21 = v50[0];
    goto LABEL_22;
  }

  mlir::ShapedType::getShape(v50);
  v24 = v23;
  if (v20 == 1)
  {
    v25 = v23 - 1;
  }

  else
  {
    v25 = 1;
  }

  v55 = v57;
  v56 = 0x600000000;
  Shape = mlir::ShapedType::getShape(v50);
  v28 = v27;
  v51 = v53;
  v52 = 0x400000000;
  if (v24)
  {
    if (v24 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v53, 8 * v24);
    v34 = v53;
    LODWORD(v52) = v24;
    if (v24 > 3)
    {
      v35 = v24 & 4;
      v36 = xmmword_2573686A0;
      v37 = &v54;
      v38 = vdupq_n_s64(2uLL);
      v39 = vdupq_n_s64(4uLL);
      v40 = v24 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v37[-1] = v36;
        *v37 = vaddq_s64(v36, v38);
        v36 = vaddq_s64(v36, v39);
        v37 += 2;
        v40 -= 4;
      }

      while (v40);
      goto LABEL_31;
    }

    v35 = 0;
    do
    {
      v53[v35] = v35;
      ++v35;
LABEL_31:
      ;
    }

    while (v24 != v35);
  }

  else
  {
    v34 = v53;
  }

  v41 = &v53[v25];
  v42 = &v53[v24];
  if (v42 != (v41 + 1))
  {
    memmove(v41, v41 + 1, v42 - (v41 + 1));
    LODWORD(v24) = v52;
    v34 = v51;
  }

  LODWORD(v52) = v24 - 1;
  if (v51 != v53)
  {
    free(v51);
  }

  if (v43)
  {
    v44 = v55;
    v45 = v56;
    ElementType = mlir::ShapedType::getElementType(v50);
    v47 = mlir::RankedTensorType::get(v44, v45, ElementType, 0);
    v48 = *(a11 + 8);
    if (v48 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v48) = v47;
    ++*(a11 + 8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v55 != v57)
  {
    v49 = result;
    free(v55);
    return v49;
  }

  return result;
}

uint64_t mlir::mps::BiasAddGradOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2 || *(v2 + 8) < 2u)
  {
    return 1;
  }

  v13 = "'mps.bias_add_grad' op attribute 'data_format' failed to satisfy constraint: valid TensorDataLayout is NHWC or NCHW";
  v14 = 259;
  mlir::emitError(a2, &v13, v15);
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

BOOL mlir::mps::anonymous namespace::inferReductionOpReturnShape(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v33 = 0x600000000;
  if (result)
  {
    v26 = v28;
    v27 = 0x400000000;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (v33)
    {
      v13 = v32;
      v14 = 8 * v33;
      do
      {
        v15 = *v13++;
        v25 = v15;
        llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(&v26, &v25, v24);
        v14 -= 8;
      }

      while (v14);
    }

    if (a4)
    {
      for (i = 0; i != a4; ++i)
      {
        if (v31)
        {
          v19 = v30;
          if (!v30)
          {
            goto LABEL_7;
          }

          v20 = &v30;
          do
          {
            if (v19[4] >= i)
            {
              v20 = v19;
            }

            v19 = v19[v19[4] < i];
          }

          while (v19);
          if (v20 == &v30 || i < v20[4])
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_7;
          }

          v21 = v26;
          v22 = 8 * v27;
          while (*v21 != i)
          {
            ++v21;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_7;
            }
          }

          if (!v22)
          {
LABEL_7:
            v17 = *(a3 + 8 * i);
            v18 = *(a8 + 8);
            if (v18 >= *(a8 + 12))
            {
              goto LABEL_27;
            }

            goto LABEL_8;
          }
        }

        if (!a7)
        {
          continue;
        }

        v18 = *(a8 + 8);
        v17 = 1;
        if (v18 >= *(a8 + 12))
        {
LABEL_27:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_8:
        *(*a8 + 8 * v18) = v17;
        ++*(a8 + 8);
      }
    }

    std::__tree<long long>::destroy(&v29, v30);
    if (v26 != v28)
    {
      free(v26);
    }

    result = 1;
  }

  if (v32 != v34)
  {
    v23 = result;
    free(v32);
    return v23;
  }

  return result;
}

uint64_t mlir::mps::BiasAddGradOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::BiasAddGradOp::verify(mlir::Operation **this)
{
  v62 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*(*this + 10) + 8);
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
LABEL_14:
    v45 = v3;
    v46 = 0;
    if (mlir::ShapedType::hasRank(&v45))
    {
      goto LABEL_15;
    }

    return 1;
  }

  v24 = v8[1];
  v45 = v3;
  v46 = v24;
  if (!mlir::ShapedType::hasRank(&v45))
  {
    return 1;
  }

LABEL_15:
  if (v2 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  mlir::ShapedType::getShape(&v45);
  if (v15 >= v14)
  {
    return 1;
  }

  v16 = v15;
  v43 = "requires out_backprop operand to have rank at least ";
  v44 = 259;
  mlir::Operation::emitOpError(&v50, v1, &v43);
  if (v50)
  {
    LODWORD(v47) = 2;
    *(&v47 + 1) = v14;
    if (v53 >= v54)
    {
      if (v52 > &v47 || v52 + 24 * v53 <= &v47)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = v52 + 24 * v53;
    v18 = v47;
    *(v17 + 2) = v48;
    *v17 = v18;
    v19 = ++v53;
    if (v50)
    {
      LODWORD(v47) = 3;
      v48 = 7;
      if (v19 >= v54)
      {
        if (v52 > &v47 || v52 + 24 * v19 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v52 + 24 * v53;
      v21 = v47;
      *(v20 + 2) = v48;
      *v20 = v21;
      ++v53;
    }
  }

  if (v2 <= 0xA)
  {
    v22 = qword_257388C18[v2];
    v23 = (&off_27983AC60)[v2];
    if (!v50)
    {
      goto LABEL_38;
    }

LABEL_31:
    v49 = 261;
    *&v47 = v23;
    *(&v47 + 1) = v22;
    mlir::Diagnostic::operator<<(&v51, &v47);
    if (v50)
    {
      LODWORD(v47) = 3;
      v48 = 21;
      if (v53 >= v54)
      {
        if (v52 > &v47 || v52 + 24 * v53 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v52 + 24 * v53;
      v28 = v47;
      *(v27 + 2) = v48;
      *v27 = v28;
      v29 = ++v53;
      if (v50)
      {
        LODWORD(v47) = 2;
        *(&v47 + 1) = v16;
        if (v29 >= v54)
        {
          if (v52 > &v47 || v52 + 24 * v29 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v52 + 24 * v53;
        v31 = v47;
        *(v30 + 2) = v48;
        *v30 = v31;
        v32 = ++v53;
        if (v50)
        {
          LODWORD(v47) = 3;
          *(&v47 + 1) = ".";
          v48 = 1;
          if (v32 >= v54)
          {
            if (v52 > &v47 || v52 + 24 * v32 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v52 + 24 * v53;
          v34 = v47;
          *(v33 + 2) = v48;
          *v33 = v34;
          ++v53;
        }
      }
    }

    goto LABEL_38;
  }

  v22 = 0;
  v23 = "";
  if (v50)
  {
    goto LABEL_31;
  }

LABEL_38:
  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
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

    if (v52 != &v55)
    {
      free(v52);
    }
  }

  return v25;
}

uint64_t mlir::mps::VariableFromTensorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::PReluOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::PReluOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::SoftplusParametricOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::SoftplusParametricOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

void mlir::mps::SoftplusParametricOp::downgradeToVersion(mlir::Operation **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v53[0] = &unk_28685B550;
  v53[1] = 0x300000001;
  v54 = 0;
  v7 = *(a3 + 8);
  if (!v7 || v7 == 1 && *(a3 + 12) <= 2u)
  {
    v10 = *(*(v6 + 9) + 120);
    v73 = v75;
    v74 = 0x400000000;
    if ((mlir::matchConstantWithIntVector<long long>(v10, &v73) & 1) != 0 && v74 == 1 && *v73 == 1)
    {
      v11 = *(v6 + 9);
      v12 = v11[3];
      v13 = v11[7];
      v14 = v11[11];
      v61 = &v63;
      v63 = v12;
      v64 = v13;
      v65 = v14;
      v62 = 0x400000003;
      v15 = (*a1 + 24);
      v16 = *v15;
      Context = mlir::Attribute::getContext(v15);
      v45 = *(*(v6 + 6) + 8);
      Value = mlir::StringAttr::getValue(&v45);
      v49 = 261;
      v45 = Value;
      v46 = v19;
      v21 = mlir::StringAttr::get(Context, &v45, v20);
      mlir::ValueRange::ValueRange(v56, v61, v62);
      v22 = *(v6 + 9);
      v23 = v6 - 16;
      if (!v22)
      {
        v23 = 0;
      }

      v76 = v23;
      v77 = v22;
      mlir::ResultRange::getTypes(&v76, &AttrDictionary);
      NextResultAtOffset = AttrDictionary;
      v25 = v58;
      v26 = v59;
      if (v58)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v58);
      }

      mlir::ValueRange::ValueRange(&v76, NextResultAtOffset, v26 - v25);
      mlir::TypeRange::TypeRange(v55, v76, v77);
      AttrDictionary = mlir::Operation::getAttrDictionary(v6);
      v27 = mlir::DictionaryAttr::getValue(&AttrDictionary);
      v29 = v28;
      mlir::SuccessorRange::SuccessorRange(&AttrDictionary, v6);
      mlir::BlockRange::BlockRange(&AttrDictionary, AttrDictionary, v58);
      v31 = mlir::OpBuilder::create(a2, v16, v21, v56[0], v56[1], v55[0], v55[1], v30, v27, v29, AttrDictionary, v58, 0, 0);
      v32 = *(v31 + 36);
      v33 = v31 - 16;
      if (!v32)
      {
        v33 = 0;
      }

      *a4 = v33;
      *(a4 + 8) = v32;
      *(a4 + 16) = 1;
      v34 = v61;
      if (v61 == &v63)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v45 = "failed to downgrade: requested target version is {0}, axis != 1 only supported from version {1}";
      v46 = 95;
      v47 = v52;
      v48 = 2;
      LOBYTE(v49) = 1;
      v50[0] = &unk_28685E490;
      v50[1] = a3;
      v51[0] = &unk_28685E4C0;
      v51[1] = v53;
      v52[0] = v50;
      v52[1] = v51;
      v60 = 263;
      AttrDictionary = &v45;
      mlir::OpState::emitOpError(a1, &AttrDictionary, &v61);
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v61)
      {
        mlir::InFlightDiagnostic::report(&v61);
      }

      if (v72 != 1)
      {
        goto LABEL_38;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v70;
        v39 = __p;
        if (v70 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v70 = v37;
        operator delete(v39);
      }

      v40 = v67;
      if (v67)
      {
        v41 = v68;
        v42 = v67;
        if (v68 != v67)
        {
          do
          {
            v44 = *--v41;
            v43 = v44;
            *v41 = 0;
            if (v44)
            {
              MEMORY[0x259C63150](v43, 0x1000C8077774924);
            }
          }

          while (v41 != v40);
          v42 = v67;
        }

        v68 = v40;
        operator delete(v42);
      }

      v34 = v64;
      if (v64 == &v66)
      {
        goto LABEL_38;
      }
    }

    free(v34);
LABEL_38:
    if (v73 != v75)
    {
      free(v73);
    }

    return;
  }

  v35 = *(v6 + 9);
  v36 = v6 - 16;
  if (!v35)
  {
    v36 = 0;
  }

  *a4 = v36;
  *(a4 + 8) = v35;
  *(a4 + 16) = 1;
}

void mlir::mps::SoftplusParametricOp::upgradeFromVersion(uint64_t *a1@<X0>, mlir::OpBuilder *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v23[1] = &unk_28685B550;
  v23[2] = 0x300000001;
  v24 = 0;
  v8 = *(a3 + 8);
  if (v8 && (v8 != 1 || *(a3 + 12) > 2u))
  {
    v21 = *(v7 + 36);
    v22 = v7 - 16;
    if (!v21)
    {
      v22 = 0;
    }

    *a4 = v22;
    *(a4 + 8) = v21;
    *(a4 + 16) = 1;
  }

  else
  {
    v25[0] = 1;
    Context = mlir::Attribute::getContext((v7 + 24));
    v10 = mlir::IntegerType::get(Context, 32, 1u);
    v23[0] = mlir::RankedTensorType::get(v25, 1, v10, 0);
    v11 = *(*a1 + 24);
    v12 = mlir::TensorType::operator mlir::ShapedType(v23);
    v25[0] = mlir::DenseElementsAttr::getRawIntOrFloat(v12);
    v13 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseIntElementsAttr &>(a2, v11, v25);
    v14 = *(v7 + 72);
    v15 = v14[3];
    v16 = v14[7];
    v17 = v14[11];
    v25[0] = &v26;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29[0] = v13 - 16;
    v25[1] = 0x400000004;
    v18 = mlir::OpBuilder::create<mlir::mps::SoftplusParametricOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a2, *(*a1 + 24), &v26, &v27, &v28, v29);
    v19 = *(v18 + 36);
    v20 = v18 - 16;
    if (!v19)
    {
      v20 = 0;
    }

    *a4 = v20;
    *(a4 + 8) = v19;
    *(a4 + 16) = 1;
    if (v25[0] != &v26)
    {
      free(v25[0]);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::SoftplusParametricOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[38] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SoftplusParametricOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v13);
  mlir::mps::SoftplusParametricOp::build(v15, v22, *a3, *a4, *a5, *a6);
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

BOOL mlir::mps::BandPartOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(a11 + 8);
    if (v12 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v12) = v11;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::BandPartOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::inferStencilShape(int a1, int a2, char *__src, unint64_t a4, void *a5, int a6, unint64_t **a7, void **a8, void **a9, char a10, uint64_t a11)
{
  v16 = *(a11 + 8);
  if (a4 != v16)
  {
    if (a4 >= v16)
    {
      if (a4 > *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (a4 != v16)
      {
        bzero((*a11 + 8 * v16), 8 * (a4 - v16));
      }
    }

    *(a11 + 8) = a4;
  }

  v17 = a4 - 4;
  if (a4)
  {
    memmove(*a11, __src, 8 * a4);
  }

  v18 = *a8;
  v19 = &__src[8 * v17];
  v20 = *a7;
  v21 = *a11;
  v22 = *v19;
  if ((a10 & 1) == 0)
  {
    v29 = *a9;
    if (v22 == 0x8000000000000000)
    {
      v30 = a4 - 3;
      v31 = *&__src[8 * a4 - 24];
      if (v31 == 0x8000000000000000)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21[v17] = (*v29 + v29[1] + v22 + ~(*v18 * (*a5 - 1)) + *v20) / *v20;
      v30 = a4 - 3;
      v31 = *&__src[8 * a4 - 24];
      if (v31 == 0x8000000000000000)
      {
LABEL_18:
        v32 = a4 - 2;
        v33 = *&__src[8 * a4 - 16];
        if (v33 == 0x8000000000000000)
        {
          goto LABEL_19;
        }

        goto LABEL_35;
      }
    }

    v21[v30] = (v29[2] + v29[3] + v31 + ~(v18[1] * (a5[1] - 1)) + v20[1]) / v20[1];
    v32 = a4 - 2;
    v33 = *&__src[8 * a4 - 16];
    if (v33 == 0x8000000000000000)
    {
LABEL_19:
      v27 = a4 - 1;
      v34 = *&__src[8 * a4 - 8];
      if (v34 == 0x8000000000000000)
      {
        return 1;
      }

      goto LABEL_36;
    }

LABEL_35:
    v21[v32] = (v29[4] + v29[5] + v33 + ~(v18[2] * (a5[2] - 1)) + v20[2]) / v20[2];
    v27 = a4 - 1;
    v34 = *&__src[8 * a4 - 8];
    if (v34 == 0x8000000000000000)
    {
      return 1;
    }

LABEL_36:
    v43 = v20[3];
    v45 = v29[6] + v29[7] + v34 + ~(v18[3] * (a5[3] - 1)) + v43;
LABEL_37:
    v21[v27] = v45 / v43;
    return 1;
  }

  if (v22 == 0x8000000000000000)
  {
    v23 = a4 - 3;
    v24 = *&__src[8 * a4 - 24];
    if (v24 == 0x8000000000000000)
    {
      goto LABEL_13;
    }

LABEL_24:
    v37 = v20[1];
    v38 = *(v19 + 1) % v37;
    if (!v38)
    {
      v38 = v20[1];
    }

    v36 = v18[1] * (a5[1] - 1);
    v21[v23] = (((v36 - v38 + 1) & ~((v36 - v38 + 1) >> 63)) + ~v36 + v24 + v37) / v37;
    v25 = a4 - 2;
    v26 = *&__src[8 * a4 - 16];
    if (v26 == 0x8000000000000000)
    {
LABEL_14:
      v27 = a4 - 1;
      v28 = *&__src[8 * a4 - 8];
      if (v28 == 0x8000000000000000)
      {
        return 1;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v35 = v22 % *v20;
  if (!v35)
  {
    v35 = *v20;
  }

  v21[v17] = (((*v18 * (*a5 - 1) - v35 + 1) & ~((*v18 * (*a5 - 1) - v35 + 1) >> 63)) + ~(*v18 * (*a5 - 1)) + v22 + *v20) / *v20;
  v23 = a4 - 3;
  v24 = *&__src[8 * a4 - 24];
  if (v24 != 0x8000000000000000)
  {
    goto LABEL_24;
  }

LABEL_13:
  v25 = a4 - 2;
  v26 = *&__src[8 * a4 - 16];
  if (v26 == 0x8000000000000000)
  {
    goto LABEL_14;
  }

LABEL_27:
  v40 = v20[2];
  v41 = *(v19 + 2) % v40;
  if (!v41)
  {
    v41 = v20[2];
  }

  v39 = v18[2] * (a5[2] - 1);
  v21[v25] = (((v39 - v41 + 1) & ~((v39 - v41 + 1) >> 63)) + ~v39 + v26 + v40) / v40;
  v27 = a4 - 1;
  v28 = *&__src[8 * a4 - 8];
  if (v28 != 0x8000000000000000)
  {
LABEL_30:
    v42 = v18[3] * (a5[3] - 1);
    v43 = v20[3];
    v44 = *(v19 + 3) % v43;
    if (!v44)
    {
      v44 = v43;
    }

    v45 = ((v42 - v44 + 1) & ~((v42 - v44 + 1) >> 63)) + ~v42 + v28 + v43;
    goto LABEL_37;
  }

  return 1;
}

uint64_t mlir::mps::StencilOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v90 = *MEMORY[0x277D85DE8];
  v88 = a4;
  v89 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = a7[3];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v77 = a6;
  v78[0] = 0;
  v79 = 0;
  v80 = v16;
  v81 = v17;
  v82 = v18;
  v83 = v19;
  v20 = a5;
  v84 = a9;
  v85 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v77);
    if (v79 == 1)
    {
      v79 = 0;
    }

    mlir::OperationName::OperationName(v78, "mps.stencil", 11, Context);
    v79 = 1;
    v20 = v89;
  }

  v86 = a4;
  v87 = a5;
  if (v20 < 2 || (v22 = mlir::UnknownLoc::get(this, a2), (mlir::mps::StencilOpAdaptor::verify(&v77, v22) & 1) == 0))
  {
    v33 = mlir::Float32Type::get(this, a2);
    v34 = mlir::UnrankedTensorType::get(v33);
    v35 = *(a11 + 8);
    if (v35 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v35) = v34;
    goto LABEL_20;
  }

  v23 = *(mlir::ValueRange::dereference_iterator(&v88, 0) + 8);
  v24 = *(mlir::ValueRange::dereference_iterator(&v88, 1) + 8);
  v64[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v23 & 0xFFFFFFFFFFFFFFF8));
  v64[1] = v25;
  if (!v64[0])
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot stencil a non-shaped inputType");
  }

  v26 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v24 & 0xFFFFFFFFFFFFFFF8));
  v63[0] = v26;
  v63[1] = v27;
  if (!v26)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot stencil with a non-shaped weightsType");
  }

  if (*(*v64[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v37) = v64[0];
LABEL_20:
    ++*(a11 + 8);
    return 1;
  }

  mlir::ShapedType::getShape(v64);
  v29 = v28;
  mlir::ShapedType::getShape(v63);
  if (v29 < 4 || v30 != 4)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v64[0]);
    v39 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v39);
    return 1;
  }

  v31 = *(&v80 + 1);
  v61 = v80;
  v62 = *(&v83 + 1);
  v60 = *(&v80 + 1);
  if (*(&v82 + 1))
  {
    v32 = *(*(&v82 + 1) + 8);
  }

  else
  {
    v32 = 2;
  }

  v74 = v76;
  v75 = 0x400000000;
  if (*(&v83 + 1) && mlir::DenseElementsAttr::getNumElements(&v62) == 4)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, v62, 0);
    mlir::DenseIntElementsAttr::end(&v62, &v71);
    for (; v70[0] != v73[0]; ++v70[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v68, &v65);
      if (v66 > 0x40)
      {
        v40 = *v65;
      }

      else if (v66)
      {
        v40 = (v65 << -v66) >> -v66;
      }

      else
      {
        v40 = 0;
      }

      if (v75 >= HIDWORD(v75))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v74 + v75) = v40;
      LODWORD(v75) = v75 + 1;
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x259C63150](v65, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    llvm::SmallVectorImpl<unsigned long long>::resize(&v74, 4uLL, 1uLL);
  }

  v71 = v73;
  v72 = 0x400000000;
  if (v61 && mlir::DenseElementsAttr::getNumElements(&v61) == 4)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v68, v61, 0);
    mlir::DenseIntElementsAttr::end(&v61, &v65);
    for (; v70[0] != v67[0]; ++v70[0])
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v68, &v57);
      if (v58 > 0x40)
      {
        v41 = *v57;
      }

      else if (v58)
      {
        v41 = (v57 << -v58) >> -v58;
      }

      else
      {
        v41 = 0;
      }

      if (v72 >= HIDWORD(v72))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v71 + v72) = v41;
      LODWORD(v72) = v72 + 1;
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x259C63150](v57, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    llvm::SmallVectorImpl<unsigned long long>::resize(&v71, 4uLL, 1uLL);
  }

  v42 = 0;
  v68 = v70;
  v69 = 0x800000000;
  if (v32 <= 1)
  {
    if (v32)
    {
      if (v32 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_83;
    }

LABEL_70:
    if (v31 && mlir::DenseElementsAttr::getNumElements(&v60) == 8)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v65, v60, 0);
      mlir::DenseIntElementsAttr::end(&v60, &v57);
      for (; v67[0] != v59; ++v67[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v65, &v55);
        if (v56 > 0x40)
        {
          v43 = *v55;
        }

        else if (v56)
        {
          v43 = (v55 << -v56) >> -v56;
        }

        else
        {
          v43 = 0;
        }

        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v68, v43);
        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }
      }

      goto LABEL_84;
    }

LABEL_83:
    llvm::SmallVectorImpl<unsigned long long>::resize(&v68, 8uLL, 0);
LABEL_84:
    v42 = 0;
    goto LABEL_85;
  }

  if (v32 != 2 && v32 != 4)
  {
    if (v32 != 3)
    {
      goto LABEL_85;
    }

    goto LABEL_70;
  }

  v42 = 1;
LABEL_85:
  v65 = v67;
  v66 = 0x400000000;
  Shape = mlir::ShapedType::getShape(v64);
  v46 = v45;
  v47 = mlir::ShapedType::getShape(v63);
  v57 = v74;
  v58 = v75;
  v55 = v71;
  v56 = v72;
  v54[0] = v68;
  v54[1] = v69;
  if (mlir::mps::inferStencilShape(v47, v48, Shape, v46, v47, v48, &v57, &v55, v54, v42, &v65))
  {
    v49 = v65;
    v50 = v66;
    ElementType = mlir::ShapedType::getElementType(v64);
    v52 = mlir::RankedTensorType::get(v49, v50, ElementType, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v52);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v53 = result;
  if (v65 != v67)
  {
    free(v65);
    result = v53;
  }

  if (v68 != v70)
  {
    free(v68);
    result = v53;
  }

  if (v71 != v73)
  {
    free(v71);
    result = v53;
  }

  if (v74 != v76)
  {
    free(v74);
    return v53;
  }

  return result;
}

uint64_t mlir::mps::StencilOpAdaptor::verify(void *a1, uint64_t a2)
{
  v164 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[10];
  if (!v6)
  {
    goto LABEL_33;
  }

  v8 = *v6;
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v143 = v8;
    mlir::mps::ConstantOp::getAsAttribute();
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v143 + 8);
    v11 = *(v143 + 16);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 != &v10[2 * v11] && *v12 == v9)
  {
    v19 = v12[1];
    v146 = v6;
    v147 = v19;
    Type = mlir::ElementsAttr::getType(&v146);
    if (!Type)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

LABEL_14:
  v146 = v6;
  v147 = 0;
  Type = mlir::ElementsAttr::getType(&v146);
  if (!Type)
  {
    goto LABEL_29;
  }

LABEL_17:
  v20 = *Type;
  {
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v142 = v20;
    v144 = Type;
    mlir::mps::ConstantOp::verify();
    Type = v144;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v142 + 8);
    v23 = *(v142 + 16);
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 != &v22[2 * v23] && *v24 == v21)
  {
    v30 = v24[1];
    goto LABEL_30;
  }

LABEL_29:
  v30 = 0;
LABEL_30:
  v153 = Type;
  v154 = v30;
  Shape = mlir::ShapedType::getShape(&v153);
  v163 = 4;
  if (v32 != 1 || *Shape != v163 || (v149 = v6, v150 = mlir::DenseElementsAttr::getType(&v149), v151 = v33, ElementType = mlir::ShapedType::getElementType(&v150), !mlir::Type::isSignedInteger(&ElementType, 64)))
  {
    v146 = "'mps.stencil' op attribute 'offsets' failed to satisfy constraint: si64 elements attribute of shape {4}";
    v148 = 259;
    mlir::emitError(a2, &v146, &v153);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
    if (v153)
    {
      mlir::InFlightDiagnostic::report(&v153);
    }

    if (v162 == 1)
    {
      if (v161 != &v162)
      {
        free(v161);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v160;
        v47 = __p;
        if (v160 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v160 = v45;
        operator delete(v47);
      }

      v48 = v157;
      if (!v157)
      {
        goto LABEL_201;
      }

      v49 = v158;
      v50 = v157;
      if (v158 == v157)
      {
        goto LABEL_200;
      }

      do
      {
        v52 = *--v49;
        v51 = v52;
        *v49 = 0;
        if (v52)
        {
          MEMORY[0x259C63150](v51, 0x1000C8077774924);
        }
      }

      while (v49 != v48);
      goto LABEL_199;
    }

    return v44;
  }

LABEL_33:
  if (!v7)
  {
    goto LABEL_82;
  }

  v34 = *v7;
  {
    v35 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    if (!v37)
    {
      goto LABEL_63;
    }
  }

  else
  {
    mlir::mps::PoolAvgOpAdaptor::verify();
    v35 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    if (!v37)
    {
      goto LABEL_63;
    }
  }

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
  if (v38 != &v36[2 * v37] && *v38 == v35)
  {
    v54 = v38[1];
    v146 = v7;
    v147 = v54;
    v53 = mlir::ElementsAttr::getType(&v146);
    if (!v53)
    {
      goto LABEL_78;
    }

    goto LABEL_66;
  }

LABEL_63:
  v146 = v7;
  v147 = 0;
  v53 = mlir::ElementsAttr::getType(&v146);
  if (!v53)
  {
    goto LABEL_78;
  }

LABEL_66:
  v55 = *v53;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v145 = v53;
    mlir::mps::ConstantOp::verify();
    v53 = v145;
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (!v58)
    {
      goto LABEL_78;
    }
  }

  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
  if (v59 != &v57[2 * v58] && *v59 == v56)
  {
    v65 = v59[1];
    goto LABEL_79;
  }

LABEL_78:
  v65 = 0;
LABEL_79:
  v153 = v53;
  v154 = v65;
  v66 = mlir::ShapedType::getShape(&v153);
  v163 = 4;
  if (v67 != 1 || *v66 != v163 || (v149 = v7, v150 = mlir::DenseElementsAttr::getType(&v149), v151 = v68, ElementType = mlir::ShapedType::getElementType(&v150), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
  {
    v146 = "'mps.stencil' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
    v148 = 259;
    mlir::emitError(a2, &v146, &v153);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
    if (v153)
    {
      mlir::InFlightDiagnostic::report(&v153);
    }

    if (v162 == 1)
    {
      if (v161 != &v162)
      {
        free(v161);
      }

      v79 = __p;
      if (__p)
      {
        v80 = v160;
        v81 = __p;
        if (v160 != __p)
        {
          do
          {
            v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
          }

          while (v80 != v79);
          v81 = __p;
        }

        v160 = v79;
        operator delete(v81);
      }

      v48 = v157;
      if (!v157)
      {
        goto LABEL_201;
      }

      v82 = v158;
      v50 = v157;
      if (v158 == v157)
      {
        goto LABEL_200;
      }

      do
      {
        v84 = *--v82;
        v83 = v84;
        *v82 = 0;
        if (v84)
        {
          MEMORY[0x259C63150](v83, 0x1000C8077774924);
        }
      }

      while (v82 != v48);
      goto LABEL_199;
    }

    return v44;
  }

LABEL_82:
  if (!v4)
  {
    goto LABEL_131;
  }

  v69 = *v4;
  {
    v70 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (!v72)
    {
      goto LABEL_112;
    }
  }

  else
  {
    mlir::mps::PoolAvgOpAdaptor::verify();
    v70 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (!v72)
    {
      goto LABEL_112;
    }
  }

  v73 = v71;
  v74 = v72;
  do
  {
    v75 = v74 >> 1;
    v76 = &v73[2 * (v74 >> 1)];
    v78 = *v76;
    v77 = v76 + 2;
    v74 += ~(v74 >> 1);
    if (v78 < v70)
    {
      v73 = v77;
    }

    else
    {
      v74 = v75;
    }
  }

  while (v74);
  if (v73 != &v71[2 * v72] && *v73 == v70)
  {
    v86 = v73[1];
    v146 = v4;
    v147 = v86;
    v85 = mlir::ElementsAttr::getType(&v146);
    if (!v85)
    {
      goto LABEL_127;
    }

    goto LABEL_115;
  }

LABEL_112:
  v146 = v4;
  v147 = 0;
  v85 = mlir::ElementsAttr::getType(&v146);
  if (!v85)
  {
    goto LABEL_127;
  }

LABEL_115:
  v87 = *v85;
  {
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    if (!v90)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v97 = v85;
    mlir::mps::ConstantOp::verify();
    v85 = v97;
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v87 + 8);
    v90 = *(v87 + 16);
    if (!v90)
    {
      goto LABEL_127;
    }
  }

  v91 = v89;
  v92 = v90;
  do
  {
    v93 = v92 >> 1;
    v94 = &v91[2 * (v92 >> 1)];
    v96 = *v94;
    v95 = v94 + 2;
    v92 += ~(v92 >> 1);
    if (v96 < v88)
    {
      v91 = v95;
    }

    else
    {
      v92 = v93;
    }
  }

  while (v92);
  if (v91 != &v89[2 * v90] && *v91 == v88)
  {
    v98 = v91[1];
    goto LABEL_128;
  }

LABEL_127:
  v98 = 0;
LABEL_128:
  v153 = v85;
  v154 = v98;
  v99 = mlir::ShapedType::getShape(&v153);
  v163 = 4;
  if (v100 == 1 && *v99 == v163)
  {
    v149 = v4;
    v150 = mlir::DenseElementsAttr::getType(&v149);
    v151 = v101;
    ElementType = mlir::ShapedType::getElementType(&v150);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
LABEL_131:
      if (!v3)
      {
        goto LABEL_180;
      }

      v102 = *v3;
      {
        v103 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        if (!v105)
        {
          goto LABEL_161;
        }
      }

      else
      {
        mlir::mps::PoolAvgOpAdaptor::verify();
        v103 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v104 = *(v102 + 8);
        v105 = *(v102 + 16);
        if (!v105)
        {
          goto LABEL_161;
        }
      }

      v106 = v104;
      v107 = v105;
      do
      {
        v108 = v107 >> 1;
        v109 = &v106[2 * (v107 >> 1)];
        v111 = *v109;
        v110 = v109 + 2;
        v107 += ~(v107 >> 1);
        if (v111 < v103)
        {
          v106 = v110;
        }

        else
        {
          v107 = v108;
        }
      }

      while (v107);
      if (v106 != &v104[2 * v105] && *v106 == v103)
      {
        v119 = v106[1];
        v146 = v3;
        v147 = v119;
        v118 = mlir::ElementsAttr::getType(&v146);
        if (!v118)
        {
          goto LABEL_176;
        }

LABEL_164:
        v120 = *v118;
        {
          v121 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v122 = *(v120 + 8);
          v123 = *(v120 + 16);
          if (v123)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v130 = v118;
          mlir::mps::ConstantOp::verify();
          v118 = v130;
          v121 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v122 = *(v120 + 8);
          v123 = *(v120 + 16);
          if (v123)
          {
LABEL_166:
            v124 = v122;
            v125 = v123;
            do
            {
              v126 = v125 >> 1;
              v127 = &v124[2 * (v125 >> 1)];
              v129 = *v127;
              v128 = v127 + 2;
              v125 += ~(v125 >> 1);
              if (v129 < v121)
              {
                v124 = v128;
              }

              else
              {
                v125 = v126;
              }
            }

            while (v125);
LABEL_174:
            if (v124 != &v122[2 * v123] && *v124 == v121)
            {
              v131 = v124[1];
              goto LABEL_177;
            }

LABEL_176:
            v131 = 0;
LABEL_177:
            v153 = v118;
            v154 = v131;
            v132 = mlir::ShapedType::getShape(&v153);
            v163 = 8;
            if (v133 == 1 && *v132 == v163)
            {
              v149 = v3;
              v150 = mlir::DenseElementsAttr::getType(&v149);
              v151 = v134;
              ElementType = mlir::ShapedType::getElementType(&v150);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_180:
                if (!v5)
                {
                  return 1;
                }

                v146 = v5;
                v153 = mlir::FloatAttr::getType(&v146);
                if (mlir::Type::isF32(&v153))
                {
                  return 1;
                }

                v146 = "'mps.stencil' op attribute 'paddingConstant' failed to satisfy constraint: 32-bit float attribute";
                v148 = 259;
                mlir::emitError(a2, &v146, &v153);
                v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
                if (v153)
                {
                  mlir::InFlightDiagnostic::report(&v153);
                }

                if (v162 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v154);
                }

                return v44;
              }
            }

            v146 = "'mps.stencil' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {8}";
            v148 = 259;
            mlir::emitError(a2, &v146, &v153);
            v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
            if (v153)
            {
              mlir::InFlightDiagnostic::report(&v153);
            }

            if (v162 == 1)
            {
              if (v161 != &v162)
              {
                free(v161);
              }

              v135 = __p;
              if (__p)
              {
                v136 = v160;
                v137 = __p;
                if (v160 != __p)
                {
                  do
                  {
                    v136 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v136 - 1);
                  }

                  while (v136 != v135);
                  v137 = __p;
                }

                v160 = v135;
                operator delete(v137);
              }

              v48 = v157;
              if (!v157)
              {
                goto LABEL_201;
              }

              v138 = v158;
              v50 = v157;
              if (v158 == v157)
              {
LABEL_200:
                v158 = v48;
                operator delete(v50);
LABEL_201:
                if (v155 != &v156)
                {
                  free(v155);
                }

                return v44;
              }

              do
              {
                v140 = *--v138;
                v139 = v140;
                *v138 = 0;
                if (v140)
                {
                  MEMORY[0x259C63150](v139, 0x1000C8077774924);
                }
              }

              while (v138 != v48);
LABEL_199:
              v50 = v157;
              goto LABEL_200;
            }

            return v44;
          }
        }

        v123 = 0;
        v124 = v122;
        goto LABEL_174;
      }

LABEL_161:
      v146 = v3;
      v147 = 0;
      v118 = mlir::ElementsAttr::getType(&v146);
      if (!v118)
      {
        goto LABEL_176;
      }

      goto LABEL_164;
    }
  }

  v146 = "'mps.stencil' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
  v148 = 259;
  mlir::emitError(a2, &v146, &v153);
  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v153);
  if (v153)
  {
    mlir::InFlightDiagnostic::report(&v153);
  }

  if (v162 == 1)
  {
    if (v161 != &v162)
    {
      free(v161);
    }

    v112 = __p;
    if (__p)
    {
      v113 = v160;
      v114 = __p;
      if (v160 != __p)
      {
        do
        {
          v113 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v113 - 1);
        }

        while (v113 != v112);
        v114 = __p;
      }

      v160 = v112;
      operator delete(v114);
    }

    v48 = v157;
    if (!v157)
    {
      goto LABEL_201;
    }

    v115 = v158;
    v50 = v157;
    if (v158 == v157)
    {
      goto LABEL_200;
    }

    do
    {
      v117 = *--v115;
      v116 = v117;
      *v115 = 0;
      if (v117)
      {
        MEMORY[0x259C63150](v116, 0x1000C8077774924);
      }
    }

    while (v115 != v48);
    goto LABEL_199;
  }

  return v44;
}