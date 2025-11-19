uint64_t mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = *MEMORY[0x277D85DE8];
  v40[0] = a4;
  v40[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v41 = a7[1];
    v42 = *(a7 + 8);
  }

  else
  {
    v42 = 0;
    v16 = 0uLL;
    v41 = 0u;
  }

  v30 = a6;
  v31[0] = 0;
  v32 = 0;
  v33 = v16;
  v34 = v41;
  v35 = v42;
  v36 = a9;
  v37 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(v31, "mps.singlegate_rnn_gradient", 27, Context);
    v32 = 1;
  }

  v38 = a4;
  v39 = a5;
  v18 = mlir::UnknownLoc::get(this, a2);
  if ((mlir::mps::SingleGateRNNGradientOpAdaptor::verify(&v30, v18) & 1) == 0)
  {
    goto LABEL_20;
  }

  *&v41 = a4;
  *(&v41 + 1) = a5;
  if (a5)
  {
    v20 = *(mlir::ValueRange::dereference_iterator(&v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(a11 + 8);
    if (v21 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v21) = v20;
    ++*(a11 + 8);
    *&v41 = a4;
    *(&v41 + 1) = a5;
    if (a5 != 1)
    {
      v22 = *(mlir::ValueRange::dereference_iterator(&v41, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
      v23 = *(a11 + 8);
      if (v23 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v23) = v22;
      ++*(a11 + 8);
      goto LABEL_16;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands"))
  {
    goto LABEL_20;
  }

  if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands"))
  {
    goto LABEL_20;
  }

LABEL_16:
  if (*(&v33 + 1))
  {
    *&v41 = 0;
    v24 = mlir::ValueRange::dereference_iterator(v40, 0);
    {
      v25 = *(a11 + 8);
      if (v25 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v25) = v41;
LABEL_22:
      ++*(a11 + 8);
      return 1;
    }

LABEL_20:
    v26 = mlir::Float32Type::get(this, v19);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v28) = v27;
    goto LABEL_22;
  }

  return 1;
}

uint64_t mlir::mps::SingleGateRNNGradientOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.singlegate_rnn_gradient' op requires attribute 'activation'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::mps::anonymous namespace::inferRNNHiddenStateType(uint64_t a1, char a2, uint64_t a3, uint64_t *a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = *(*a3 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  if (v6)
  {
    if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      *a4 = v6;
    }

    else
    {
      v20 = v22;
      v21 = 0x400000000;
      Shape = mlir::TensorType::getShape(&v19);
      v9 = v21;
      v11 = v10 - 1;
      if (v10 != 1)
      {
        v16 = (Shape + 8);
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (v9 >= HIDWORD(v21))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v20 + v9) = v17;
          v9 = v21 + 1;
          LODWORD(v21) = v21 + 1;
          --v11;
        }

        while (v11);
      }

      v12 = v20;
      v13 = v9;
      ElementType = mlir::TensorType::getElementType(&v19);
      *a4 = mlir::RankedTensorType::get(v12, v13, ElementType, 0);
      if (v20 != v22)
      {
        free(v20);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "RNN non-tensor input type");
  }
}

uint64_t mlir::mps::SingleGateRNNGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::anonymous namespace::verifyLSTM(mlir::Operation *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v163 = *MEMORY[0x277D85DE8];
  v148[0] = a3;
  v148[1] = a4;
  v147[0] = a5;
  v147[1] = a6;
  v146[0] = a7;
  v146[1] = a8;
  v145[0] = a9;
  v145[1] = a10;
  v144[0] = a13;
  v144[1] = a14;
  v143[0] = a15;
  v143[1] = a16;
  v142[0] = a17;
  v142[1] = a18;
  v141[0] = a19;
  v141[1] = a20;
  if (!a3)
  {
    return 1;
  }

  result = 1;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || !a5 || *(*a5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v148);
  v25 = v24;
  v26 = mlir::ShapedType::getShape(v147);
  if (v25 != 3)
  {
    v139[0] = "Invalid input tensor rank: ";
    v140 = 259;
    mlir::Operation::emitOpError(&v151, a1, v139);
    if (v151)
    {
      LODWORD(v149) = 5;
      *(&v149 + 1) = v25;
      if (v155 >= HIDWORD(v155))
      {
        if (v154 > &v149 || v154 + 24 * v155 <= &v149)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v154 + 24 * v155;
      v33 = v149;
      *(v32 + 2) = v150;
      *v32 = v33;
      v34 = v155 + 1;
      LODWORD(v155) = v155 + 1;
      if (v151)
      {
        LODWORD(v149) = 3;
        *(&v149 + 1) = ", should be 3.";
        v150 = 14;
        if (v34 >= HIDWORD(v155))
        {
          if (v154 > &v149 || v154 + 24 * v34 <= &v149)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v154 + 24 * v155;
        v36 = v149;
        *(v35 + 2) = v150;
        *v35 = v36;
        LODWORD(v155) = v155 + 1;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v151);
    if (v151)
    {
      v37 = result;
      mlir::InFlightDiagnostic::report(&v151);
      result = v37;
    }

    if (v162 == 1)
    {
      v38 = result;
      mlir::Diagnostic::~Diagnostic(&v152);
      return v38;
    }

    return result;
  }

  v138 = v27;
  if (v27 <= 1)
  {
    v140 = 259;
    mlir::Operation::emitOpError(&v151, a1, v139);
    v28 = &v138;
LABEL_8:
    mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v151, v28);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v29, ", should be 2 or greater.");
    goto LABEL_9;
  }

  v39 = *(Shape + 16);
  v40 = v39;
  v41 = a2;
  if ((a2 & 1) == 0)
  {
    v40 = 0x8000000000000000;
    if (v39 != 0x8000000000000000)
    {
      v42 = v39 + 3;
      if (v39 >= 0)
      {
        v42 = *(Shape + 16);
      }

      if ((v42 & 0xFFFFFFFFFFFFFFFCLL) != v39)
      {
        v139[0] = "Invalid input last dimension size: ";
        v140 = 259;
        mlir::Operation::emitOpError(&v151, a1, v139);
        mlir::InFlightDiagnostic::operator<<<long long &>(&v151, (Shape + 16));
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v77, ", should be divisible by four.");
        goto LABEL_9;
      }

      v40 = v42 >> 2;
    }
  }

  v43 = 0;
  v44 = v27 - 2;
  do
  {
    if (v43 < v44)
    {
      v45 = 1;
    }

    else
    {
      v45 = v40;
    }

    v46 = 4 * v45;
    if (v45 == 0x8000000000000000)
    {
      v46 = 0x8000000000000000;
    }

    if (v27 == 2)
    {
      v45 = v46;
    }

    v47 = *(v26 + 8 * v43);
    if (v45 != 0x8000000000000000 && v47 != 0x8000000000000000 && v47 != v45)
    {
      v140 = 259;
      mlir::Operation::emitOpError(&v151, a1, v139);
      if (v151)
      {
        LODWORD(v149) = 3;
        *(&v149 + 1) = "matrix of size [";
        v150 = 16;
        if (v155 >= HIDWORD(v155))
        {
          if (v154 > &v149 || v154 + 24 * v155 <= &v149)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54 = v154 + 24 * v155;
        v55 = v149;
        *(v54 + 2) = v150;
        *v54 = v55;
        v56 = v155 + 1;
        LODWORD(v155) = v155 + 1;
        if (v151)
        {
          LODWORD(v149) = 2;
          *(&v149 + 1) = 4 * v40;
          if (v56 >= HIDWORD(v155))
          {
            if (v154 > &v149 || v154 + 24 * v56 <= &v149)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v57 = v154 + 24 * v155;
          v58 = v149;
          *(v57 + 2) = v150;
          *v57 = v58;
          v59 = v155 + 1;
          LODWORD(v155) = v155 + 1;
          if (v151)
          {
            LODWORD(v149) = 3;
            *(&v149 + 1) = ", ";
            v150 = 2;
            if (v59 >= HIDWORD(v155))
            {
              if (v154 > &v149 || v154 + 24 * v59 <= &v149)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v60 = v154 + 24 * v155;
            v61 = v149;
            *(v60 + 2) = v150;
            *v60 = v61;
            v62 = v155 + 1;
            LODWORD(v155) = v155 + 1;
            if (v151)
            {
              LODWORD(v149) = 2;
              *(&v149 + 1) = v40;
              if (v62 >= HIDWORD(v155))
              {
                if (v154 > &v149 || v154 + 24 * v62 <= &v149)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v63 = v154 + 24 * v155;
              v64 = v149;
              *(v63 + 2) = v150;
              *v63 = v64;
              v65 = v155 + 1;
              LODWORD(v155) = v155 + 1;
              if (v151)
              {
                LODWORD(v149) = 3;
                *(&v149 + 1) = "].";
                v150 = 2;
                if (v65 >= HIDWORD(v155))
                {
                  if (v154 > &v149 || v154 + 24 * v65 <= &v149)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v66 = v154 + 24 * v155;
                v67 = v149;
                *(v66 + 2) = v150;
                *v66 = v67;
                LODWORD(v155) = v155 + 1;
              }
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v151);
      v68 = result;
      if (v151)
      {
        mlir::InFlightDiagnostic::report(&v151);
        result = v68;
      }

      if (v162)
      {
        if (v161 != &v162)
        {
          free(v161);
          result = v68;
        }

        v69 = __p;
        if (__p)
        {
          v70 = v160;
          v71 = __p;
          if (v160 != __p)
          {
            do
            {
              v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
            }

            while (v70 != v69);
            v71 = __p;
          }

          v160 = v69;
          operator delete(v71);
          result = v68;
        }

        v72 = v157;
        if (v157)
        {
          v73 = v158;
          v74 = v157;
          if (v158 != v157)
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
            v74 = v157;
          }

          v158 = v72;
          operator delete(v74);
          result = v68;
        }

        if (v154 != &v156)
        {
          free(v154);
          return v68;
        }
      }

      return result;
    }

    ++v43;
    --v27;
  }

  while (v27);
  if (v146[0] && *(*v146[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v50 = mlir::ShapedType::getShape(v146);
    *&v149 = v51;
    v52 = v51 - 1;
    if (v51 <= 1)
    {
LABEL_100:
      v139[0] = v53;
      v140 = 259;
      mlir::Operation::emitOpError(&v151, a1, v139);
      v28 = &v149;
      goto LABEL_8;
    }

    v78 = 0;
    v79 = a1;
    v41 = a2;
    do
    {
      if (v78 >= v51 - 2)
      {
        v80 = *(Shape - 8 * v51 + 24 + 8 * v78);
        v136 = v80;
        if (v52 == v78 && (a2 & 1) == 0 && v80 != 0x8000000000000000)
        {
LABEL_86:
          v80 /= 4;
          v136 = v80;
        }
      }

      else
      {
        v136 = 1;
        v80 = 1;
        if (v52 == v78 && (a2 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v81 = *(v50 + 8 * v78);
      if (v80 != 0x8000000000000000 && v81 != 0x8000000000000000 && v81 != v80)
      {
        v137 = v78;
        goto LABEL_176;
      }

      ++v78;
    }

    while (v51 != v78);
  }

  if (!v145[0] || *(*v145[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_119:
    if (a11 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v41)
      {
        v91 = v148[0];
        v92 = v148[0];
      }

      else
      {
        v151 = &v153;
        v152 = 0x400000000;
        v153 = *Shape;
        LODWORD(v152) = 1;
        v154 = *(Shape + 8);
        LODWORD(v152) = 2;
        v155 = *(Shape + 16);
        LODWORD(v152) = 3;
        if (v155 != 0x8000000000000000)
        {
          v155 /= 4;
        }

        ElementType = mlir::ShapedType::getElementType(v148);
        v139[0] = mlir::RankedTensorType::get(&v153, 3, ElementType, 0);
        v92 = mlir::TensorType::operator mlir::ShapedType(v139);
        if (v151 != &v153)
        {
          free(v151);
        }

        v91 = v148[0];
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v91);
      if (!mlir::OpTrait::util::getBroadcastedType(v92, a11, ElementTypeOrSelf))
      {
        v140 = 259;
        v97 = a1;
        goto LABEL_175;
      }
    }

    if (v141[0] && *(*v141[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v96 = mlir::ShapedType::getShape(v141);
      v97 = a1;
      if (v98 != 3 || *v96 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v96)
      {
        goto LABEL_143;
      }

      v99 = v96[1];
      if (v99 != 0x8000000000000000)
      {
        v100 = *(Shape + 8);
        if (v100 != 0x8000000000000000 && v100 != v99)
        {
          goto LABEL_143;
        }
      }

      v101 = *(Shape + 16);
      if (v101 != 0x8000000000000000)
      {
        v101 *= 4;
      }

      v102 = v96[2];
      if (v102 != 0x8000000000000000 && v101 != 0x8000000000000000 && v101 != v102)
      {
LABEL_143:
LABEL_157:
        v139[0] = v103;
        v140 = 259;
LABEL_175:
        mlir::Operation::emitOpError(&v151, v97, v139);
        v30 = &v151;
        goto LABEL_9;
      }
    }

    if (v143[0] && *(*v143[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if ((v104 = mlir::ShapedType::getShape(v143), v97 = a1, v105 != 3) || *v104 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v104 || (v106 = v104[1], v106 != 0x8000000000000000) && (v107 = *(Shape + 8), v107 != 0x8000000000000000) && v107 != v106 || (v108 = v104[2], v108 != 0x8000000000000000) && (v109 = *(Shape + 16), v109 != 0x8000000000000000) && v109 != v108)
      {
        goto LABEL_157;
      }
    }

    if (v144[0] && *(*v144[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v110 = mlir::ShapedType::getShape(v144);
      if (v111 != 1)
      {
        v127 = v111;
        v140 = 259;
        mlir::Operation::emitOpError(&v151, a1, v139);
        *&v149 = v127;
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v151, &v149);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v128, ", should be 1.");
        goto LABEL_9;
      }

      if (v40 == 0x8000000000000000)
      {
        v112 = 0x8000000000000000;
      }

      else
      {
        v112 = 4 * v40;
      }

      *&v149 = v112;
      if (v112 != 0x8000000000000000 && *v110 != 0x8000000000000000 && *v110 != v112)
      {
        v140 = 259;
        mlir::Operation::emitOpError(&v151, a1, v139);
        v113 = &v151;
        v114 = &v149;
        goto LABEL_178;
      }
    }

    if (v142[0] && *(*v142[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v115 = mlir::ShapedType::getShape(v142);
      *&v149 = v116;
      if ((v116 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v117 = v115;
        v118 = 3 - v116;
        if (v116 == 2)
        {
          v120 = *(Shape + 8 * v118);
          v136 = v120;
          v119 = *v115;
        }

        else
        {
          v119 = *v115;
          if (*v115 == 1)
          {
            v120 = 1;
          }

          else
          {
            v120 = *(Shape + 8 * v118);
          }

          v136 = v120;
        }

        if (v120 == 0x8000000000000000 || v119 == 0x8000000000000000 || v119 == v120)
        {
          v131 = (Shape - 8 * v116 + 32);
          v130 = 1;
          while (1)
          {
            v132 = v130 >= v116 - 2 ? *v131 : 1;
            v136 = v132;
            if (v132 != 0x8000000000000000)
            {
              v133 = v115[v130];
              if (v133 != 0x8000000000000000 && v133 != v132)
              {
                break;
              }
            }

            ++v130;
            ++v131;
            if (v116 == v130)
            {
              return 1;
            }
          }
        }

        else
        {
          v130 = 0;
        }

        v137 = v130;
        v140 = 259;
        mlir::Operation::emitOpError(&v151, a1, v139);
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v151, &v137);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v135, "] = ");
        v124 = &v117[v137];
        goto LABEL_177;
      }

      v140 = 259;
      mlir::Operation::emitOpError(&v151, a1, v139);
      mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v151, &v149);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v129, ", should be 2 or 3.");
      goto LABEL_9;
    }

    return 1;
  }

  v50 = mlir::ShapedType::getShape(v145);
  *&v149 = v84;
  v85 = v84 - 1;
  if (v84 <= 1)
  {
    goto LABEL_100;
  }

  v86 = 0;
  v79 = a1;
  v41 = a2;
  while (1)
  {
    if (v86 >= v84 - 2)
    {
      v87 = *(Shape - 8 * v84 + 24 + 8 * v86);
      v136 = v87;
      if (v85 != v86 || (a2 & 1) != 0 || v87 == 0x8000000000000000)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v136 = 1;
      v87 = 1;
      if (v85 != v86 || (a2 & 1) != 0)
      {
        goto LABEL_110;
      }
    }

    v87 /= 4;
    v136 = v87;
LABEL_110:
    v88 = *(v50 + 8 * v86);
    v89 = v87 == 0x8000000000000000 || v88 == 0x8000000000000000;
    if (!v89 && v88 != v87)
    {
      break;
    }

    if (v84 == ++v86)
    {
      goto LABEL_119;
    }
  }

  v137 = v86;
LABEL_176:
  v139[0] = v93;
  v140 = 259;
  v121 = v50;
  mlir::Operation::emitOpError(&v151, v79, v139);
  mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v151, &v137);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v122, "] = ");
  v124 = (v121 + 8 * v137);
LABEL_177:
  mlir::InFlightDiagnostic::operator<<<long long &>(v123, v124);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v125, ", expected ");
  v114 = &v136;
LABEL_178:
  mlir::InFlightDiagnostic::operator<<<long long &>(v113, v114);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v126, ".");
LABEL_9:
  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
  return v31;
}

BOOL mlir::mps::LSTMOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v54[0] = a4;
  v54[1] = a5;
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
    *&v41[1] = *(a7 + 56);
    *(&v41[2] + 4) = *(a7 + 68);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    memset(&v41[1], 0, 28);
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v42 = a6;
  v43[0] = 0;
  v44 = 0;
  v45 = v15;
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v49[0] = *&v41[1];
  *(v49 + 12) = *(&v41[2] + 4);
  v50 = a9;
  v51 = a10;
  if (a6)
  {
    v19 = a1;
    Context = mlir::Attribute::getContext(&v42);
    if (v44 == 1)
    {
      v44 = 0;
    }

    mlir::OperationName::OperationName(v43, "mps.lstm", 8, Context);
    v44 = 1;
    a1 = v19;
  }

  v52 = a4;
  v53 = a5;
  if (!a5)
  {
    v30 = mlir::Float32Type::get(a1, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v32) = v31;
    goto LABEL_36;
  }

  mlir::UnknownLoc::get(a1, a2);
  v21 = *(mlir::ValueRange::dereference_iterator(v54, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v21)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot handle a non-tensor input type");
  }

  v22 = *(*v21 + 136);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v24 = v23 ? v21 : 0;
  v41[0] = v24;
  if (!v24)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot handle a non-tensor input type");
  }

  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    Shape = mlir::TensorType::getShape(v41);
    v41[1] = &v41[3];
    v41[2] = 0x400000000;
    if (v26)
    {
      LODWORD(v27) = 0;
      v28 = 8 * v26;
      do
      {
        if (v27 >= HIDWORD(v41[2]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v41[1] + 8 * v27) = *Shape;
        v27 = ++LODWORD(v41[2]);
        ++Shape;
        v28 -= 8;
      }

      while (v28);
      v33 = v41[1];
      v34 = (v41[1] + 8 * v27);
      v35 = *(v34 - 1);
      if (v35 == 0x8000000000000000)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v27 = 0;
      v33 = &v41[3];
      v34 = &v41[3];
      v35 = v41[2];
    }

    *(v34 - 1) = v35 / 4;
LABEL_29:
    ElementType = mlir::TensorType::getElementType(v41);
    v21 = mlir::RankedTensorType::get(v33, v27, ElementType, 0);
    if (v41[1] != &v41[3])
    {
      free(v41[1]);
    }
  }

  v37 = *(a11 + 8);
  if (v37 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v37) = v21;
  v38 = *(a11 + 12);
  v39 = *(a11 + 8) + 1;
  *(a11 + 8) = v39;
  if (v39 >= v38)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v39) = v21;
  v40 = *(a11 + 8) + 1;
  *(a11 + 8) = v40;
  if (!*(&v47 + 1))
  {
    return 1;
  }

  if (v40 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v40) = v41[0];
LABEL_36:
  ++*(a11 + 8);
  return 1;
}

void mlir::mps::LSTMOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v4 = *(a2 + 8);
  if (v4 && (v4 != 1 || *(a2 + 12)) || *(*(v3 + 2 * ((*(v3 + 11) >> 23) & 1) + 10) + 8) != 3)
  {
    v14 = *(v3 + 9);
    v15 = v3 - 16;
    if (!v14)
    {
      v15 = 0;
    }

    *a3 = v15;
    *(a3 + 8) = v14;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but IOFZ gate layout is only supported from version {1}";
    v16[1] = 109;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v6 = __p;
      if (__p)
      {
        v7 = v31;
        v8 = __p;
        if (v31 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v31 = v6;
        operator delete(v8);
      }

      v9 = v28;
      if (v28)
      {
        v10 = v29;
        v11 = v28;
        if (v29 != v28)
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
          v11 = v28;
        }

        v29 = v9;
        operator delete(v11);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

uint64_t mlir::mps::LSTMOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::LSTMGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = *MEMORY[0x277D85DE8];
  *&v61 = a4;
  *(&v61 + 1) = a5;
  if (a5)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(&v61, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v14)
    {
      v15 = *(*v14 + 136);
      if (v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      v49 = v17;
      if (v17)
      {
        if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_26;
        }

        Shape = mlir::TensorType::getShape(&v49);
        *&v50 = &v51;
        *(&v50 + 1) = 0x400000000;
        if (v19)
        {
          LODWORD(v20) = 0;
          v21 = 8 * v19;
          do
          {
            if (v20 >= HIDWORD(v50))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v50 + 8 * v20) = *Shape;
            v20 = ++DWORD2(v50);
            ++Shape;
            v21 -= 8;
          }

          while (v21);
          v23 = v50;
          v24 = (v50 + 8 * v20);
          v25 = *(v24 - 1);
          if (v25 == 0x8000000000000000)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v20 = 0;
          v23 = &v51;
          v24 = &v51;
          v25 = *(&v50 + 1);
        }

        *(v24 - 1) = 4 * v25;
LABEL_24:
        ElementType = mlir::TensorType::getElementType(&v49);
        v14 = mlir::RankedTensorType::get(v23, v20, ElementType, 0);
        if (v50 != &v51)
        {
          free(v50);
        }

LABEL_26:
        v27 = *(a11 + 8);
        if (v27 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v27) = v14;
        ++*(a11 + 8);
        v50 = v61;
        if (*(&v61 + 1) < 2uLL)
        {
          if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands"))
          {
            return 0;
          }
        }

        else
        {
          v28 = *(mlir::ValueRange::dereference_iterator(&v50, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(a11 + 8);
          if (v29 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v29) = v28;
          ++*(a11 + 8);
        }

        v48 = 0;
        {
          v30 = v48;
          v31 = *(a11 + 8);
          if (v31 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v31) = v48;
          v32 = *(a11 + 12);
          v33 = *(a11 + 8) + 1;
          *(a11 + 8) = v33;
          if (v33 >= v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v33) = v30;
          ++*(a11 + 8);
          if (a7)
          {
            v34 = *a7;
            v35 = a7[1];
            v36 = a7[2];
            v37 = a7[4];
            v62 = a7[3];
            v63 = v37;
            v64 = *(a7 + 10);
          }

          else
          {
            v64 = 0;
            v34 = 0uLL;
            v62 = 0u;
            v63 = 0u;
            v35 = 0uLL;
            v36 = 0uLL;
          }

          *&v50 = a6;
          BYTE8(v50) = 0;
          v51 = 0;
          v52 = v34;
          v53 = v35;
          v54 = v36;
          v38 = v61;
          v55 = v62;
          v56 = v63;
          v57 = v64;
          v58 = a9;
          v59 = a10;
          if (a6)
          {
            v47 = v61;
            Context = mlir::Attribute::getContext(&v50);
            if (v51 == 1)
            {
              v51 = 0;
            }

            mlir::OperationName::OperationName(&v50 + 8, "mps.lstm_gradient", 17, Context);
            v51 = 1;
            v38 = v47;
          }

          v60 = v38;
          v40 = vaddvq_s32(v55) + v56;
          v41 = HIDWORD(v56);
          v62.i64[0] = v38;
          v42 = v40 + DWORD1(v56) + DWORD2(v56);
          v62.i64[1] = v42;
          if (v42)
          {
            v43 = mlir::ValueRange::offset_base(&v62, (v40 + DWORD1(v56) + DWORD2(v56)));
            if (v62.i64[1] == v41 + v42)
            {
              return 1;
            }
          }

          else
          {
            v43 = v38;
            if (!HIDWORD(v56))
            {
              return 1;
            }
          }

          v62 = v43;
          v44 = mlir::ValueRange::dereference_iterator(&v62, 0);
          if (v44)
          {
            v45 = *(a11 + 8);
            if (v45 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a11 + 8 * v45) = *(v44 + 8) & 0xFFFFFFFFFFFFFFF8;
            ++*(a11 + 8);
          }

          return 1;
        }

        return 0;
      }
    }

    else
    {
      v49 = 0;
    }

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot handle a non-tensor input type");
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::LSTMGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::anonymous namespace::verifyGRU(mlir::Operation *a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v128 = *MEMORY[0x277D85DE8];
  v113[0] = a4;
  v113[1] = a5;
  v112[0] = a6;
  v112[1] = a7;
  v111[0] = a9;
  v111[1] = a10;
  v110[0] = a13;
  v110[1] = a14;
  v109[0] = a15;
  v109[1] = a16;
  if (!a4)
  {
    return 1;
  }

  result = 1;
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || !a6 || *(*a6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return result;
  }

  Shape = mlir::ShapedType::getShape(v113);
  v22 = v21;
  v23 = mlir::ShapedType::getShape(v112);
  if (v22 == 3)
  {
    v25 = v23;
    v106 = v24;
    v26 = a1;
    if (v24 <= 1)
    {
      v108 = 259;
      mlir::Operation::emitOpError(&v116, a1, v107);
      v27 = &v106;
      goto LABEL_8;
    }

    v37 = *(Shape + 16);
    v38 = v37;
    v39 = a2;
    if ((a2 & 1) == 0)
    {
      v38 = 0x8000000000000000;
      if (v37 != 0x8000000000000000)
      {
        v38 = v37 / 3;
        if (3 * (v37 / 3) != v37)
        {
          v107[0] = "Invalid input last dimension size: ";
          v108 = 259;
          mlir::Operation::emitOpError(&v116, a1, v107);
          mlir::InFlightDiagnostic::operator<<<long long &>(&v116, (Shape + 16));
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v73, ", should be divisible by three.");
          goto LABEL_9;
        }
      }
    }

    v40 = 0;
    v41 = v24 - 2;
    v42 = a3;
    do
    {
      if (v40 < v41)
      {
        v43 = 1;
      }

      else
      {
        v43 = v38;
      }

      if (v24 == 2)
      {
        v43 *= 3;
      }

      v44 = *(v25 + 8 * v40);
      if (v43 != 0x8000000000000000 && v44 != 0x8000000000000000 && v44 != v43)
      {
        v108 = 259;
        mlir::Operation::emitOpError(&v116, a1, v107);
        if (v116)
        {
          LODWORD(v114) = 3;
          *(&v114 + 1) = "matrix of size [";
          v115 = 16;
          if (v120 >= HIDWORD(v120))
          {
            if (v119 > &v114 || v119 + 24 * v120 <= &v114)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v50 = v119 + 24 * v120;
          v51 = v114;
          *(v50 + 2) = v115;
          *v50 = v51;
          v52 = v120 + 1;
          LODWORD(v120) = v120 + 1;
          if (v116)
          {
            LODWORD(v114) = 2;
            *(&v114 + 1) = 3 * v38;
            if (v52 >= HIDWORD(v120))
            {
              if (v119 > &v114 || v119 + 24 * v52 <= &v114)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v53 = v119 + 24 * v120;
            v54 = v114;
            *(v53 + 2) = v115;
            *v53 = v54;
            v55 = v120 + 1;
            LODWORD(v120) = v120 + 1;
            if (v116)
            {
              LODWORD(v114) = 3;
              *(&v114 + 1) = ", ";
              v115 = 2;
              if (v55 >= HIDWORD(v120))
              {
                if (v119 > &v114 || v119 + 24 * v55 <= &v114)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v56 = v119 + 24 * v120;
              v57 = v114;
              *(v56 + 2) = v115;
              *v56 = v57;
              v58 = v120 + 1;
              LODWORD(v120) = v120 + 1;
              if (v116)
              {
                LODWORD(v114) = 2;
                *(&v114 + 1) = v38;
                if (v58 >= HIDWORD(v120))
                {
                  if (v119 > &v114 || v119 + 24 * v58 <= &v114)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v59 = v119 + 24 * v120;
                v60 = v114;
                *(v59 + 2) = v115;
                *v59 = v60;
                v61 = v120 + 1;
                LODWORD(v120) = v120 + 1;
                if (v116)
                {
                  LODWORD(v114) = 3;
                  *(&v114 + 1) = "].";
                  v115 = 2;
                  if (v61 >= HIDWORD(v120))
                  {
                    if (v119 > &v114 || v119 + 24 * v61 <= &v114)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v62 = v119 + 24 * v120;
                  v63 = v114;
                  *(v62 + 2) = v115;
                  *v62 = v63;
                  LODWORD(v120) = v120 + 1;
                }
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
        v64 = result;
        if (v116)
        {
          mlir::InFlightDiagnostic::report(&v116);
          result = v64;
        }

        if (v127)
        {
          if (v126 != &v127)
          {
            free(v126);
            result = v64;
          }

          v65 = __p;
          if (__p)
          {
            v66 = v125;
            v67 = __p;
            if (v125 != __p)
            {
              do
              {
                v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
              }

              while (v66 != v65);
              v67 = __p;
            }

            v125 = v65;
            operator delete(v67);
            result = v64;
          }

          v68 = v122;
          if (v122)
          {
            v69 = v123;
            v70 = v122;
            if (v123 != v122)
            {
              do
              {
                v72 = *--v69;
                v71 = v72;
                *v69 = 0;
                if (v72)
                {
                  MEMORY[0x259C63150](v71, 0x1000C8077774924);
                }
              }

              while (v69 != v68);
              v70 = v122;
            }

            v123 = v68;
            operator delete(v70);
            result = v64;
          }

          if (v119 != &v121)
          {
            free(v119);
            return v64;
          }
        }

        return result;
      }

      ++v40;
      --v24;
    }

    while (v24);
    if (v111[0] && *(*v111[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v47 = mlir::ShapedType::getShape(v111);
      *&v114 = v48;
      v49 = v48 - 1;
      if (v48 <= 1)
      {
        v108 = 259;
        mlir::Operation::emitOpError(&v116, a1, v107);
        v27 = &v114;
LABEL_8:
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v116, v27);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v28, ", should be 2 or greater.");
LABEL_9:
        v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v116);
        return v30;
      }

      v74 = v47;
      v75 = 0;
      v26 = a1;
      v42 = a3;
      v39 = a2;
      do
      {
        if (v75 >= v48 - 2)
        {
          v76 = *(Shape - 8 * v48 + 24 + 8 * v75);
          v104 = v76;
          if (v49 != v75 || (a2 & 1) != 0 || v76 == 0x8000000000000000)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v104 = 1;
          v76 = 1;
          if (v49 != v75 || (a2 & 1) != 0)
          {
            goto LABEL_83;
          }
        }

        v76 /= 3;
        v104 = v76;
LABEL_83:
        v77 = *(v74 + 8 * v75);
        if (v76 != 0x8000000000000000 && v77 != 0x8000000000000000 && v77 != v76)
        {
          v105 = v75;
          v108 = 259;
          mlir::Operation::emitOpError(&v116, a1, v107);
          mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v116, &v105);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v96, "] = ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v97, (v74 + 8 * v105));
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v98, ", expected ");
          v100 = &v104;
          goto LABEL_133;
        }

        ++v75;
      }

      while (v48 != v75);
    }

    if (a11 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v39)
      {
        v80 = v113[0];
        v81 = v113[0];
      }

      else
      {
        v116 = &v118;
        v117 = 0x400000000;
        v118 = *Shape;
        LODWORD(v117) = 1;
        v119 = *(Shape + 8);
        LODWORD(v117) = 2;
        v120 = *(Shape + 16);
        LODWORD(v117) = 3;
        if (v120 != 0x8000000000000000)
        {
          v120 /= 3;
        }

        ElementType = mlir::ShapedType::getElementType(v113);
        v107[0] = mlir::RankedTensorType::get(&v118, 3, ElementType, 0);
        v81 = mlir::TensorType::operator mlir::ShapedType(v107);
        if (v116 != &v118)
        {
          free(v116);
        }

        v80 = v113[0];
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v80);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v81, a11, ElementTypeOrSelf);
      v26 = a1;
      v42 = a3;
      if (!BroadcastedType)
      {
        goto LABEL_132;
      }
    }

    if (v110[0] && *(*v110[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v85 = mlir::ShapedType::getShape(v110);
      v26 = a1;
      if (v86 != 3)
      {
        goto LABEL_118;
      }

      v42 = a3;
      v87 = 3;
      if (a3)
      {
        v87 = 4;
      }

      if (*v85 != 0x8000000000000000 && *Shape != 0x8000000000000000 && *Shape != *v85)
      {
        goto LABEL_118;
      }

      v88 = v85[1];
      if (v88 != 0x8000000000000000)
      {
        v89 = *(Shape + 8);
        if (v89 != 0x8000000000000000 && v89 != v88)
        {
          goto LABEL_118;
        }
      }

      v90 = *(Shape + 16);
      v91 = v90 * v87;
      if (v90 == 0x8000000000000000)
      {
        v91 = 0x8000000000000000;
      }

      v92 = v85[2];
      if (v92 != 0x8000000000000000 && v91 != 0x8000000000000000 && v91 != v92)
      {
LABEL_118:
LABEL_132:
        v107[0] = v93;
        v108 = 259;
        mlir::Operation::emitOpError(&v116, v26, v107);
        v29 = &v116;
        goto LABEL_9;
      }
    }

    if (v109[0] && (v42 & 1) == 0)
    {
      goto LABEL_132;
    }

    if (v109[0] && *(*v109[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v94 = mlir::ShapedType::getShape(v109);
      if (v95 != 1)
      {
        v102 = v95;
        v108 = 259;
        mlir::Operation::emitOpError(&v116, a1, v107);
        *&v114 = v102;
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v116, &v114);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v103, ", should be 1.");
        goto LABEL_9;
      }

      *&v114 = v38;
      if (v38 != 0x8000000000000000 && *v94 != 0x8000000000000000 && *v94 != v38)
      {
        v108 = 259;
        mlir::Operation::emitOpError(&v116, a1, v107);
        v99 = &v116;
        v100 = &v114;
LABEL_133:
        mlir::InFlightDiagnostic::operator<<<long long &>(v99, v100);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v101, ".");
        goto LABEL_9;
      }
    }

    return 1;
  }

  v107[0] = "Invalid input tensor rank: ";
  v108 = 259;
  mlir::Operation::emitOpError(&v116, a1, v107);
  if (v116)
  {
    LODWORD(v114) = 5;
    *(&v114 + 1) = v22;
    if (v120 >= HIDWORD(v120))
    {
      if (v119 > &v114 || v119 + 24 * v120 <= &v114)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = v119 + 24 * v120;
    v32 = v114;
    *(v31 + 2) = v115;
    *v31 = v32;
    v33 = v120 + 1;
    LODWORD(v120) = v120 + 1;
    if (v116)
    {
      LODWORD(v114) = 3;
      *(&v114 + 1) = ", should be 3.";
      v115 = 14;
      if (v33 >= HIDWORD(v120))
      {
        if (v119 > &v114 || v119 + 24 * v33 <= &v114)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v119 + 24 * v120;
      v35 = v114;
      *(v34 + 2) = v115;
      *v34 = v35;
      LODWORD(v120) = v120 + 1;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v116);
  if (v116)
  {
    v36 = result;
    mlir::InFlightDiagnostic::report(&v116);
    result = v36;
  }

  if (v127 == 1)
  {
    v30 = result;
    mlir::Diagnostic::~Diagnostic(&v117);
    return v30;
  }

  return result;
}

uint64_t mlir::mps::GRUOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v62[0] = a4;
  v62[1] = a5;
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
    *v47 = *(a7 + 56);
    v48[0] = *(a7 + 18);
  }

  else
  {
    v18 = 0;
    v48[0] = 0;
    v15 = 0uLL;
    *v47 = 0u;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v49 = a6;
  v50[0] = 0;
  v51 = 0;
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v55 = v18;
  v56 = *v47;
  v57 = v48[0];
  v58 = a9;
  v59 = a10;
  if (a6)
  {
    v19 = a1;
    Context = mlir::Attribute::getContext(&v49);
    if (v51 == 1)
    {
      v51 = 0;
    }

    mlir::OperationName::OperationName(v50, "mps.gru", 7, Context);
    v51 = 1;
    a1 = v19;
  }

  v60 = a4;
  v61 = a5;
  if (!a5)
  {
    v31 = mlir::Float32Type::get(a1, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v33) = v32;
    goto LABEL_37;
  }

  mlir::UnknownLoc::get(a1, a2);
  v21 = *(mlir::ValueRange::dereference_iterator(v62, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v21)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot handle a non-tensor input type");
  }

  v22 = *(*v21 + 136);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v24 = v23 ? v21 : 0;
  v46 = v24;
  if (!v24)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot handle a non-tensor input type");
  }

  v25 = v21;
  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    Shape = mlir::TensorType::getShape(&v46);
    v27 = mlir::TensorType::getShape(&v46);
    v29 = (v27 + 8 * v28);
    v47[0] = v48;
    v47[1] = 0x400000000;
    if (((v29 - Shape) >> 3) >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v34 = 0;
    v35 = v48;
    if (v29 != Shape)
    {
      memcpy(v48, Shape, v29 - Shape);
      v34 = v47[1];
      v35 = v47[0];
    }

    v36 = v34 + ((v29 - Shape) >> 3);
    LODWORD(v47[1]) = v34 + ((v29 - Shape) >> 3);
    v37 = v36 - 1;
    v38 = v35[v36 - 1];
    if (v38 != 0x8000000000000000)
    {
      v35[v37] = v38 / 3;
    }

    ElementType = mlir::TensorType::getElementType(&v46);
    v25 = mlir::RankedTensorType::get(v35, v36, ElementType, 0);
    v40 = v47[0];
    if (v38 != 0x8000000000000000)
    {
      v41 = 3;
      if (*(&v53 + 1))
      {
        v41 = 4;
      }

      *(v47[0] + v37) *= v41;
    }

    v42 = LODWORD(v47[1]);
    v43 = mlir::TensorType::getElementType(&v46);
    v21 = mlir::RankedTensorType::get(v40, v42, v43, 0);
    if (v47[0] != v48)
    {
      free(v47[0]);
    }
  }

  v44 = *(a11 + 8);
  if (v44 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v44) = v25;
  v45 = *(a11 + 8) + 1;
  *(a11 + 8) = v45;
  if (*(&v54 + 1))
  {
    if (v45 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v45) = v21;
LABEL_37:
    ++*(a11 + 8);
  }

  return 1;
}

uint64_t mlir::mps::GRUOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::GRUGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = *MEMORY[0x277D85DE8];
  *&v57 = a4;
  *(&v57 + 1) = a5;
  if (a5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v57, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = *(*v13 + 136);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v47 = v16;
      if (v16)
      {
        if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          Shape = mlir::TensorType::getShape(&v47);
          v18 = mlir::TensorType::getShape(&v47);
          v20 = (v18 + 8 * v19);
          *&v48 = v49;
          *(&v48 + 1) = 0x400000000;
          if (((v20 - Shape) >> 3) >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v22 = 0;
          v23 = v49;
          if (v20 != Shape)
          {
            memcpy(v49, Shape, v20 - Shape);
            v22 = DWORD2(v48);
            v23 = v48;
          }

          v24 = v22 + ((v20 - Shape) >> 3);
          DWORD2(v48) = v24;
          v25 = &v23[8 * v24];
          v26 = *(v25 - 1);
          if (v26 != 0x8000000000000000)
          {
            *(v25 - 1) = 3 * v26;
          }

          ElementType = mlir::TensorType::getElementType(&v47);
          v13 = mlir::RankedTensorType::get(v23, v24, ElementType, 0);
          if (v48 != v49)
          {
            free(v48);
          }
        }

        v28 = *(a11 + 8);
        if (v28 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v28) = v13;
        ++*(a11 + 8);
        v48 = v57;
        if (*(&v57 + 1) < 2uLL)
        {
          if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands"))
          {
            return 0;
          }
        }

        else
        {
          v29 = *(mlir::ValueRange::dereference_iterator(&v48, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
          v30 = *(a11 + 8);
          if (v30 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v30) = v29;
          ++*(a11 + 8);
        }

        v46 = 0;
        {
          v31 = *(a11 + 8);
          if (v31 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v31) = v46;
          ++*(a11 + 8);
          if (a7)
          {
            v32 = *a7;
            v33 = a7[1];
            v34 = a7[2];
            v58[0] = a7[3];
            *(v58 + 12) = *(a7 + 60);
          }

          else
          {
            v32 = 0uLL;
            memset(v58, 0, 28);
            v33 = 0uLL;
            v34 = 0uLL;
          }

          v35 = v57;
          *&v48 = a6;
          BYTE8(v48) = 0;
          v49[0] = 0;
          v50 = v32;
          v51 = v33;
          v52 = v34;
          *v53 = v58[0];
          *&v53[12] = *(v58 + 12);
          v54 = a9;
          v55 = a10;
          if (a6)
          {
            v45 = v57;
            Context = mlir::Attribute::getContext(&v48);
            if (v49[0] == 1)
            {
              v49[0] = 0;
            }

            mlir::OperationName::OperationName(&v48 + 8, "mps.gru_gradient", 16, Context);
            v49[0] = 1;
            v35 = v45;
          }

          v56 = v35;
          v37 = vaddvq_s32(*v53) + *&v53[16];
          v38 = *&v53[24];
          *&v58[0] = v35;
          v39 = v37 + *&v53[20];
          *(&v58[0] + 1) = (v37 + *&v53[20]);
          if (v37 + *&v53[20])
          {
            v40 = mlir::ValueRange::offset_base(v58, (v37 + *&v53[20]));
            if (*(&v58[0] + 1) == v38 + v39)
            {
              return 1;
            }
          }

          else
          {
            v40 = v35;
            if (!*&v53[24])
            {
              return 1;
            }
          }

          v58[0] = v40;
          v41 = mlir::ValueRange::dereference_iterator(v58, 0);
          if (v41)
          {
            v42 = *(a11 + 8);
            if (v42 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a11 + 8 * v42) = *(v41 + 8) & 0xFFFFFFFFFFFFFFF8;
            ++*(a11 + 8);
          }

          return 1;
        }

        return 0;
      }
    }

    else
    {
      v47 = 0;
    }

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot handle a non-tensor input type");
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::GRUGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ConcatOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, char *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v86 = *MEMORY[0x277D85DE8];
  v76 = a4;
  v77 = a5;
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v68 = a6;
  v69[0] = 0;
  v70 = 0;
  v71 = v13;
  v72 = a9;
  v14 = a5;
  v73 = a10;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v68);
    if (v70 == 1)
    {
      v70 = 0;
    }

    mlir::OperationName::OperationName(v69, "mps.concat", 10, Context);
    v70 = 1;
    v14 = v77;
    a1 = v15;
  }

  v74 = a4;
  v75 = a5;
  if (v14 <= 1)
  {
    v17 = mlir::Float32Type::get(a1, a2);
    v18 = mlir::UnrankedTensorType::get(v17);
    goto LABEL_68;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (v77 < 2)
  {
    v19 = v76;
  }

  else
  {
    v19 = mlir::ValueRange::offset_base(&v76, v77 - 1);
  }

  v81 = v19;
  v82 = 0;
  v61 = mlir::ValueRange::dereference_iterator(&v81, 0);
  v84 = v76;
  v85 = v77 - 1;
  v20 = mlir::ValueRange::dereference_iterator(&v84, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v22 = ElementTypeOrSelf;
  LOBYTE(v66) = 0;
  v67 = 0;
  v81 = v83;
  v82 = 0x400000000;
  v23 = v85;
  v79 = v84;
  v80 = 0;
  if (!v85)
  {
LABEL_64:
    v18 = mlir::UnrankedTensorType::get(v22);
    v49 = 0;
    v50 = v81;
    if (v81 != v83)
    {
LABEL_65:
      free(v50);
    }

    goto LABEL_66;
  }

  v59 = ElementTypeOrSelf;
  v60 = 0;
  v24 = 0;
  v25 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v28) = 1;
  while (1)
  {
    v29 = *(mlir::ValueRange::dereference_iterator(&v79, v24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(*v29 + 136);
    if (v30 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v30 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v29 = 0;
    }

    v65 = v29;
    if (!v29)
    {
      v53 = "cannot concat a non-tensor type";
      goto LABEL_72;
    }

    if (v26)
    {
      goto LABEL_40;
    }

    if (!mlir::TensorType::hasRank(&v65))
    {
      v26 = 0;
      if (!mlir::TensorType::hasRank(&v65))
      {
        goto LABEL_52;
      }

LABEL_43:
      Shape = mlir::TensorType::getShape(&v65);
      v64 = 1;
      if (v38)
      {
        v39 = Shape;
      }

      else
      {
        v39 = &v64;
      }

      if (v38 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v38;
      }

      if (v40 == v27)
      {
        v41 = 0;
        v42 = v81;
        do
        {
          v78[0] = v42[v41];
          v78[1] = v39[v41];
          v43 = mlir::mps::mergeDynamicDims(v78, 2);
          v42 = v81;
          *&v81[8 * v41++] = v43;
        }

        while (v27 != v41);
        goto LABEL_52;
      }

      v53 = "all inputs must have equal rank";
LABEL_72:
      v54 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, v53);
      goto LABEL_73;
    }

    mlir::TensorType::getShape(&v65);
    if (v32 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v32;
    }

    if ((mlir::mps::getAxis(a2, a3, v61, v27, &v66) & 1) == 0)
    {
      v54 = 0;
LABEL_73:
      v18 = 0;
      v49 = !v54;
      v50 = v81;
      if (v81 != v83)
      {
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (v67 != 1)
    {
      break;
    }

    if (v27 != v82)
    {
      if (v27 >= v82)
      {
        if (v27 > HIDWORD(v82))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v27 != v82)
        {
          bzero(&v81[8 * v82], 8 * (v27 - v82));
        }
      }

      LODWORD(v82) = v27;
    }

    v33 = mlir::TensorType::getShape(&v65);
    v34 = mlir::TensorType::getShape(&v65);
    v36 = (v34 + 8 * v35);
    if (v36 != v33)
    {
      memmove(v81, v33, v36 - v33);
    }

    v60 = 1;
LABEL_40:
    v26 = 1;
    if (mlir::TensorType::hasRank(&v65))
    {
      goto LABEL_43;
    }

LABEL_52:
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (mlir::TensorType::hasRank(&v65))
    {
      mlir::TensorType::getShape(&v65);
      if (v44 < 1)
      {
        v46 = 1;
      }

      else
      {
        v45 = mlir::TensorType::getShape(&v65);
        v46 = *(v45 + 8 * v66);
        if (v46 == 0x8000000000000000)
        {
          goto LABEL_15;
        }
      }

      v25 += v46;
      v28 = 1;
      v24 = v80 + 1;
      v80 = v24;
      if (v24 == v23)
      {
LABEL_59:
        v22 = v59;
        if (!v26)
        {
          goto LABEL_64;
        }

        v47 = v81;
        if (v60)
        {
          v48 = 0x8000000000000000;
          if (v28)
          {
            v48 = v25;
          }

          *&v81[8 * v66] = v48;
        }

        goto LABEL_86;
      }
    }

    else
    {
LABEL_15:
      v25 = 0;
LABEL_16:
      v28 = 0;
      v24 = v80 + 1;
      v80 = v24;
      if (v24 == v23)
      {
        goto LABEL_59;
      }
    }
  }

  if (v27 > HIDWORD(v82))
  {
    LODWORD(v82) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v47 = v81;
  v55 = v82;
  if (v82)
  {
    if (v82 >= v27)
    {
      v56 = v27;
    }

    else
    {
      v56 = v82;
    }

    v57 = v81;
    memset_pattern16(v81, &unk_25736EFD0, 8 * v56);
    v47 = v57;
  }

  if (v27 > v55)
  {
    v58 = v47;
    memset_pattern16(&v47[v55], &unk_25736EFD0, 8 * (v27 - v55));
    v47 = v58;
  }

  LODWORD(v82) = v27;
  v22 = v59;
LABEL_86:
  v18 = mlir::RankedTensorType::get(v47, v82, v22, 0);
  v49 = 0;
  v50 = v81;
  if (v81 != v83)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v49)
  {
    return 0;
  }

LABEL_68:
  v52 = *(a11 + 8);
  if (v52 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v52) = v18;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ConcatOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ConcatOp::verify(mlir::Operation **this)
{
  v126 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_17;
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
        goto LABEL_17;
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
    if (v8 != &v6[2 * v7] && *v8 == v5)
    {
      v70 = v8[1];
      v93 = v3;
      v94 = v70;
      if (!mlir::ShapedType::hasRank(&v93))
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v93 = v3;
  v94 = 0;
  if (!mlir::ShapedType::hasRank(&v93))
  {
    return 1;
  }

LABEL_18:
  mlir::ShapedType::getShape(&v93);
  v15 = v14;
  LOBYTE(v91) = 0;
  v92 = 0;
  Axis = mlir::mps::getAxis(*(*this + 3), 1, *(*(*this + 9) + 32 * (*(*this + 17) - 1) + 24), v14, &v91);
  result = 0;
  if ((Axis & 1) == 0)
  {
    return result;
  }

  if (v92 != 1)
  {
    return 1;
  }

  v18 = v91;
  Shape = mlir::ShapedType::getShape(&v93);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v93);
  LOBYTE(v89) = 0;
  v90 = 0;
  v20 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v23 = 0;
    v22 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v21 = *(v20 + 17);
  v22 = (v21 - 1);
  if (v21 == 1)
  {
    return 1;
  }

  v23 = *(v20 + 9);
LABEL_23:
  v24 = 0;
  v25 = ~v18;
  v81 = &Shape[v18 + 1];
  v82 = v18 + 1;
  while (1)
  {
    v26 = (*(*(v23 + 32 * v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v26)
    {
      goto LABEL_39;
    }

    v27 = *v26;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v37 = v26;
      mlir::mps::ConstantOp::verify();
      v26 = v37;
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_39;
      }
    }

    v31 = v29;
    v32 = v30;
    do
    {
      v33 = v32 >> 1;
      v34 = &v31[2 * (v32 >> 1)];
      v36 = *v34;
      v35 = v34 + 2;
      v32 += ~(v32 >> 1);
      if (v36 < v28)
      {
        v31 = v35;
      }

      else
      {
        v32 = v33;
      }
    }

    while (v32);
    if (v31 != &v29[2 * v30] && *v31 == v28)
    {
      v46 = v31[1];
      v87 = v26;
      v88 = v46;
      if (mlir::getElementTypeOrSelf(v26) == ElementTypeOrSelf)
      {
        goto LABEL_62;
      }

      goto LABEL_40;
    }

LABEL_39:
    v87 = v26;
    v88 = 0;
    if (mlir::getElementTypeOrSelf(v26) == ElementTypeOrSelf)
    {
      goto LABEL_62;
    }

LABEL_40:
    v97[0] = "element type of operand and result differ";
    LOWORD(v99) = 259;
    mlir::OpState::emitOpError(this, v97, v117);
    if (v117[0])
    {
      mlir::InFlightDiagnostic::report(v117);
    }

    if (v125 == 1)
    {
      if (v124 != &v125)
      {
        free(v124);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v123;
        v40 = __p;
        if (v123 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v123 = v38;
        operator delete(v40);
      }

      v41 = v120;
      if (v120)
      {
        v42 = v121;
        v43 = v120;
        if (v121 != v120)
        {
          do
          {
            v45 = *--v42;
            v44 = v45;
            *v42 = 0;
            if (v45)
            {
              MEMORY[0x259C63150](v44, 0x1000C8077774924);
            }
          }

          while (v42 != v41);
          v43 = v120;
        }

        v121 = v41;
        operator delete(v43);
      }

      if (v118 != &v119)
      {
        free(v118);
      }
    }

LABEL_62:
    if ((mlir::ShapedType::hasRank(&v87) & 1) == 0)
    {
      goto LABEL_25;
    }

    v47 = mlir::ShapedType::getShape(&v87);
    v86 = 1;
    if (v48)
    {
      v49 = v47;
    }

    else
    {
      v49 = &v86;
    }

    if (v48 <= 1)
    {
      v50 = 1;
    }

    else
    {
      v50 = v48;
    }

    if (v50 != v15)
    {
      v97[0] = "all inputs must have equal rank";
      LOWORD(v99) = 259;
      mlir::OpState::emitOpError(this, v97, v108);
      if (v108[0])
      {
        mlir::InFlightDiagnostic::report(v108);
      }

      if (v116 == 1)
      {
        if (v115 != &v116)
        {
          free(v115);
        }

        v51 = v113;
        if (v113)
        {
          v52 = v114;
          v53 = v113;
          if (v114 != v113)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = v113;
          }

          v114 = v51;
          operator delete(v53);
        }

        v54 = v111;
        if (v111)
        {
          v55 = v112;
          v56 = v111;
          if (v112 != v111)
          {
            do
            {
              v58 = *--v55;
              v57 = v58;
              *v55 = 0;
              if (v58)
              {
                MEMORY[0x259C63150](v57, 0x1000C8077774924);
              }
            }

            while (v55 != v54);
            v56 = v111;
          }

          v112 = v54;
          operator delete(v56);
        }

        if (v109 != &v110)
        {
          free(v109);
        }
      }
    }

    v59 = v91;
    if ((mlir::verifyCompatibleShape(Shape, v91, v49, v91) & 1) == 0 || (mlir::verifyCompatibleShape(v81, v15 + v25, &v49[v82], v15 + v25) & 1) == 0)
    {
      break;
    }

    if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      v60 = &v49[v59];
      if (v90 == 1)
      {
        if ((mlir::verifyCompatibleShape(v60, 1, &v89, 1) & 1) == 0)
        {
          v84[0] = "all input shapes must match along axis ";
          v85 = 259;
          mlir::OpState::emitOpError(this, v84, v97);
          if (v97[0])
          {
            LODWORD(v95) = 3;
            *(&v95 + 1) = "dimension when interleaving";
            v96 = 27;
            if (v99 >= v100)
            {
              if (v98 > &v95 || v98 + 24 * v99 <= &v95)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v61 = v98 + 24 * v99;
            v62 = v95;
            *(v61 + 2) = v96;
            *v61 = v62;
            ++v99;
          }

          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
          v63 = result;
          if (v97[0])
          {
            mlir::InFlightDiagnostic::report(v97);
            result = v63;
          }

          if (v107 == 1)
          {
            if (v106 != &v107)
            {
              free(v106);
              result = v63;
            }

            v64 = v104;
            if (v104)
            {
              v65 = v105;
              v66 = v104;
              if (v105 != v104)
              {
                do
                {
                  v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
                }

                while (v65 != v64);
                v66 = v104;
              }

              v105 = v64;
              operator delete(v66);
              result = v63;
            }

            v67 = v102;
            if (!v102)
            {
              goto LABEL_138;
            }

            v68 = v103;
            v69 = v102;
            if (v103 == v102)
            {
              goto LABEL_137;
            }

            do
            {
              v80 = *--v68;
              v79 = v80;
              *v68 = 0;
              if (v80)
              {
                MEMORY[0x259C63150](v79, 0x1000C8077774924);
              }
            }

            while (v68 != v67);
            goto LABEL_136;
          }

          return result;
        }
      }

      else
      {
        v89 = *v60;
        v90 = 1;
      }
    }

LABEL_25:
    if (++v24 == v22)
    {
      return 1;
    }
  }

  v84[0] = "invalid input tensor shapes, all input shapes must ";
  v85 = 259;
  mlir::OpState::emitOpError(this, v84, v97);
  if (v97[0])
  {
    LODWORD(v95) = 3;
    *(&v95 + 1) = "match except at axis";
    v96 = 20;
    if (v99 >= v100)
    {
      if (v98 > &v95 || v98 + 24 * v99 <= &v95)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v71 = v98 + 24 * v99;
    v72 = v95;
    *(v71 + 2) = v96;
    *v71 = v72;
    ++v99;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
  v63 = result;
  if (v97[0])
  {
    mlir::InFlightDiagnostic::report(v97);
    result = v63;
  }

  if (v107 == 1)
  {
    if (v106 != &v107)
    {
      free(v106);
      result = v63;
    }

    v73 = v104;
    if (v104)
    {
      v74 = v105;
      v75 = v104;
      if (v105 != v104)
      {
        do
        {
          v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
        }

        while (v74 != v73);
        v75 = v104;
      }

      v105 = v73;
      operator delete(v75);
      result = v63;
    }

    v67 = v102;
    if (!v102)
    {
      goto LABEL_138;
    }

    v76 = v103;
    v69 = v102;
    if (v103 == v102)
    {
LABEL_137:
      v103 = v67;
      operator delete(v69);
      result = v63;
LABEL_138:
      if (v98 != &v101)
      {
        free(v98);
        return v63;
      }

      return result;
    }

    do
    {
      v78 = *--v76;
      v77 = v78;
      *v76 = 0;
      if (v78)
      {
        MEMORY[0x259C63150](v77, 0x1000C8077774924);
      }
    }

    while (v76 != v67);
LABEL_136:
    v69 = v102;
    goto LABEL_137;
  }

  return result;
}

uint64_t mlir::mps::ReshapeOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v29 = a6;
  v30[0] = 0;
  v31 = 0;
  v32 = v13;
  v33 = a9;
  v34 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v29);
    if (v31 == 1)
    {
      v31 = 0;
    }

    mlir::OperationName::OperationName(v30, "mps.reshape", 11, Context);
    v31 = 1;
  }

  v35 = a4;
  v36 = a5;
  v37 = a4;
  v38 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v37, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v27 = 0;
  v28 = 0;
  if (v16)
  {
    v18 = v17;
    v19 = v16;
    v37 = v35;
    v38 = 1;
    v37 = mlir::ValueRange::offset_base(&v37, 1);
    v38 = 0;
    v26 = &v27;
    v37 = mlir::ValueRange::dereference_iterator(&v37, 0);
    DefiningOp = mlir::Value::getDefiningOp(&v37);
    if (DefiningOp)
    {
      v21 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, DefiningOp);
      v16 = v19;
      if (v21)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v19;
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  v22 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
LABEL_14:
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v24) = v22;
  ++*(a11 + 8);
  return 1;
}

void *mlir::mps::anonymous namespace::inferReshapeReturnType(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a2;
  v7 = a1;
  v70[6] = *MEMORY[0x277D85DE8];
  v62 = a1;
  v63 = a2;
  v68 = v70;
  v69 = 0x600000000;
  v8 = 1;
  mlir::getIntValues<long long>(a3, a4, &v68, 1);
  v65 = v67;
  v66 = 0x600000000;
  if (v69)
  {
    v9 = 0;
    v10 = v68;
    v11 = v68 + 8 * v69;
    v8 = 1;
    do
    {
      while (1)
      {
        v13 = *v10;
        if (*v10 == -1 || v13 == 0x8000000000000000)
        {
          break;
        }

        if (v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = a5 == 0;
        }

        if (!v15)
        {
          if (mlir::ShapedType::hasRank(&v62))
          {
            mlir::ShapedType::getShape(&v62);
            if (v9 < v16)
            {
              *v10 = *(mlir::ShapedType::getShape(&v62) + 8 * v9);
            }
          }
        }

        v12 = *v10;
        v10 += 8;
        v8 *= v12;
        ++v9;
        if (v10 == v11)
        {
          goto LABEL_20;
        }
      }

      if (v66 >= HIDWORD(v66))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v65 + v66) = v68 + 8 * v9;
      LODWORD(v66) = v66 + 1;
      ++v9;
      v10 += 8;
    }

    while (v10 != v11);
LABEL_20:
    v7 = v62;
    v6 = v63;
  }

  v64[0] = v7;
  v64[1] = v6;
  if (mlir::ShapedType::hasRank(v64))
  {
    Shape = mlir::ShapedType::getShape(v64);
    if (v18)
    {
      v19 = 8 * v18;
      while (*Shape)
      {
        ++Shape;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_26;
        }
      }

LABEL_34:
      v27 = v66;
      if (!v66)
      {
        goto LABEL_43;
      }

      v28 = v65;
      v29 = (v66 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v29)
      {
        v30 = v29 + 1;
        v31 = (v29 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v32 = v65 + 8 * v31;
        v33 = (v65 + 8);
        v34 = v31;
        do
        {
          v35 = *v33;
          **(v33 - 1) = 0;
          *v35 = 0;
          v33 += 2;
          v34 -= 2;
        }

        while (v34);
        if (v30 == v31)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v32 = v65;
      }

      v36 = &v28[8 * v27];
      do
      {
        v37 = *v32;
        v32 += 8;
        *v37 = 0;
      }

      while (v32 != v36);
      goto LABEL_43;
    }
  }

LABEL_26:
  if (!v8)
  {
    goto LABEL_34;
  }

  if (!mlir::ShapedType::hasRank(&v62))
  {
    goto LABEL_43;
  }

  v20 = mlir::ShapedType::getShape(&v62);
  if (v21)
  {
    v22 = 8 * v21;
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v23 = v66;
    v24 = mlir::ShapedType::getShape(&v62);
    NumElements = mlir::ShapedType::getNumElements(v24, v25);
    if (v23 == 1)
    {
      **v65 = NumElements / v8;
      goto LABEL_43;
    }

    if (NumElements == v8)
    {
      v51 = v66;
      if (v66)
      {
        v52 = v65;
        v53 = (v66 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v53)
        {
          v54 = v53 + 1;
          v55 = (v53 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v56 = v65 + 8 * v55;
          v57 = (v65 + 8);
          v58 = v55;
          do
          {
            v59 = *v57;
            **(v57 - 1) = 1;
            *v59 = 1;
            v57 += 2;
            v58 -= 2;
          }

          while (v58);
          if (v54 == v55)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v56 = v65;
        }

        v60 = &v52[8 * v51];
        do
        {
          v61 = *v56;
          v56 += 8;
          *v61 = 1;
        }

        while (v56 != v60);
      }
    }
  }

LABEL_43:
  v38 = v68;
  v39 = v69;
  if (!v69)
  {
    goto LABEL_57;
  }

  v40 = (v69 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v41 = v68;
  if (v40 >= 3)
  {
    v42 = v40 + 1;
    v41 = v68 + 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
    v43 = (v68 + 16);
    v44.i64[0] = -1;
    v44.i64[1] = -1;
    v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v46 = vmovn_s64(vceqq_s64(v43[-1], v44));
      if (v46.i8[0])
      {
        v43[-1].i64[0] = 0x8000000000000000;
        if ((v46.i8[4] & 1) == 0)
        {
LABEL_49:
          v47 = vmovn_s64(vceqq_s64(*v43, v44));
          if ((v47.i8[0] & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_54;
        }
      }

      else if ((v46.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

      v43[-1].i64[1] = 0x8000000000000000;
      v47 = vmovn_s64(vceqq_s64(*v43, v44));
      if ((v47.i8[0] & 1) == 0)
      {
LABEL_50:
        if (v47.i8[4])
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

LABEL_54:
      v43->i64[0] = 0x8000000000000000;
      if (v47.i8[4])
      {
LABEL_55:
        v43->i64[1] = 0x8000000000000000;
      }

LABEL_46:
      v43 += 2;
      v45 -= 4;
      if (!v45)
      {
        if (v42 == (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }
    }
  }

  do
  {
LABEL_64:
    if (*v41 == -1)
    {
      *v41 = 0x8000000000000000;
    }

    ++v41;
  }

  while (v41 != &v38[v39]);
LABEL_57:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v62);
  v64[0] = mlir::RankedTensorType::get(v38, v39, ElementTypeOrSelf, 0);
  v49 = mlir::TensorType::operator mlir::ShapedType(v64);
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  return v49;
}

uint64_t mlir::mps::ReshapeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ReshapeOp::verify(mlir::Operation **this)
{
  v89[4] = *MEMORY[0x277D85DE8];
  v76 = 0;
  v77 = 0;
  v2 = *(*(*this + 9) + 56);
  v87 = &v76;
  v78[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v78);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v87, DefiningOp))
  {
    return 1;
  }

  v4 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = *v4;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = v4;
    mlir::mps::ConstantOp::verify();
    v4 = v16;
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 != &v7[2 * v8] && *v9 == v6)
  {
    v17 = v9[1];
    goto LABEL_18;
  }

LABEL_17:
  v17 = 0;
LABEL_18:
  v75[0] = v4;
  v75[1] = v17;
  v74[1] = v18;
  v87 = v89;
  v88 = 0x400000000;
  mlir::getIntValues<long long>(v76, v77, &v87, 1);
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) && mlir::ShapedType::hasRank(v75) && v88)
  {
    v19 = 0;
    v20 = v87;
    v21 = 8 * v88;
    while (1)
    {
      if (!v20[v19])
      {
        mlir::ShapedType::getShape(v75);
        if (v22 <= v19)
        {
          break;
        }
      }

      ++v19;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_38;
      }
    }

    v72[0] = "zero_is_copy semantics is invalid: shape operand contains a zero value outside the input rank.";
    v73 = 259;
    mlir::OpState::emitOpError(this, v72, v78);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
    v23 = result;
    if (v78[0])
    {
      mlir::InFlightDiagnostic::report(v78);
      result = v23;
    }

    if (v86 != 1)
    {
      goto LABEL_82;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v84;
      v26 = __p;
      if (v84 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v84 = v24;
      operator delete(v26);
    }

    v27 = v81;
    result = v23;
    if (!v81)
    {
      goto LABEL_106;
    }

    v28 = v82;
    v29 = v81;
    if (v82 == v81)
    {
LABEL_105:
      v82 = v27;
      operator delete(v29);
      result = v23;
LABEL_106:
      if (v79 != &v80)
      {
        free(v79);
        result = v23;
      }

      goto LABEL_82;
    }

    do
    {
      v39 = *--v28;
      v38 = v39;
      *v28 = 0;
      if (v39)
      {
        MEMORY[0x259C63150](v38, 0x1000C8077774924);
      }
    }

    while (v28 != v27);
LABEL_104:
    v29 = v81;
    goto LABEL_105;
  }

LABEL_38:
  if (mlir::ShapedType::hasRank(v75))
  {
    Shape = mlir::ShapedType::getShape(v75);
    if (v31)
    {
      v32 = 8 * v31;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_70;
    }

LABEL_43:
    v33 = mlir::ShapedType::getShape(v74);
    if (!v34)
    {
      goto LABEL_70;
    }

    v35 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v35 >= 3)
    {
      v40 = v35 + 1;
      v41 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v37 = (v33 + 8 * v41);
      v42 = (v33 + 16);
      v43 = 0uLL;
      v44 = vnegq_f64(0);
      v45 = v41;
      v46 = 0uLL;
      do
      {
        v43 = vsubq_s64(v43, vceqq_s64(v42[-1], v44));
        v46 = vsubq_s64(v46, vceqq_s64(*v42, v44));
        v42 += 2;
        v45 -= 4;
      }

      while (v45);
      v36 = vaddvq_s64(vaddq_s64(v46, v43));
      if (v40 == v41)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v36 = 0;
      v37 = v33;
    }

    do
    {
      v47 = *v37++;
      if (v47 == 0x8000000000000000)
      {
        ++v36;
      }
    }

    while (v37 != (v33 + 8 * v34));
LABEL_56:
    if (v36 >= 2)
    {
      v72[0] = "the result shape can not be resolved";
      v73 = 259;
      mlir::OpState::emitOpError(this, v72, v78);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
      v23 = result;
      if (v78[0])
      {
        mlir::InFlightDiagnostic::report(v78);
        result = v23;
      }

      if (v86 != 1)
      {
        goto LABEL_82;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v84;
        v50 = __p;
        if (v84 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v84 = v48;
        operator delete(v50);
      }

      v27 = v81;
      result = v23;
      if (!v81)
      {
        goto LABEL_106;
      }

      v51 = v82;
      v29 = v81;
      if (v82 == v81)
      {
        goto LABEL_105;
      }

      do
      {
        v65 = *--v51;
        v64 = v65;
        *v51 = 0;
        if (v65)
        {
          MEMORY[0x259C63150](v64, 0x1000C8077774924);
        }
      }

      while (v51 != v27);
      goto LABEL_104;
    }
  }

LABEL_70:
  if (mlir::ShapedType::hasRank(v74))
  {
    v52 = mlir::ShapedType::getShape(v74);
    if (v53)
    {
      v54 = 8 * v53;
      while (*v52 != 0x8000000000000000)
      {
        ++v52;
        v54 -= 8;
        if (!v54)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
LABEL_75:
      if (mlir::ShapedType::hasRank(v75))
      {
        v55 = mlir::ShapedType::getShape(v75);
        if (v56)
        {
          v57 = 8 * v56;
          while (*v55 != 0x8000000000000000)
          {
            ++v55;
            v57 -= 8;
            if (!v57)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
LABEL_80:
          v58 = mlir::ShapedType::getShape(v74);
          NumElements = mlir::ShapedType::getNumElements(v58, v59);
          v61 = mlir::ShapedType::getShape(v75);
          if (NumElements != mlir::ShapedType::getNumElements(v61, v62))
          {
            v72[0] = "the result shape is not compatible with the input shape";
            v73 = 259;
            mlir::OpState::emitOpError(this, v72, v78);
            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
            v23 = result;
            if (v78[0])
            {
              mlir::InFlightDiagnostic::report(v78);
              result = v23;
            }

            if (v86 != 1)
            {
              goto LABEL_82;
            }

            if (v85 != &v86)
            {
              free(v85);
            }

            v66 = __p;
            if (__p)
            {
              v67 = v84;
              v68 = __p;
              if (v84 != __p)
              {
                do
                {
                  v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
                }

                while (v67 != v66);
                v68 = __p;
              }

              v84 = v66;
              operator delete(v68);
            }

            v27 = v81;
            result = v23;
            if (!v81)
            {
              goto LABEL_106;
            }

            v69 = v82;
            v29 = v81;
            if (v82 == v81)
            {
              goto LABEL_105;
            }

            do
            {
              v71 = *--v69;
              v70 = v71;
              *v69 = 0;
              if (v71)
              {
                MEMORY[0x259C63150](v70, 0x1000C8077774924);
              }
            }

            while (v69 != v27);
            goto LABEL_104;
          }
        }
      }
    }
  }

  result = 1;
LABEL_82:
  if (v87 != v89)
  {
    v63 = result;
    free(v87);
    return v63;
  }

  return result;
}

void mlir::mps::ReshapeOp::downgradeToVersion(mlir::Operation **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v26 = &unk_28685B550;
  v27 = 0x300000001;
  v28 = 4;
  v29[0] = mlir::getElementTypeOrSelf(*(*(v6 + 9) + 24));
  if (mlir::Type::isInteger(v29, 4) && ((v7 = a2[2], v7 < v27) || v7 == v27 && ((v16 = a2[3], v16 < HIDWORD(v27)) || v16 == HIDWORD(v27) && a2[4] < v28)))
  {
    v19[0] = "failed to downgrade: requested target version is {0}, but input type of int4 is only supported from version {1}";
    v19[1] = 111;
    v19[2] = v23;
    v19[3] = 2;
    v20 = 1;
    v21[0] = &unk_28685E490;
    v21[1] = a2;
    v22[0] = &unk_28685E4C0;
    v22[1] = &v26;
    v23[0] = v21;
    v23[1] = v22;
    v25 = 263;
    v24 = v19;
    mlir::OpState::emitOpError(a1, &v24, v29);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v8 = __p;
      if (__p)
      {
        v9 = v35;
        v10 = __p;
        if (v35 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v35 = v8;
        operator delete(v10);
      }

      v11 = v32;
      if (v32)
      {
        v12 = v33;
        v13 = v32;
        if (v33 != v32)
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
          v13 = v32;
        }

        v33 = v11;
        operator delete(v13);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }

  else
  {
    v17 = *(v6 + 9);
    v18 = v6 - 16;
    if (!v17)
    {
      v18 = 0;
    }

    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 1;
  }
}

uint64_t mlir::mps::DepthToSpace2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70[4] = *MEMORY[0x277D85DE8];
  v67[0] = a4;
  v67[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v59 = a6;
  v60[0] = 0;
  v61 = 0;
  v62 = v16;
  v63 = a9;
  v64 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(v60, "mps.depth_to_space_2d", 21, Context);
    v61 = 1;
  }

  v65 = a4;
  v66 = a5;
  if (a5 < 4 || (v18 = mlir::UnknownLoc::get(this, a2), (mlir::mps::DepthToSpace2DOpAdaptor::verify(&v59, v18) & 1) == 0))
  {
    ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    goto LABEL_21;
  }

  v19 = (*(mlir::ValueRange::dereference_iterator(v67, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::ValueRange::dereference_iterator(v67, 1);
  v21 = mlir::ValueRange::dereference_iterator(v67, 2);
  v22 = mlir::ValueRange::dereference_iterator(v67, 3);
  v23 = v19;
  v24 = v62;
  v25 = *(*v19 + 136);
  if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = 0;
  }

  v55 = v19;
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_22;
    }

    v68 = 0;
    v69 = 0;
    v58 = &v68;
    *v56 = v20;
    DefiningOp = mlir::Value::getDefiningOp(v56);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v68, v69);
      v30 = v29;
      v53 = SingleInt;
      v54 = SingleInt & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v30 = 0;
    }

    v68 = 0;
    v69 = 0;
    v58 = &v68;
    *v56 = v21;
    v34 = mlir::Value::getDefiningOp(v56);
    if (v34 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, v34))
    {
      v35 = mlir::getSingleIntValue<long long>(v68, v69);
      v37 = v36;
      v38 = v35 & 0xFFFFFFFFFFFFFF00;
      v39 = v35;
    }

    else
    {
      v38 = 0;
      v37 = 0;
      v39 = 0;
    }

    v68 = 0;
    v69 = 0;
    v58 = &v68;
    *v56 = v22;
    v40 = mlir::Value::getDefiningOp(v56);
    if (v40)
    {
      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, v40))
      {
        v41 = mlir::getSingleIntValue<long long>(v68, v69);
        if (v30 & v37 & 1) != 0 && (v42)
        {
          v43 = v41;
          v68 = v70;
          v69 = 0x400000000;
          Shape = mlir::TensorType::getShape(&v55);
          v46 = v45;
          v58 = v24;
          mlir::IntegerAttr::getValue(&v58, v56);
          if (v57 > 0x40)
          {
            v47 = **v56;
            MEMORY[0x259C63150]();
          }

          else
          {
            LODWORD(v47) = v56[0];
          }

          if (v48)
          {
            v49 = v68;
            v50 = v69;
            ElementType = mlir::TensorType::getElementType(&v55);
            v23 = mlir::RankedTensorType::get(v49, v50, ElementType, 0);
          }

          else
          {
            v23 = 0;
          }

          if (v68 != v70)
          {
            v52 = v23;
            free(v68);
            v23 = v52;
          }

          if (!v48)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v19);
LABEL_21:
    v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    goto LABEL_22;
  }

  if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Cannot use on a non-tensor input type"))
  {
    return 0;
  }

  v23 = 0;
LABEL_22:
  v32 = *(a11 + 8);
  if (v32 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v32) = v23;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::DepthToSpace2DOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v19[0] = *(a1 + 24);
    v21[0] = mlir::IntegerAttr::getType(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.depth_to_space_2d' op attribute 'block_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
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
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x259C63150](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'mps.depth_to_space_2d' op requires attribute 'block_size'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          MEMORY[0x259C63150](v10, 0x1000C8077774924);
        }
      }

      while (v8 != v7);
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::mps::DepthToSpace2DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::SpaceToDepth2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70[4] = *MEMORY[0x277D85DE8];
  v67[0] = a4;
  v67[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v59 = a6;
  v60[0] = 0;
  v61 = 0;
  v62 = v16;
  v63 = a9;
  v64 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(v60, "mps.space_to_depth_2d", 21, Context);
    v61 = 1;
  }

  v65 = a4;
  v66 = a5;
  if (a5 < 4 || (v18 = mlir::UnknownLoc::get(this, a2), (mlir::mps::SpaceToDepth2DOpAdaptor::verify(&v59, v18) & 1) == 0))
  {
    ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    goto LABEL_21;
  }

  v19 = (*(mlir::ValueRange::dereference_iterator(v67, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = mlir::ValueRange::dereference_iterator(v67, 1);
  v21 = mlir::ValueRange::dereference_iterator(v67, 2);
  v22 = mlir::ValueRange::dereference_iterator(v67, 3);
  v23 = v19;
  v24 = v62;
  v25 = *(*v19 + 136);
  if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = 0;
  }

  v55 = v19;
  if (v19)
  {
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_22;
    }

    v68 = 0;
    v69 = 0;
    v58 = &v68;
    *v56 = v20;
    DefiningOp = mlir::Value::getDefiningOp(v56);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v68, v69);
      v30 = v29;
      v53 = SingleInt;
      v54 = SingleInt & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v30 = 0;
    }

    v68 = 0;
    v69 = 0;
    v58 = &v68;
    *v56 = v21;
    v34 = mlir::Value::getDefiningOp(v56);
    if (v34 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, v34))
    {
      v35 = mlir::getSingleIntValue<long long>(v68, v69);
      v37 = v36;
      v38 = v35 & 0xFFFFFFFFFFFFFF00;
      v39 = v35;
    }

    else
    {
      v38 = 0;
      v37 = 0;
      v39 = 0;
    }

    v68 = 0;
    v69 = 0;
    v58 = &v68;
    *v56 = v22;
    v40 = mlir::Value::getDefiningOp(v56);
    if (v40)
    {
      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v58, v40))
      {
        v41 = mlir::getSingleIntValue<long long>(v68, v69);
        if (v30 & v37 & 1) != 0 && (v42)
        {
          v43 = v41;
          v68 = v70;
          v69 = 0x400000000;
          Shape = mlir::TensorType::getShape(&v55);
          v46 = v45;
          v58 = v24;
          mlir::IntegerAttr::getValue(&v58, v56);
          if (v57 > 0x40)
          {
            v47 = **v56;
            MEMORY[0x259C63150]();
          }

          else
          {
            LODWORD(v47) = v56[0];
          }

          if (v48)
          {
            v49 = v68;
            v50 = v69;
            ElementType = mlir::TensorType::getElementType(&v55);
            v23 = mlir::RankedTensorType::get(v49, v50, ElementType, 0);
          }

          else
          {
            v23 = 0;
          }

          if (v68 != v70)
          {
            v52 = v23;
            free(v68);
            v23 = v52;
          }

          if (!v48)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v19);
LABEL_21:
    v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    goto LABEL_22;
  }

  if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Cannot use on a non-tensor input type"))
  {
    return 0;
  }

  v23 = 0;
LABEL_22:
  v32 = *(a11 + 8);
  if (v32 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v32) = v23;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::SpaceToDepth2DOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v19[0] = *(a1 + 24);
    v21[0] = mlir::IntegerAttr::getType(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.space_to_depth_2d' op attribute 'block_size' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
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
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x259C63150](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "'mps.space_to_depth_2d' op requires attribute 'block_size'";
    v20 = 259;
    mlir::emitError(a2, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          MEMORY[0x259C63150](v10, 0x1000C8077774924);
        }
      }

      while (v8 != v7);
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::mps::SpaceToDepth2DOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::DepthToSpace2DOp::verify(mlir::mps::DepthToSpace2DOp *this)
{
  v93 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v78 = v1;
  v2 = *(v1 + 72);
  v3 = *(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = v2[7];
  v5 = v2[11];
  v6 = v2[15];
  v7 = *(*v3 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v77 = v3;
  if (v3)
  {
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 1;
    }

    v75[0] = *(v1 + 80);
    mlir::IntegerAttr::getValue(v75, &v81);
    if (v82 > 0x40)
    {
      v9 = *v81;
      MEMORY[0x259C63150]();
    }

    else
    {
      v9 = v81;
    }

    v74 = v9;
    v75[0] = v4;
    v81 = 0;
    v82 = 0;
    *&v79 = &v81;
    DefiningOp = mlir::Value::getDefiningOp(v75);
    if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v79, DefiningOp))
    {
      SingleInt = mlir::getSingleIntValue<long long>(v81, v82);
      v22 = v21;
      v23 = SingleInt & 0xFFFFFFFFFFFFFF00;
      v24 = SingleInt;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v24 = 0;
    }

    v25 = v24 | v23;
    v72 = v24 | v23;
    v73 = v22;
    v81 = 0;
    v82 = 0;
    *&v79 = &v81;
    v75[0] = v5;
    v26 = mlir::Value::getDefiningOp(v75);
    if (v26 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v79, v26))
    {
      v27 = mlir::getSingleIntValue<long long>(v81, v82);
      v29 = v28;
      v30 = v27 & 0xFFFFFFFFFFFFFF00;
      v31 = v27;
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v31 = 0;
    }

    v32 = v31 | v30;
    v70 = v31 | v30;
    v71 = v29;
    v81 = 0;
    v82 = 0;
    *&v79 = &v81;
    v75[0] = v6;
    v33 = mlir::Value::getDefiningOp(v75);
    if (!v33 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v79, v33) & 1) == 0)
    {
      return 1;
    }

    v34 = mlir::getSingleIntValue<long long>(v81, v82);
    v68 = v34;
    v69 = v35;
    v10 = 1;
    if (v22 & 1) != 0 && (v29 & 1) != 0 && (v35)
    {
      v36 = v34;
      Shape = mlir::TensorType::getShape(&v77);
      v39 = v38;
      v67 = v38;
      v40 = (v38 & (v23 >> 63)) + v25;
      if (v40 >= 0 && v38 > v40)
      {
        v41 = (v38 & (v30 >> 63)) + v32;
        if (v41 < 0 || v38 <= v41)
        {
          v75[0] = "invalid height_axis (";
          v76 = 259;
          mlir::OpState::emitOpError(&v78, v75, &v81);
          v44 = &v81;
        }

        else
        {
          v42 = (v38 & (v36 >> 63)) + v36;
          if (v42 < 0 || v38 <= v42)
          {
            v75[0] = "invalid depth_axis (";
            v76 = 259;
            mlir::OpState::emitOpError(&v78, v75, &v81);
            v44 = &v81;
            v53 = &v68;
            goto LABEL_69;
          }

          if (!v9)
          {
            v75[0] = "invalid block_size (";
            v76 = 259;
            mlir::OpState::emitOpError(&v78, v75, &v81);
            mlir::InFlightDiagnostic::operator<<<long long &>(&v81, &v74);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v58, ")");
            goto LABEL_71;
          }

          if (v42 == v41)
          {
            v75[0] = "Invalid degenerate axes: depth_axis (";
            v76 = 259;
            mlir::OpState::emitOpError(&v78, v75, &v81);
            if ((v69 & 1) == 0)
            {
              goto LABEL_80;
            }

            mlir::InFlightDiagnostic::operator<<<long long &>(&v81, &v68);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v43, ") height_axis (");
            if ((v71 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            if (v42 == v40)
            {
              v75[0] = "Invalid degenerate axes: depth_axis (";
              v76 = 259;
              mlir::OpState::emitOpError(&v78, v75, &v81);
              if ((v69 & 1) == 0)
              {
                goto LABEL_80;
              }

              mlir::InFlightDiagnostic::operator<<<long long &>(&v81, &v68);
              mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v59, ") width_axis (");
              if ((v73 & 1) == 0)
              {
                goto LABEL_80;
              }

              v53 = &v72;
LABEL_69:
              mlir::InFlightDiagnostic::operator<<<long long &>(v44, v53);
              mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v54, ") for shape of rank ");
              v56 = &v67;
LABEL_70:
              mlir::InFlightDiagnostic::operator<<<long long &>(v55, v56);
LABEL_71:
              v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
              return v10;
            }

            if (v40 != v41)
            {
LABEL_81:
              v61 = *(Shape + v42);
              *&v79 = v61;
              if (v61 != 0x8000000000000000 && v61 % (v9 * v9))
              {
                v75[0] = "block_size (";
                v76 = 259;
                mlir::OpState::emitOpError(&v78, v75, &v81);
                mlir::InFlightDiagnostic::operator<<<long long &>(&v81, &v74);
                mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v62, ") squared (");
                v66 = v74 * v74;
                mlir::InFlightDiagnostic::operator<<<long long &>(v63, &v66);
                mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v64, ") must be multiple of depth ");
                v56 = &v79;
                goto LABEL_70;
              }

              return 1;
            }

            v75[0] = "Invalid degenerate axes: width_axis (";
            v76 = 259;
            mlir::OpState::emitOpError(&v78, v75, &v81);
            if ((v73 & 1) == 0 || (mlir::InFlightDiagnostic::operator<<<long long &>(&v81, &v72), mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v60, ") height_axis ("), (v71 & 1) == 0))
            {
LABEL_80:
              Shape = std::__throw_bad_optional_access[abi:nn200100]();
              goto LABEL_81;
            }
          }
        }

        v53 = &v70;
        goto LABEL_69;
      }

      v75[0] = "invalid width_axis (";
      v76 = 259;
      mlir::OpState::emitOpError(&v78, v75, &v81);
      if (v81)
      {
        LODWORD(v79) = 2;
        *(&v79 + 1) = v25;
        if (v84 >= v85)
        {
          if (v83 > &v79 || v83 + 24 * v84 <= &v79)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v83 + 24 * v84;
        v46 = v79;
        *(v45 + 2) = v80;
        *v45 = v46;
        v47 = ++v84;
        if (v81)
        {
          LODWORD(v79) = 3;
          *(&v79 + 1) = ") for shape of rank ";
          v80 = 20;
          if (v47 >= v85)
          {
            if (v83 > &v79 || v83 + 24 * v47 <= &v79)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v83 + 24 * v84;
          v49 = v79;
          *(v48 + 2) = v80;
          *v48 = v49;
          v50 = ++v84;
          if (v81)
          {
            LODWORD(v79) = 2;
            *(&v79 + 1) = v39;
            if (v50 >= v85)
            {
              if (v83 > &v79 || v83 + 24 * v50 <= &v79)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v51 = v83 + 24 * v84;
            v52 = v79;
            *(v51 + 2) = v80;
            *v51 = v52;
            ++v84;
          }
        }
      }

      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
      if (v81)
      {
        mlir::InFlightDiagnostic::report(&v81);
      }

      if (v92 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v82);
      }
    }
  }

  else
  {
    v75[0] = "Cannot use on a non-tensor input type";
    v76 = 259;
    mlir::OpState::emitOpError(&v78, v75, &v81);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
    if (v81)
    {
      mlir::InFlightDiagnostic::report(&v81);
    }

    if (v92 == 1)
    {
      if (v91 != &v92)
      {
        free(v91);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v90;
        v13 = __p;
        if (v90 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v90 = v11;
        operator delete(v13);
      }

      v14 = v87;
      if (v87)
      {
        v15 = v88;
        v16 = v87;
        if (v88 != v87)
        {
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
          v16 = v87;
        }

        v88 = v14;
        operator delete(v16);
      }

      if (v83 != &v86)
      {
        free(v83);
      }
    }
  }

  return v10;
}

BOOL mlir::mps::SpaceToDepth2DOp::verify(mlir::mps::SpaceToDepth2DOp *this)
{
  v90 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v75 = v1;
  v2 = *(v1 + 72);
  v3 = *(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = v2[7];
  v5 = v2[11];
  v6 = v2[15];
  v7 = *(*v3 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v74 = v3;
  if (!v3)
  {
    v72[0] = "Cannot use on a non-tensor input type";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
    if (v78)
    {
      mlir::InFlightDiagnostic::report(&v78);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v87;
        v13 = __p;
        if (v87 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v87 = v11;
        operator delete(v13);
      }

      v14 = v84;
      if (v84)
      {
        v15 = v85;
        v16 = v84;
        if (v85 != v84)
        {
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
          v16 = v84;
        }

        v85 = v14;
        operator delete(v16);
      }

      if (v80 != &v83)
      {
        free(v80);
      }
    }

    return v10;
  }

  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  v72[0] = *(v1 + 80);
  mlir::IntegerAttr::getValue(v72, &v78);
  if (v79 > 0x40)
  {
    v9 = *v78;
    MEMORY[0x259C63150]();
  }

  else
  {
    v9 = v78;
  }

  v71 = v9;
  v72[0] = v4;
  v78 = 0;
  v79 = 0;
  *&v76 = &v78;
  DefiningOp = mlir::Value::getDefiningOp(v72);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v76, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<long long>(v78, v79);
    v22 = v21;
    v23 = SingleInt & 0xFFFFFFFFFFFFFF00;
    v24 = SingleInt;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
  }

  v25 = v24 | v23;
  v69 = v24 | v23;
  v70 = v22;
  v78 = 0;
  v79 = 0;
  *&v76 = &v78;
  v72[0] = v5;
  v26 = mlir::Value::getDefiningOp(v72);
  if (!v26)
  {
    v28 = 0;
LABEL_36:
    v29 = 0;
    goto LABEL_37;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v76, v26))
  {
    v28 = 0;
    LOBYTE(v26) = 0;
    goto LABEL_36;
  }

  v27 = mlir::getSingleIntValue<long long>(v78, v79);
  v28 = v27 & 0xFFFFFFFFFFFFFF00;
  v29 = v27;
LABEL_37:
  v67 = v29 | v28;
  v68 = v26;
  v78 = 0;
  v79 = 0;
  *&v76 = &v78;
  v72[0] = v6;
  v30 = mlir::Value::getDefiningOp(v72);
  if (!v30 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v76, v30) & 1) == 0)
  {
    return 1;
  }

  v65 = mlir::getSingleIntValue<long long>(v78, v79);
  v66 = v31;
  v10 = 1;
  if ((v22 & 1) == 0 || (v68 & 1) == 0 || (v31 & 1) == 0)
  {
    return v10;
  }

  Shape = mlir::TensorType::getShape(&v74);
  v64 = v33;
  if ((v68 & 1) == 0 || (v66 & 1) == 0)
  {
    goto LABEL_86;
  }

  v34 = (v33 & (v23 >> 63)) + v25;
  if (v34 < 0 || v33 <= v34)
  {
    v72[0] = "invalid width_axis (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    if (v78)
    {
      LODWORD(v76) = 2;
      *(&v76 + 1) = v25;
      if (v81 >= v82)
      {
        if (v80 > &v76 || v80 + 24 * v81 <= &v76)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v80 + 24 * v81;
      v42 = v76;
      *(v41 + 2) = v77;
      *v41 = v42;
      v43 = ++v81;
      if (v78)
      {
        LODWORD(v76) = 3;
        *(&v76 + 1) = ") for shape of rank ";
        v77 = 20;
        if (v43 >= v82)
        {
          if (v80 > &v76 || v80 + 24 * v43 <= &v76)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v80 + 24 * v81;
        v45 = v76;
        *(v44 + 2) = v77;
        *v44 = v45;
        v46 = ++v81;
        if (v78)
        {
          LODWORD(v76) = 2;
          *(&v76 + 1) = v64;
          if (v46 >= v82)
          {
            if (v80 > &v76 || v80 + 24 * v46 <= &v76)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v80 + 24 * v81;
          v48 = v76;
          *(v47 + 2) = v77;
          *v47 = v48;
          ++v81;
        }
      }
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v78);
    if (v78)
    {
      mlir::InFlightDiagnostic::report(&v78);
    }

    if (v89 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v79);
    }

    return v10;
  }

  v35 = (v33 & (v67 >> 63)) + v67;
  if (v35 < 0 || v33 <= v35)
  {
    v72[0] = "invalid height_axis (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    v39 = &v78;
    goto LABEL_73;
  }

  v36 = (v33 & (v65 >> 63)) + v65;
  if (v36 < 0 || v33 <= v36)
  {
    v72[0] = "invalid depth_axis (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    v39 = &v78;
    v49 = &v65;
    goto LABEL_75;
  }

  v37 = v71;
  if (v71 <= 0)
  {
    v72[0] = "invalid block_size (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v71);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v54, ")");
    goto LABEL_77;
  }

  if (v36 == v35)
  {
    v72[0] = "Invalid degenerate axes: depth_axis (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    if ((v66 & 1) == 0)
    {
      goto LABEL_86;
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v65);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, ") height_axis (");
    if ((v68 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_73;
  }

  if (v36 == v34)
  {
    v72[0] = "Invalid degenerate axes: depth_axis (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    if ((v66 & 1) == 0)
    {
      goto LABEL_86;
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v65);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v55, ") width_axis (");
    if ((v70 & 1) == 0)
    {
      goto LABEL_86;
    }

    v49 = &v69;
LABEL_75:
    mlir::InFlightDiagnostic::operator<<<long long &>(v39, v49);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, ") for shape of rank ");
    v52 = &v64;
LABEL_76:
    mlir::InFlightDiagnostic::operator<<<long long &>(v51, v52);
LABEL_77:
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
    return v10;
  }

  if (v34 != v35)
  {
    goto LABEL_87;
  }

  v72[0] = "Invalid degenerate axes: width_axis (";
  v73 = 259;
  mlir::OpState::emitOpError(&v75, v72, &v78);
  if (v70)
  {
    mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v69);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v56, ") height_axis (");
    if (v68)
    {
LABEL_73:
      v49 = &v67;
      goto LABEL_75;
    }
  }

LABEL_86:
  Shape = std::__throw_bad_optional_access[abi:nn200100]();
LABEL_87:
  v57 = *(Shape + v34);
  *&v76 = v57;
  v58 = *(Shape + v35);
  v63 = v58;
  v59 = 0x8000000000000000;
  v60 = 0x8000000000000000;
  if (v57 == 0x8000000000000000)
  {
    if (v58 == 0x8000000000000000)
    {
      goto LABEL_89;
    }

LABEL_92:
    v59 = v58 / v37;
    if (v57 == 0x8000000000000000)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  v60 = v57 / v37;
  if (v58 != 0x8000000000000000)
  {
    goto LABEL_92;
  }

LABEL_89:
  if (v57 == 0x8000000000000000)
  {
    goto LABEL_95;
  }

LABEL_93:
  if (v60 * v37 != v57)
  {
    v72[0] = "block_size (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v71);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v61, ") must be multiple of width ");
    v52 = &v76;
    goto LABEL_76;
  }

LABEL_95:
  if (v58 != 0x8000000000000000 && v59 * v37 != v58)
  {
    v72[0] = "block_size (";
    v73 = 259;
    mlir::OpState::emitOpError(&v75, v72, &v78);
    mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v71);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v62, ") must be multiple of height ");
    v52 = &v63;
    goto LABEL_76;
  }

  return v10;
}

BOOL mlir::mps::BatchToSpaceOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v21[0] = a4;
  v21[1] = a5;
  if (a5 > 3)
  {
    v20 = 0;
    v14 = *(mlir::ValueRange::dereference_iterator(v21, 0) + 8);
    v15 = mlir::ValueRange::dereference_iterator(v21, 1);
    v16 = mlir::ValueRange::dereference_iterator(v21, 2);
    v17 = mlir::ValueRange::dereference_iterator(v21, 3);
    result = 0;
    if (v18)
    {
      v19 = *(a11 + 8);
      if (v19 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v19) = v20;
      ++*(a11 + 8);
      return 1;
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::inferBatchToSpaceReturnType(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v44[6] = *MEMORY[0x277D85DE8];
  v8 = *(*a3 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v35 = v10;
  if (v10)
  {
    if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      *a8 = v10;
    }

    else
    {
      v12 = *(*(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v14 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        v14 = 0;
      }

      v34 = v14;
      if (v14 && (!mlir::TensorType::hasRank(&v34) || (mlir::TensorType::getShape(&v34), v19 < 2)))
      {
        v43[0] = v44;
        v43[1] = 0x600000000;
        v41[0] = v42;
        v41[1] = 0x600000000;
        v38 = 0;
        v39 = 0;
        v36 = &v38;
        v37 = a5;
        DefiningOp = mlir::Value::getDefiningOp(&v37);
        if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v36, DefiningOp) & 1) != 0 && (SingleInt = mlir::getSingleIntValue<long long>(v38, v39), (v24 & 1) != 0) && (v25 = SingleInt, (mlir::matchConstantWithIntVector<long long>(a4, v43) & 1) != 0) && (mlir::matchConstantWithIntVector<long long>(a6, v41) & 1) != 0)
        {
          v38 = v40;
          v39 = 0x600000000;
          Shape = mlir::TensorType::getShape(&v35);
          {
            v28 = v38;
            v29 = v39;
            ElementType = mlir::TensorType::getElementType(&v35);
            v31 = mlir::RankedTensorType::get(v28, v29, ElementType, 0);
          }

          else
          {
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
            v31 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
          }

          *a8 = v31;
          if (v38 != v40)
          {
            free(v38);
          }
        }

        else
        {
          v32 = mlir::getElementTypeOrSelf(v10);
          *a8 = mlir::UnrankedTensorType::get(v32);
        }

        if (v41[0] != v42)
        {
          free(v41[0]);
        }

        if (v43[0] != v44)
        {
          free(v43[0]);
        }
      }

      else
      {
        v20 = mlir::getElementTypeOrSelf(v10);
        *a8 = mlir::UnrankedTensorType::get(v20);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "Cannot use on a non-tensor input type");
  }
}

uint64_t mlir::mps::BatchToSpaceOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::SpaceToBatchOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v20[0] = a4;
  v20[1] = a5;
  if (a5 > 3)
  {
    v19 = 0;
    v14 = *(mlir::ValueRange::dereference_iterator(v20, 0) + 8);
    v15 = mlir::ValueRange::dereference_iterator(v20, 1);
    v16 = mlir::ValueRange::dereference_iterator(v20, 2);
    v17 = mlir::ValueRange::dereference_iterator(v20, 3);
    {
      v18 = *(a11 + 8);
      if (v18 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v18) = v19;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

uint64_t mlir::mps::SpaceToBatchOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::BatchToSpaceOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v112[6] = *MEMORY[0x277D85DE8];
  v92 = *this;
  v1 = *(v92 + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v90 = 0;
  v91 = v2;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v5 = *(v1 + 88);
  v95 = 0;
  v96[0] = 0;
  v107 = &v95;
  v110 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v110);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v107, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v95, v96[0]);
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = SingleInt;
  v10 = *(*(v92 + 9) + 56);
  v110 = &v89;
  v95 = v10;
  v11 = mlir::Value::getDefiningOp(&v95);
  if (!v11)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v110, v11))
  {
    return 1;
  }

  v12 = *(*(v92 + 9) + 120);
  v107 = &v87;
  v95 = v12;
  v13 = mlir::Value::getDefiningOp(&v95);
  if (!v13 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v107, v13) & 1) == 0)
  {
    return 1;
  }

  v110 = v112;
  v111 = 0x600000000;
  v107 = v109;
  v108 = 0x600000000;
  mlir::getIntValues<long long>(v89, v90, &v110, 1);
  mlir::getIntValues<long long>(v87, v88, &v107, 1);
  if (v111 != v108)
  {
    v86 = 259;
    mlir::OpState::emitOpError(&v92, v85, &v95);
    if (v95)
    {
      mlir::Diagnostic::operator<<(v96, *(*(v92 + 9) + 56));
      if (v95)
      {
        LODWORD(v93) = 3;
        v94 = 43;
        if (v98 >= v99)
        {
          if (v97 > &v93 || v97 + 24 * v98 <= &v93)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v25 = v97 + 24 * v98;
        v26 = v93;
        *(v25 + 2) = v94;
        *v25 = v26;
        ++v98;
        if (v95)
        {
          mlir::Diagnostic::operator<<(v96, *(*(v92 + 9) + 120));
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    v27 = result;
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
      result = v27;
    }

    if (v106 != 1)
    {
      goto LABEL_103;
    }

    if (v105 != &v106)
    {
      free(v105);
      result = v27;
    }

    v28 = __p;
    if (__p)
    {
      v29 = v104;
      v30 = __p;
      if (v104 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v104 = v28;
      operator delete(v30);
      result = v27;
    }

    v31 = v101;
    if (v101)
    {
      v32 = v102;
      v33 = v101;
      if (v102 != v101)
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
        v33 = v101;
      }

      v102 = v31;
      operator delete(v33);
      result = v27;
    }

    if (v97 == v100)
    {
LABEL_103:
      v36 = v107;
      if (v107 == v109)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    free(v97);
    result = v27;
    v36 = v107;
    if (v107 == v109)
    {
      goto LABEL_105;
    }

LABEL_104:
    v77 = result;
    free(v36);
    result = v77;
    goto LABEL_105;
  }

  if (*(*v91 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_102:
    result = 1;
    goto LABEL_103;
  }

  mlir::TensorType::getShape(&v91);
  v15 = v14;
  v84 = 0;
  {
    result = 0;
    v36 = v107;
    if (v107 == v109)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  *(&v93 + 1) = 0;
  v94 = 0;
  *&v93 = &v93 + 8;
  {
    v37 = 0;
LABEL_61:
    std::__tree<long long>::destroy(&v93, *(&v93 + 1));
    goto LABEL_62;
  }

  if (*(&v93 + 1))
  {
    v17 = &v93 + 8;
    v18 = *(&v93 + 1);
    do
    {
      if (*(v18 + 4) >= v84)
      {
        v17 = v18;
      }

      v18 = *&v18[8 * (*(v18 + 4) < v84)];
    }

    while (v18);
    if (v17 != &v93 + 8 && v84 >= *(v17 + 4))
    {
      v86 = 259;
      mlir::OpState::emitOpError(&v92, v85, &v95);
      mlir::InFlightDiagnostic::operator<<<long long &>(&v95, &v84);
      if (*v80)
      {
        v81 = v80;
        mlir::Diagnostic::operator<<((v80 + 1), *(*(v92 + 9) + 56));
        v80 = v81;
      }

      v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
      goto LABEL_61;
    }
  }

  std::__tree<long long>::destroy(&v93, *(&v93 + 1));
  Shape = mlir::TensorType::getShape(&v91);
  v20 = 1;
  v82 = 0;
  v83 = 1;
  if (v111)
  {
    v21 = 0;
    v22 = 0;
    v20 = 1;
    while (1)
    {
      v24 = v107[v22];
      if (v24 <= 0)
      {
        break;
      }

      if (v24 != 1)
      {
        v82 = ++v21;
      }

      v20 *= v24;
      v83 = v20;
      if (v111 == ++v22)
      {
        if (v21 >= 4 && *(v92 + 2 * ((*(v92 + 11) >> 23) & 1) + 8))
        {
          v86 = 259;
          mlir::OpState::emitOpError(&v92, v85, &v95);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v95, "axes - got:  ");
          v71 = &v82;
          goto LABEL_101;
        }

        goto LABEL_98;
      }
    }

    v38 = (v15 & (v110[v22] >> 63)) + v110[v22];
    v39 = *(Shape + 8 * v38);
    v86 = 259;
    mlir::OpState::emitOpError(&v92, v85, &v95);
    if (v95)
    {
      LODWORD(v93) = 5;
      *(&v93 + 1) = v22;
      if (v98 >= v99)
      {
        if (v97 > &v93 || v97 + 24 * v98 <= &v93)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v40 = v97 + 24 * v98;
      v41 = v93;
      *(v40 + 2) = v94;
      *v40 = v41;
      v42 = ++v98;
      if (v95)
      {
        LODWORD(v93) = 3;
        *(&v93 + 1) = "] = ";
        v94 = 4;
        if (v42 >= v99)
        {
          if (v97 > &v93 || v97 + 24 * v42 <= &v93)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v43 = v97 + 24 * v98;
        v44 = v93;
        *(v43 + 2) = v94;
        *v43 = v44;
        v45 = ++v98;
        if (v95)
        {
          LODWORD(v93) = 2;
          *(&v93 + 1) = v24;
          if (v45 >= v99)
          {
            if (v97 > &v93 || v97 + 24 * v45 <= &v93)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v97 + 24 * v98;
          v47 = v93;
          *(v46 + 2) = v94;
          *v46 = v47;
          v48 = ++v98;
          if (v95)
          {
            LODWORD(v93) = 3;
            *(&v93 + 1) = " for input size[";
            v94 = 16;
            if (v48 >= v99)
            {
              if (v97 > &v93 || v97 + 24 * v48 <= &v93)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v49 = v97 + 24 * v98;
            v50 = v93;
            *(v49 + 2) = v94;
            *v49 = v50;
            v51 = ++v98;
            if (v95)
            {
              LODWORD(v93) = 2;
              *(&v93 + 1) = v38;
              if (v51 >= v99)
              {
                if (v97 > &v93 || v97 + 24 * v51 <= &v93)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v52 = v97 + 24 * v98;
              v53 = v93;
              *(v52 + 2) = v94;
              *v52 = v53;
              v54 = ++v98;
              if (v95)
              {
                LODWORD(v93) = 3;
                *(&v93 + 1) = "] = ";
                v94 = 4;
                if (v54 >= v99)
                {
                  if (v97 > &v93 || v97 + 24 * v54 <= &v93)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v55 = v97 + 24 * v98;
                v56 = v93;
                *(v55 + 2) = v94;
                *v55 = v56;
                v57 = ++v98;
                if (v95)
                {
                  LODWORD(v93) = 2;
                  *(&v93 + 1) = v39;
                  if (v57 >= v99)
                  {
                    if (v97 > &v93 || v97 + 24 * v57 <= &v93)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v58 = v97 + 24 * v98;
                  v59 = v93;
                  *(v58 + 2) = v94;
                  *v58 = v59;
                  ++v98;
                }
              }
            }
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      v60 = result;
      mlir::InFlightDiagnostic::report(&v95);
      result = v60;
    }

    if ((v106 & 1) == 0)
    {
      goto LABEL_103;
    }

    v61 = result;
    if (v105 != &v106)
    {
      free(v105);
    }

    v62 = __p;
    if (__p)
    {
      v63 = v104;
      v64 = __p;
      if (v104 != __p)
      {
        do
        {
          v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
        }

        while (v63 != v62);
        v64 = __p;
      }

      v104 = v62;
      operator delete(v64);
    }

    v65 = v101;
    if (v101)
    {
      v66 = v102;
      v67 = v101;
      if (v102 != v101)
      {
        do
        {
          v69 = *--v66;
          v68 = v69;
          *v66 = 0;
          if (v69)
          {
            MEMORY[0x259C63150](v68, 0x1000C8077774924);
          }
        }

        while (v66 != v65);
        v67 = v101;
      }

      v102 = v65;
      operator delete(v67);
    }

    if (v97 != v100)
    {
      free(v97);
    }

    result = v61;
    v36 = v107;
    if (v107 != v109)
    {
      goto LABEL_104;
    }

    goto LABEL_105;
  }

LABEL_98:
  v72 = *(Shape + 8 * v84);
  *&v93 = v72;
  if (v72 == 0x8000000000000000 || !(v72 % v20))
  {
    goto LABEL_102;
  }

  v86 = 259;
  mlir::OpState::emitOpError(&v92, v85, &v95);
  mlir::InFlightDiagnostic::operator<<<long long &>(&v95, &v83);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v73, " for input[");
  mlir::InFlightDiagnostic::operator<<<long long &>(v74, &v84);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v75, "] = ");
  v71 = &v93;
LABEL_101:
  mlir::InFlightDiagnostic::operator<<<long long &>(v70, v71);
  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
LABEL_62:
  result = v37;
  v36 = v107;
  if (v107 != v109)
  {
    goto LABEL_104;
  }

LABEL_105:
  if (v110 != v112)
  {
    v78 = result;
    free(v110);
    return v78;
  }

  return result;
}

BOOL mlir::mps::SpaceToBatchOp::verify(mlir::mps::_anonymous_namespace_ **this)
{
  v100[6] = *MEMORY[0x277D85DE8];
  v80 = *this;
  v1 = *(v80 + 9);
  v2 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*v2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = 0;
  }

  v78 = 0;
  v79 = v2;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v5 = *(v1 + 88);
  v83 = 0;
  v84[0] = 0;
  v95 = &v83;
  v98 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v98);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v95, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v83, v84[0]);
  if ((v8 & 1) == 0)
  {
    return 1;
  }

  v9 = SingleInt;
  v10 = *(*(v80 + 9) + 56);
  v98 = &v77;
  v83 = v10;
  v11 = mlir::Value::getDefiningOp(&v83);
  if (!v11)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, v11))
  {
    return 1;
  }

  v12 = *(*(v80 + 9) + 120);
  v95 = &v75;
  v83 = v12;
  v13 = mlir::Value::getDefiningOp(&v83);
  if (!v13 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v95, v13) & 1) == 0)
  {
    return 1;
  }

  v98 = v100;
  v99 = 0x600000000;
  v95 = v97;
  v96 = 0x600000000;
  mlir::getIntValues<long long>(v77, v78, &v98, 1);
  mlir::getIntValues<long long>(v75, v76, &v95, 1);
  if (v99 != v96)
  {
    v74 = 259;
    mlir::OpState::emitOpError(&v80, v73, &v83);
    if (v83)
    {
      mlir::Diagnostic::operator<<(v84, *(*(v80 + 9) + 56));
      if (v83)
      {
        LODWORD(v81) = 3;
        v82 = 43;
        if (v86 >= v87)
        {
          if (v85 > &v81 || v85 + 24 * v86 <= &v81)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v85 + 24 * v86;
        v24 = v81;
        *(v23 + 2) = v82;
        *v23 = v24;
        ++v86;
        if (v83)
        {
          mlir::Diagnostic::operator<<(v84, *(*(v80 + 9) + 120));
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
    v25 = result;
    if (v83)
    {
      mlir::InFlightDiagnostic::report(&v83);
      result = v25;
    }

    if (v94 != 1)
    {
      goto LABEL_98;
    }

    if (v93 != &v94)
    {
      free(v93);
      result = v25;
    }

    v26 = __p;
    if (__p)
    {
      v27 = v92;
      v28 = __p;
      if (v92 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v92 = v26;
      operator delete(v28);
      result = v25;
    }

    v29 = v89;
    if (!v89)
    {
      goto LABEL_92;
    }

    v30 = v90;
    v31 = v89;
    if (v90 == v89)
    {
LABEL_91:
      v90 = v29;
      operator delete(v31);
      result = v25;
LABEL_92:
      if (v85 != &v88)
      {
        free(v85);
        result = v25;
      }

      goto LABEL_98;
    }

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
LABEL_90:
    v31 = v89;
    goto LABEL_91;
  }

  if (*(*v79 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_97;
  }

  mlir::TensorType::getShape(&v79);
  v15 = v14;
  v72 = 0;
  {
    *(&v81 + 1) = 0;
    v82 = 0;
    *&v81 = &v81 + 8;
    {
      if (!*(&v81 + 1))
      {
        goto LABEL_24;
      }

      v17 = &v81 + 8;
      v18 = *(&v81 + 1);
      do
      {
        if (*(v18 + 4) >= v72)
        {
          v17 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 4) < v72)];
      }

      while (v18);
      if (v17 == &v81 + 8 || v72 < *(v17 + 4))
      {
LABEL_24:
        std::__tree<long long>::destroy(&v81, *(&v81 + 1));
        Shape = mlir::TensorType::getShape(&v79);
        v71 = 0;
        if (v99)
        {
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v34 = v95[v20];
            v35 = (v15 & (v98[v20] >> 63)) + v98[v20];
            v36 = *(Shape + 8 * v35);
            if (v34 < 1 || v36 != 0x8000000000000000 && v36 % v34)
            {
              break;
            }

            if (v34 != 1)
            {
              v71 = ++v21;
            }

            if (v99 == ++v20)
            {
              if (v21 >= 4 && *(v80 + 2 * ((*(v80 + 11) >> 23) & 1) + 8))
              {
                v74 = 259;
                mlir::OpState::emitOpError(&v80, v73, &v83);
                mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v83, "axes - got:  ");
                mlir::InFlightDiagnostic::operator<<<long long &>(v64, &v71);
                v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v65);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
                goto LABEL_58;
              }

              goto LABEL_97;
            }
          }

          v74 = 259;
          mlir::OpState::emitOpError(&v80, v73, &v83);
          if (v83)
          {
            LODWORD(v81) = 5;
            *(&v81 + 1) = v20;
            if (v86 >= v87)
            {
              if (v85 > &v81 || v85 + 24 * v86 <= &v81)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v38 = v85 + 24 * v86;
            v39 = v81;
            *(v38 + 2) = v82;
            *v38 = v39;
            v40 = ++v86;
            if (v83)
            {
              LODWORD(v81) = 3;
              *(&v81 + 1) = "] = ";
              v82 = 4;
              if (v40 >= v87)
              {
                if (v85 > &v81 || v85 + 24 * v40 <= &v81)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v41 = v85 + 24 * v86;
              v42 = v81;
              *(v41 + 2) = v82;
              *v41 = v42;
              v43 = ++v86;
              if (v83)
              {
                LODWORD(v81) = 2;
                *(&v81 + 1) = v34;
                if (v43 >= v87)
                {
                  if (v85 > &v81 || v85 + 24 * v43 <= &v81)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v44 = v85 + 24 * v86;
                v45 = v81;
                *(v44 + 2) = v82;
                *v44 = v45;
                v46 = ++v86;
                if (v83)
                {
                  LODWORD(v81) = 3;
                  *(&v81 + 1) = " for input size[";
                  v82 = 16;
                  if (v46 >= v87)
                  {
                    if (v85 > &v81 || v85 + 24 * v46 <= &v81)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v47 = v85 + 24 * v86;
                  v48 = v81;
                  *(v47 + 2) = v82;
                  *v47 = v48;
                  v49 = ++v86;
                  if (v83)
                  {
                    LODWORD(v81) = 2;
                    *(&v81 + 1) = v35;
                    if (v49 >= v87)
                    {
                      if (v85 > &v81 || v85 + 24 * v49 <= &v81)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v50 = v85 + 24 * v86;
                    v51 = v81;
                    *(v50 + 2) = v82;
                    *v50 = v51;
                    v52 = ++v86;
                    if (v83)
                    {
                      LODWORD(v81) = 3;
                      *(&v81 + 1) = "] = ";
                      v82 = 4;
                      if (v52 >= v87)
                      {
                        if (v85 > &v81 || v85 + 24 * v52 <= &v81)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v53 = v85 + 24 * v86;
                      v54 = v81;
                      *(v53 + 2) = v82;
                      *v53 = v54;
                      v55 = ++v86;
                      if (v83)
                      {
                        LODWORD(v81) = 2;
                        *(&v81 + 1) = v36;
                        if (v55 >= v87)
                        {
                          if (v85 > &v81 || v85 + 24 * v55 <= &v81)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v56 = v85 + 24 * v86;
                        v57 = v81;
                        *(v56 + 2) = v82;
                        *v56 = v57;
                        ++v86;
                      }
                    }
                  }
                }
              }
            }
          }

          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
          v25 = result;
          if (v83)
          {
            mlir::InFlightDiagnostic::report(&v83);
            result = v25;
          }

          if ((v94 & 1) == 0)
          {
            goto LABEL_98;
          }

          if (v93 != &v94)
          {
            free(v93);
            result = v25;
          }

          v58 = __p;
          if (__p)
          {
            v59 = v92;
            v60 = __p;
            if (v92 != __p)
            {
              do
              {
                v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
              }

              while (v59 != v58);
              v60 = __p;
            }

            v92 = v58;
            operator delete(v60);
            result = v25;
          }

          v29 = v89;
          if (!v89)
          {
            goto LABEL_92;
          }

          v61 = v90;
          v31 = v89;
          if (v90 == v89)
          {
            goto LABEL_91;
          }

          do
          {
            v63 = *--v61;
            v62 = v63;
            *v61 = 0;
            if (v63)
            {
              MEMORY[0x259C63150](v62, 0x1000C8077774924);
            }
          }

          while (v61 != v29);
          goto LABEL_90;
        }

LABEL_97:
        result = 1;
        goto LABEL_98;
      }

      v74 = 259;
      mlir::OpState::emitOpError(&v80, v73, &v83);
      mlir::InFlightDiagnostic::operator<<<long long &>(&v83, &v72);
      if (*v69)
      {
        v70 = v69;
        mlir::Diagnostic::operator<<((v69 + 1), *(*(v80 + 9) + 56));
        v69 = v70;
      }

      v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v69);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
    }

    else
    {
      v37 = 0;
    }

    std::__tree<long long>::destroy(&v81, *(&v81 + 1));
LABEL_58:
    result = v37;
    goto LABEL_98;
  }

  result = 0;
LABEL_98:
  if (v95 != v97)
  {
    v66 = result;
    free(v95);
    result = v66;
  }

  if (v98 != v100)
  {
    v67 = result;
    free(v98);
    return v67;
  }

  return result;
}

uint64_t mlir::mps::GetCoordOp::inferReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v86 = *MEMORY[0x277D85DE8];
  v81 = v83;
  v82 = 0x400000000;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v73 = a6;
  v74[0] = 0;
  v75 = 0;
  v76 = v14;
  v77 = a9;
  v78 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v73);
    if (v75 == 1)
    {
      v75 = 0;
    }

    mlir::OperationName::OperationName(v74, "mps.get_coordinates", 19, Context);
    v75 = 1;
  }

  v79 = a4;
  v80 = a5;
  v84 = a4;
  v85 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v84, 0);
  v84 = v76;
  if (!v76)
  {
    Value = mlir::IntegerType::get(a1, 32, 1u);
    goto LABEL_20;
  }

  Value = mlir::TypeAttr::getValue(&v84);
  v18 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = *v18;
  {
    v72 = v18;
    mlir::mps::ConstantOp::verify();
    v18 = v72;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_37:
    v43 = 0;
    goto LABEL_38;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_37;
  }

LABEL_12:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22] || *v23 != v20)
  {
    goto LABEL_37;
  }

  v43 = v23[1];
LABEL_38:
  v84 = v18;
  v85 = v43;
  v44 = *(*Value + 136);
  v60 = v44 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v60 || Value != mlir::ShapedType::getElementType(&v84))
  {
    v61 = mlir::IntegerType::get(a1, 32, 1u);
    v30 = mlir::UnrankedTensorType::get(v61);
    v31 = *(a11 + 8);
    if (v31 < *(a11 + 12))
    {
      goto LABEL_89;
    }

LABEL_23:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_20:
  if (mlir::matchConstantWithIntVector<long long>(v16, &v81))
  {
    v29 = v82;
    goto LABEL_22;
  }

  v32 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32)
  {
    v33 = *v32;
    {
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (!v36)
      {
        goto LABEL_98;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      if (!v36)
      {
        goto LABEL_98;
      }
    }

    v37 = v35;
    v38 = v36;
    do
    {
      v39 = v38 >> 1;
      v40 = &v37[2 * (v38 >> 1)];
      v42 = *v40;
      v41 = v40 + 2;
      v38 += ~(v38 >> 1);
      if (v42 < v34)
      {
        v37 = v41;
      }

      else
      {
        v38 = v39;
      }
    }

    while (v38);
    if (v37 != &v35[2 * v36] && *v37 == v34)
    {
      v69 = v37[1];
      v84 = v32;
      v85 = v69;
      if (!mlir::ShapedType::hasRank(&v84))
      {
        goto LABEL_107;
      }

      goto LABEL_99;
    }
  }

LABEL_98:
  v84 = v32;
  v85 = 0;
  if (!mlir::ShapedType::hasRank(&v84))
  {
    goto LABEL_107;
  }

LABEL_99:
  Shape = mlir::ShapedType::getShape(&v84);
  if (!v64)
  {
LABEL_103:
    v66 = mlir::ShapedType::getShape(&v84);
    NumElements = mlir::ShapedType::getNumElements(v66, v67);
    v29 = v82;
    if (NumElements != v82)
    {
      if (NumElements >= v82)
      {
        v70 = v82;
        v71 = NumElements;
        if (NumElements > HIDWORD(v82))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memset_pattern16(v81 + 8 * v82, &unk_25736EFD0, 8 * (NumElements - v82));
        v29 = v70 + v71 - v29;
        LODWORD(v82) = v29;
      }

      else
      {
        LODWORD(v82) = NumElements;
        v29 = NumElements;
      }
    }

LABEL_22:
    v30 = mlir::RankedTensorType::get(v81, v29, Value, 0);
    v31 = *(a11 + 8);
    if (v31 < *(a11 + 12))
    {
      goto LABEL_89;
    }

    goto LABEL_23;
  }

  v65 = 8 * v64;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v65 -= 8;
    if (!v65)
    {
      goto LABEL_103;
    }
  }

LABEL_107:
  v30 = mlir::UnrankedTensorType::get(Value);
  v31 = *(a11 + 8);
  if (v31 >= *(a11 + 12))
  {
    goto LABEL_23;
  }

LABEL_89:
  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 8);
  if (v81 != v83)
  {
    free(v81);
  }

  return 1;
}

uint64_t mlir::mps::detail::GetCoordOpGenericAdaptorBase::getResultType(mlir::mps::detail::GetCoordOpGenericAdaptorBase *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::GetCoordOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::GetCoordOp::verify(mlir::Operation **this)
{
  v95 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v80[0] = v2;
  v80[1] = v13;
  v83 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (!v83)
  {
    goto LABEL_96;
  }

  Value = mlir::TypeAttr::getValue(&v83);
  v15 = *(*Value + 136);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v79 = 257;
    mlir::OpState::emitOpError(this, v78, &v83);
    if (v83)
    {
      LODWORD(v81) = 3;
      *(&v81 + 1) = "Optional return type cannot be a float type.";
      v82 = 44;
      if (v86 >= v87)
      {
        if (v85 > &v81 || v85 + 24 * v86 <= &v81)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v85 + 24 * v86;
      v33 = v81;
      *(v32 + 2) = v82;
      *v32 = v33;
      ++v86;
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
    if (v83)
    {
      mlir::InFlightDiagnostic::report(&v83);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v92;
        v37 = __p;
        if (v92 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v92 = v35;
        operator delete(v37);
      }

      v38 = v89;
      if (!v89)
      {
        goto LABEL_142;
      }

      v39 = v90;
      v40 = v89;
      if (v90 == v89)
      {
        goto LABEL_141;
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
      goto LABEL_140;
    }

    return v34;
  }

  if (Value != mlir::ShapedType::getElementType(v80))
  {
    v79 = 257;
    mlir::OpState::emitOpError(this, v78, &v83);
    if (v83)
    {
      LODWORD(v81) = 3;
      *(&v81 + 1) = "Mismatch of optional return type and operand element type.";
      v82 = 58;
      if (v86 >= v87)
      {
        if (v85 > &v81 || v85 + 24 * v86 <= &v81)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v69 = v85 + 24 * v86;
      v70 = v81;
      *(v69 + 2) = v82;
      *v69 = v70;
      ++v86;
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
    if (v83)
    {
      mlir::InFlightDiagnostic::report(&v83);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v92;
        v73 = __p;
        if (v92 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v92 = v71;
        operator delete(v73);
      }

      v38 = v89;
      if (!v89)
      {
        goto LABEL_142;
      }

      v74 = v90;
      v40 = v89;
      if (v90 == v89)
      {
        goto LABEL_141;
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

      while (v74 != v38);
      goto LABEL_140;
    }
  }

  else
  {
LABEL_96:
    if (!mlir::ShapedType::hasRank(v80))
    {
      return 1;
    }

    Shape = mlir::ShapedType::getShape(v80);
    if (v44)
    {
      v45 = 8 * v44;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v45 -= 8;
        if (!v45)
        {
          goto LABEL_92;
        }
      }

      return 1;
    }

LABEL_92:
    v46 = mlir::ShapedType::getShape(v80);
    NumElements = mlir::ShapedType::getNumElements(v46, v47);
    v49 = *(*(*this + 9) + 56);
    v83 = 0;
    v84 = 0;
    *&v81 = &v83;
    v78[0] = v49;
    DefiningOp = mlir::Value::getDefiningOp(v78);
    if (!DefiningOp)
    {
      return 1;
    }

    if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v81, DefiningOp) & 1) == 0)
    {
      return 1;
    }

    SingleInt = mlir::getSingleIntValue<long long>(v83, v84);
    if ((v52 & 1) == 0)
    {
      return 1;
    }

    v53 = (NumElements & (SingleInt >> 63)) + SingleInt;
    if (v53 >= 0 && NumElements > v53)
    {
      return 1;
    }

    v79 = 257;
    v54 = SingleInt;
    mlir::OpState::emitOpError(this, v78, &v83);
    if (v83)
    {
      LODWORD(v81) = 3;
      *(&v81 + 1) = "invalid axis: ";
      v82 = 14;
      if (v86 >= v87)
      {
        if (v85 > &v81 || v85 + 24 * v86 <= &v81)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v55 = v85 + 24 * v86;
      v56 = v81;
      *(v55 + 2) = v82;
      *v55 = v56;
      v57 = ++v86;
      if (v83)
      {
        LODWORD(v81) = 2;
        *(&v81 + 1) = v54;
        if (v57 >= v87)
        {
          if (v85 > &v81 || v85 + 24 * v57 <= &v81)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v58 = v85 + 24 * v86;
        v59 = v81;
        *(v58 + 2) = v82;
        *v58 = v59;
        v60 = ++v86;
        if (v83)
        {
          LODWORD(v81) = 3;
          *(&v81 + 1) = ".";
          v82 = 1;
          if (v60 >= v87)
          {
            if (v85 > &v81 || v85 + 24 * v60 <= &v81)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v61 = v85 + 24 * v86;
          v62 = v81;
          *(v61 + 2) = v82;
          *v61 = v62;
          ++v86;
        }
      }
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
    if (v83)
    {
      mlir::InFlightDiagnostic::report(&v83);
    }

    if (v94 == 1)
    {
      if (v93 != &v94)
      {
        free(v93);
      }

      v63 = __p;
      if (__p)
      {
        v64 = v92;
        v65 = __p;
        if (v92 != __p)
        {
          do
          {
            v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
          }

          while (v64 != v63);
          v65 = __p;
        }

        v92 = v63;
        operator delete(v65);
      }

      v38 = v89;
      if (!v89)
      {
        goto LABEL_142;
      }

      v66 = v90;
      v40 = v89;
      if (v90 == v89)
      {
LABEL_141:
        v90 = v38;
        operator delete(v40);
LABEL_142:
        if (v85 != &v88)
        {
          free(v85);
        }

        return v34;
      }

      do
      {
        v68 = *--v66;
        v67 = v68;
        *v66 = 0;
        if (v68)
        {
          MEMORY[0x259C63150](v67, 0x1000C8077774924);
        }
      }

      while (v66 != v38);
LABEL_140:
      v40 = v89;
      goto LABEL_141;
    }
  }

  return v34;
}

uint64_t mlir::mps::GetCoordOp::getResultType(mlir::mps::GetCoordOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v2)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::mps::GetCoordOp::readProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1, "mps", 3);
  if (v5)
  {
    v6 = v4[2];
    if (!v6)
    {
      return 1;
    }

    if (v6 == 1)
    {
      v7 = v4[3];
      if (v7 < 2 || v7 == 2 && !v4[4])
      {
        return 1;
      }
    }
  }

  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v9);
}

uint64_t mlir::mps::GetCoordOp::writeProperties(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 44);
  Context = mlir::Attribute::getContext((*a1 + 24));
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(Context, "mps", 3);
  result = mlir::Dialect::getRegisteredInterface<mlir::mps::MPSBytecodeDialectInterface>(LoadedDialect);
  v8 = *(result + 32);
  if (v8 && (v8 != 1 || HIDWORD(*(result + 32)) >= 2 && (HIDWORD(v8) != 2 || *(result + 40))))
  {
    return (*(*a2 + 24))(a2, *(v3 + 16 * ((v4 >> 23) & 1) + 64));
  }

  return result;
}

void mlir::mps::GetCoordOp::downgradeToVersion(mlir::Operation **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v27[0] = &unk_28685B550;
  v27[1] = 0x200000001;
  v28 = 1;
  v5 = a2[2];
  if (v5 && (v5 != 1 || (v6 = a2[3], v6 >= 2) && (v6 != 2 || a2[4])) || (v26 = *(v4 + 2 * ((*(v4 + 11) >> 23) & 1) + 8)) == 0 || (v29[0] = mlir::TypeAttr::getValue(&v26), mlir::Type::isSignedInteger(v29, 32)))
  {
    v17 = *(v4 + 9);
    v18 = v4 - 16;
    if (!v17)
    {
      v18 = 0;
    }

    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 1;
  }

  else
  {
    v19[0] = "failed to downgrade: requested target version is {0}, but return type other than si32 is only supported from version {1}";
    v19[1] = 120;
    v19[2] = v23;
    v19[3] = 2;
    v20 = 1;
    v21[0] = &unk_28685E490;
    v21[1] = a2;
    v22[0] = &unk_28685E4C0;
    v22[1] = v27;
    v23[0] = v21;
    v23[1] = v22;
    v25 = 263;
    v24 = v19;
    mlir::OpState::emitOpError(a1, &v24, v29);
    *a3 = 0;
    *(a3 + 16) = 0;
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
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v35 = v9;
        operator delete(v11);
      }

      v12 = v32;
      if (v32)
      {
        v13 = v33;
        v14 = v32;
        if (v33 != v32)
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
          v14 = v32;
        }

        v33 = v12;
        operator delete(v14);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }
}

BOOL mlir::mps::UpdateRandomStateOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::mps::UpdateRandomStateOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::InitRandomPhiloxStateOp::inferReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 7;
  v11 = mlir::IntegerType::get(a1, 32, 1u);
  v12 = mlir::RankedTensorType::get(v15, 1, v11, 0);
  v13 = *(a11 + 8);
  if (v13 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v13) = v12;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::InitRandomPhiloxStateOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::RandomUniformOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = *a7;
    v20 = a6;
    v21[0] = 0;
    v22 = 0;
    v23 = v13;
    v24 = a9;
    v25 = a10;
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = a6;
    v21[0] = 0;
    v22 = 0;
    v23 = 0;
    v24 = a9;
    v25 = a10;
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  Context = mlir::Attribute::getContext(&v20);
  if (v22 == 1)
  {
    v22 = 0;
  }

  mlir::OperationName::OperationName(v21, "mps.random_uniform", 18, Context);
  v22 = 1;
LABEL_8:
  v26 = a4;
  v27 = a5;
  v28 = a4;
  v29 = 1;
  v28 = mlir::ValueRange::offset_base(&v28, 1);
  v29 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v28, 0);
  v28 = v23;
  Value = mlir::TypeAttr::getValue(&v28);
  TensorType = mlir::mps::getTensorType(v15, Value);
  v18 = *(a11 + 8);
  if (v18 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v18) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::getTensorType(uint64_t a1, uint64_t a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x400000000;
  if (mlir::matchConstantWithIntVector<long long>(a1, &v22))
  {
    result = mlir::RankedTensorType::get(v22, v23, a2, 0);
    goto LABEL_17;
  }

  v5 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v17 = v5;
  if (!v5 || !mlir::TensorType::hasRank(&v17))
  {
    goto LABEL_16;
  }

  Shape = mlir::TensorType::getShape(&v17);
  if (v9)
  {
    v10 = 8 * v9;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    result = mlir::UnrankedTensorType::get(a2);
    goto LABEL_17;
  }

LABEL_14:
  v11 = mlir::TensorType::getShape(&v17);
  NumElements = mlir::ShapedType::getNumElements(v11, v12);
  v14 = NumElements;
  __b = v21;
  v20 = 4;
  if (NumElements >= 5)
  {
    v19 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (NumElements)
  {
    memset_pattern16(v21, &unk_25736EFD0, 8 * NumElements);
  }

  v19 = v14;
  result = mlir::RankedTensorType::get(v21, v14, a2, 0);
  if (__b != v21)
  {
    v16 = result;
    free(__b);
    result = v16;
  }

LABEL_17:
  if (v22 != v24)
  {
    v15 = result;
    free(v22);
    return v15;
  }

  return result;
}

uint64_t mlir::mps::RandomUniformOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::RandomNormalOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v21 = a6;
  v22[0] = 0;
  v23 = 0;
  v24 = v13;
  v25 = v14;
  v26 = a9;
  v27 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v21);
    if (v23 == 1)
    {
      v23 = 0;
    }

    mlir::OperationName::OperationName(v22, "mps.random_normal", 17, Context);
    v23 = 1;
  }

  v28 = a4;
  v29 = a5;
  v30 = a4;
  v31 = 1;
  v30 = mlir::ValueRange::offset_base(&v30, 1);
  v31 = 0;
  v16 = mlir::ValueRange::dereference_iterator(&v30, 0);
  v30 = *(&v24 + 1);
  Value = mlir::TypeAttr::getValue(&v30);
  TensorType = mlir::mps::getTensorType(v16, Value);
  v19 = *(a11 + 8);
  if (v19 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v19) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::RandomNormalOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::RandomTruncatedNormalOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
    v15 = a7[2];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v22 = a6;
  v23[0] = 0;
  v24 = 0;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = a9;
  v29 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v22);
    if (v24 == 1)
    {
      v24 = 0;
    }

    mlir::OperationName::OperationName(v23, "mps.random_truncated_normal", 27, Context);
    v24 = 1;
  }

  v30 = a4;
  v31 = a5;
  v32 = a4;
  v33 = 1;
  v32 = mlir::ValueRange::offset_base(&v32, 1);
  v33 = 0;
  v17 = mlir::ValueRange::dereference_iterator(&v32, 0);
  v32 = *(&v26 + 1);
  Value = mlir::TypeAttr::getValue(&v32);
  TensorType = mlir::mps::getTensorType(v17, Value);
  v20 = *(a11 + 8);
  if (v20 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v20) = TensorType;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::PadOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v68 = a4;
  v69 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v60 = a6;
  v61[0] = 0;
  v62 = 0;
  v63 = v16;
  v64 = a9;
  v17 = a5;
  v65 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(v61, "mps.pad", 7, Context);
    v62 = 1;
    v17 = v69;
  }

  v66 = a4;
  v67 = a5;
  if (v17 >= 3)
  {
    v19 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::PadOpAdaptor::verify(&v60, v19))
    {
      v20 = mlir::ValueRange::dereference_iterator(&v68, 0);
      *__p = 0u;
      v59 = 0u;
      *v57 = 0u;
      v52 = 0;
      v53 = 0;
      v54[0] = &v52;
      v70 = mlir::ValueRange::dereference_iterator(&v68, 1);
      DefiningOp = mlir::Value::getDefiningOp(&v70);
      if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v54, DefiningOp) & 1) == 0)
      {
        ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
        v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
        goto LABEL_29;
      }

      {
        goto LABEL_46;
      }

      v22 = mlir::ValueRange::dereference_iterator(&v68, 0);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v54[0] = v23;
      v54[1] = v24;
      if (!v23)
      {
        if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot pad a non-shaped type"))
        {
          goto LABEL_46;
        }

        v23 = 0;
        goto LABEL_29;
      }

      if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_29;
      }

      v70 = v72;
      v71 = 0x400000000;
      Shape = mlir::ShapedType::getShape(v54);
      v26 = v57[0];
      v27 = v57[1];
      v28 = v57[1] - v57[0];
      v29 = (v57[1] - v57[0]) >> 3;
      v30 = __p[1];
      v55 = v29;
      v56 = v31;
      if (v31 == v29)
      {
        LODWORD(v32) = v71;
        if (v29 != v71)
        {
          if (v29 >= v71)
          {
            if (v29 > HIDWORD(v71))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v29 != v71)
            {
              v33 = Shape;
              bzero(&v70[8 * v71], 8 * (v29 - v71));
              Shape = v33;
            }
          }

          v32 = v28 >> 3;
          LODWORD(v71) = v28 >> 3;
        }

        if (v27 != v26)
        {
          v34 = 0;
          v35 = v70;
          do
          {
            v45 = *(Shape + 8 * v34);
            v46 = 0x8000000000000000;
            if (v45 != 0x8000000000000000)
            {
              v46 = v26[v34] + v45 + v30[v34];
            }

            v35[v34++] = v46;
          }

          while (v29 > v34);
        }
      }

      else
      {
        if (!mlir::emitOptionalError<char const(&)[16],unsigned long &,char const(&)[29],unsigned long &,char const(&)[2]>(a2, a3, "paddings rank (", &v55, ") doesn't match input rank (", &v56, ")"))
        {
          v23 = 0;
          v50 = 0;
LABEL_43:
          if (v70 != v72)
          {
            v51 = v23;
            free(v70);
            v23 = v51;
          }

          if (!v50)
          {
LABEL_46:
            result = 0;
            v42 = __p[1];
            if (!__p[1])
            {
LABEL_32:
              if (v57[0])
              {
                v57[1] = v57[0];
                v44 = result;
                operator delete(v57[0]);
                return v44;
              }

              return result;
            }

LABEL_31:
            *&v59 = v42;
            v43 = result;
            operator delete(v42);
            result = v43;
            goto LABEL_32;
          }

LABEL_29:
          v41 = *(a11 + 8);
          if (v41 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v41) = v23;
          ++*(a11 + 8);
          result = 1;
          v42 = __p[1];
          if (!__p[1])
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        LODWORD(v32) = v71;
      }

      v47 = v70;
      v48 = v32;
      ElementType = mlir::ShapedType::getElementType(v54);
      v23 = mlir::RankedTensorType::get(v47, v48, ElementType, 0);
      v50 = 1;
      goto LABEL_43;
    }
  }

  v36 = mlir::Float32Type::get(this, a2);
  v37 = mlir::UnrankedTensorType::get(v36);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::PadOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.pad' op requires attribute 'paddingMode'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::mps::anonymous namespace::getPaddingValues(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v26 = a4;
  v27 = a5;
  ShapedType = mlir::ElementsAttr::getShapedType(&v26);
  v29 = v8;
  Shape = mlir::ShapedType::getShape(&ShapedType);
  if (v10 == 2 && *(Shape + 8) == 2)
  {
    ShapedType = v30;
    v29 = 0x800000000;
    v11 = Shape;
    mlir::getIntValues<long long>(v26, v27, &ShapedType, 1);
    v12 = *v11;
    v13 = *a3;
    v14 = (a3[1] - *a3) >> 3;
    if (*v11 <= 0)
    {
      if (v12 <= v14)
      {
        if (v12 < v14)
        {
          a3[1] = &v13[v12];
        }
      }

      else
      {
        std::vector<long long>::__append(a3, v12 - v14);
      }

      v24 = a3[3];
      v25 = (a3[4] - v24) >> 3;
      if (v12 <= v25)
      {
        if (v12 < v25)
        {
          a3[4] = v24 + 8 * v12;
        }
      }

      else
      {
        std::vector<long long>::__append((a3 + 3), v12 - v25);
      }

      v18 = ShapedType;
      if (ShapedType == v30)
      {
        return 1;
      }
    }

    else
    {
      if (v12 <= v14)
      {
        if (v12 < v14)
        {
          a3[1] = &v13[v12];
        }
      }

      else
      {
        std::vector<long long>::__append(a3, v12 - v14);
        v13 = *a3;
      }

      v16 = 0;
      v17 = 1;
      v18 = ShapedType;
      do
      {
        *v13++ = v18[v16];
        v19 = v12 > v17++;
        v16 += 2;
      }

      while (v19);
      v20 = a3[3];
      v21 = (a3[4] - v20) >> 3;
      if (v12 <= v21)
      {
        if (v12 < v21)
        {
          a3[4] = &v20[v12];
        }
      }

      else
      {
        std::vector<long long>::__append((a3 + 3), v12 - v21);
        v18 = ShapedType;
        v20 = a3[3];
      }

      v22 = 1;
      v23 = 1;
      do
      {
        *v20++ = v18[v22];
        v19 = v12 > v23++;
        v22 += 2;
      }

      while (v19);
      if (v18 == v30)
      {
        return 1;
      }
    }

    free(v18);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "invalid shape for paddings tensor");
}

uint64_t mlir::mps::PadOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::PadOp::verify(mlir::Operation **this)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v57 = v2;
    v58 = 0;
    if (mlir::ShapedType::hasRank(&v57))
    {
      goto LABEL_15;
    }

    return 1;
  }

  v27 = v7[1];
  v57 = v2;
  v58 = v27;
  if (!mlir::ShapedType::hasRank(&v57))
  {
    return 1;
  }

LABEL_15:
  v55 = 0;
  v56 = 0;
  v13 = *(*(*this + 9) + 56);
  *&v72 = &v55;
  v61[0] = v13;
  DefiningOp = mlir::Value::getDefiningOp(v61);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v72, DefiningOp))
  {
    return 1;
  }

  v15 = *(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8);
  if (!v15 || v15 == 3)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(&v57);
  mlir::ShapedType::getShape(&v57);
  v19 = v18;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  {
    if (v19 < 1)
    {
LABEL_35:
      result = 1;
    }

    else
    {
      v20 = 0;
      if (v15 == 1)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      while (1)
      {
        v22 = *(v72 + 8 * v20) <= *(*(&v73 + 1) + 8 * v20) ? *(*(&v73 + 1) + 8 * v20) : *(v72 + 8 * v20);
        v23 = *(Shape + 8 * v20);
        v24 = v23 + v21;
        if (v23 != 0x8000000000000000 && v22 > v24)
        {
          break;
        }

        if (v19 == ++v20)
        {
          goto LABEL_35;
        }
      }

      v53 = "padding values too large at axis ";
      v54 = 259;
      mlir::OpState::emitOpError(this, &v53, v61);
      if (v61[0])
      {
        LODWORD(v59) = 2;
        *(&v59 + 1) = v20;
        if (v63 >= v64)
        {
          if (v62 > &v59 || v62 + 24 * v63 <= &v59)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v62 + 24 * v63;
        v31 = v59;
        *(v30 + 2) = v60;
        *v30 = v31;
        v32 = ++v63;
        if (v61[0])
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = ", max padding is ";
          v60 = 17;
          if (v32 >= v64)
          {
            if (v62 > &v59 || v62 + 24 * v32 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v62 + 24 * v63;
          v34 = v59;
          *(v33 + 2) = v60;
          *v33 = v34;
          v35 = ++v63;
          if (v61[0])
          {
            LODWORD(v59) = 2;
            *(&v59 + 1) = v24;
            if (v35 >= v64)
            {
              if (v62 > &v59 || v62 + 24 * v35 <= &v59)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v36 = v62 + 24 * v63;
            v37 = v59;
            *(v36 + 2) = v60;
            *v36 = v37;
            v38 = ++v63;
            if (v61[0])
            {
              LODWORD(v59) = 3;
              *(&v59 + 1) = ", got ";
              v60 = 6;
              if (v38 >= v64)
              {
                if (v62 > &v59 || v62 + 24 * v38 <= &v59)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v39 = v62 + 24 * v63;
              v40 = v59;
              *(v39 + 2) = v60;
              *v39 = v40;
              v41 = ++v63;
              if (v61[0])
              {
                LODWORD(v59) = 2;
                *(&v59 + 1) = v22;
                if (v41 >= v64)
                {
                  if (v62 > &v59 || v62 + 24 * v41 <= &v59)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v42 = v62 + 24 * v63;
                v43 = v59;
                *(v42 + 2) = v60;
                *v42 = v43;
                ++v63;
              }
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
      v44 = result;
      if (v61[0])
      {
        mlir::InFlightDiagnostic::report(v61);
        result = v44;
      }

      if (v71)
      {
        if (v70 != &v71)
        {
          free(v70);
          result = v44;
        }

        v45 = __p;
        if (__p)
        {
          v46 = v69;
          v47 = __p;
          if (v69 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v69 = v45;
          operator delete(v47);
          result = v44;
        }

        v48 = v66;
        if (v66)
        {
          v49 = v67;
          v50 = v66;
          if (v67 != v66)
          {
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
            v50 = v66;
          }

          v67 = v48;
          operator delete(v50);
          result = v44;
        }

        if (v62 != &v65)
        {
          free(v62);
          result = v44;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  if (*(&v73 + 1))
  {
    *&v74 = *(&v73 + 1);
    v28 = result;
    operator delete(*(&v73 + 1));
    result = v28;
  }

  if (v72)
  {
    *(&v72 + 1) = v72;
    v29 = result;
    operator delete(v72);
    return v29;
  }

  return result;
}

BOOL mlir::mps::PadGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61[4] = *MEMORY[0x277D85DE8];
  v58[0] = a4;
  v58[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v58, 0);
    v14 = mlir::ValueRange::dereference_iterator(v58, 1);
    *__p = 0u;
    v57 = 0u;
    *v55 = 0u;
    v47 = 0;
    v48 = 0;
    v50[0] = &v47;
    v59 = mlir::ValueRange::dereference_iterator(v58, 2);
    DefiningOp = mlir::Value::getDefiningOp(&v59);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v50, DefiningOp) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8));
      v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      goto LABEL_24;
    }

    {
      goto LABEL_47;
    }

    v16 = *(v13 + 8);
    v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
    v50[0] = v17;
    v50[1] = v18;
    if (!v17 || (v19 = v17, v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v16 & 0xFFFFFFFFFFFFFFF8)), v49[0] = v20, v49[1] = v21, !v20))
    {
      if (!mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot calculate the pad gradient a non-shaped type"))
      {
        goto LABEL_47;
      }

      v23 = 0;
      goto LABEL_24;
    }

    v22 = v20;
    v23 = v19;
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_24;
    }

    v23 = v22;
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_24;
    }

    v59 = v61;
    v60 = 0x400000000;
    Shape = mlir::ShapedType::getShape(v49);
    v26 = v25;
    mlir::ShapedType::getShape(v50);
    v53 = (v55[1] - v55[0]) >> 3;
    v54 = v26;
    v52 = (v57 - __p[1]) >> 3;
    if (v26 == v53)
    {
      if (v26 == (v57 - __p[1]) >> 3)
      {
        v27 = v60;
        if (v26 != v60)
        {
          if (v26 >= v60)
          {
            if (v26 > HIDWORD(v60))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v26 != v60)
            {
              bzero(&v59[8 * v60], 8 * (v26 - v60));
            }
          }

          LODWORD(v60) = v26;
          v27 = v26;
        }

        if (!v26)
        {
          goto LABEL_41;
        }

        v28 = 0;
        v29 = v59;
        v30 = 1;
        v31 = v55[0];
        v32 = __p[1];
        while (1)
        {
          while (1)
          {
            v38 = *(Shape + 8 * v28);
            if (v38 != 0x8000000000000000)
            {
              break;
            }

            v29[v28] = 0x8000000000000000;
            v28 = v30++;
            if (v26 <= v28)
            {
              goto LABEL_41;
            }
          }

          v51 = v32[v28] + v31[v28];
          v39 = v38 < v51;
          v40 = v38 - v51;
          if (v39)
          {
            break;
          }

          v29[v28] = v40;
          v28 = v30++;
          if (v26 <= v28)
          {
            goto LABEL_41;
          }
        }

        if (!mlir::emitOptionalError<char const(&)[21],long long const&,char const(&)[37],long long const&,char const(&)[2]>(a2, a3, "gradient dimension (", (Shape + 8 * v28), ")is smaller than the total padding (", &v51, ")"))
        {
          goto LABEL_43;
        }

LABEL_40:
        v27 = v60;
LABEL_41:
        v42 = v59;
        v43 = v27;
        ElementType = mlir::ShapedType::getElementType(v49);
        v23 = mlir::RankedTensorType::get(v42, v43, ElementType, 0);
        v45 = 1;
        goto LABEL_44;
      }

      v41 = &v52;
    }

    else
    {
      v41 = &v53;
    }

    if (!mlir::emitOptionalError<char const(&)[18],unsigned long &,char const(&)[3],unsigned long &>(a2, a3, "pad rank mismatch", &v54, ", ", v41))
    {
LABEL_43:
      v23 = 0;
      v45 = 0;
LABEL_44:
      if (v59 != v61)
      {
        v46 = v23;
        free(v59);
        v23 = v46;
      }

      if (!v45)
      {
LABEL_47:
        v36 = 0;
        v37 = __p[1];
        if (!__p[1])
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_24:
      v35 = *(a11 + 8);
      if (v35 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v35) = v23;
      ++*(a11 + 8);
      v36 = 1;
      v37 = __p[1];
      if (!__p[1])
      {
        goto LABEL_27;
      }

LABEL_26:
      *&v57 = v37;
      operator delete(v37);
LABEL_27:
      if (v55[0])
      {
        v55[1] = v55[0];
        operator delete(v55[0]);
      }

      return v36;
    }

    goto LABEL_40;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}