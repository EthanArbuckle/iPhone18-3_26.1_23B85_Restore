uint64_t mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687F030;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687F030;
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

uint64_t mlir::mps::Conv3DWeightsGradientOp::verify(mlir::Operation **this)
{
  v145[6] = *MEMORY[0x277D85DE8];
  v144[0] = v145;
  v144[1] = 0x600000000;
  v133 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v133);
  mlir::getIntValues<long long>(v2, v3, v144, 1);
  v4 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(*(v4 + 96) + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v144[0];
    if (*(*(v4 + 64) + 8) == 7)
    {
      if (!v6 && !*(v144[0] + 1) && !*(v144[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v144[0] + 1) && !*(v144[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v144[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v131[0] = v132;
      v131[1] = 0x600000000;
      v133 = *(v4 + 104);
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v133);
      mlir::getIntValues<long long>(v17, v18, v131, 1);
      if (*v131[0] != 1)
      {
        goto LABEL_49;
      }

      v19 = *this + 64;
      v20 = (*(*this + 11) >> 23) & 1;
      v21 = 32;
      if (*(*(v19 + 16 * v20) + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v131[0] + v21) != 1)
      {
LABEL_49:
        v129[0] = "failed: strides incompatible with given tensor data layout.";
        v130[8] = 259;
        mlir::OpState::emitOpError(this, v129, &v133);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
        if (v133)
        {
          mlir::InFlightDiagnostic::report(&v133);
        }

        if (v143 != 1)
        {
          goto LABEL_89;
        }

        if (v142 != &v143)
        {
          free(v142);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v141;
          v42 = __p;
          if (v141 != __p)
          {
            do
            {
              v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v141 = v40;
          operator delete(v42);
        }

        v43 = v138;
        if (v138)
        {
          v44 = v139;
          v45 = v138;
          if (v139 != v138)
          {
            do
            {
              v47 = *--v44;
              v46 = v47;
              *v44 = 0;
              if (v47)
              {
                MEMORY[0x259C63150](v46, 0x1000C8077774924);
              }
            }

            while (v44 != v43);
            v45 = v138;
          }

          v139 = v43;
          operator delete(v45);
        }

        v57 = v136;
        if (v136 == v137)
        {
LABEL_89:
          v48 = v131[0];
          if (v131[0] == v132)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

LABEL_88:
        free(v57);
        goto LABEL_89;
      }

      v129[0] = v130;
      v129[1] = 0x600000000;
      v133 = *(v19 + 16 * v20 + 8);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v133);
      mlir::getIntValues<long long>(v22, v23, v129, 1);
      if (*v129[0] != 1)
      {
        goto LABEL_69;
      }

      v24 = *this;
      v25 = 4;
      if (*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) == 7)
      {
        v25 = 1;
      }

      if (v129[0][v25] != 1)
      {
LABEL_69:
        v125 = "failed: dilation values incompatible with given tensor layout.";
        v127 = 259;
        mlir::OpState::emitOpError(this, &v125, &v133);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
        if (v133)
        {
          mlir::InFlightDiagnostic::report(&v133);
        }

        if (v143 != 1)
        {
LABEL_152:
          v57 = v129[0];
          if (v129[0] == v130)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if (v142 != &v143)
        {
          free(v142);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v141;
          v51 = __p;
          if (v141 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v141 = v49;
          operator delete(v51);
        }

        v52 = v138;
        if (v138)
        {
          v53 = v139;
          v54 = v138;
          if (v139 != v138)
          {
            do
            {
              v56 = *--v53;
              v55 = v56;
              *v53 = 0;
              if (v56)
              {
                MEMORY[0x259C63150](v55, 0x1000C8077774924);
              }
            }

            while (v53 != v52);
            v54 = v138;
          }

          v139 = v52;
          operator delete(v54);
        }

        v59 = v136;
        v60 = v137;
LABEL_150:
        if (v59 != v60)
        {
          free(v59);
        }

        goto LABEL_152;
      }

      v26 = *(v24 + 9);
      v27 = v24 - 16;
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v29)
      {
        goto LABEL_101;
      }

      v30 = *v29;
      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v33)
        {
LABEL_43:
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
LABEL_99:
          if (v34 != &v32[2 * v33] && *v34 == v31)
          {
            v61 = v34[1];
LABEL_102:
            v124[0] = v29;
            v124[1] = v61;
            Shape = mlir::ShapedType::getShape(v124);
            v63 = mlir::ShapedType::getShape(v124);
            v65 = (v63 + 8 * v64);
            v133 = &v135;
            v134 = 0x500000000;
            if (((v65 - Shape) >> 3) >= 6)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v66 = 0;
            if (v65 != Shape)
            {
              memcpy(v133, Shape, v65 - Shape);
              v66 = v134;
            }

            LODWORD(v134) = v66 + ((v65 - Shape) >> 3);
            v123 = 0;
            v67 = *(*(*this + 9) + 88);
            v122[0] = &v123;
            v125 = v67;
            DefiningOp = mlir::Value::getDefiningOp(&v125);
            if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v122, DefiningOp))
            {
              LODWORD(v134) = 0;
              v69 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v123);
              mlir::getIntValues<long long>(v69, v70, &v133, 1);
            }

            v71 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v71)
            {
              goto LABEL_123;
            }

            v72 = *v71;
            {
              v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v74 = *(v72 + 8);
              v75 = *(v72 + 16);
              if (v75)
              {
                goto LABEL_112;
              }
            }

            else
            {
              mlir::mps::ConstantOp::verify();
              v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v74 = *(v72 + 8);
              v75 = *(v72 + 16);
              if (v75)
              {
LABEL_112:
                v76 = v74;
                v77 = v75;
                do
                {
                  v78 = v77 >> 1;
                  v79 = &v76[2 * (v77 >> 1)];
                  v81 = *v79;
                  v80 = v79 + 2;
                  v77 += ~(v77 >> 1);
                  if (v81 < v73)
                  {
                    v76 = v80;
                  }

                  else
                  {
                    v77 = v78;
                  }
                }

                while (v77);
LABEL_121:
                if (v76 != &v74[2 * v75] && *v76 == v73)
                {
                  v82 = v76[1];
LABEL_124:
                  v122[0] = v71;
                  v122[1] = v82;
                  v83 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v83)
                  {
                    goto LABEL_138;
                  }

                  v84 = *v83;
                  {
                    v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v86 = *(v84 + 8);
                    v87 = *(v84 + 16);
                    if (v87)
                    {
                      goto LABEL_127;
                    }
                  }

                  else
                  {
                    mlir::mps::ConstantOp::verify();
                    v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v86 = *(v84 + 8);
                    v87 = *(v84 + 16);
                    if (v87)
                    {
LABEL_127:
                      v88 = v86;
                      v89 = v87;
                      do
                      {
                        v90 = v89 >> 1;
                        v91 = &v88[2 * (v89 >> 1)];
                        v93 = *v91;
                        v92 = v91 + 2;
                        v89 += ~(v89 >> 1);
                        if (v93 < v85)
                        {
                          v88 = v92;
                        }

                        else
                        {
                          v89 = v90;
                        }
                      }

                      while (v89);
LABEL_136:
                      if (v88 != &v86[2 * v87] && *v88 == v85)
                      {
                        v94 = v88[1];
                        goto LABEL_139;
                      }

LABEL_138:
                      v94 = 0;
LABEL_139:
                      v121[0] = v83;
                      v121[1] = v94;
                      v119 = *this;
                      v95 = mlir::ShapedType::getShape(v122);
                      v97 = v96;
                      v98 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
                      v99 = *(v98[8] + 8);
                      v100 = v133;
                      v101 = v134;
                      v102 = *(v98[14] + 8);
                      v128 = v98[11];
                      mlir::IntegerAttr::getValue(&v128, &v125);
                      if (v126 > 0x40)
                      {
                        v103 = *v125;
                        MEMORY[0x259C63150]();
                      }

                      else
                      {
                        v103 = v125;
                      }

                      if (!mlir::mps::verifyConvolutionOutputChannels(v119, v95, v97, v99, v100, v101, v102, v103))
                      {
                        goto LABEL_148;
                      }

                      v120 = *this;
                      v104 = mlir::ShapedType::getShape(v121);
                      v106 = v105;
                      v107 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
                      v108 = *(v107[8] + 8);
                      v109 = v133;
                      v110 = v134;
                      v111 = *(v107[14] + 8);
                      v128 = v107[11];
                      mlir::IntegerAttr::getValue(&v128, &v125);
                      if (v126 > 0x40)
                      {
                        v112 = *v125;
                        MEMORY[0x259C63150]();
                      }

                      else
                      {
                        v112 = v125;
                      }

                      if (mlir::mps::verifyConvolutionInputChannels(v120, v104, v106, v108, v109, v110, v111, v112))
                      {
                        v113 = *this;
                        v114 = mlir::ShapedType::getShape(v121);
                        v116 = v115;
                        v117 = mlir::ShapedType::getShape(v122);
                        v8 = mlir::mps::verifyConvolutionBatches(v113, v114, v116, v117, v118);
                      }

                      else
                      {
LABEL_148:
                        v8 = 0;
                      }

                      v60 = &v135;
                      v59 = v133;
                      goto LABEL_150;
                    }
                  }

                  v87 = 0;
                  v88 = v86;
                  goto LABEL_136;
                }

LABEL_123:
                v82 = 0;
                goto LABEL_124;
              }
            }

            v75 = 0;
            v76 = v74;
            goto LABEL_121;
          }

LABEL_101:
          v61 = 0;
          goto LABEL_102;
        }
      }

      v33 = 0;
      v34 = v32;
      goto LABEL_99;
    }
  }

LABEL_13:
  v131[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v132[8] = 259;
  mlir::OpState::emitOpError(this, v131, &v133);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v133);
  if (v133)
  {
    mlir::InFlightDiagnostic::report(&v133);
  }

  if (v143 == 1)
  {
    if (v142 != &v143)
    {
      free(v142);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v141;
      v11 = __p;
      if (v141 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v141 = v9;
      operator delete(v11);
    }

    v12 = v138;
    if (v138)
    {
      v13 = v139;
      v14 = v138;
      if (v139 != v138)
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
        v14 = v138;
      }

      v139 = v12;
      operator delete(v14);
    }

    v48 = v136;
    if (v136 != v137)
    {
LABEL_90:
      free(v48);
    }
  }

LABEL_91:
  if (v144[0] != v145)
  {
    free(v144[0]);
  }

  return v8;
}

uint64_t *mlir::mps::Conv3DWeightsGradientOp::getGroups(mlir::mps::Conv3DWeightsGradientOp *this)
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

uint64_t mlir::mps::DepthwiseConv2DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DepthwiseConv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v35 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
  }

  else
  {
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v24 = a6;
  v25[0] = 0;
  v26 = 0;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v17 = a5;
  v30 = a9;
  v31 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v24);
    if (v26 == 1)
    {
      v26 = 0;
    }

    mlir::OperationName::OperationName(v25, "mps.depthwise_conv_2d", 21, Context);
    v26 = 1;
    v17 = v35;
  }

  v32 = a4;
  v33 = a5;
  if (v17 >= 2)
  {
    v19 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::DepthwiseConv2DOpAdaptor::verify(&v24, v19))
    {
      mlir::ValueRange::dereference_iterator(&v34, 0);
      mlir::ValueRange::dereference_iterator(&v34, 1);
      operator new();
    }
  }

  v20 = mlir::Float32Type::get(this, a2);
  v21 = mlir::UnrankedTensorType::get(v20);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DepthwiseConv2DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v53 = a1[4];
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v52 = a1[5];
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  if (!a1[6])
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v63;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v51 = a1[7];
  if (v51)
  {
    if (a1[8])
    {
      v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = mlir::TensorType::operator mlir::ShapedType(v48);
      v60 = v4;
      Shape = mlir::ShapedType::getShape(&v59);
      Type = 4;
      if (v6 == 1 && *Shape == Type && (v49 = v51, *&v57 = mlir::DenseElementsAttr::getType(&v49), *(&v57 + 1) = v7, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
        v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = mlir::TensorType::operator mlir::ShapedType(v48);
        v60 = v9;
        v10 = mlir::ShapedType::getShape(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::DenseElementsAttr::getType(&v49), *(&v57 + 1) = v12, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
        {
          v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = mlir::TensorType::operator mlir::ShapedType(&Type);
          v60 = v14;
          v15 = mlir::ShapedType::getShape(&v59);
          v57 = xmmword_2573695A0;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::DenseElementsAttr::getType(&v49);
            v48[1] = v18;
            ElementType = mlir::ShapedType::getElementType(v48);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v40[0] = a4;
  v40[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v30 = a6;
  v31[0] = 0;
  v32 = 0;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = a9;
  v37 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(v31, "mps.depthwise_conv_2d_data_gradient", 35, Context);
    v32 = 1;
  }

  v38 = a4;
  v39 = a5;
  if (a5 >= 3 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DepthwiseConv2DDataGradientOpAdaptor::verify(&v30, v20) & 1) != 0))
  {
    v21 = mlir::ValueRange::dereference_iterator(v40, 0);
    v22 = mlir::ValueRange::dereference_iterator(v40, 1);
    v23 = mlir::ValueRange::dereference_iterator(v40, 2);
    v29 = 0;
    {
      return 0;
    }

    v24 = *(a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v24) = v29;
  }

  else
  {
    v25 = mlir::Float32Type::get(this, a2);
    v26 = mlir::UnrankedTensorType::get(v25);
    v27 = *(a11 + 8);
    if (v27 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v27) = v26;
  }

  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v53 = a1[4];
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v52 = a1[5];
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  if (!a1[6])
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v63;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v51 = a1[7];
  if (v51)
  {
    if (a1[8])
    {
      v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = mlir::TensorType::operator mlir::ShapedType(v48);
      v60 = v4;
      Shape = mlir::ShapedType::getShape(&v59);
      Type = 4;
      if (v6 == 1 && *Shape == Type && (v49 = v51, *&v57 = mlir::DenseElementsAttr::getType(&v49), *(&v57 + 1) = v7, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
        v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = mlir::TensorType::operator mlir::ShapedType(v48);
        v60 = v9;
        v10 = mlir::ShapedType::getShape(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::DenseElementsAttr::getType(&v49), *(&v57 + 1) = v12, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
        {
          v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = mlir::TensorType::operator mlir::ShapedType(&Type);
          v60 = v14;
          v15 = mlir::ShapedType::getShape(&v59);
          v57 = xmmword_2573695A0;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::DenseElementsAttr::getType(&v49);
            v48[1] = v18;
            ElementType = mlir::ShapedType::getElementType(v48);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

BOOL mlir::mps::anonymous namespace::inferDepthwiseConv2DDataGradReturnType(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v34 = a4;
  mlir::TypeRange::TypeRange(&__src, &v33, 2uLL);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a3);
  if (!v13)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "cannot conv2DDataGrad a non-shaped inputType");
  }

  v14 = v13;
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a4);
  if (!v15)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "cannot conv2DDataGrad a non-shaped weightsType");
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a6 = mlir::UnrankedTensorType::get(v12);
    return 1;
  }

  __src = v38;
  v37 = 0x400000000;
  if (mlir::matchConstantWithIntVector<long long>(a5, &__src))
  {
    if (v37 == 4)
    {
      v16 = __src;
      if (*__src == -1)
      {
        *__src = 0x8000000000000000;
        if (v16[1] != -1)
        {
LABEL_9:
          if (v16[2] != -1)
          {
            goto LABEL_10;
          }

          goto LABEL_37;
        }
      }

      else if (*(__src + 1) != -1)
      {
        goto LABEL_9;
      }

      v16[1] = 0x8000000000000000;
      if (v16[2] != -1)
      {
LABEL_10:
        if (v16[3] != -1)
        {
LABEL_11:
          v33 = v35;
          v34 = 0x400000000;
          v17 = 4;
          goto LABEL_12;
        }

LABEL_38:
        v16[3] = 0x8000000000000000;
        goto LABEL_11;
      }

LABEL_37:
      v16[2] = 0x8000000000000000;
      if (v16[3] != -1)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (mlir::emitOptionalError<char const(&)[24]>(a1, a2, "unexpected output shape passed"))
    {
      v17 = v37;
      v33 = v35;
      v34 = 0x400000000;
      if (!v37)
      {
LABEL_13:
        v29 = a3;
        Shape = mlir::RankedTensorType::getShape(&v29);
        v30 = 0x400000000;
        v28 = v34;
        v29 = &v31;
        if (v34 == 4)
        {
          v19 = Shape;
          v20 = &v31;
          v31 = 0u;
          v32 = 0u;
          v31 = *v33;
          v32 = *(v33 + 1);
          LODWORD(v30) = 4;
          if (*v33 == 0x8000000000000000)
          {
            v21 = *v19;
            if (v21 >= 1)
            {
              *&v31 = v21;
            }
          }

          v22 = 4;
        }

        else
        {
          if (!mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(a1, a2, "conv2D input rank ", &v28, "must be 4 "))
          {
            result = 0;
            v24 = v29;
            if (v29 == &v31)
            {
LABEL_30:
              if (v33 != v35)
              {
                v26 = result;
                free(v33);
                result = v26;
              }

              goto LABEL_32;
            }

LABEL_29:
            v25 = result;
            free(v24);
            result = v25;
            goto LABEL_30;
          }

          v20 = v29;
          v22 = v30;
        }

        *a6 = mlir::RankedTensorType::get(v20, v22, v12, 0);
        result = 1;
        v24 = v29;
        if (v29 == &v31)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (v37 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

LABEL_12:
      memcpy(v35, __src, 8 * v17);
      LODWORD(v34) = v17;
      goto LABEL_13;
    }
  }

  *a6 = mlir::UnrankedTensorType::get(v12);
  result = 1;
LABEL_32:
  if (__src != v38)
  {
    v27 = result;
    free(__src);
    return v27;
  }

  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v40[0] = a4;
  v40[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v30 = a6;
  v31[0] = 0;
  v32 = 0;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = a9;
  v37 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(v31, "mps.depthwise_conv_2d_weights_gradient", 38, Context);
    v32 = 1;
  }

  v38 = a4;
  v39 = a5;
  if (a5 >= 3 && (v20 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor::verify(&v30, v20) & 1) != 0))
  {
    v21 = mlir::ValueRange::dereference_iterator(v40, 0);
    v22 = mlir::ValueRange::dereference_iterator(v40, 1);
    v23 = mlir::ValueRange::dereference_iterator(v40, 2);
    v29 = 0;
    {
      return 0;
    }

    v24 = *(a11 + 8);
    if (v24 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v24) = v29;
  }

  else
  {
    v25 = mlir::Float32Type::get(this, a2);
    v26 = mlir::UnrankedTensorType::get(v25);
    v27 = *(a11 + 8);
    if (v27 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v27) = v26;
  }

  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v53 = a1[4];
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v52 = a1[5];
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  if (!a1[6])
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 != v63)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v63;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v51 = a1[7];
  if (v51)
  {
    if (a1[8])
    {
      v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = mlir::TensorType::operator mlir::ShapedType(v48);
      v60 = v4;
      Shape = mlir::ShapedType::getShape(&v59);
      Type = 4;
      if (v6 == 1 && *Shape == Type && (v49 = v51, *&v57 = mlir::DenseElementsAttr::getType(&v49), *(&v57 + 1) = v7, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
        v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = mlir::TensorType::operator mlir::ShapedType(v48);
        v60 = v9;
        v10 = mlir::ShapedType::getShape(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::DenseElementsAttr::getType(&v49), *(&v57 + 1) = v12, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
        {
          v54 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = mlir::TensorType::operator mlir::ShapedType(&Type);
          v60 = v14;
          v15 = mlir::ShapedType::getShape(&v59);
          v57 = xmmword_2573695A0;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::DenseElementsAttr::getType(&v49);
            v48[1] = v18;
            ElementType = mlir::ShapedType::getElementType(v48);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DOp::verify(mlir::Operation **this)
{
  v195 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 9);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v175 = *(*this + 14);
  v176 = v2;
  v6 = *(v2 + 11);
  v173 = *(v2 + 12);
  v174 = v6;
  if (v175)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v175) != 3 || (mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v165, v175, 0), v1 = v175, NumElements = mlir::DenseElementsAttr::getNumElements(&v175), mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v171, v1, NumElements), v166 == v172))
    {
LABEL_4:
      if (!v174)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v165, &v169);
      if (v170 > 0x40)
      {
        if (*v169 <= 0)
        {
          goto LABEL_97;
        }
      }

      else if (!v170 || (v169 << -v170) >> -v170 <= 0)
      {
LABEL_97:
        v182 = 259;
        mlir::OpState::emitOpError(&v176, &v179, &v183);
        if (v170 > 0x40)
        {
          v61 = *v169;
          if (!v183)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (v170)
          {
            v61 = (v169 << -v170) >> -v170;
          }

          else
          {
            v61 = 0;
          }

          if (!v183)
          {
            goto LABEL_111;
          }
        }

        LODWORD(v177) = 2;
        *(&v177 + 1) = v61;
        if (v186 >= v187)
        {
          if (v185 > &v177 || v185 + 24 * v186 <= &v177)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v63 = v185 + 24 * v186;
        v64 = v177;
        *(v63 + 2) = v178;
        *v63 = v64;
        v65 = ++v186;
        if (v183)
        {
          LODWORD(v177) = 3;
          *(&v177 + 1) = ", all values should be positive.";
          v178 = 32;
          if (v65 >= v187)
          {
            if (v185 > &v177 || v185 + 24 * v65 <= &v177)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v66 = v185 + 24 * v186;
          v67 = v177;
          *(v66 + 2) = v178;
          *v66 = v67;
          ++v186;
        }

LABEL_111:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
        if (v183)
        {
          mlir::InFlightDiagnostic::report(&v183);
        }

        if (v194 == 1)
        {
          if (v193 != &v194)
          {
            free(v193);
          }

          v68 = __p;
          if (__p)
          {
            v69 = v192;
            v70 = __p;
            if (v192 != __p)
            {
              do
              {
                v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
              }

              while (v69 != v68);
              v70 = __p;
            }

            v192 = v68;
            operator delete(v70);
          }

          v71 = v189;
          if (v189)
          {
            v72 = v190;
            v73 = v189;
            if (v190 != v189)
            {
              do
              {
                v75 = *--v72;
                v74 = v75;
                *v72 = 0;
                if (v75)
                {
                  MEMORY[0x259C63150](v74, 0x1000C8077774924);
                }
              }

              while (v72 != v71);
              v73 = v189;
            }

            v190 = v71;
            operator delete(v73);
          }

          if (v185 != v188)
          {
            free(v185);
          }
        }

        v62 = 0;
        if (v170 < 0x41)
        {
          goto LABEL_134;
        }

LABEL_132:
        if (v169)
        {
          MEMORY[0x259C63150](v169, 0x1000C8000313F17);
        }

        goto LABEL_134;
      }

      v62 = 1;
      if (v170 >= 0x41)
      {
        goto LABEL_132;
      }

LABEL_134:
      if (!v62)
      {
        return v1;
      }

      if (++v166 == v172)
      {
        goto LABEL_4;
      }
    }
  }

  if (!v174)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (mlir::DenseElementsAttr::getNumElements(&v174) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v165, v174, 0);
    v8 = v174;
    v9 = mlir::DenseElementsAttr::getNumElements(&v174);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v171, v8, v9);
    while (v166 != v172)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v165, &v169);
      if (v170 > 0x40)
      {
        if (*v169 <= 0)
        {
          goto LABEL_148;
        }
      }

      else if (!v170 || (v169 << -v170) >> -v170 <= 0)
      {
LABEL_148:
        v182 = 259;
        mlir::OpState::emitOpError(&v176, &v179, &v183);
        if (v170 > 0x40)
        {
          v76 = *v169;
          if (!v183)
          {
            goto LABEL_162;
          }
        }

        else
        {
          if (v170)
          {
            v76 = (v169 << -v170) >> -v170;
          }

          else
          {
            v76 = 0;
          }

          if (!v183)
          {
            goto LABEL_162;
          }
        }

        LODWORD(v177) = 2;
        *(&v177 + 1) = v76;
        if (v186 >= v187)
        {
          if (v185 > &v177 || v185 + 24 * v186 <= &v177)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v78 = v185 + 24 * v186;
        v79 = v177;
        *(v78 + 2) = v178;
        *v78 = v79;
        v80 = ++v186;
        if (v183)
        {
          LODWORD(v177) = 3;
          *(&v177 + 1) = ", all values should be positive.";
          v178 = 32;
          if (v80 >= v187)
          {
            if (v185 > &v177 || v185 + 24 * v80 <= &v177)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v81 = v185 + 24 * v186;
          v82 = v177;
          *(v81 + 2) = v178;
          *v81 = v82;
          ++v186;
        }

LABEL_162:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
        if (v183)
        {
          mlir::InFlightDiagnostic::report(&v183);
        }

        if (v194 == 1)
        {
          if (v193 != &v194)
          {
            free(v193);
          }

          v83 = __p;
          if (__p)
          {
            v84 = v192;
            v85 = __p;
            if (v192 != __p)
            {
              do
              {
                v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
              }

              while (v84 != v83);
              v85 = __p;
            }

            v192 = v83;
            operator delete(v85);
          }

          v86 = v189;
          if (v189)
          {
            v87 = v190;
            v88 = v189;
            if (v190 != v189)
            {
              do
              {
                v90 = *--v87;
                v89 = v90;
                *v87 = 0;
                if (v90)
                {
                  MEMORY[0x259C63150](v89, 0x1000C8077774924);
                }
              }

              while (v87 != v86);
              v88 = v189;
            }

            v190 = v86;
            operator delete(v88);
          }

          if (v185 != v188)
          {
            free(v185);
          }
        }

        v77 = 0;
        if (v170 < 0x41)
        {
          goto LABEL_185;
        }

LABEL_183:
        if (v169)
        {
          MEMORY[0x259C63150](v169, 0x1000C8000313F17);
        }

        goto LABEL_185;
      }

      v77 = 1;
      if (v170 >= 0x41)
      {
        goto LABEL_183;
      }

LABEL_185:
      if (!v77)
      {
        return v1;
      }

      ++v166;
    }
  }

LABEL_9:
  if (v173 && mlir::DenseElementsAttr::getNumElements(&v173) == 6)
  {
    v164 = v4;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v165, v173, 0);
    v10 = v173;
    v11 = mlir::DenseElementsAttr::getNumElements(&v173);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v171, v10, v11);
    if (v166 == v172)
    {
LABEL_12:
      v4 = v164;
      goto LABEL_13;
    }

    v91 = 0x1000C8000313F17;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v165, &v169);
      if (v170 > 0x40)
      {
        break;
      }

      if (v170)
      {
        v93 = (v169 << -v170) >> -v170;
        if (v93 < 0)
        {
          goto LABEL_202;
        }

LABEL_209:
        if (v170 >= 0x41)
        {
LABEL_237:
          if (v169)
          {
            MEMORY[0x259C63150](v169, v91);
          }
        }

LABEL_197:
        if (v93 < 0)
        {
          return v1;
        }
      }

      if (++v166 == v172)
      {
        goto LABEL_12;
      }
    }

    v93 = *v169;
    if ((*v169 & 0x8000000000000000) == 0)
    {
      goto LABEL_209;
    }

LABEL_202:
    v179 = v92;
    v182 = 259;
    mlir::OpState::emitOpError(&v176, &v179, &v183);
    if (v170 > 0x40)
    {
      v94 = *v169;
      if (!v183)
      {
        goto LABEL_216;
      }
    }

    else
    {
      if (v170)
      {
        v94 = (v169 << -v170) >> -v170;
      }

      else
      {
        v94 = 0;
      }

      if (!v183)
      {
        goto LABEL_216;
      }
    }

    LODWORD(v177) = 2;
    *(&v177 + 1) = v94;
    if (v186 >= v187)
    {
      if (v185 > &v177 || v185 + 24 * v186 <= &v177)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v95 = v185 + 24 * v186;
    v96 = v177;
    *(v95 + 2) = v178;
    *v95 = v96;
    v97 = ++v186;
    if (v183)
    {
      LODWORD(v177) = 3;
      *(&v177 + 1) = ", all values should be non-negative.";
      v178 = 36;
      if (v97 >= v187)
      {
        if (v185 > &v177 || v185 + 24 * v97 <= &v177)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v98 = v185 + 24 * v186;
      v99 = v177;
      *(v98 + 2) = v178;
      *v98 = v99;
      ++v186;
    }

LABEL_216:
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
    if (v183)
    {
      mlir::InFlightDiagnostic::report(&v183);
    }

    if (v194 == 1)
    {
      if (v193 != &v194)
      {
        free(v193);
      }

      v100 = v92;
      v101 = __p;
      if (__p)
      {
        v102 = v192;
        v103 = __p;
        if (v192 != __p)
        {
          do
          {
            v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
          }

          while (v102 != v101);
          v103 = __p;
        }

        v192 = v101;
        operator delete(v103);
      }

      v104 = v189;
      if (v189)
      {
        v105 = v91;
        v106 = v190;
        v107 = v189;
        if (v190 != v189)
        {
          do
          {
            v109 = *--v106;
            v108 = v109;
            *v106 = 0;
            if (v109)
            {
              MEMORY[0x259C63150](v108, 0x1000C8077774924);
            }
          }

          while (v106 != v104);
          v107 = v189;
        }

        v190 = v104;
        operator delete(v107);
        v91 = v105;
      }

      v92 = v100;
      if (v185 != v188)
      {
        free(v185);
      }
    }

    if (v170 >= 0x41)
    {
      goto LABEL_237;
    }

    goto LABEL_197;
  }

LABEL_13:
  v179 = *(v176 + 2 * ((*(v176 + 11) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v179, &v183);
  if (v184[0] > 0x40)
  {
    v12 = *v183;
    MEMORY[0x259C63150]();
    if (!v4)
    {
LABEL_43:
      *&v177 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    if (v184[0])
    {
      v12 = (v183 << -LOBYTE(v184[0])) >> -LOBYTE(v184[0]);
    }

    else
    {
      LODWORD(v12) = 0;
    }

    if (!v4)
    {
      goto LABEL_43;
    }
  }

  v13 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = *(*v13 + 136);
  if (v14 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v13 = 0;
  }

  *&v177 = v13;
  if (v14 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_44;
  }

  mlir::RankedTensorType::getShape(&v177);
  v16 = v15;
  if (v15 > 3)
  {
    if (v12 >= 0)
    {
      v146 = v15;
    }

    else
    {
      v146 = 0;
    }

    if ((v12 - v146) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v182 = 259;
      mlir::OpState::emitOpError(&v176, &v179, &v183);
      if (v183)
      {
        LODWORD(v165) = 2;
        *(&v165 + 1) = v12;
        if (v186 >= v187)
        {
          if (v185 > &v165 || v185 + 24 * v186 <= &v165)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v147 = v185 + 24 * v186;
        v148 = v165;
        *(v147 + 2) = v166;
        *v147 = v148;
        v149 = ++v186;
        if (v183)
        {
          LODWORD(v165) = 3;
          *(&v165 + 1) = " for input rank ";
          v166 = 16;
          if (v149 >= v187)
          {
            if (v185 > &v165 || v185 + 24 * v149 <= &v165)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v150 = v185 + 24 * v186;
          v151 = v165;
          *(v150 + 2) = v166;
          *v150 = v151;
          v152 = ++v186;
          if (v183)
          {
            LODWORD(v165) = 2;
            *(&v165 + 1) = v16;
            if (v152 >= v187)
            {
              if (v185 > &v165 || v185 + 24 * v152 <= &v165)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v153 = v185 + 24 * v186;
            v154 = v165;
            *(v153 + 2) = v166;
            *v153 = v154;
            v155 = ++v186;
            if (v183)
            {
              LODWORD(v165) = 3;
              *(&v165 + 1) = ".";
              v166 = 1;
              if (v155 >= v187)
              {
                if (v185 > &v165 || v185 + 24 * v155 <= &v165)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v156 = v185 + 24 * v186;
              v157 = v165;
              *(v156 + 2) = v166;
              *v156 = v157;
              ++v186;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
      if (v183)
      {
        mlir::InFlightDiagnostic::report(&v183);
      }

      if (v194 == 1)
      {
        if (v193 != &v194)
        {
          free(v193);
        }

        v158 = __p;
        if (__p)
        {
          v159 = v192;
          v160 = __p;
          if (v192 != __p)
          {
            do
            {
              v159 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v159 - 1);
            }

            while (v159 != v158);
            v160 = __p;
          }

          v192 = v158;
          operator delete(v160);
        }

        v25 = v189;
        if (v189)
        {
          v161 = v190;
          v27 = v189;
          if (v190 != v189)
          {
            do
            {
              v163 = *--v161;
              v162 = v163;
              *v161 = 0;
              if (v163)
              {
                MEMORY[0x259C63150](v162, 0x1000C8077774924);
              }
            }

            while (v161 != v25);
            goto LABEL_329;
          }

          goto LABEL_330;
        }

        goto LABEL_331;
      }

      return v1;
    }

LABEL_44:
    v169 = 0;
    if (v5 && (v28 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v29 = *(*v28 + 136);
      if (v29 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v28 = 0;
      }

      v168 = v28;
      if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        mlir::RankedTensorType::getShape(&v168);
        if (v30 != 4)
        {
          v182 = 259;
          mlir::OpState::emitOpError(&v176, &v179, &v183);
          mlir::RankedTensorType::getShape(&v168);
          if (v183)
          {
            LODWORD(v165) = 5;
            *(&v165 + 1) = v31;
            if (v186 >= v187)
            {
              if (v185 > &v165 || v185 + 24 * v186 <= &v165)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v32 = v185 + 24 * v186;
            v33 = v165;
            *(v32 + 2) = v166;
            *v32 = v33;
            v34 = ++v186;
            if (v183)
            {
              LODWORD(v165) = 3;
              *(&v165 + 1) = ".";
              v166 = 1;
              if (v34 >= v187)
              {
                if (v185 > &v165 || v185 + 24 * v34 <= &v165)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v35 = v185 + 24 * v186;
              v36 = v165;
              *(v35 + 2) = v166;
              *v35 = v36;
              ++v186;
            }
          }

          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
          if (v183)
          {
            mlir::InFlightDiagnostic::report(&v183);
          }

          if (v194 == 1)
          {
            if (v193 != &v194)
            {
              free(v193);
            }

            v37 = __p;
            if (__p)
            {
              v38 = v192;
              v39 = __p;
              if (v192 != __p)
              {
                do
                {
                  v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
                }

                while (v38 != v37);
                v39 = __p;
              }

              v192 = v37;
              operator delete(v39);
            }

            v25 = v189;
            if (v189)
            {
              v40 = v190;
              v27 = v189;
              if (v190 != v189)
              {
                do
                {
                  v60 = *--v40;
                  v59 = v60;
                  *v40 = 0;
                  if (v60)
                  {
                    MEMORY[0x259C63150](v59, 0x1000C8077774924);
                  }
                }

                while (v40 != v25);
LABEL_329:
                v27 = v189;
                goto LABEL_330;
              }

              goto LABEL_330;
            }

            goto LABEL_331;
          }

          return v1;
        }
      }
    }

    else
    {
      v168 = 0;
    }

    v179 = v181;
    v180 = 0x500000000;
    if ((mlir::matchConstantWithIntVector<long long>(0, &v179) & 1) == 0)
    {
      goto LABEL_248;
    }

    if (v5)
    {
      if (!v177 || (v41 = v180, mlir::RankedTensorType::getShape(&v177), v42 == v41))
      {
        if (v169)
        {
          v43 = v180;
          mlir::RankedTensorType::getShape(&v169);
          if (v44 != v43)
          {
            v167 = 259;
            mlir::OpState::emitOpError(&v176, &v165, &v183);
            mlir::RankedTensorType::getShape(&v169);
            if (v183)
            {
              LODWORD(v171) = 5;
              *(&v171 + 1) = v45;
              if (v186 >= v187)
              {
                if (v185 > &v171 || v185 + 24 * v186 <= &v171)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v46 = v185 + 24 * v186;
              v47 = v171;
              *(v46 + 2) = v172;
              *v46 = v47;
              v48 = ++v186;
              if (v183)
              {
                LODWORD(v171) = 3;
                v172 = 38;
                if (v48 >= v187)
                {
                  if (v185 > &v171 || v185 + 24 * v48 <= &v171)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v49 = v185 + 24 * v186;
                v50 = v171;
                *(v49 + 2) = v172;
                *v49 = v50;
                v51 = ++v186;
                if (v183)
                {
                  LODWORD(v171) = 5;
                  *(&v171 + 1) = v180;
                  if (v51 >= v187)
                  {
                    if (v185 > &v171 || v185 + 24 * v51 <= &v171)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v52 = v185 + 24 * v186;
                  v53 = v171;
                  *(v52 + 2) = v172;
                  *v52 = v53;
                  v54 = ++v186;
                  if (v183)
                  {
                    LODWORD(v171) = 3;
                    *(&v171 + 1) = " values.";
                    v172 = 8;
                    if (v54 >= v187)
                    {
                      if (v185 > &v171 || v185 + 24 * v54 <= &v171)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v55 = v185 + 24 * v186;
                    v56 = v171;
                    *(v55 + 2) = v172;
                    *v55 = v56;
                    ++v186;
                  }
                }
              }
            }

            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
            if (v183)
            {
              mlir::InFlightDiagnostic::report(&v183);
            }

            if (v194 == 1)
            {
              mlir::Diagnostic::~Diagnostic(v184);
            }

            goto LABEL_249;
          }
        }

LABEL_248:
        v1 = 1;
        goto LABEL_249;
      }

      v167 = 259;
      mlir::OpState::emitOpError(&v176, &v165, &v183);
      mlir::RankedTensorType::getShape(&v177);
      if (v183)
      {
        LODWORD(v171) = 5;
        *(&v171 + 1) = v112;
        if (v186 >= v187)
        {
          if (v185 > &v171 || v185 + 24 * v186 <= &v171)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v113 = v185 + 24 * v186;
        v114 = v171;
        *(v113 + 2) = v172;
        *v113 = v114;
        v115 = ++v186;
        if (v183)
        {
          LODWORD(v171) = 3;
          v172 = 35;
          if (v115 >= v187)
          {
            if (v185 > &v171 || v185 + 24 * v115 <= &v171)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v116 = v185 + 24 * v186;
          v117 = v171;
          *(v116 + 2) = v172;
          *v116 = v117;
          v118 = ++v186;
          if (v183)
          {
            LODWORD(v171) = 5;
            *(&v171 + 1) = v180;
            if (v118 >= v187)
            {
              if (v185 > &v171 || v185 + 24 * v118 <= &v171)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v119 = v185 + 24 * v186;
            v120 = v171;
            *(v119 + 2) = v172;
            *v119 = v120;
            v121 = ++v186;
            if (v183)
            {
              LODWORD(v171) = 3;
              *(&v171 + 1) = " values.";
              v172 = 8;
              if (v121 >= v187)
              {
                if (v185 > &v171 || v185 + 24 * v121 <= &v171)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v122 = v185 + 24 * v186;
              v123 = v171;
              *(v122 + 2) = v172;
              *v122 = v123;
              ++v186;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
      if (v183)
      {
        mlir::InFlightDiagnostic::report(&v183);
      }

      if (v194 == 1)
      {
        if (v193 != &v194)
        {
          free(v193);
        }

        v124 = __p;
        if (__p)
        {
          v125 = v192;
          v126 = __p;
          if (v192 != __p)
          {
            do
            {
              v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
            }

            while (v125 != v124);
            v126 = __p;
          }

          v192 = v124;
          operator delete(v126);
        }

        v127 = v189;
        if (!v189)
        {
          goto LABEL_335;
        }

        v128 = v190;
        v129 = v189;
        if (v190 == v189)
        {
LABEL_334:
          v190 = v127;
          operator delete(v129);
LABEL_335:
          if (v185 != v188)
          {
            free(v185);
          }

          goto LABEL_249;
        }

        do
        {
          v131 = *--v128;
          v130 = v131;
          *v128 = 0;
          if (v131)
          {
            MEMORY[0x259C63150](v130, 0x1000C8077774924);
          }
        }

        while (v128 != v127);
LABEL_333:
        v129 = v189;
        goto LABEL_334;
      }
    }

    else
    {
      if (v180 == 4)
      {
        goto LABEL_248;
      }

      v167 = 259;
      mlir::OpState::emitOpError(&v176, &v165, &v183);
      if (v183)
      {
        LODWORD(v171) = 3;
        v172 = 21;
        if (v186 >= v187)
        {
          if (v185 > &v171 || v185 + 24 * v186 <= &v171)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v132 = v185 + 24 * v186;
        v133 = v171;
        *(v132 + 2) = v172;
        *v132 = v133;
        v134 = ++v186;
        if (v183)
        {
          LODWORD(v171) = 5;
          *(&v171 + 1) = v180;
          if (v134 >= v187)
          {
            if (v185 > &v171 || v185 + 24 * v134 <= &v171)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v135 = v185 + 24 * v186;
          v136 = v171;
          *(v135 + 2) = v172;
          *v135 = v136;
          v137 = ++v186;
          if (v183)
          {
            LODWORD(v171) = 3;
            *(&v171 + 1) = " values.";
            v172 = 8;
            if (v137 >= v187)
            {
              if (v185 > &v171 || v185 + 24 * v137 <= &v171)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v138 = v185 + 24 * v186;
            v139 = v171;
            *(v138 + 2) = v172;
            *v138 = v139;
            ++v186;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
      if (v183)
      {
        mlir::InFlightDiagnostic::report(&v183);
      }

      if (v194 == 1)
      {
        if (v193 != &v194)
        {
          free(v193);
        }

        v140 = __p;
        if (__p)
        {
          v141 = v192;
          v142 = __p;
          if (v192 != __p)
          {
            do
            {
              v141 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v141 - 1);
            }

            while (v141 != v140);
            v142 = __p;
          }

          v192 = v140;
          operator delete(v142);
        }

        v127 = v189;
        if (!v189)
        {
          goto LABEL_335;
        }

        v143 = v190;
        v129 = v189;
        if (v190 == v189)
        {
          goto LABEL_334;
        }

        do
        {
          v145 = *--v143;
          v144 = v145;
          *v143 = 0;
          if (v145)
          {
            MEMORY[0x259C63150](v144, 0x1000C8077774924);
          }
        }

        while (v143 != v127);
        goto LABEL_333;
      }
    }

LABEL_249:
    v110 = v179;
    if (v179 != v181)
    {
LABEL_250:
      free(v110);
      return v1;
    }

    return v1;
  }

  v182 = 259;
  mlir::OpState::emitOpError(&v176, &v179, &v183);
  if (v183)
  {
    LODWORD(v165) = 2;
    *(&v165 + 1) = v16;
    if (v186 >= v187)
    {
      if (v185 > &v165 || v185 + 24 * v186 <= &v165)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = v185 + 24 * v186;
    v18 = v165;
    *(v17 + 2) = v166;
    *v17 = v18;
    v19 = ++v186;
    if (v183)
    {
      LODWORD(v165) = 3;
      *(&v165 + 1) = ".";
      v166 = 1;
      if (v19 >= v187)
      {
        if (v185 > &v165 || v185 + 24 * v19 <= &v165)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v185 + 24 * v186;
      v21 = v165;
      *(v20 + 2) = v166;
      *v20 = v21;
      ++v186;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v183);
  if (v183)
  {
    mlir::InFlightDiagnostic::report(&v183);
  }

  if (v194 == 1)
  {
    if (v193 != &v194)
    {
      free(v193);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v192;
      v24 = __p;
      if (v192 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v192 = v22;
      operator delete(v24);
    }

    v25 = v189;
    if (v189)
    {
      v26 = v190;
      v27 = v189;
      if (v190 != v189)
      {
        do
        {
          v58 = *--v26;
          v57 = v58;
          *v26 = 0;
          if (v58)
          {
            MEMORY[0x259C63150](v57, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        goto LABEL_329;
      }

LABEL_330:
      v190 = v25;
      operator delete(v27);
    }

LABEL_331:
    v110 = v185;
    if (v185 == v188)
    {
      return v1;
    }

    goto LABEL_250;
  }

  return v1;
}

uint64_t mlir::mps::DepthwiseConv3DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v204[8] = *MEMORY[0x277D85DE8];
  v178 = a4;
  v179 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = *(a7 + 4);
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v168 = a6;
  v169[0] = 0;
  v170 = 0;
  v171 = v14;
  v172 = v15;
  v173 = v16;
  v174 = a9;
  v17 = a5;
  v175 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v168);
    if (v170 == 1)
    {
      v170 = 0;
    }

    mlir::OperationName::OperationName(v169, "mps.depthwise_conv_3d", 21, Context);
    v170 = 1;
    v17 = v179;
  }

  v176 = a4;
  v177 = a5;
  if (v17 < 2 || (v19 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DepthwiseConv3DOpAdaptor::verify(&v168, v19) & 1) == 0))
  {
    v39 = mlir::Float32Type::get(this, a2);
LABEL_21:
    v40 = mlir::UnrankedTensorType::get(v39);
    goto LABEL_22;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v178, 0);
  v21 = mlir::ValueRange::dereference_iterator(&v178, 1);
  v22 = (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = v171;
  v25 = v172;
  v26 = v173;
  v193 = v22;
  v194 = v23;
  mlir::TypeRange::TypeRange(&v202, &v193, 2uLL);
  v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v22);
  v163[0] = v28;
  v163[1] = v29;
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v23);
  v162[0] = v30;
  v162[1] = v31;
  if (!v28 || (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v32 = v30 == 0) : (v32 = 1), v32 || *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
    v39 = v27;
    goto LABEL_21;
  }

  v199 = v201;
  v200 = 0x500000000;
  v196 = v198;
  v197 = 0x500000000;
  v193 = v195;
  v194 = 0x600000000;
  v190 = v192;
  v191 = 0x300000000;
  v187 = v189;
  v188 = 0x300000000;
  Shape = mlir::ShapedType::getShape(v163);
  v35 = v34;
  v166 = *(&v24 + 1);
  v167 = v26;
  v164 = v24;
  v165 = v25;
  if (v24)
  {
    SInt = mlir::IntegerAttr::getSInt(&v164);
    v37 = v194;
    v38 = v194 > 6;
    if (v194 == 6)
    {
      goto LABEL_30;
    }
  }

  else
  {
    SInt = -4;
    v37 = v194;
    v38 = v194 > 6;
    if (v194 == 6)
    {
      goto LABEL_30;
    }
  }

  if (!v38)
  {
    if (HIDWORD(v194) <= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v193 + 8 * v37, 48 - 8 * v37);
  }

  LODWORD(v194) = 6;
LABEL_30:
  v43 = v191;
  if (v191 == 3)
  {
    v44 = v188;
    v45 = v188 > 3;
    if (v188 == 3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v191 <= 3)
    {
      v52 = v191;
      if (HIDWORD(v191) <= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16(v190 + 8 * v191, &unk_257369660, 24 - 8 * v191);
      v51 = v52 - v43 + 3;
    }

    else
    {
      v51 = 3;
    }

    LODWORD(v191) = v51;
    v44 = v188;
    v45 = v188 > 3;
    if (v188 == 3)
    {
LABEL_32:
      v46 = v200;
      v47 = v200 > 5;
      if (v200 == 5)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }
  }

  if (!v45)
  {
    if (HIDWORD(v188) <= 2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16(v187 + 8 * v44, &unk_257369660, 24 - 8 * v44);
  }

  LODWORD(v188) = 3;
  v46 = v200;
  v47 = v200 > 5;
  if (v200 == 5)
  {
LABEL_33:
    v48 = v197;
    v49 = v197 > 5;
    if (v197 == 5)
    {
      goto LABEL_34;
    }

    goto LABEL_52;
  }

LABEL_47:
  if (!v47)
  {
    if (HIDWORD(v200) <= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(&v199[8 * v46], 40 - 8 * v46);
  }

  LODWORD(v200) = 5;
  v48 = v197;
  v49 = v197 > 5;
  if (v197 == 5)
  {
LABEL_34:
    v50 = v35 - 4;
    if (v35 < 4)
    {
      goto LABEL_90;
    }

LABEL_57:
    v53 = (v35 & (SInt >> 63)) + SInt;
    if (v53 <= v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = (v35 & (SInt >> 63)) + SInt;
    }

    if (v53 >= v35)
    {
      v55 = v50;
    }

    else
    {
      v55 = v54;
    }

    v56 = v35 - 4;
    if (v35 != 4)
    {
      if (v35 == 5)
      {
        goto LABEL_69;
      }

      if (v35 > HIDWORD(v197))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v196 + 40, 8 * (v35 - 5));
    }

    LODWORD(v197) = v35;
LABEL_69:
    v57 = v196;
    v58 = v35 & 0x7FFFFFFFFFFFFFFCLL;
    v59 = vdupq_n_s64(v55);
    v60 = vdupq_n_s64(v56);
    v61 = xmmword_2573686A0;
    v62 = (v196 + 16);
    v63 = vdupq_n_s64(2uLL);
    v64 = vdupq_n_s64(1uLL);
    v65 = vdupq_n_s64(3uLL);
    v66 = vdupq_n_s64(4uLL);
    v67 = v35 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v68 = vaddq_s64(v61, v63);
      v62[-1] = vbslq_s8(vorrq_s8(vcgtq_s64(v61, v59), vcgtq_s64(v60, v61)), v61, vbslq_s8(vcgtq_s64(v59, v61), vaddq_s64(v61, v64), v60));
      *v62 = vbslq_s8(vorrq_s8(vcgtq_s64(v68, v59), vcgtq_s64(v60, v68)), v68, vbslq_s8(vcgtq_s64(v59, v68), vaddq_s64(v61, v65), v60));
      v61 = vaddq_s64(v61, v66);
      v62 += 2;
      v67 -= 4;
    }

    while (v67);
    for (; v35 != v58; ++v58)
    {
      if (v58 < v55)
      {
        v69 = v58 + 1;
      }

      else
      {
        v69 = v35 - 4;
      }

      if (v58 < v56 || v58 > v55)
      {
        v69 = v58;
      }

      v57[v58] = v69;
    }

    if (v35 != v200)
    {
      if (v35 >= v200)
      {
        if (v35 > HIDWORD(v200))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v35 != v200)
        {
          bzero(&v199[8 * v200], 8 * (v35 - v200));
        }
      }

      LODWORD(v200) = v35;
    }

    v71 = v196;
    v72 = v199;
    v73 = v35;
    do
    {
      v75 = *Shape++;
      v74 = v75;
      v76 = *v71++;
      v72[v76] = v74;
      --v73;
    }

    while (v73);
    goto LABEL_90;
  }

LABEL_52:
  if (!v49)
  {
    if (HIDWORD(v197) <= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v196 + 8 * v48, 40 - 8 * v48);
  }

  LODWORD(v197) = 5;
  v50 = v35 - 4;
  if (v35 >= 4)
  {
    goto LABEL_57;
  }

LABEL_90:
  if (v167)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v167) == 3)
    {
      LODWORD(v191) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v202, v167, 0);
      v77 = v167;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v167);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v180, v77, NumElements);
      for (; v204[0] != v182[0]; ++v204[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v202, &v183);
        if (v184 > 0x40)
        {
          v100 = *v183;
        }

        else if (v184)
        {
          v100 = (v183 << -v184) >> -v184;
        }

        else
        {
          v100 = 0;
        }

        if (v191 >= HIDWORD(v191))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v190 + v191) = v100;
        LODWORD(v191) = v191 + 1;
        if (v184 >= 0x41 && v183)
        {
          MEMORY[0x259C63150](v183, 0x1000C8000313F17);
        }
      }
    }
  }

  if (*(&v24 + 1))
  {
    if (mlir::DenseElementsAttr::getNumElements(&v166) == 3)
    {
      LODWORD(v188) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v202, v166, 0);
      v79 = v166;
      v80 = mlir::DenseElementsAttr::getNumElements(&v166);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v180, v79, v80);
      for (; v204[0] != v182[0]; ++v204[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v202, &v183);
        if (v184 > 0x40)
        {
          v101 = *v183;
        }

        else if (v184)
        {
          v101 = (v183 << -v184) >> -v184;
        }

        else
        {
          v101 = 0;
        }

        if (v188 >= HIDWORD(v188))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v187 + v188) = v101;
        LODWORD(v188) = v188 + 1;
        if (v184 >= 0x41 && v183)
        {
          MEMORY[0x259C63150](v183, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v25)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v165) == 6)
    {
      LODWORD(v194) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v202, v165, 0);
      v81 = v165;
      v82 = mlir::DenseElementsAttr::getNumElements(&v165);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v180, v81, v82);
      for (; v204[0] != v182[0]; ++v204[0])
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v202, &v183);
        if (v184 > 0x40)
        {
          v102 = *v183;
        }

        else if (v184)
        {
          v102 = (v183 << -v184) >> -v184;
        }

        else
        {
          v102 = 0;
        }

        if (v194 >= HIDWORD(v194))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v193 + v194) = v102;
        LODWORD(v194) = v194 + 1;
        if (v184 >= 0x41 && v183)
        {
          MEMORY[0x259C63150](v183, 0x1000C8000313F17);
        }
      }
    }
  }

  if (*(&v25 + 1))
  {
    v83 = *(*(&v25 + 1) + 8);
  }

  else
  {
    v83 = 2;
  }

  v84 = mlir::ShapedType::getShape(v162);
  v183 = &v185;
  v185 = 0u;
  v186 = 0u;
  v184 = 0x400000004;
  if (SInt >= 0)
  {
    v86 = v35;
  }

  else
  {
    v86 = 0;
  }

  if (v85 == 4)
  {
    v87 = SInt - v86 + 4;
    if (v87 <= 3)
    {
      *&v185 = *(v84 + 8 * v87);
      if (v87)
      {
        v88 = -1;
      }

      else
      {
        v88 = 0;
      }

      *(&v185 + 1) = *(v84 + 8 * v88 + 8);
      if (v87 <= 1)
      {
        v89 = 0;
      }

      else
      {
        v89 = -1;
      }

      *&v186 = *(v84 + 8 * v89 + 16);
      if (v87 <= 2)
      {
        v90 = 0;
      }

      else
      {
        v90 = -1;
      }

      *(&v186 + 1) = *(v84 + 8 * v90 + 24);
    }
  }

  v180 = v182;
  v181 = 0x500000000;
  v91 = v200;
  v202 = v204;
  v203 = 0x800000000;
  if (!v200)
  {
    v92 = -4;
    v93 = v199;
    v94 = v204;
LABEL_122:
    v95 = 0;
    if (v92 < 4 || (v204 - v93) <= 0x1F)
    {
      goto LABEL_167;
    }

    v96 = 0;
    v95 = v92 & 0xFFFFFFFFFFFFFFFCLL;
    v97 = v92 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v98 = *&v93[v96 * 8 + 16];
      v99 = &v204[v96];
      *v99 = *&v93[v96 * 8];
      v99[1] = v98;
      v96 += 4;
      v97 -= 4;
    }

    while (v97);
    while (v92 != v95)
    {
LABEL_167:
      v204[v95] = *&v93[8 * v95];
      ++v95;
    }

    goto LABEL_168;
  }

  if (v200 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v94 = v204;
  bzero(v204, 8 * v200);
  LODWORD(v203) = v91;
  v93 = v199;
  v92 = v91 - 4;
  if (v91 != 4)
  {
    goto LABEL_122;
  }

LABEL_168:
  v103 = v91 - 3;
  v104 = v183;
  v204[v92] = *v183;
  v105 = v190;
  if (v83 == 2 || v83 == 4)
  {
    v106 = *&v93[8 * v103];
    if (*v190 <= 1)
    {
      v107 = 1;
    }

    else
    {
      v107 = *v190;
    }

    v108 = *&v93[8 * v103];
    if (*v190 >= 2)
    {
      v108 = 0x8000000000000000;
      if (v106 != 0x8000000000000000)
      {
        v108 = v106 / v107;
        v109 = v106 / v107 * v107;
        if (v106 >= 0 && v109 != v106)
        {
          ++v108;
        }
      }
    }

    v204[v103] = v108;
    v111 = *&v93[8 * v91 - 16];
    v112 = v105[1];
    if (v112 <= 1)
    {
      v113 = 1;
    }

    else
    {
      v113 = v105[1];
    }

    v114 = *&v93[8 * v91 - 16];
    if (v112 >= 2)
    {
      v114 = 0x8000000000000000;
      if (v111 != 0x8000000000000000)
      {
        v114 = v111 / v113;
        v115 = v111 / v113 * v113;
        if (v111 >= 0 && v115 != v111)
        {
          ++v114;
        }
      }
    }

    v204[v91 - 2] = v114;
    v117 = v91 - 1;
    v118 = *&v93[8 * v91 - 8];
    v119 = v105[2];
    if (v119 <= 1)
    {
      v120 = 1;
    }

    else
    {
      v120 = v119;
    }

    if (v119 >= 2)
    {
      if (v118 == 0x8000000000000000)
      {
        v118 = 0x8000000000000000;
      }

      else
      {
        v154 = v118 / v120;
        v155 = v118 / v120 * v120;
        if (v118 < 0 || v155 == v118)
        {
          v118 = v154;
        }

        else
        {
          v118 = v154 + 1;
        }
      }
    }
  }

  else
  {
    v121 = v187;
    v122 = *&v93[8 * v103];
    v123 = v193;
    v124 = v104[1];
    v125 = 0x8000000000000000;
    v126 = v124 == 0x8000000000000000 || v122 == 0x8000000000000000;
    v127 = 0x8000000000000000;
    if (!v126)
    {
      v128 = *(v193 + 1) & ~(*(v193 + 1) >> 63);
      v129 = *v193 & ~(*v193 >> 63);
      v130 = *v187;
      if (*v187 <= 1)
      {
        v130 = 1;
      }

      v131 = *v190;
      if (*v190 <= 1)
      {
        v131 = 1;
      }

      if (v83 == 1)
      {
        v128 = 0;
        v129 = 0;
      }

      v132 = v128 + v122 + v129 + v131 + ~(v130 * (v124 - 1));
      v133 = v132 / v131;
      if (v132 / v131 * v131 == v132)
      {
        v134 = 0;
      }

      else
      {
        v134 = v132 >> 63;
      }

      v127 = (v134 + v133) & ~((v134 + v133) >> 63);
    }

    v204[v103] = v127;
    v135 = *&v93[8 * v91 - 16];
    v136 = v104[2];
    if (v136 != 0x8000000000000000 && v135 != 0x8000000000000000)
    {
      v138 = v123[3] & ~(v123[3] >> 63);
      v139 = v123[2] & ~(v123[2] >> 63);
      v140 = v121[1];
      if (v140 <= 1)
      {
        v140 = 1;
      }

      v141 = v105[1];
      if (v141 <= 1)
      {
        v141 = 1;
      }

      if (v83 == 1)
      {
        v138 = 0;
        v139 = 0;
      }

      v142 = v138 + v135 + v139 + v141 + ~(v140 * (v136 - 1));
      v143 = v142 / v141;
      if (v142 / v141 * v141 == v142)
      {
        v144 = 0;
      }

      else
      {
        v144 = v142 >> 63;
      }

      v125 = (v144 + v143) & ~((v144 + v143) >> 63);
    }

    v204[v91 - 2] = v125;
    v117 = v91 - 1;
    v145 = v104[3];
    v118 = 0x8000000000000000;
    if (v145 != 0x8000000000000000)
    {
      v146 = *&v93[8 * v117];
      if (v146 != 0x8000000000000000)
      {
        v147 = v123[5] & ~(v123[5] >> 63);
        v148 = v123[4] & ~(v123[4] >> 63);
        v149 = v121[2];
        if (v149 <= 1)
        {
          v149 = 1;
        }

        v150 = v105[2];
        if (v150 <= 1)
        {
          v150 = 1;
        }

        if (v83 == 1)
        {
          v147 = 0;
          v148 = 0;
        }

        v151 = v147 + v146 + v148 + v150 + ~(v149 * (v145 - 1));
        v152 = v151 / v150;
        if (v151 / v150 * v150 == v151)
        {
          v153 = 0;
        }

        else
        {
          v153 = v151 >> 63;
        }

        v118 = (v153 + v152) & ~((v153 + v152) >> 63);
      }
    }
  }

  v204[v117] = v118;
  if (v181 != v91)
  {
    if (v181 <= v91)
    {
      if (HIDWORD(v181) < v91)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v181 != v91)
      {
        bzero(v180 + 8 * v181, 8 * (v91 - v181));
      }
    }

    LODWORD(v181) = v91;
    v94 = v202;
  }

  if (v91)
  {
    v157 = v196;
    v158 = v180;
    v159 = v91;
    do
    {
      v160 = *v157++;
      *v158++ = v94[v160];
      --v159;
    }

    while (v159);
  }

  if (v94 != v204)
  {
    free(v94);
    v91 = v181;
  }

  v40 = mlir::RankedTensorType::get(v180, v91, v27, 0);
  v161 = v40;
  if (v180 != v182)
  {
    free(v180);
    v40 = v161;
  }

  if (v183 != &v185)
  {
    free(v183);
    v40 = v161;
  }

  if (v187 != v189)
  {
    free(v187);
    v40 = v161;
  }

  if (v190 != v192)
  {
    free(v190);
    v40 = v161;
  }

  if (v193 != v195)
  {
    free(v193);
    v40 = v161;
  }

  if (v196 != v198)
  {
    free(v196);
    v40 = v161;
  }

  if (v199 != v201)
  {
    free(v199);
    v40 = v161;
  }

LABEL_22:
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DepthwiseConv3DOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  v58 = a1[4];
  if (!v58)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v67;
      v22 = __p;
      if (v67 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v67 = v20;
      operator delete(v22);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v54 = a1[5];
  if (!v54)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v23 = v64;
    if (v64)
    {
      v31 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if (!a1[6])
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'padding_style'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v67;
      v36 = __p;
      if (v67 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v67 = v34;
      operator delete(v36);
    }

    v23 = v64;
    if (v64)
    {
      v37 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v65 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v19;
  }

  v53 = a1[7];
  if (!v53)
  {
    v55 = "'mps.depthwise_conv_3d' op requires attribute 'strides'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v23 = v64;
    if (v64)
    {
      v43 = v65;
      v25 = v64;
      if (v65 != v64)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v64;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
  v56 = v4;
  Type = mlir::ElementsAttr::getType(&v55);
  v60 = mlir::TensorType::operator mlir::ShapedType(&Type);
  v61 = v5;
  Shape = mlir::ShapedType::getShape(&v60);
  v59 = 3;
  if (v7 == 1 && *Shape == v59)
  {
    v48 = v53;
    v49 = mlir::DenseElementsAttr::getType(&v48);
    v50 = v8;
    ElementType = mlir::ShapedType::getElementType(&v49);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v58);
      v56 = v9;
      Type = mlir::ElementsAttr::getType(&v55);
      v60 = mlir::TensorType::operator mlir::ShapedType(&Type);
      v61 = v10;
      v11 = mlir::ShapedType::getShape(&v60);
      v59 = 3;
      if (v12 == 1 && *v11 == v59 && (v48 = v58, v49 = mlir::DenseElementsAttr::getType(&v48), v50 = v13, ElementType = mlir::ShapedType::getElementType(&v49), mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
        v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v54);
        v56 = v14;
        Type = mlir::ElementsAttr::getType(&v55);
        v60 = mlir::TensorType::operator mlir::ShapedType(&Type);
        v61 = v15;
        v16 = mlir::ShapedType::getShape(&v60);
        v59 = 6;
        if (v17 == 1 && *v16 == v59 && (v48 = v54, v49 = mlir::DenseElementsAttr::getType(&v48), v50 = v18, ElementType = mlir::ShapedType::getElementType(&v49), mlir::Type::isUnsignedInteger(&ElementType, 64)))
        {
          if (!v3)
          {
            return 1;
          }

          v55 = v3;
          v60 = mlir::IntegerAttr::getType(&v55);
          if (mlir::Type::isSignedInteger(&v60, 32))
          {
            return 1;
          }

          v47 = "'mps.depthwise_conv_3d' op attribute 'channelAxis' failed to satisfy constraint: 32-bit signed integer attribute";
        }

        else
        {
          v47 = "'mps.depthwise_conv_3d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        }
      }

      else
      {
        v47 = "'mps.depthwise_conv_3d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      }

      v55 = v47;
      v57 = 259;
      mlir::emitError(a2, &v55, &v60);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      return v19;
    }
  }

  v55 = "'mps.depthwise_conv_3d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v57 = 259;
  mlir::emitError(a2, &v55, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::verify(mlir::Operation **this)
{
  v199 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 9);
  v4 = v3[3];
  v5 = v3[7];
  if (*(*this + 17) != 2)
  {
    v6 = v3[11];
    v179 = *(v2 + 14);
    v180 = v2;
    v9 = *(v2 + 11);
    v177 = *(v2 + 12);
    v178 = v9;
    if (v179)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (!v178)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v179 = *(v2 + 14);
  v180 = v2;
  v7 = *(v2 + 11);
  v177 = *(v2 + 12);
  v178 = v7;
  if (!v179)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (mlir::DenseElementsAttr::getNumElements(&v179) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v169, v179, 0);
    v1 = v179;
    NumElements = mlir::DenseElementsAttr::getNumElements(&v179);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v175, v1, NumElements);
    while (v170 != v176)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v169, &v173);
      if (v174 > 0x40)
      {
        if (*v173 <= 0)
        {
          goto LABEL_100;
        }
      }

      else if (!v174 || (v173 << -v174) >> -v174 <= 0)
      {
LABEL_100:
        v186 = 259;
        mlir::OpState::emitOpError(&v180, &v183, &v187);
        if (v174 > 0x40)
        {
          v63 = *v173;
          if (!v187)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v174)
          {
            v63 = (v173 << -v174) >> -v174;
          }

          else
          {
            v63 = 0;
          }

          if (!v187)
          {
            goto LABEL_114;
          }
        }

        LODWORD(v181) = 2;
        *(&v181 + 1) = v63;
        if (v190 >= v191)
        {
          if (v189 > &v181 || v189 + 24 * v190 <= &v181)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v65 = v189 + 24 * v190;
        v66 = v181;
        *(v65 + 2) = v182;
        *v65 = v66;
        v67 = ++v190;
        if (v187)
        {
          LODWORD(v181) = 3;
          *(&v181 + 1) = ", all values should be positive.";
          v182 = 32;
          if (v67 >= v191)
          {
            if (v189 > &v181 || v189 + 24 * v67 <= &v181)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v68 = v189 + 24 * v190;
          v69 = v181;
          *(v68 + 2) = v182;
          *v68 = v69;
          ++v190;
        }

LABEL_114:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
        if (v187)
        {
          mlir::InFlightDiagnostic::report(&v187);
        }

        if (v198 == 1)
        {
          if (v197 != &v198)
          {
            free(v197);
          }

          v70 = __p;
          if (__p)
          {
            v71 = v196;
            v72 = __p;
            if (v196 != __p)
            {
              do
              {
                v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
              }

              while (v71 != v70);
              v72 = __p;
            }

            v196 = v70;
            operator delete(v72);
          }

          v73 = v193;
          if (v193)
          {
            v74 = v194;
            v75 = v193;
            if (v194 != v193)
            {
              do
              {
                v77 = *--v74;
                v76 = v77;
                *v74 = 0;
                if (v77)
                {
                  MEMORY[0x259C63150](v76, 0x1000C8077774924);
                }
              }

              while (v74 != v73);
              v75 = v193;
            }

            v194 = v73;
            operator delete(v75);
          }

          if (v189 != v192)
          {
            free(v189);
          }
        }

        v64 = 0;
        if (v174 < 0x41)
        {
          goto LABEL_137;
        }

LABEL_135:
        if (v173)
        {
          MEMORY[0x259C63150](v173, 0x1000C8000313F17);
        }

        goto LABEL_137;
      }

      v64 = 1;
      if (v174 >= 0x41)
      {
        goto LABEL_135;
      }

LABEL_137:
      if (!v64)
      {
        return v1;
      }

      ++v170;
    }
  }

  if (!v178)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (mlir::DenseElementsAttr::getNumElements(&v178) == 3)
  {
    v166 = v4;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v169, v178, 0);
    v10 = v178;
    v11 = mlir::DenseElementsAttr::getNumElements(&v178);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v175, v10, v11);
    if (v170 == v176)
    {
LABEL_11:
      v4 = v166;
      goto LABEL_12;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v169, &v173);
      if (v174 > 0x40)
      {
        if (*v173 <= 0)
        {
          goto LABEL_151;
        }
      }

      else if (!v174 || (v173 << -v174) >> -v174 <= 0)
      {
LABEL_151:
        v186 = 259;
        mlir::OpState::emitOpError(&v180, &v183, &v187);
        if (v174 > 0x40)
        {
          v78 = *v173;
          if (!v187)
          {
            goto LABEL_165;
          }
        }

        else
        {
          if (v174)
          {
            v78 = (v173 << -v174) >> -v174;
          }

          else
          {
            v78 = 0;
          }

          if (!v187)
          {
            goto LABEL_165;
          }
        }

        LODWORD(v181) = 2;
        *(&v181 + 1) = v78;
        if (v190 >= v191)
        {
          if (v189 > &v181 || v189 + 24 * v190 <= &v181)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v80 = v189 + 24 * v190;
        v81 = v181;
        *(v80 + 2) = v182;
        *v80 = v81;
        v82 = ++v190;
        if (v187)
        {
          LODWORD(v181) = 3;
          *(&v181 + 1) = ", all values should be positive.";
          v182 = 32;
          if (v82 >= v191)
          {
            if (v189 > &v181 || v189 + 24 * v82 <= &v181)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v83 = v189 + 24 * v190;
          v84 = v181;
          *(v83 + 2) = v182;
          *v83 = v84;
          ++v190;
        }

LABEL_165:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
        if (v187)
        {
          mlir::InFlightDiagnostic::report(&v187);
        }

        if (v198 == 1)
        {
          if (v197 != &v198)
          {
            free(v197);
          }

          v85 = __p;
          if (__p)
          {
            v86 = v196;
            v87 = __p;
            if (v196 != __p)
            {
              do
              {
                v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
              }

              while (v86 != v85);
              v87 = __p;
            }

            v196 = v85;
            operator delete(v87);
          }

          v88 = v193;
          if (v193)
          {
            v89 = v194;
            v90 = v193;
            if (v194 != v193)
            {
              do
              {
                v92 = *--v89;
                v91 = v92;
                *v89 = 0;
                if (v92)
                {
                  MEMORY[0x259C63150](v91, 0x1000C8077774924);
                }
              }

              while (v89 != v88);
              v90 = v193;
            }

            v194 = v88;
            operator delete(v90);
          }

          if (v189 != v192)
          {
            free(v189);
          }
        }

        v79 = 0;
        if (v174 < 0x41)
        {
          goto LABEL_188;
        }

LABEL_186:
        if (v173)
        {
          MEMORY[0x259C63150](v173, 0x1000C8000313F17);
        }

        goto LABEL_188;
      }

      v79 = 1;
      if (v174 >= 0x41)
      {
        goto LABEL_186;
      }

LABEL_188:
      if (!v79)
      {
        return v1;
      }

      if (++v170 == v176)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v177 && mlir::DenseElementsAttr::getNumElements(&v177) == 6)
  {
    v167 = v4;
    v168 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v169, v177, 0);
    v12 = v177;
    v13 = mlir::DenseElementsAttr::getNumElements(&v177);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v175, v12, v13);
    if (v170 == v176)
    {
LABEL_15:
      v4 = v167;
      v6 = v168;
      goto LABEL_16;
    }

    v93 = 0x1000C8000313F17;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v169, &v173);
      if (v174 > 0x40)
      {
        break;
      }

      if (v174)
      {
        v95 = (v173 << -v174) >> -v174;
        if (v95 < 0)
        {
          goto LABEL_205;
        }

LABEL_212:
        if (v174 >= 0x41)
        {
LABEL_240:
          if (v173)
          {
            MEMORY[0x259C63150](v173, v93);
          }
        }

LABEL_200:
        if (v95 < 0)
        {
          return v1;
        }
      }

      if (++v170 == v176)
      {
        goto LABEL_15;
      }
    }

    v95 = *v173;
    if ((*v173 & 0x8000000000000000) == 0)
    {
      goto LABEL_212;
    }

LABEL_205:
    v183 = v94;
    v186 = 259;
    mlir::OpState::emitOpError(&v180, &v183, &v187);
    if (v174 > 0x40)
    {
      v96 = *v173;
      if (!v187)
      {
        goto LABEL_219;
      }
    }

    else
    {
      if (v174)
      {
        v96 = (v173 << -v174) >> -v174;
      }

      else
      {
        v96 = 0;
      }

      if (!v187)
      {
        goto LABEL_219;
      }
    }

    LODWORD(v181) = 2;
    *(&v181 + 1) = v96;
    if (v190 >= v191)
    {
      if (v189 > &v181 || v189 + 24 * v190 <= &v181)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v97 = v189 + 24 * v190;
    v98 = v181;
    *(v97 + 2) = v182;
    *v97 = v98;
    v99 = ++v190;
    if (v187)
    {
      LODWORD(v181) = 3;
      *(&v181 + 1) = ", all values should be non-negative.";
      v182 = 36;
      if (v99 >= v191)
      {
        if (v189 > &v181 || v189 + 24 * v99 <= &v181)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v100 = v189 + 24 * v190;
      v101 = v181;
      *(v100 + 2) = v182;
      *v100 = v101;
      ++v190;
    }

LABEL_219:
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
    if (v187)
    {
      mlir::InFlightDiagnostic::report(&v187);
    }

    if (v198 == 1)
    {
      if (v197 != &v198)
      {
        free(v197);
      }

      v102 = v94;
      v103 = __p;
      if (__p)
      {
        v104 = v196;
        v105 = __p;
        if (v196 != __p)
        {
          do
          {
            v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
          }

          while (v104 != v103);
          v105 = __p;
        }

        v196 = v103;
        operator delete(v105);
      }

      v106 = v193;
      if (v193)
      {
        v107 = v93;
        v108 = v194;
        v109 = v193;
        if (v194 != v193)
        {
          do
          {
            v111 = *--v108;
            v110 = v111;
            *v108 = 0;
            if (v111)
            {
              MEMORY[0x259C63150](v110, 0x1000C8077774924);
            }
          }

          while (v108 != v106);
          v109 = v193;
        }

        v194 = v106;
        operator delete(v109);
        v93 = v107;
      }

      v94 = v102;
      if (v189 != v192)
      {
        free(v189);
      }
    }

    if (v174 >= 0x41)
    {
      goto LABEL_240;
    }

    goto LABEL_200;
  }

LABEL_16:
  v183 = *(v180 + 2 * ((*(v180 + 11) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v183, &v187);
  if (v188[0] > 0x40)
  {
    v14 = *v187;
    MEMORY[0x259C63150]();
    *&v181 = 0;
    if (!v4)
    {
LABEL_46:
      v173 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    if (v188[0])
    {
      v14 = (v187 << -LOBYTE(v188[0])) >> -LOBYTE(v188[0]);
    }

    else
    {
      LODWORD(v14) = 0;
    }

    *&v181 = 0;
    if (!v4)
    {
      goto LABEL_46;
    }
  }

  v15 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v15)
  {
    goto LABEL_46;
  }

  v16 = *(*v15 + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = 0;
  }

  v173 = v15;
  if (v16 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_47;
  }

  mlir::RankedTensorType::getShape(&v173);
  v18 = v17;
  if (v17 > 3)
  {
    if (v14 >= 0)
    {
      v148 = v17;
    }

    else
    {
      v148 = 0;
    }

    if ((v14 - v148) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v186 = 259;
      mlir::OpState::emitOpError(&v180, &v183, &v187);
      if (v187)
      {
        LODWORD(v169) = 2;
        *(&v169 + 1) = v14;
        if (v190 >= v191)
        {
          if (v189 > &v169 || v189 + 24 * v190 <= &v169)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v149 = v189 + 24 * v190;
        v150 = v169;
        *(v149 + 2) = v170;
        *v149 = v150;
        v151 = ++v190;
        if (v187)
        {
          LODWORD(v169) = 3;
          *(&v169 + 1) = " for input gradient rank ";
          v170 = 25;
          if (v151 >= v191)
          {
            if (v189 > &v169 || v189 + 24 * v151 <= &v169)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v152 = v189 + 24 * v190;
          v153 = v169;
          *(v152 + 2) = v170;
          *v152 = v153;
          v154 = ++v190;
          if (v187)
          {
            LODWORD(v169) = 2;
            *(&v169 + 1) = v18;
            if (v154 >= v191)
            {
              if (v189 > &v169 || v189 + 24 * v154 <= &v169)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v155 = v189 + 24 * v190;
            v156 = v169;
            *(v155 + 2) = v170;
            *v155 = v156;
            v157 = ++v190;
            if (v187)
            {
              LODWORD(v169) = 3;
              *(&v169 + 1) = ".";
              v170 = 1;
              if (v157 >= v191)
              {
                if (v189 > &v169 || v189 + 24 * v157 <= &v169)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v158 = v189 + 24 * v190;
              v159 = v169;
              *(v158 + 2) = v170;
              *v158 = v159;
              ++v190;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v198 == 1)
      {
        if (v197 != &v198)
        {
          free(v197);
        }

        v160 = __p;
        if (__p)
        {
          v161 = v196;
          v162 = __p;
          if (v196 != __p)
          {
            do
            {
              v161 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v161 - 1);
            }

            while (v161 != v160);
            v162 = __p;
          }

          v196 = v160;
          operator delete(v162);
        }

        v27 = v193;
        if (v193)
        {
          v163 = v194;
          v29 = v193;
          if (v194 != v193)
          {
            do
            {
              v165 = *--v163;
              v164 = v165;
              *v163 = 0;
              if (v165)
              {
                MEMORY[0x259C63150](v164, 0x1000C8077774924);
              }
            }

            while (v163 != v27);
            goto LABEL_332;
          }

          goto LABEL_333;
        }

        goto LABEL_334;
      }

      return v1;
    }

LABEL_47:
    if (v5 && (v30 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v31 = *(*v30 + 136);
      if (v31 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v30 = 0;
      }

      v172 = v30;
      if (v31 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        mlir::RankedTensorType::getShape(&v172);
        if (v32 != 4)
        {
          v186 = 259;
          mlir::OpState::emitOpError(&v180, &v183, &v187);
          mlir::RankedTensorType::getShape(&v172);
          if (v187)
          {
            LODWORD(v169) = 5;
            *(&v169 + 1) = v33;
            if (v190 >= v191)
            {
              if (v189 > &v169 || v189 + 24 * v190 <= &v169)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v34 = v189 + 24 * v190;
            v35 = v169;
            *(v34 + 2) = v170;
            *v34 = v35;
            v36 = ++v190;
            if (v187)
            {
              LODWORD(v169) = 3;
              *(&v169 + 1) = ".";
              v170 = 1;
              if (v36 >= v191)
              {
                if (v189 > &v169 || v189 + 24 * v36 <= &v169)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v37 = v189 + 24 * v190;
              v38 = v169;
              *(v37 + 2) = v170;
              *v37 = v38;
              ++v190;
            }
          }

          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
          if (v187)
          {
            mlir::InFlightDiagnostic::report(&v187);
          }

          if (v198 == 1)
          {
            if (v197 != &v198)
            {
              free(v197);
            }

            v39 = __p;
            if (__p)
            {
              v40 = v196;
              v41 = __p;
              if (v196 != __p)
              {
                do
                {
                  v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
                }

                while (v40 != v39);
                v41 = __p;
              }

              v196 = v39;
              operator delete(v41);
            }

            v27 = v193;
            if (v193)
            {
              v42 = v194;
              v29 = v193;
              if (v194 != v193)
              {
                do
                {
                  v62 = *--v42;
                  v61 = v62;
                  *v42 = 0;
                  if (v62)
                  {
                    MEMORY[0x259C63150](v61, 0x1000C8077774924);
                  }
                }

                while (v42 != v27);
LABEL_332:
                v29 = v193;
                goto LABEL_333;
              }

              goto LABEL_333;
            }

            goto LABEL_334;
          }

          return v1;
        }
      }
    }

    else
    {
      v172 = 0;
    }

    v183 = v185;
    v184 = 0x500000000;
    if ((mlir::matchConstantWithIntVector<long long>(v6, &v183) & 1) == 0)
    {
      goto LABEL_251;
    }

    if (v5)
    {
      if (!v181 || (v43 = v184, mlir::RankedTensorType::getShape(&v181), v44 == v43))
      {
        if (v173)
        {
          v45 = v184;
          mlir::RankedTensorType::getShape(&v173);
          if (v46 != v45)
          {
            v171 = 259;
            mlir::OpState::emitOpError(&v180, &v169, &v187);
            mlir::RankedTensorType::getShape(&v173);
            if (v187)
            {
              LODWORD(v175) = 5;
              *(&v175 + 1) = v47;
              if (v190 >= v191)
              {
                if (v189 > &v175 || v189 + 24 * v190 <= &v175)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v48 = v189 + 24 * v190;
              v49 = v175;
              *(v48 + 2) = v176;
              *v48 = v49;
              v50 = ++v190;
              if (v187)
              {
                LODWORD(v175) = 3;
                v176 = 38;
                if (v50 >= v191)
                {
                  if (v189 > &v175 || v189 + 24 * v50 <= &v175)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v51 = v189 + 24 * v190;
                v52 = v175;
                *(v51 + 2) = v176;
                *v51 = v52;
                v53 = ++v190;
                if (v187)
                {
                  LODWORD(v175) = 5;
                  *(&v175 + 1) = v184;
                  if (v53 >= v191)
                  {
                    if (v189 > &v175 || v189 + 24 * v53 <= &v175)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v54 = v189 + 24 * v190;
                  v55 = v175;
                  *(v54 + 2) = v176;
                  *v54 = v55;
                  v56 = ++v190;
                  if (v187)
                  {
                    LODWORD(v175) = 3;
                    *(&v175 + 1) = " values.";
                    v176 = 8;
                    if (v56 >= v191)
                    {
                      if (v189 > &v175 || v189 + 24 * v56 <= &v175)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v57 = v189 + 24 * v190;
                    v58 = v175;
                    *(v57 + 2) = v176;
                    *v57 = v58;
                    ++v190;
                  }
                }
              }
            }

            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
            if (v187)
            {
              mlir::InFlightDiagnostic::report(&v187);
            }

            if (v198 == 1)
            {
              mlir::Diagnostic::~Diagnostic(v188);
            }

            goto LABEL_252;
          }
        }

LABEL_251:
        v1 = 1;
        goto LABEL_252;
      }

      v171 = 259;
      mlir::OpState::emitOpError(&v180, &v169, &v187);
      mlir::RankedTensorType::getShape(&v181);
      if (v187)
      {
        LODWORD(v175) = 5;
        *(&v175 + 1) = v114;
        if (v190 >= v191)
        {
          if (v189 > &v175 || v189 + 24 * v190 <= &v175)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v115 = v189 + 24 * v190;
        v116 = v175;
        *(v115 + 2) = v176;
        *v115 = v116;
        v117 = ++v190;
        if (v187)
        {
          LODWORD(v175) = 3;
          v176 = 35;
          if (v117 >= v191)
          {
            if (v189 > &v175 || v189 + 24 * v117 <= &v175)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v118 = v189 + 24 * v190;
          v119 = v175;
          *(v118 + 2) = v176;
          *v118 = v119;
          v120 = ++v190;
          if (v187)
          {
            LODWORD(v175) = 5;
            *(&v175 + 1) = v184;
            if (v120 >= v191)
            {
              if (v189 > &v175 || v189 + 24 * v120 <= &v175)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v121 = v189 + 24 * v190;
            v122 = v175;
            *(v121 + 2) = v176;
            *v121 = v122;
            v123 = ++v190;
            if (v187)
            {
              LODWORD(v175) = 3;
              *(&v175 + 1) = " values.";
              v176 = 8;
              if (v123 >= v191)
              {
                if (v189 > &v175 || v189 + 24 * v123 <= &v175)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v124 = v189 + 24 * v190;
              v125 = v175;
              *(v124 + 2) = v176;
              *v124 = v125;
              ++v190;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v198 == 1)
      {
        if (v197 != &v198)
        {
          free(v197);
        }

        v126 = __p;
        if (__p)
        {
          v127 = v196;
          v128 = __p;
          if (v196 != __p)
          {
            do
            {
              v127 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v127 - 1);
            }

            while (v127 != v126);
            v128 = __p;
          }

          v196 = v126;
          operator delete(v128);
        }

        v129 = v193;
        if (!v193)
        {
          goto LABEL_338;
        }

        v130 = v194;
        v131 = v193;
        if (v194 == v193)
        {
LABEL_337:
          v194 = v129;
          operator delete(v131);
LABEL_338:
          if (v189 != v192)
          {
            free(v189);
          }

          goto LABEL_252;
        }

        do
        {
          v133 = *--v130;
          v132 = v133;
          *v130 = 0;
          if (v133)
          {
            MEMORY[0x259C63150](v132, 0x1000C8077774924);
          }
        }

        while (v130 != v129);
LABEL_336:
        v131 = v193;
        goto LABEL_337;
      }
    }

    else
    {
      if (v184 == 4)
      {
        goto LABEL_251;
      }

      v171 = 259;
      mlir::OpState::emitOpError(&v180, &v169, &v187);
      if (v187)
      {
        LODWORD(v175) = 3;
        v176 = 21;
        if (v190 >= v191)
        {
          if (v189 > &v175 || v189 + 24 * v190 <= &v175)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v134 = v189 + 24 * v190;
        v135 = v175;
        *(v134 + 2) = v176;
        *v134 = v135;
        v136 = ++v190;
        if (v187)
        {
          LODWORD(v175) = 5;
          *(&v175 + 1) = v184;
          if (v136 >= v191)
          {
            if (v189 > &v175 || v189 + 24 * v136 <= &v175)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v137 = v189 + 24 * v190;
          v138 = v175;
          *(v137 + 2) = v176;
          *v137 = v138;
          v139 = ++v190;
          if (v187)
          {
            LODWORD(v175) = 3;
            *(&v175 + 1) = " values.";
            v176 = 8;
            if (v139 >= v191)
            {
              if (v189 > &v175 || v189 + 24 * v139 <= &v175)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v140 = v189 + 24 * v190;
            v141 = v175;
            *(v140 + 2) = v176;
            *v140 = v141;
            ++v190;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
      if (v187)
      {
        mlir::InFlightDiagnostic::report(&v187);
      }

      if (v198 == 1)
      {
        if (v197 != &v198)
        {
          free(v197);
        }

        v142 = __p;
        if (__p)
        {
          v143 = v196;
          v144 = __p;
          if (v196 != __p)
          {
            do
            {
              v143 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v143 - 1);
            }

            while (v143 != v142);
            v144 = __p;
          }

          v196 = v142;
          operator delete(v144);
        }

        v129 = v193;
        if (!v193)
        {
          goto LABEL_338;
        }

        v145 = v194;
        v131 = v193;
        if (v194 == v193)
        {
          goto LABEL_337;
        }

        do
        {
          v147 = *--v145;
          v146 = v147;
          *v145 = 0;
          if (v147)
          {
            MEMORY[0x259C63150](v146, 0x1000C8077774924);
          }
        }

        while (v145 != v129);
        goto LABEL_336;
      }
    }

LABEL_252:
    v112 = v183;
    if (v183 != v185)
    {
LABEL_253:
      free(v112);
      return v1;
    }

    return v1;
  }

  v186 = 259;
  mlir::OpState::emitOpError(&v180, &v183, &v187);
  if (v187)
  {
    LODWORD(v169) = 2;
    *(&v169 + 1) = v18;
    if (v190 >= v191)
    {
      if (v189 > &v169 || v189 + 24 * v190 <= &v169)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v19 = v189 + 24 * v190;
    v20 = v169;
    *(v19 + 2) = v170;
    *v19 = v20;
    v21 = ++v190;
    if (v187)
    {
      LODWORD(v169) = 3;
      *(&v169 + 1) = ".";
      v170 = 1;
      if (v21 >= v191)
      {
        if (v189 > &v169 || v189 + 24 * v21 <= &v169)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v189 + 24 * v190;
      v23 = v169;
      *(v22 + 2) = v170;
      *v22 = v23;
      ++v190;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v187);
  if (v187)
  {
    mlir::InFlightDiagnostic::report(&v187);
  }

  if (v198 == 1)
  {
    if (v197 != &v198)
    {
      free(v197);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v196;
      v26 = __p;
      if (v196 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v196 = v24;
      operator delete(v26);
    }

    v27 = v193;
    if (v193)
    {
      v28 = v194;
      v29 = v193;
      if (v194 != v193)
      {
        do
        {
          v60 = *--v28;
          v59 = v60;
          *v28 = 0;
          if (v60)
          {
            MEMORY[0x259C63150](v59, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        goto LABEL_332;
      }

LABEL_333:
      v194 = v27;
      operator delete(v29);
    }

LABEL_334:
    v112 = v189;
    if (v189 == v192)
    {
      return v1;
    }

    goto LABEL_253;
  }

  return v1;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v200[6] = *MEMORY[0x277D85DE8];
  v170 = a4;
  v171 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = *(a7 + 4);
  }

  else
  {
    v18 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v160 = a6;
  v161[0] = 0;
  v162 = 0;
  v163 = v16;
  v164 = v17;
  v165 = v18;
  v166 = a9;
  v19 = a5;
  v167 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v160);
    if (v162 == 1)
    {
      v162 = 0;
    }

    mlir::OperationName::OperationName(v161, "mps.depthwise_conv_3d_data_gradient", 35, Context);
    v162 = 1;
    v19 = v171;
  }

  v168 = a4;
  v169 = a5;
  if (v19 < 2 || (v21 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DepthwiseConv3DDataGradientOpAdaptor::verify(&v160, v21) & 1) == 0))
  {
    v42 = mlir::Float32Type::get(this, a2);
LABEL_25:
    v43 = mlir::UnrankedTensorType::get(v42);
    goto LABEL_26;
  }

  v22 = mlir::ValueRange::dereference_iterator(&v170, 0);
  v23 = mlir::ValueRange::dereference_iterator(&v170, 1);
  v24 = 0;
  if (v171 == 3)
  {
    v24 = mlir::ValueRange::dereference_iterator(&v170, 2);
  }

  v25 = v163;
  v26 = *(&v164 + 1);
  v152 = *(&v163 + 1);
  v153 = v164;
  v151 = v165;
  v28 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v185 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = v185;
  v186 = v28;
  mlir::TypeRange::TypeRange(&v197, &v185, 2uLL);
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v27);
  v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v28);
  if (!v30 || ((v32 = *(*v30 + 136), v32 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) ? (v33 = v31 == 0) : (v33 = 1), v33 || *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
    v42 = v29;
    goto LABEL_25;
  }

  v150 = v26;
  v194 = v196;
  v195 = 0x500000000;
  if (!v24)
  {
    if (v32 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v48 = v30;
    }

    else
    {
      v48 = 0;
    }

    v155 = v48;
    if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v49 = v28;
    }

    else
    {
      v49 = 0;
    }

    v154 = v49;
    Shape = mlir::RankedTensorType::getShape(&v155);
    v52 = v51;
    v191 = v193;
    v192 = 0x500000000;
    v188 = v190;
    v189 = 0x500000000;
    v185 = v187;
    v186 = 0x600000000;
    v182 = v184;
    v183 = 0x300000000;
    v179 = v181;
    v180 = 0x300000000;
    v158 = v152;
    v159 = v151;
    v156 = v25;
    v157 = v153;
    if (v25)
    {
      SInt = mlir::IntegerAttr::getSInt(&v156);
      v54 = v186;
      if (v186 == 6)
      {
        v55 = v183;
        v56 = v183 > 3;
        if (v183 == 3)
        {
          goto LABEL_47;
        }

        goto LABEL_57;
      }

      if (v186 > 6)
      {
LABEL_56:
        LODWORD(v186) = 6;
        v55 = v183;
        v56 = v183 > 3;
        if (v183 == 3)
        {
LABEL_47:
          v57 = v180;
          v58 = v180 > 3;
          if (v180 == 3)
          {
            goto LABEL_48;
          }

          goto LABEL_74;
        }

LABEL_57:
        if (!v56)
        {
          if (HIDWORD(v183) <= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memset_pattern16(v182 + 8 * v55, &unk_257369660, 24 - 8 * v55);
        }

        LODWORD(v183) = 3;
        v57 = v180;
        v58 = v180 > 3;
        if (v180 == 3)
        {
LABEL_48:
          v59 = v192;
          v60 = v192 > 5;
          if (v192 == 5)
          {
            goto LABEL_49;
          }

          goto LABEL_80;
        }

LABEL_74:
        if (!v58)
        {
          if (HIDWORD(v180) <= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memset_pattern16(v179 + 8 * v57, &unk_257369660, 24 - 8 * v57);
        }

        LODWORD(v180) = 3;
        v59 = v192;
        v60 = v192 > 5;
        if (v192 == 5)
        {
LABEL_49:
          v61 = v189;
          v62 = v189 > 5;
          if (v189 == 5)
          {
            goto LABEL_50;
          }

          goto LABEL_85;
        }

LABEL_80:
        if (!v60)
        {
          if (HIDWORD(v192) <= 4)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v191 + 8 * v59, 40 - 8 * v59);
        }

        LODWORD(v192) = 5;
        v61 = v189;
        v62 = v189 > 5;
        if (v189 == 5)
        {
LABEL_50:
          v63 = v52 - 4;
          if (v52 < 4)
          {
            goto LABEL_125;
          }

          goto LABEL_90;
        }

LABEL_85:
        if (!v62)
        {
          if (HIDWORD(v189) <= 4)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v188 + 8 * v61, 40 - 8 * v61);
        }

        LODWORD(v189) = 5;
        v63 = v52 - 4;
        if (v52 < 4)
        {
LABEL_125:
          if (v159)
          {
            if (mlir::DenseElementsAttr::getNumElements(&v159) == 3)
            {
              LODWORD(v183) = 0;
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v197, v159, 0);
              v94 = v159;
              NumElements = mlir::DenseElementsAttr::getNumElements(&v159);
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v172, v94, NumElements);
              for (; v199[0] != v174[0]; ++v199[0])
              {
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v197, &v175);
                if (v176 > 0x40)
                {
                  v133 = *v175;
                }

                else if (v176)
                {
                  v133 = (v175 << -v176) >> -v176;
                }

                else
                {
                  v133 = 0;
                }

                if (v183 >= HIDWORD(v183))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(v182 + v183) = v133;
                LODWORD(v183) = v183 + 1;
                if (v176 >= 0x41 && v175)
                {
                  MEMORY[0x259C63150](v175, 0x1000C8000313F17);
                }
              }
            }
          }

          if (v152)
          {
            if (mlir::DenseElementsAttr::getNumElements(&v158) == 3)
            {
              LODWORD(v180) = 0;
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v197, v158, 0);
              v96 = v158;
              v97 = mlir::DenseElementsAttr::getNumElements(&v158);
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v172, v96, v97);
              for (; v199[0] != v174[0]; ++v199[0])
              {
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v197, &v175);
                if (v176 > 0x40)
                {
                  v134 = *v175;
                }

                else if (v176)
                {
                  v134 = (v175 << -v176) >> -v176;
                }

                else
                {
                  v134 = 0;
                }

                if (v180 >= HIDWORD(v180))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(v179 + v180) = v134;
                LODWORD(v180) = v180 + 1;
                if (v176 >= 0x41 && v175)
                {
                  MEMORY[0x259C63150](v175, 0x1000C8000313F17);
                }
              }
            }
          }

          if (v153)
          {
            if (mlir::DenseElementsAttr::getNumElements(&v157) == 6)
            {
              LODWORD(v186) = 0;
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v197, v157, 0);
              v98 = v157;
              v99 = mlir::DenseElementsAttr::getNumElements(&v157);
              mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v172, v98, v99);
              for (; v199[0] != v174[0]; ++v199[0])
              {
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v197, &v175);
                if (v176 > 0x40)
                {
                  v135 = *v175;
                }

                else if (v176)
                {
                  v135 = (v175 << -v176) >> -v176;
                }

                else
                {
                  v135 = 0;
                }

                if (v186 >= HIDWORD(v186))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(v185 + v186) = v135;
                LODWORD(v186) = v186 + 1;
                if (v176 >= 0x41 && v175)
                {
                  MEMORY[0x259C63150](v175, 0x1000C8000313F17);
                }
              }
            }
          }

          if (v150)
          {
            v100 = *(v150 + 8);
          }

          else
          {
            v100 = 2;
          }

          v101 = mlir::RankedTensorType::getShape(&v154);
          v175 = &v177;
          v177 = xmmword_25737C738;
          v178 = unk_25737C748;
          v176 = 0x400000004;
          if (SInt >= 0)
          {
            v103 = v52;
          }

          else
          {
            v103 = 0;
          }

          if (v102 == 4)
          {
            v104 = SInt - v103 + 4;
            if (v104 <= 3)
            {
              *&v177 = *(v101 + 8 * v104);
              if (v104)
              {
                v105 = -1;
              }

              else
              {
                v105 = 0;
              }

              *(&v177 + 1) = *(v101 + 8 * v105 + 8);
              if (v104 <= 1)
              {
                v106 = 0;
              }

              else
              {
                v106 = -1;
              }

              *&v178 = *(v101 + 8 * v106 + 16);
              if (v104 <= 2)
              {
                v107 = 0;
              }

              else
              {
                v107 = -1;
              }

              *(&v178 + 1) = *(v101 + 8 * v107 + 24);
            }
          }

          v172 = v174;
          v173 = 0x500000000;
          v108 = v192;
          v197 = v199;
          v198 = 0x800000000;
          if (!v192)
          {
            goto LABEL_247;
          }

          if (v192 >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v109 = v199;
          bzero(v199, 8 * v192);
          LODWORD(v198) = v108;
          if (v108 < 4)
          {
LABEL_245:
            if (v109 != v199)
            {
              free(v109);
            }

LABEL_247:
            v43 = mlir::RankedTensorType::get(v172, v173, v29, 0);
            v148 = v43;
            if (v172 != v174)
            {
              free(v172);
              v43 = v148;
            }

            if (v175 != &v177)
            {
              free(v175);
              v43 = v148;
            }

            if (v179 != v181)
            {
              free(v179);
              v43 = v148;
            }

            if (v182 != v184)
            {
              free(v182);
              v43 = v148;
            }

            if (v185 != v187)
            {
              free(v185);
              v43 = v148;
            }

            if (v188 != v190)
            {
              free(v188);
              v43 = v148;
            }

            if (v191 != v193)
            {
              free(v191);
              v43 = v148;
            }

            goto LABEL_261;
          }

          v110 = v108 - 3;
          v111 = v191;
          v112 = v108 - 4;
          if (v108 != 4)
          {
            v113 = 0;
            if (v112 < 4)
            {
              goto LABEL_162;
            }

            if ((v199 - v191) <= 0x1F)
            {
              goto LABEL_162;
            }

            v113 = v112 & 0xFFFFFFFFFFFFFFFCLL;
            v114 = (v191 + 16);
            v115 = v200;
            v116 = v112 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v117 = *v114;
              *(v115 - 1) = *(v114 - 1);
              *v115 = v117;
              v114 += 2;
              v115 += 2;
              v116 -= 4;
            }

            while (v116);
            if (v112 != v113)
            {
LABEL_162:
              v118 = v108 - v113 - 4;
              v119 = v113;
              v120 = &v199[v113];
              v121 = &v111[v119];
              do
              {
                v122 = *v121++;
                *v120++ = v122;
                --v118;
              }

              while (v118);
            }
          }

          v123 = v175;
          v199[v112] = *v175;
          v124 = v182;
          v125 = v179;
          v126 = v185;
          v127 = v111[v110];
          v128 = 0x8000000000000000;
          v129 = 0x8000000000000000;
          if (v127 != 0x8000000000000000)
          {
            v130 = *v182;
            v131 = v123[1];
            if (v100 > 1)
            {
              if (v100 == 4 || v100 == 2)
              {
                v127 *= v130;
              }

LABEL_210:
              v129 = v127;
              if (v131 == 0x8000000000000000)
              {
                goto LABEL_212;
              }

              goto LABEL_211;
            }

            v132 = *v179 * (v131 - 1) + 1;
            if (v100)
            {
              if (v100 == 1)
              {
                v127 = v132 + v130 * (v127 - 1);
                if (v131 == 0x8000000000000000)
                {
                  v127 = 0x8000000000000000;
                }
              }

              goto LABEL_210;
            }

            v129 = 0x8000000000000000;
            if (v131 != 0x8000000000000000)
            {
              v127 = v132 + v130 * (v127 - 1) - (*v185 + *(v185 + 1));
LABEL_211:
              v129 = v127 & ~(v127 >> 63);
            }
          }

LABEL_212:
          v199[v110] = v129;
          v136 = v111[v108 - 2];
          if (v136 == 0x8000000000000000)
          {
            goto LABEL_224;
          }

          v137 = v124[1];
          v138 = v123[2];
          if (v100 > 1)
          {
            if (v100 == 2 || v100 == 4)
            {
              v136 *= v137;
            }
          }

          else
          {
            v139 = v125[1] * (v138 - 1) + 1;
            if (!v100)
            {
              v128 = 0x8000000000000000;
              if (v138 == 0x8000000000000000)
              {
LABEL_224:
                v199[v108 - 2] = v128;
                v140 = v111[v108 - 1];
                v141 = 0x8000000000000000;
                if (v140 != 0x8000000000000000)
                {
                  v142 = v124[2];
                  v143 = v123[3];
                  if (v100 > 1)
                  {
                    if (v100 == 2 || v100 == 4)
                    {
                      v140 *= v142;
                    }
                  }

                  else
                  {
                    v144 = v125[2] * (v143 - 1) + 1;
                    if (!v100)
                    {
                      v141 = 0x8000000000000000;
                      if (v143 == 0x8000000000000000)
                      {
                        goto LABEL_236;
                      }

                      v140 = v144 + v142 * (v140 - 1) - (v126[4] + v126[5]);
                      goto LABEL_235;
                    }

                    if (v100 == 1)
                    {
                      v140 = v144 + v142 * (v140 - 1);
                      if (v143 == 0x8000000000000000)
                      {
                        v140 = 0x8000000000000000;
                      }
                    }
                  }

                  v141 = v140;
                  if (v143 != 0x8000000000000000)
                  {
LABEL_235:
                    v141 = v140 & ~(v140 >> 63);
                  }
                }

LABEL_236:
                v199[v108 - 1] = v141;
                if (v173 != v108)
                {
                  if (v173 <= v108)
                  {
                    if (HIDWORD(v173) < v108)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    if (v173 != v108)
                    {
                      bzero(v172 + 8 * v173, 8 * (v108 - v173));
                    }
                  }

                  LODWORD(v173) = v108;
                  v109 = v197;
                }

                v145 = v188;
                v146 = v172;
                do
                {
                  v147 = *v145++;
                  *v146++ = v109[v147];
                  --v108;
                }

                while (v108);
                goto LABEL_245;
              }

              v136 = v139 + v137 * (v136 - 1) - (v126[2] + v126[3]);
LABEL_223:
              v128 = v136 & ~(v136 >> 63);
              goto LABEL_224;
            }

            if (v100 == 1)
            {
              if (v138 == 0x8000000000000000)
              {
                v136 = 0x8000000000000000;
              }

              else
              {
                v136 = v139 + v137 * (v136 - 1);
              }
            }
          }

          v128 = v136;
          if (v138 == 0x8000000000000000)
          {
            goto LABEL_224;
          }

          goto LABEL_223;
        }

LABEL_90:
        v70 = (v52 & (SInt >> 63)) + SInt;
        if (v70 <= v63)
        {
          v71 = v63;
        }

        else
        {
          v71 = (v52 & (SInt >> 63)) + SInt;
        }

        if (v70 >= v52)
        {
          v72 = v63;
        }

        else
        {
          v72 = v71;
        }

        v73 = v52 - 4;
        if (v52 != 4)
        {
          if (v52 == 5)
          {
            goto LABEL_104;
          }

          if (v52 > HIDWORD(v189))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v188 + 40, 8 * (v52 - 5));
        }

        LODWORD(v189) = v52;
LABEL_104:
        v74 = v188;
        v75 = v52 & 0x7FFFFFFFFFFFFFFCLL;
        v76 = vdupq_n_s64(v72);
        v77 = vdupq_n_s64(v73);
        v78 = xmmword_2573686A0;
        v79 = (v188 + 16);
        v80 = vdupq_n_s64(2uLL);
        v81 = vdupq_n_s64(1uLL);
        v82 = vdupq_n_s64(3uLL);
        v83 = vdupq_n_s64(4uLL);
        v84 = v52 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v85 = vaddq_s64(v78, v80);
          v79[-1] = vbslq_s8(vorrq_s8(vcgtq_s64(v78, v76), vcgtq_s64(v77, v78)), v78, vbslq_s8(vcgtq_s64(v76, v78), vaddq_s64(v78, v81), v77));
          *v79 = vbslq_s8(vorrq_s8(vcgtq_s64(v85, v76), vcgtq_s64(v77, v85)), v85, vbslq_s8(vcgtq_s64(v76, v85), vaddq_s64(v78, v82), v77));
          v78 = vaddq_s64(v78, v83);
          v79 += 2;
          v84 -= 4;
        }

        while (v84);
        for (; v52 != v75; ++v75)
        {
          if (v75 < v72)
          {
            v86 = v75 + 1;
          }

          else
          {
            v86 = v52 - 4;
          }

          if (v75 < v73 || v75 > v72)
          {
            v86 = v75;
          }

          v74[v75] = v86;
        }

        if (v52 != v192)
        {
          if (v52 >= v192)
          {
            if (v52 > HIDWORD(v192))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v52 != v192)
            {
              bzero(v191 + 8 * v192, 8 * (v52 - v192));
            }
          }

          LODWORD(v192) = v52;
        }

        v88 = v188;
        v89 = v191;
        v90 = v52;
        do
        {
          v92 = *Shape++;
          v91 = v92;
          v93 = *v88++;
          v89[v93] = v91;
          --v90;
        }

        while (v90);
        goto LABEL_125;
      }

      if (HIDWORD(v186) <= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    else
    {
      v54 = 0;
      SInt = -4;
    }

    bzero(v185 + 8 * v54, 48 - 8 * v54);
    goto LABEL_56;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v24, &v194) & 1) == 0)
  {
    v43 = mlir::UnrankedTensorType::get(v29);
LABEL_261:
    v68 = 0;
    goto LABEL_262;
  }

  v34 = v195;
  if (!v195)
  {
    goto LABEL_61;
  }

  v35 = v194;
  v36 = (v195 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v37 = v194;
  if (v36 >= 3)
  {
    v38 = v36 + 1;
    v37 = &v194->i8[8 * (v38 & 0x3FFFFFFFFFFFFFFCLL)];
    v39 = v194 + 1;
    v40.i64[0] = -1;
    v40.i64[1] = -1;
    v41 = v38 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v46 = vmovn_s64(vceqq_s64(v39[-1], v40));
      if (v46.i8[0])
      {
        v39[-1].i64[0] = 0x8000000000000000;
        if ((v46.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else if ((v46.i8[4] & 1) == 0)
      {
LABEL_31:
        v47 = vmovn_s64(vceqq_s64(*v39, v40));
        if (v47.i8[0])
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      v39[-1].i64[1] = 0x8000000000000000;
      v47 = vmovn_s64(vceqq_s64(*v39, v40));
      if (v47.i8[0])
      {
LABEL_32:
        v39->i64[0] = 0x8000000000000000;
        if (v47.i8[4])
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

LABEL_36:
      if (v47.i8[4])
      {
LABEL_37:
        v39->i64[1] = 0x8000000000000000;
      }

LABEL_28:
      v39 += 2;
      v41 -= 4;
      if (!v41)
      {
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_61;
        }

        break;
      }
    }
  }

  v69 = &v35->i8[8 * v34];
  do
  {
    if (*v37 == -1)
    {
      *v37 = 0x8000000000000000;
    }

    v37 += 8;
  }

  while (v37 != v69);
LABEL_61:
  v197 = v27;
  v64 = mlir::RankedTensorType::getShape(&v197);
  v197 = v199;
  v198 = 0x500000000;
  if (v66)
  {
    v43 = mlir::RankedTensorType::get(v197, v198, v29, 0);
  }

  else
  {
    v43 = 0;
  }

  if (v197 != v199)
  {
    v67 = v43;
    free(v197);
    v43 = v67;
  }

  v68 = v66 ^ 1;
LABEL_262:
  if (v194 != v196)
  {
    v149 = v43;
    free(v194);
    v43 = v149;
  }

  if (v68)
  {
    return 0;
  }

LABEL_26:
  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v44) = v43;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  v58 = a1[4];
  if (!v58)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v67;
      v22 = __p;
      if (v67 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v67 = v20;
      operator delete(v22);
    }

    v23 = v64;
    if (v64)
    {
      v24 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v54 = a1[5];
  if (!v54)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v67;
      v30 = __p;
      if (v67 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v67 = v28;
      operator delete(v30);
    }

    v23 = v64;
    if (v64)
    {
      v31 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v23);
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if (!a1[6])
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'padding_style'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v67;
      v36 = __p;
      if (v67 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v67 = v34;
      operator delete(v36);
    }

    v23 = v64;
    if (v64)
    {
      v37 = v65;
      v25 = v64;
      if (v65 != v64)
      {
        do
        {
          v39 = *--v37;
          v38 = v39;
          *v37 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v37 != v23);
        goto LABEL_85;
      }

LABEL_86:
      v65 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v19;
  }

  v53 = a1[7];
  if (!v53)
  {
    v55 = "'mps.depthwise_conv_3d_data_gradient' op requires attribute 'strides'";
    v57 = 259;
    mlir::emitError(a2, &v55, &v60);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v69 != 1)
    {
      return v19;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v23 = v64;
    if (v64)
    {
      v43 = v65;
      v25 = v64;
      if (v65 != v64)
      {
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

        while (v43 != v23);
LABEL_85:
        v25 = v64;
        goto LABEL_86;
      }

      goto LABEL_86;
    }

    goto LABEL_87;
  }

  v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v53);
  v56 = v4;
  Type = mlir::ElementsAttr::getType(&v55);
  v60 = mlir::TensorType::operator mlir::ShapedType(&Type);
  v61 = v5;
  Shape = mlir::ShapedType::getShape(&v60);
  v59 = 3;
  if (v7 == 1 && *Shape == v59)
  {
    v48 = v53;
    v49 = mlir::DenseElementsAttr::getType(&v48);
    v50 = v8;
    ElementType = mlir::ShapedType::getElementType(&v49);
    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v58);
      v56 = v9;
      Type = mlir::ElementsAttr::getType(&v55);
      v60 = mlir::TensorType::operator mlir::ShapedType(&Type);
      v61 = v10;
      v11 = mlir::ShapedType::getShape(&v60);
      v59 = 3;
      if (v12 == 1 && *v11 == v59 && (v48 = v58, v49 = mlir::DenseElementsAttr::getType(&v48), v50 = v13, ElementType = mlir::ShapedType::getElementType(&v49), mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
        v55 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v54);
        v56 = v14;
        Type = mlir::ElementsAttr::getType(&v55);
        v60 = mlir::TensorType::operator mlir::ShapedType(&Type);
        v61 = v15;
        v16 = mlir::ShapedType::getShape(&v60);
        v59 = 6;
        if (v17 == 1 && *v16 == v59 && (v48 = v54, v49 = mlir::DenseElementsAttr::getType(&v48), v50 = v18, ElementType = mlir::ShapedType::getElementType(&v49), mlir::Type::isUnsignedInteger(&ElementType, 64)))
        {
          if (!v3)
          {
            return 1;
          }

          v55 = v3;
          v60 = mlir::IntegerAttr::getType(&v55);
          if (mlir::Type::isSignedInteger(&v60, 32))
          {
            return 1;
          }

          v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'channelAxis' failed to satisfy constraint: 32-bit signed integer attribute";
        }

        else
        {
          v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        }
      }

      else
      {
        v47 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      }

      v55 = v47;
      v57 = 259;
      mlir::emitError(a2, &v55, &v60);
      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v60);
      return v19;
    }
  }

  v55 = "'mps.depthwise_conv_3d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v57 = 259;
  mlir::emitError(a2, &v55, &v60);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::verify(mlir::Operation **this)
{
  v181 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 9);
  v4 = v3[7];
  v5 = v3[3];
  v6 = v3[11];
  v161 = *(*this + 14);
  v162 = v2;
  v7 = *(v2 + 11);
  v159 = *(v2 + 12);
  v160 = v7;
  if (v161)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v161) != 3 || (mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v161, 0), v1 = v161, NumElements = mlir::DenseElementsAttr::getNumElements(&v161), mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v1, NumElements), v153 == v158))
    {
LABEL_4:
      if (!v160)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v155);
      if (v156 > 0x40)
      {
        if (*v155 <= 0)
        {
          goto LABEL_103;
        }
      }

      else if (!v156 || (v155 << -v156) >> -v156 <= 0)
      {
LABEL_103:
        v168 = 259;
        mlir::OpState::emitOpError(&v162, &v165, &v169);
        if (v156 > 0x40)
        {
          v64 = *v155;
          if (!v169)
          {
            goto LABEL_117;
          }
        }

        else
        {
          if (v156)
          {
            v64 = (v155 << -v156) >> -v156;
          }

          else
          {
            v64 = 0;
          }

          if (!v169)
          {
            goto LABEL_117;
          }
        }

        LODWORD(v163) = 2;
        *(&v163 + 1) = v64;
        if (v172 >= v173)
        {
          if (v171 > &v163 || v171 + 24 * v172 <= &v163)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v66 = v171 + 24 * v172;
        v67 = v163;
        *(v66 + 2) = v164;
        *v66 = v67;
        v68 = ++v172;
        if (v169)
        {
          LODWORD(v163) = 3;
          *(&v163 + 1) = ", all values should be positive.";
          v164 = 32;
          if (v68 >= v173)
          {
            if (v171 > &v163 || v171 + 24 * v68 <= &v163)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v69 = v171 + 24 * v172;
          v70 = v163;
          *(v69 + 2) = v164;
          *v69 = v70;
          ++v172;
        }

LABEL_117:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
        if (v169)
        {
          mlir::InFlightDiagnostic::report(&v169);
        }

        if (v180 == 1)
        {
          if (v179 != &v180)
          {
            free(v179);
          }

          v71 = __p;
          if (__p)
          {
            v72 = v178;
            v73 = __p;
            if (v178 != __p)
            {
              do
              {
                v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
              }

              while (v72 != v71);
              v73 = __p;
            }

            v178 = v71;
            operator delete(v73);
          }

          v74 = v175;
          if (v175)
          {
            v75 = v176;
            v76 = v175;
            if (v176 != v175)
            {
              do
              {
                v78 = *--v75;
                v77 = v78;
                *v75 = 0;
                if (v78)
                {
                  MEMORY[0x259C63150](v77, 0x1000C8077774924);
                }
              }

              while (v75 != v74);
              v76 = v175;
            }

            v176 = v74;
            operator delete(v76);
          }

          if (v171 != v174)
          {
            free(v171);
          }
        }

        v65 = 0;
        if (v156 < 0x41)
        {
          goto LABEL_140;
        }

LABEL_138:
        if (v155)
        {
          MEMORY[0x259C63150](v155, 0x1000C8000313F17);
        }

        goto LABEL_140;
      }

      v65 = 1;
      if (v156 >= 0x41)
      {
        goto LABEL_138;
      }

LABEL_140:
      if (!v65)
      {
        return v1;
      }

      if (++v153 == v158)
      {
        goto LABEL_4;
      }
    }
  }

  if (!v160)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (mlir::DenseElementsAttr::getNumElements(&v160) == 3)
  {
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v160, 0);
    v9 = v160;
    v10 = mlir::DenseElementsAttr::getNumElements(&v160);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v9, v10);
    while (v153 != v158)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v155);
      if (v156 > 0x40)
      {
        if (*v155 <= 0)
        {
          goto LABEL_154;
        }
      }

      else if (!v156 || (v155 << -v156) >> -v156 <= 0)
      {
LABEL_154:
        v168 = 259;
        mlir::OpState::emitOpError(&v162, &v165, &v169);
        if (v156 > 0x40)
        {
          v79 = *v155;
          if (!v169)
          {
            goto LABEL_168;
          }
        }

        else
        {
          if (v156)
          {
            v79 = (v155 << -v156) >> -v156;
          }

          else
          {
            v79 = 0;
          }

          if (!v169)
          {
            goto LABEL_168;
          }
        }

        LODWORD(v163) = 2;
        *(&v163 + 1) = v79;
        if (v172 >= v173)
        {
          if (v171 > &v163 || v171 + 24 * v172 <= &v163)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v81 = v171 + 24 * v172;
        v82 = v163;
        *(v81 + 2) = v164;
        *v81 = v82;
        v83 = ++v172;
        if (v169)
        {
          LODWORD(v163) = 3;
          *(&v163 + 1) = ", all values should be positive.";
          v164 = 32;
          if (v83 >= v173)
          {
            if (v171 > &v163 || v171 + 24 * v83 <= &v163)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v84 = v171 + 24 * v172;
          v85 = v163;
          *(v84 + 2) = v164;
          *v84 = v85;
          ++v172;
        }

LABEL_168:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
        if (v169)
        {
          mlir::InFlightDiagnostic::report(&v169);
        }

        if (v180 == 1)
        {
          if (v179 != &v180)
          {
            free(v179);
          }

          v86 = __p;
          if (__p)
          {
            v87 = v178;
            v88 = __p;
            if (v178 != __p)
            {
              do
              {
                v87 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v87 - 1);
              }

              while (v87 != v86);
              v88 = __p;
            }

            v178 = v86;
            operator delete(v88);
          }

          v89 = v175;
          if (v175)
          {
            v90 = v176;
            v91 = v175;
            if (v176 != v175)
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
              v91 = v175;
            }

            v176 = v89;
            operator delete(v91);
          }

          if (v171 != v174)
          {
            free(v171);
          }
        }

        v80 = 0;
        if (v156 < 0x41)
        {
          goto LABEL_191;
        }

LABEL_189:
        if (v155)
        {
          MEMORY[0x259C63150](v155, 0x1000C8000313F17);
        }

        goto LABEL_191;
      }

      v80 = 1;
      if (v156 >= 0x41)
      {
        goto LABEL_189;
      }

LABEL_191:
      if (!v80)
      {
        return v1;
      }

      ++v153;
    }
  }

LABEL_9:
  if (v159 && mlir::DenseElementsAttr::getNumElements(&v159) == 6)
  {
    v151 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v152, v159, 0);
    v11 = v159;
    v12 = mlir::DenseElementsAttr::getNumElements(&v159);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v157, v11, v12);
    if (v153 == v158)
    {
LABEL_12:
      v6 = v151;
      goto LABEL_13;
    }

    v94 = 0x1000C8000313F17;
    while (1)
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v152, &v155);
      if (v156 > 0x40)
      {
        break;
      }

      if (v156)
      {
        v96 = (v155 << -v156) >> -v156;
        if ((v96 & 0x8000000000000000) == 0)
        {
          goto LABEL_208;
        }

LABEL_211:
        v165 = v95;
        v168 = 259;
        mlir::OpState::emitOpError(&v162, &v165, &v169);
        if (v156 > 0x40)
        {
          v97 = *v155;
          if (!v169)
          {
            goto LABEL_222;
          }
        }

        else
        {
          if (v156)
          {
            v97 = (v155 << -v156) >> -v156;
          }

          else
          {
            v97 = 0;
          }

          if (!v169)
          {
            goto LABEL_222;
          }
        }

        LODWORD(v163) = 2;
        *(&v163 + 1) = v97;
        if (v172 >= v173)
        {
          if (v171 > &v163 || v171 + 24 * v172 <= &v163)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v98 = v171 + 24 * v172;
        v99 = v163;
        *(v98 + 2) = v164;
        *v98 = v99;
        v100 = ++v172;
        if (v169)
        {
          LODWORD(v163) = 3;
          *(&v163 + 1) = ", all values should be non-negative.";
          v164 = 36;
          if (v100 >= v173)
          {
            if (v171 > &v163 || v171 + 24 * v100 <= &v163)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v101 = v171 + 24 * v172;
          v102 = v163;
          *(v101 + 2) = v164;
          *v101 = v102;
          ++v172;
        }

LABEL_222:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
        if (v169)
        {
          mlir::InFlightDiagnostic::report(&v169);
        }

        if (v180 == 1)
        {
          if (v179 != &v180)
          {
            free(v179);
          }

          v103 = v95;
          v104 = __p;
          if (__p)
          {
            v105 = v178;
            v106 = __p;
            if (v178 != __p)
            {
              do
              {
                v105 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v105 - 1);
              }

              while (v105 != v104);
              v106 = __p;
            }

            v178 = v104;
            operator delete(v106);
          }

          v107 = v175;
          if (v175)
          {
            v108 = v94;
            v109 = v176;
            v110 = v175;
            if (v176 != v175)
            {
              do
              {
                v112 = *--v109;
                v111 = v112;
                *v109 = 0;
                if (v112)
                {
                  MEMORY[0x259C63150](v111, 0x1000C8077774924);
                }
              }

              while (v109 != v107);
              v110 = v175;
            }

            v176 = v107;
            operator delete(v110);
            v94 = v108;
          }

          v95 = v103;
          if (v171 != v174)
          {
            free(v171);
          }
        }

        if (v156 >= 0x41)
        {
LABEL_243:
          if (v155)
          {
            MEMORY[0x259C63150](v155, v94);
          }
        }

LABEL_203:
        if (v96 < 0)
        {
          return v1;
        }
      }

      if (++v153 == v158)
      {
        goto LABEL_12;
      }
    }

    v96 = *v155;
    if ((*v155 & 0x8000000000000000) != 0)
    {
      goto LABEL_211;
    }

LABEL_208:
    if (v156 >= 0x41)
    {
      goto LABEL_243;
    }

    goto LABEL_203;
  }

LABEL_13:
  v165 = *(v162 + 2 * ((*(v162 + 11) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v165, &v169);
  if (v170 > 0x40)
  {
    v15 = *v169;
    MEMORY[0x259C63150]();
    v14 = v15;
    if (!v4)
    {
LABEL_43:
      *&v163 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    if (v170)
    {
      v13 = (v169 << -v170) >> -v170;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = v13;
    if (!v4)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v16)
  {
    goto LABEL_43;
  }

  v17 = *(*v16 + 136);
  if (v17 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  *&v163 = v16;
  if (v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    mlir::RankedTensorType::getShape(&v163);
    v19 = v18;
    if (v18 <= 3)
    {
      v168 = 259;
      mlir::OpState::emitOpError(&v162, &v165, &v169);
      if (v169)
      {
        LODWORD(v152) = 2;
        *(&v152 + 1) = v19;
        if (v172 >= v173)
        {
          if (v171 > &v152 || v171 + 24 * v172 <= &v152)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v171 + 24 * v172;
        v21 = v152;
        *(v20 + 2) = v153;
        *v20 = v21;
        v22 = ++v172;
        if (v169)
        {
          LODWORD(v152) = 3;
          *(&v152 + 1) = ".";
          v153 = 1;
          if (v22 >= v173)
          {
            if (v171 > &v152 || v171 + 24 * v22 <= &v152)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v23 = v171 + 24 * v172;
          v24 = v152;
          *(v23 + 2) = v153;
          *v23 = v24;
          ++v172;
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
      if (v169)
      {
        mlir::InFlightDiagnostic::report(&v169);
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v178;
          v27 = __p;
          if (v178 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v178 = v25;
          operator delete(v27);
        }

        v28 = v175;
        if (v175)
        {
          v29 = v176;
          v30 = v175;
          if (v176 != v175)
          {
            do
            {
              v61 = *--v29;
              v60 = v61;
              *v29 = 0;
              if (v61)
              {
                MEMORY[0x259C63150](v60, 0x1000C8077774924);
              }
            }

            while (v29 != v28);
            goto LABEL_318;
          }

          goto LABEL_319;
        }

        goto LABEL_320;
      }

      return v1;
    }

    if (v14 >= 0)
    {
      v115 = v18;
    }

    else
    {
      v115 = 0;
    }

    if ((v14 - v115) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v168 = 259;
      mlir::OpState::emitOpError(&v162, &v165, &v169);
      if (v169)
      {
        LODWORD(v152) = 2;
        *(&v152 + 1) = v14;
        if (v172 >= v173)
        {
          if (v171 > &v152 || v171 + 24 * v172 <= &v152)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v116 = v171 + 24 * v172;
        v117 = v152;
        *(v116 + 2) = v153;
        *v116 = v117;
        v118 = ++v172;
        if (v169)
        {
          LODWORD(v152) = 3;
          *(&v152 + 1) = " for input rank ";
          v153 = 16;
          if (v118 >= v173)
          {
            if (v171 > &v152 || v171 + 24 * v118 <= &v152)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v119 = v171 + 24 * v172;
          v120 = v152;
          *(v119 + 2) = v153;
          *v119 = v120;
          v121 = ++v172;
          if (v169)
          {
            LODWORD(v152) = 2;
            *(&v152 + 1) = v19;
            if (v121 >= v173)
            {
              if (v171 > &v152 || v171 + 24 * v121 <= &v152)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v122 = v171 + 24 * v172;
            v123 = v152;
            *(v122 + 2) = v153;
            *v122 = v123;
            v124 = ++v172;
            if (v169)
            {
              LODWORD(v152) = 3;
              *(&v152 + 1) = ".";
              v153 = 1;
              if (v124 >= v173)
              {
                if (v171 > &v152 || v171 + 24 * v124 <= &v152)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v125 = v171 + 24 * v172;
              v126 = v152;
              *(v125 + 2) = v153;
              *v125 = v126;
              ++v172;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
      if (v169)
      {
        mlir::InFlightDiagnostic::report(&v169);
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v127 = __p;
        if (__p)
        {
          v128 = v178;
          v129 = __p;
          if (v178 != __p)
          {
            do
            {
              v128 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v128 - 1);
            }

            while (v128 != v127);
            v129 = __p;
          }

          v178 = v127;
          operator delete(v129);
        }

        v28 = v175;
        if (v175)
        {
          v130 = v176;
          v30 = v175;
          if (v176 != v175)
          {
            do
            {
              v132 = *--v130;
              v131 = v132;
              *v130 = 0;
              if (v132)
              {
                MEMORY[0x259C63150](v131, 0x1000C8077774924);
              }
            }

            while (v130 != v28);
            goto LABEL_318;
          }

          goto LABEL_319;
        }

        goto LABEL_320;
      }

      return v1;
    }
  }

LABEL_44:
  if (!v5 || (v31 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v155 = 0;
    goto LABEL_69;
  }

  v32 = *(*v31 + 136);
  if (v32 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v31 = 0;
  }

  v155 = v31;
  if (v32 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_69;
  }

  mlir::RankedTensorType::getShape(&v155);
  v34 = v33;
  if (v33 <= 3)
  {
    v168 = 259;
    mlir::OpState::emitOpError(&v162, &v165, &v169);
    if (v169)
    {
      LODWORD(v152) = 2;
      *(&v152 + 1) = v34;
      if (v172 >= v173)
      {
        if (v171 > &v152 || v171 + 24 * v172 <= &v152)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v171 + 24 * v172;
      v36 = v152;
      *(v35 + 2) = v153;
      *v35 = v36;
      v37 = ++v172;
      if (v169)
      {
        LODWORD(v152) = 3;
        *(&v152 + 1) = ".";
        v153 = 1;
        if (v37 >= v173)
        {
          if (v171 > &v152 || v171 + 24 * v37 <= &v152)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v171 + 24 * v172;
        v39 = v152;
        *(v38 + 2) = v153;
        *v38 = v39;
        ++v172;
      }
    }

    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
    if (v169)
    {
      mlir::InFlightDiagnostic::report(&v169);
    }

    if (v180 == 1)
    {
      if (v179 != &v180)
      {
        free(v179);
      }

      v40 = __p;
      if (__p)
      {
        v41 = v178;
        v42 = __p;
        if (v178 != __p)
        {
          do
          {
            v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
          }

          while (v41 != v40);
          v42 = __p;
        }

        v178 = v40;
        operator delete(v42);
      }

      v28 = v175;
      if (v175)
      {
        v43 = v176;
        v30 = v175;
        if (v176 != v175)
        {
          do
          {
            v63 = *--v43;
            v62 = v63;
            *v43 = 0;
            if (v63)
            {
              MEMORY[0x259C63150](v62, 0x1000C8077774924);
            }
          }

          while (v43 != v28);
LABEL_318:
          v30 = v175;
          goto LABEL_319;
        }

        goto LABEL_319;
      }

      goto LABEL_320;
    }

    return v1;
  }

  v133 = v14 >= 0 ? v33 : 0;
  if ((v14 - v133) > 0xFFFFFFFFFFFFFFFBLL)
  {
LABEL_69:
    v165 = v167;
    v166 = 0x500000000;
    v1 = 1;
    if ((mlir::matchConstantWithIntVector<long long>(v6, &v165) & 1) != 0 && v166 != 4)
    {
      v154 = 259;
      mlir::OpState::emitOpError(&v162, &v152, &v169);
      if (v169)
      {
        LODWORD(v157) = 3;
        v158 = 21;
        if (v172 >= v173)
        {
          if (v171 > &v157 || v171 + 24 * v172 <= &v157)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v171 + 24 * v172;
        v45 = v157;
        *(v44 + 2) = v158;
        *v44 = v45;
        v46 = ++v172;
        if (v169)
        {
          LODWORD(v157) = 5;
          *(&v157 + 1) = v166;
          if (v46 >= v173)
          {
            if (v171 > &v157 || v171 + 24 * v46 <= &v157)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v171 + 24 * v172;
          v48 = v157;
          *(v47 + 2) = v158;
          *v47 = v48;
          v49 = ++v172;
          if (v169)
          {
            LODWORD(v157) = 3;
            *(&v157 + 1) = " values.";
            v158 = 8;
            if (v49 >= v173)
            {
              if (v171 > &v157 || v171 + 24 * v49 <= &v157)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v50 = v171 + 24 * v172;
            v51 = v157;
            *(v50 + 2) = v158;
            *v50 = v51;
            ++v172;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
      if (v169)
      {
        mlir::InFlightDiagnostic::report(&v169);
      }

      if (v180 == 1)
      {
        if (v179 != &v180)
        {
          free(v179);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v178;
          v54 = __p;
          if (v178 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v178 = v52;
          operator delete(v54);
        }

        v55 = v175;
        if (v175)
        {
          v56 = v176;
          v57 = v175;
          if (v176 != v175)
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
            v57 = v175;
          }

          v176 = v55;
          operator delete(v57);
        }

        if (v171 != v174)
        {
          free(v171);
        }
      }
    }

    v113 = v165;
    if (v165 != v167)
    {
LABEL_258:
      free(v113);
      return v1;
    }

    return v1;
  }

  v168 = 259;
  mlir::OpState::emitOpError(&v162, &v165, &v169);
  if (v169)
  {
    LODWORD(v152) = 2;
    *(&v152 + 1) = v14;
    if (v172 >= v173)
    {
      if (v171 > &v152 || v171 + 24 * v172 <= &v152)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v134 = v171 + 24 * v172;
    v135 = v152;
    *(v134 + 2) = v153;
    *v134 = v135;
    v136 = ++v172;
    if (v169)
    {
      LODWORD(v152) = 3;
      *(&v152 + 1) = " for input gradient rank ";
      v153 = 25;
      if (v136 >= v173)
      {
        if (v171 > &v152 || v171 + 24 * v136 <= &v152)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v137 = v171 + 24 * v172;
      v138 = v152;
      *(v137 + 2) = v153;
      *v137 = v138;
      v139 = ++v172;
      if (v169)
      {
        LODWORD(v152) = 2;
        *(&v152 + 1) = v34;
        if (v139 >= v173)
        {
          if (v171 > &v152 || v171 + 24 * v139 <= &v152)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v140 = v171 + 24 * v172;
        v141 = v152;
        *(v140 + 2) = v153;
        *v140 = v141;
        v142 = ++v172;
        if (v169)
        {
          LODWORD(v152) = 3;
          *(&v152 + 1) = ".";
          v153 = 1;
          if (v142 >= v173)
          {
            if (v171 > &v152 || v171 + 24 * v142 <= &v152)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v143 = v171 + 24 * v172;
          v144 = v152;
          *(v143 + 2) = v153;
          *v143 = v144;
          ++v172;
        }
      }
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v169);
  if (v169)
  {
    mlir::InFlightDiagnostic::report(&v169);
  }

  if (v180 == 1)
  {
    if (v179 != &v180)
    {
      free(v179);
    }

    v145 = __p;
    if (__p)
    {
      v146 = v178;
      v147 = __p;
      if (v178 != __p)
      {
        do
        {
          v146 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v146 - 1);
        }

        while (v146 != v145);
        v147 = __p;
      }

      v178 = v145;
      operator delete(v147);
    }

    v28 = v175;
    if (v175)
    {
      v148 = v176;
      v30 = v175;
      if (v176 != v175)
      {
        do
        {
          v150 = *--v148;
          v149 = v150;
          *v148 = 0;
          if (v150)
          {
            MEMORY[0x259C63150](v149, 0x1000C8077774924);
          }
        }

        while (v148 != v28);
        goto LABEL_318;
      }

LABEL_319:
      v176 = v28;
      operator delete(v30);
    }

LABEL_320:
    v113 = v171;
    if (v171 == v174)
    {
      return v1;
    }

    goto LABEL_258;
  }

  return v1;
}

BOOL mlir::mps::DepthwiseConv3DWeightsGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v25[0] = a4;
  v25[1] = a5;
  if (a5 == 3)
  {
    v11 = mlir::ValueRange::dereference_iterator(v25, 0);
    v12 = mlir::ValueRange::dereference_iterator(v25, 1);
    v13 = mlir::ValueRange::dereference_iterator(v25, 2);
    v15 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
    v29[0] = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = v29[0];
    v29[1] = v15;
    mlir::TypeRange::TypeRange(&v26, v29, 2uLL);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v15);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v14);
    if (!v17 || (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id ? (v19 = v18 == 0) : (v19 = 1), v19 || *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
    {
      v21 = mlir::UnrankedTensorType::get(v16);
    }

    else
    {
      v26 = v28;
      v27 = 0x400000000;
      if (mlir::matchConstantWithIntVector<long long>(v13, &v26))
      {
        v20 = v27;
        if (v27 <= 3)
        {
          if (HIDWORD(v27) <= 3)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v26 + 8 * v27, 32 - 8 * v27);
          v20 = 4;
          LODWORD(v27) = 4;
        }

        v21 = mlir::RankedTensorType::get(v26, v20, v16, 0);
      }

      else
      {
        v21 = mlir::UnrankedTensorType::get(v16);
      }

      if (v26 != v28)
      {
        v24 = v21;
        free(v26);
        v21 = v24;
      }
    }

    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v23) = v21;
    ++*(a11 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::inferPool4DShape(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6, void *a7, int a8, unsigned __int8 a9, uint64_t *a10)
{
  v10 = *(a4 + 2);
  if (v10 >= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(a4 + 2);
  }

  if (v10 <= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 - v11;
  }

  v13 = *(a10 + 2);
  if (v10 != v13)
  {
    v14 = *(a4 + 2);
    if (v10 >= v13)
    {
      v120 = v11;
      v121 = a5;
      v122 = a4;
      v15 = a3;
      v16 = a6;
      v17 = a7;
      v18 = a8;
      if (*(a10 + 3) < v10)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero((*a10 + 8 * v13), 8 * (v10 - v13));
      v14 = v10;
      a8 = v18;
      a7 = v17;
      a6 = v16;
      a3 = v15;
      a5 = v121;
      a4 = v122;
      v11 = v120;
    }

    *(a10 + 2) = v14;
  }

  if (v12)
  {
    v19 = *a4;
    v20 = *a10;
    if (v12 < 4 || (*a10 - *a4) <= 0x1F)
    {
      v22 = 0;
LABEL_21:
      v27 = v12 - v22;
      v28 = 8 * v22;
      v29 = (v19 + v28);
      v30 = (v20 + v28);
      do
      {
        v31 = *v29++;
        *v30++ = v31;
        --v27;
      }

      while (v27);
      goto LABEL_23;
    }

    v22 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v23 = (v19 + 16);
    v24 = (v20 + 16);
    v25 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v12 != v22)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  if (v10)
  {
    v32 = *a4;
    v33 = *a5;
    v34 = *a10;
    if (a8 == 4 || a8 == 2)
    {
      v35 = v33 + 32;
      v36 = *(v32 + 8 * v12);
      v37 = (v35 - 8 * v11);
      v38 = *v37;
      if (*v37 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = *v37;
      }

      v40 = *(v32 + 8 * v12);
      if (v38 >= 2)
      {
        v40 = 0x8000000000000000;
        if (v36 != 0x8000000000000000)
        {
          v40 = v36 / v39;
          v41 = v36 / v39 * v39;
          if (v36 >= 0 && v41 != v36)
          {
            ++v40;
          }
        }
      }

      *(v34 + 8 * v12) = v40;
      if (v10 != 1)
      {
        v43 = *(v32 + 8 * (v12 + 1));
        v44 = *(v35 + 8 * (1 - v11));
        if (v44 <= 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = *(v35 + 8 * (1 - v11));
        }

        v46 = *(v32 + 8 * (v12 + 1));
        if (v44 >= 2)
        {
          v46 = 0x8000000000000000;
          if (v43 != 0x8000000000000000)
          {
            v46 = v43 / v45;
            v47 = v43 / v45 * v45;
            if (v43 >= 0 && v47 != v43)
            {
              ++v46;
            }
          }
        }

        *(v34 + 8 * (v12 + 1)) = v46;
        if (v10 != 2)
        {
          v49 = *(v32 + 8 * (v12 + 2));
          v50 = *(v35 + 8 * (2 - v11));
          if (v50 <= 1)
          {
            v51 = 1;
          }

          else
          {
            v51 = *(v35 + 8 * (2 - v11));
          }

          v52 = *(v32 + 8 * (v12 + 2));
          if (v50 >= 2)
          {
            v52 = 0x8000000000000000;
            if (v49 != 0x8000000000000000)
            {
              v52 = v49 / v51;
              v53 = v49 / v51 * v51;
              if (v49 >= 0 && v53 != v49)
              {
                ++v52;
              }
            }
          }

          *(v34 + 8 * (v12 + 2)) = v52;
          if (v10 != 3)
          {
            v55 = v12 + 3;
            v56 = *(v32 + 8 * (v12 + 3));
            v57 = *(v35 + 8 * (3 - v11));
            if (v57 <= 1)
            {
              v58 = 1;
            }

            else
            {
              v58 = v57;
            }

            if (v57 >= 2)
            {
              if (v56 == 0x8000000000000000)
              {
                v56 = 0x8000000000000000;
              }

              else
              {
                v116 = v56 / v58;
                v117 = v56 / v58 * v58;
                if (v56 < 0 || v117 == v56)
                {
                  v56 = v116;
                }

                else
                {
                  v56 = v116 + 1;
                }
              }
            }

LABEL_135:
            *(v34 + 8 * v55) = v56;
          }
        }
      }
    }

    else
    {
      v59 = a9;
      v60 = *a3;
      v61 = *a6;
      v62 = *a7;
      v63 = *(v32 + 8 * v12);
      v64 = 4 - v11;
      v65 = *(*a3 + 8 * (4 - v11));
      v66 = 0x8000000000000000;
      if (v65 != 0x8000000000000000 && v63 != 0x8000000000000000)
      {
        v68 = *(v62 + 16 * v64 + 8) & ~(*(v62 + 16 * v64 + 8) >> 63);
        v69 = *(v62 + 16 * v64) & ~(*(v62 + 16 * v64) >> 63);
        v70 = *(v61 + 8 * v64);
        if (v70 <= 1)
        {
          v70 = 1;
        }

        v71 = *(v33 + 8 * v64);
        if (v71 <= 1)
        {
          v71 = 1;
        }

        if (a8 == 1)
        {
          v68 = 0;
          v69 = 0;
        }

        v72 = v71 + v63 + v69 + v68 + ~(v70 * (v65 - 1));
        v73 = v72 / v71;
        v74 = v72 / v71 * v71;
        if (v72 >= 0)
        {
          v75 = a9;
        }

        else
        {
          v75 = a9 - 1;
        }

        if (v74 == v72)
        {
          v76 = 0;
        }

        else
        {
          v76 = v75;
        }

        v66 = (v73 + v76) & ~((v73 + v76) >> 63);
      }

      *(v34 + 8 * v12) = v66;
      if (v10 != 1)
      {
        v77 = v12 + 1;
        v78 = 5 - v11;
        v79 = *(v60 + 8 * (5 - v11));
        v80 = 0x8000000000000000;
        if (v79 != 0x8000000000000000)
        {
          v81 = *(v32 + 8 * v77);
          if (v81 != 0x8000000000000000)
          {
            v82 = *(v62 + 16 * v78 + 8) & ~(*(v62 + 16 * v78 + 8) >> 63);
            v83 = *(v62 + 16 * v78) & ~(*(v62 + 16 * v78) >> 63);
            v84 = *(v61 + 8 * v78);
            if (v84 <= 1)
            {
              v84 = 1;
            }

            v85 = *(v33 + 8 * v78);
            if (v85 <= 1)
            {
              v85 = 1;
            }

            if (a8 == 1)
            {
              v82 = 0;
              v83 = 0;
            }

            v86 = v85 + v81 + v83 + v82 + ~(v84 * (v79 - 1));
            v87 = v86 / v85;
            v88 = v86 / v85 * v85;
            if (v86 >= 0)
            {
              v89 = a9;
            }

            else
            {
              v89 = a9 - 1;
            }

            if (v88 == v86)
            {
              v90 = 0;
            }

            else
            {
              v90 = v89;
            }

            v80 = (v87 + v90) & ~((v87 + v90) >> 63);
          }
        }

        *(v34 + 8 * v77) = v80;
        if (v10 != 2)
        {
          v91 = v12 + 2;
          v92 = 6 - v11;
          v93 = *(v60 + 8 * (6 - v11));
          v94 = 0x8000000000000000;
          if (v93 != 0x8000000000000000)
          {
            v95 = *(v32 + 8 * v91);
            if (v95 != 0x8000000000000000)
            {
              v96 = *(v62 + 16 * v92 + 8) & ~(*(v62 + 16 * v92 + 8) >> 63);
              v97 = *(v62 + 16 * v92) & ~(*(v62 + 16 * v92) >> 63);
              v98 = *(v61 + 8 * v92);
              if (v98 <= 1)
              {
                v98 = 1;
              }

              v99 = *(v33 + 8 * v92);
              if (v99 <= 1)
              {
                v99 = 1;
              }

              if (a8 == 1)
              {
                v96 = 0;
                v97 = 0;
              }

              v100 = v99 + v95 + v97 + v96 + ~(v98 * (v93 - 1));
              v101 = v100 / v99;
              v102 = v100 / v99 * v99;
              if (v100 >= 0)
              {
                v103 = a9;
              }

              else
              {
                v103 = a9 - 1;
              }

              if (v102 == v100)
              {
                v104 = 0;
              }

              else
              {
                v104 = v103;
              }

              v94 = (v101 + v104) & ~((v101 + v104) >> 63);
            }
          }

          *(v34 + 8 * v91) = v94;
          if (v10 != 3)
          {
            v55 = v12 + 3;
            v105 = v11 ^ 7;
            v106 = *(v60 + 8 * (v11 ^ 7));
            v56 = 0x8000000000000000;
            if (v106 != 0x8000000000000000)
            {
              v107 = *(v32 + 8 * v55);
              if (v107 != 0x8000000000000000)
              {
                v108 = *(v62 + 16 * v105 + 8) & ~(*(v62 + 16 * v105 + 8) >> 63);
                v109 = *(v62 + 16 * v105) & ~(*(v62 + 16 * v105) >> 63);
                v110 = *(v61 + 8 * v105);
                if (v110 <= 1)
                {
                  v110 = 1;
                }

                v111 = *(v33 + 8 * v105);
                if (v111 <= 1)
                {
                  v111 = 1;
                }

                if (a8 == 1)
                {
                  v108 = 0;
                  v109 = 0;
                }

                v112 = v111 + v107 + v109 + v108 + ~(v110 * (v106 - 1));
                v113 = v112 / v111;
                v114 = v112 / v111 * v111;
                if (v112 < 0)
                {
                  v59 = a9 - 1;
                }

                if (v114 == v112)
                {
                  v115 = 0;
                }

                else
                {
                  v115 = v59;
                }

                v56 = (v113 + v115) & ~((v113 + v115) >> 63);
              }
            }

            goto LABEL_135;
          }
        }
      }
    }
  }

  return 1;
}