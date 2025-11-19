uint64_t sub_10027BD40(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AC844(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::CastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t sub_10027BE30(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AC888(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t sub_10027BF30(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_1002AC8CC(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ViewOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Alignments = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
  v8 = v7;
  Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
  v11 = v10;
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v8)
  {
    if (v8 < 7)
    {
      v12 = 0;
      v13 = v8;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 2, v8, 8);
      v12 = *(a3 + 2);
      v13 = v8 - v12;
      if (v8 == v12)
      {
        goto LABEL_7;
      }
    }

    bzero((*a3 + 8 * v12), 8 * v13);
LABEL_7:
    *(a3 + 2) = v8;
  }

  if (v11)
  {
    v14 = 8 * v11;
    v15 = 1;
    v16 = Interleave;
    while (*v16 != 0x8000000000000000)
    {
      v15 *= *v16++;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v15 = 0x8000000000000000;
    if (v8)
    {
LABEL_17:
      v17 = *a3 - 8;
      v18 = Alignments - 8;
      v19 = Interleave - 16;
      v20 = a2 - 16;
      v21 = 1;
      v22 = 8;
      v23 = 0x8000000000000000;
      v24 = v15 == 0x8000000000000000;
      if (v15 == 0x8000000000000000)
      {
        goto LABEL_19;
      }

LABEL_18:
      v23 = (*(v18 + 8 * v8) + v21 * v15 - 1) / *(v18 + 8 * v8) * *(v18 + 8 * v8);
LABEL_19:
      while (1)
      {
        *(v17 + 8 * v8) = v23;
        if (8 * v8 == v22)
        {
          break;
        }

        v25 = *(v20 + 8 * v8);
        v26 = *(v19 + 8 * v8);
        v17 -= 8;
        v18 -= 8;
        v22 += 8;
        v19 -= 8;
        v20 -= 8;
        v21 = v23;
        v15 = v25 / v26;
        v23 = 0x8000000000000000;
        v24 |= v15 == 0x8000000000000000;
        if ((v24 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v15 = 1;
LABEL_14:
    if (v8)
    {
      goto LABEL_17;
    }
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::verifyEncoding(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
  if (v12 == a3 + 1)
  {
    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
    if (v13 == a3)
    {
      Alignments = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(a1);
      if (v15)
      {
        v16 = 8 * v15;
        while (*Alignments != 0x8000000000000000)
        {
          ++Alignments;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        a5(v149, a6);
        if (v149[0])
        {
          v146 = 3;
          v147 = "expected alignments to be statically defined";
          v148 = 44;
          v77 = &v146;
          v78 = v150;
          if (v151 >= v152)
          {
            if (v150 <= &v146 && v150 + 24 * v151 > &v146)
            {
              v135 = &v146 - v150;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v78 = v150;
              v77 = (v150 + v135);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
              v77 = &v146;
              v78 = v150;
            }
          }

          v79 = &v78[24 * v151];
          v80 = *v77;
          *(v79 + 2) = *(v77 + 2);
          *v79 = v80;
          ++v151;
        }

        v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
        if (v149[0])
        {
          mlir::InFlightDiagnostic::report(v149);
        }

        if (v159 == 1)
        {
          if (v158 != &v159)
          {
            free(v158);
          }

          v81 = __p;
          if (__p)
          {
            v82 = v157;
            v83 = __p;
            if (v157 != __p)
            {
              do
              {
                v82 = sub_10005BEF4(v82 - 1);
              }

              while (v82 != v81);
              v83 = __p;
            }

            v157 = v81;
            operator delete(v83);
          }

          v52 = v154;
          if (!v154)
          {
            goto LABEL_168;
          }

          v84 = v155;
          v54 = v154;
          if (v155 == v154)
          {
LABEL_167:
            v155 = v52;
            operator delete(v54);
LABEL_168:
            if (v150 != v153)
            {
              free(v150);
            }

            return v48;
          }

          do
          {
            v85 = *--v84;
            *v84 = 0;
            if (v85)
            {
              operator delete[]();
            }
          }

          while (v84 != v52);
LABEL_166:
          v54 = v154;
          goto LABEL_167;
        }
      }

      else
      {
LABEL_7:
        Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(a1);
        if (a3)
        {
          v19 = 0;
          v20 = 8 * v18;
          v21 = 8 * a3;
          v22 = a2;
          while (v20)
          {
            v23 = *v22;
            v24 = *Interleave;
            if (*Interleave != 1 && (*v22 == 0x8000000000000000) == (*Interleave != 0x8000000000000000))
            {
              a5(v149, a6);
              if (v149[0])
              {
                v146 = 3;
                v147 = "dimension shape and dimension interleave factor must both be static or both be dynamic";
                v148 = 86;
                v87 = &v146;
                v88 = v150;
                if (v151 >= v152)
                {
                  if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                  {
                    v136 = &v146 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v88 = v150;
                    v87 = (v150 + v136);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v87 = &v146;
                    v88 = v150;
                  }
                }

                v89 = &v88[24 * v151];
                v90 = *v87;
                *(v89 + 2) = *(v87 + 2);
                *v89 = v90;
                ++v151;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
              if (v149[0])
              {
                mlir::InFlightDiagnostic::report(v149);
              }

              if (v159 != 1)
              {
                return v48;
              }

              if (v158 != &v159)
              {
                free(v158);
              }

              v91 = __p;
              if (__p)
              {
                v92 = v157;
                v93 = __p;
                if (v157 != __p)
                {
                  do
                  {
                    v92 = sub_10005BEF4(v92 - 1);
                  }

                  while (v92 != v91);
                  v93 = __p;
                }

                v157 = v91;
                operator delete(v93);
              }

              v52 = v154;
              if (!v154)
              {
                goto LABEL_168;
              }

              v94 = v155;
              v54 = v154;
              if (v155 == v154)
              {
                goto LABEL_167;
              }

              do
              {
                v95 = *--v94;
                *v94 = 0;
                if (v95)
                {
                  operator delete[]();
                }
              }

              while (v94 != v52);
              goto LABEL_166;
            }

            if (v24 != 1 && ((v19 ^ 1) & 1) == 0)
            {
              a5(v149, a6);
              if (v149[0])
              {
                v146 = 3;
                v147 = "interleave is only supported for a single dimension";
                v148 = 51;
                v96 = &v146;
                v97 = v150;
                if (v151 >= v152)
                {
                  if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                  {
                    v137 = &v146 - v150;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v97 = v150;
                    v96 = (v150 + v137);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                    v96 = &v146;
                    v97 = v150;
                  }
                }

                v98 = &v97[24 * v151];
                v99 = *v96;
                *(v98 + 2) = *(v96 + 2);
                *v98 = v99;
                ++v151;
              }

              v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
              if (v149[0])
              {
                mlir::InFlightDiagnostic::report(v149);
              }

              if (v159 != 1)
              {
                return v48;
              }

              if (v158 != &v159)
              {
                free(v158);
              }

              v100 = __p;
              if (__p)
              {
                v101 = v157;
                v102 = __p;
                if (v157 != __p)
                {
                  do
                  {
                    v101 = sub_10005BEF4(v101 - 1);
                  }

                  while (v101 != v100);
                  v102 = __p;
                }

                v157 = v100;
                operator delete(v102);
              }

              v52 = v154;
              if (!v154)
              {
                goto LABEL_168;
              }

              v103 = v155;
              v54 = v154;
              if (v155 == v154)
              {
                goto LABEL_167;
              }

              do
              {
                v104 = *--v103;
                *v103 = 0;
                if (v104)
                {
                  operator delete[]();
                }
              }

              while (v103 != v52);
              goto LABEL_166;
            }

            if (v23 != 0x8000000000000000)
            {
              if (v23 < v24)
              {
                v105 = Interleave;
                a5(v149, a6);
                if (v149[0])
                {
                  v146 = 3;
                  v147 = "dimension interleave factor ";
                  v148 = 28;
                  v106 = &v146;
                  v107 = v150;
                  if (v151 >= v152)
                  {
                    if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                    {
                      v138 = &v146 - v150;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v107 = v150;
                      v106 = (v150 + v138);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v106 = &v146;
                      v107 = v150;
                    }
                  }

                  v108 = &v107[24 * v151];
                  v109 = *v106;
                  *(v108 + 2) = *(v106 + 2);
                  *v108 = v109;
                  v110 = ++v151;
                  if (v149[0])
                  {
                    v111 = *v105;
                    v146 = 2;
                    v147 = v111;
                    v112 = &v146;
                    v113 = v150;
                    if (v110 >= v152)
                    {
                      if (v150 <= &v146 && v150 + 24 * v110 > &v146)
                      {
                        v140 = &v146 - v150;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v110 + 1, 24);
                        v113 = v150;
                        v112 = (v150 + v140);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v110 + 1, 24);
                        v112 = &v146;
                        v113 = v150;
                      }
                    }

                    v114 = &v113[24 * v151];
                    v115 = *v112;
                    *(v114 + 2) = *(v112 + 2);
                    *v114 = v115;
                    v116 = ++v151;
                    if (v149[0])
                    {
                      v146 = 3;
                      v147 = " must not be greater than dimension shape ";
                      v148 = 42;
                      v117 = &v146;
                      v118 = v150;
                      if (v116 >= v152)
                      {
                        if (v150 <= &v146 && v150 + 24 * v116 > &v146)
                        {
                          v142 = &v146 - v150;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v116 + 1, 24);
                          v118 = v150;
                          v117 = (v150 + v142);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v116 + 1, 24);
                          v117 = &v146;
                          v118 = v150;
                        }
                      }

                      v119 = &v118[24 * v151];
                      v120 = *v117;
                      *(v119 + 2) = *(v117 + 2);
                      *v119 = v120;
                      v121 = ++v151;
                      if (v149[0])
                      {
                        v122 = *v22;
                        v146 = 2;
                        v147 = v122;
                        v123 = &v146;
                        v124 = v150;
                        if (v121 >= v152)
                        {
                          if (v150 <= &v146 && v150 + 24 * v121 > &v146)
                          {
                            v144 = &v146 - v150;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v121 + 1, 24);
                            v124 = v150;
                            v123 = (v150 + v144);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v121 + 1, 24);
                            v123 = &v146;
                            v124 = v150;
                          }
                        }

                        v125 = &v124[24 * v151];
                        v126 = *v123;
                        *(v125 + 2) = *(v123 + 2);
                        *v125 = v126;
                        ++v151;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
                if (v149[0])
                {
                  mlir::InFlightDiagnostic::report(v149);
                }

                if (v159 != 1)
                {
                  return v48;
                }

                if (v158 != &v159)
                {
                  free(v158);
                }

                v127 = __p;
                if (__p)
                {
                  v128 = v157;
                  v129 = __p;
                  if (v157 != __p)
                  {
                    do
                    {
                      v128 = sub_10005BEF4(v128 - 1);
                    }

                    while (v128 != v127);
                    v129 = __p;
                  }

                  v157 = v127;
                  operator delete(v129);
                }

                v52 = v154;
                if (!v154)
                {
                  goto LABEL_168;
                }

                v130 = v155;
                v54 = v154;
                if (v155 == v154)
                {
                  goto LABEL_167;
                }

                do
                {
                  v131 = *--v130;
                  *v130 = 0;
                  if (v131)
                  {
                    operator delete[]();
                  }
                }

                while (v130 != v52);
                goto LABEL_166;
              }

              if (v23 % v24)
              {
                v25 = Interleave;
                a5(v149, a6);
                if (v149[0])
                {
                  v146 = 3;
                  v147 = "dimension shape ";
                  v148 = 16;
                  v26 = &v146;
                  v27 = v150;
                  if (v151 >= v152)
                  {
                    if (v150 <= &v146 && v150 + 24 * v151 > &v146)
                    {
                      v139 = &v146 - v150;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v27 = v150;
                      v26 = (v150 + v139);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
                      v26 = &v146;
                      v27 = v150;
                    }
                  }

                  v28 = v25;
                  v29 = &v27[24 * v151];
                  v30 = *v26;
                  *(v29 + 2) = *(v26 + 2);
                  *v29 = v30;
                  v31 = ++v151;
                  if (v149[0])
                  {
                    v32 = *v22;
                    v146 = 2;
                    v147 = v32;
                    v33 = &v146;
                    v34 = v150;
                    if (v31 >= v152)
                    {
                      if (v150 <= &v146 && v150 + 24 * v31 > &v146)
                      {
                        v141 = &v146 - v150;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v31 + 1, 24);
                        v34 = v150;
                        v33 = (v150 + v141);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v31 + 1, 24);
                        v33 = &v146;
                        v34 = v150;
                      }

                      v28 = v25;
                    }

                    v35 = &v34[24 * v151];
                    v36 = *v33;
                    *(v35 + 2) = *(v33 + 2);
                    *v35 = v36;
                    v37 = ++v151;
                    if (v149[0])
                    {
                      v146 = 3;
                      v147 = " must be a multiple of dimension interleave factor ";
                      v148 = 51;
                      v38 = &v146;
                      v39 = v150;
                      if (v37 >= v152)
                      {
                        if (v150 <= &v146 && v150 + 24 * v37 > &v146)
                        {
                          v143 = &v146 - v150;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v37 + 1, 24);
                          v39 = v150;
                          v38 = (v150 + v143);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v37 + 1, 24);
                          v38 = &v146;
                          v39 = v150;
                        }

                        v28 = v25;
                      }

                      v40 = &v39[24 * v151];
                      v41 = *v38;
                      *(v40 + 2) = *(v38 + 2);
                      *v40 = v41;
                      v42 = ++v151;
                      if (v149[0])
                      {
                        v43 = *v28;
                        v146 = 2;
                        v147 = v43;
                        v44 = &v146;
                        v45 = v150;
                        if (v42 >= v152)
                        {
                          if (v150 <= &v146 && v150 + 24 * v42 > &v146)
                          {
                            v145 = &v146 - v150;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v42 + 1, 24);
                            v45 = v150;
                            v44 = (v150 + v145);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v42 + 1, 24);
                            v44 = &v146;
                            v45 = v150;
                          }
                        }

                        v46 = &v45[24 * v151];
                        v47 = *v44;
                        *(v46 + 2) = *(v44 + 2);
                        *v46 = v47;
                        ++v151;
                      }
                    }
                  }
                }

                v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
                if (v149[0])
                {
                  mlir::InFlightDiagnostic::report(v149);
                }

                if (v159 != 1)
                {
                  return v48;
                }

                if (v158 != &v159)
                {
                  free(v158);
                }

                v49 = __p;
                if (__p)
                {
                  v50 = v157;
                  v51 = __p;
                  if (v157 != __p)
                  {
                    do
                    {
                      v50 = sub_10005BEF4(v50 - 1);
                    }

                    while (v50 != v49);
                    v51 = __p;
                  }

                  v157 = v49;
                  operator delete(v51);
                }

                v52 = v154;
                if (!v154)
                {
                  goto LABEL_168;
                }

                v53 = v155;
                v54 = v154;
                if (v155 == v154)
                {
                  goto LABEL_167;
                }

                do
                {
                  v86 = *--v53;
                  *v53 = 0;
                  if (v86)
                  {
                    operator delete[]();
                  }
                }

                while (v53 != v52);
                goto LABEL_166;
              }
            }

            v19 |= v24 != 1;
            ++v22;
            ++Interleave;
            v20 -= 8;
            v21 -= 8;
            if (!v21)
            {
              break;
            }
          }
        }

        v149[0] = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getBaseEncoding(a1);
        if (v149[0])
        {
          return mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(v149, v73, v74, v75, v76, a2, a3, a4, a5, a6);
        }

        else
        {
          return 1;
        }
      }
    }

    else
    {
      a5(v149, a6);
      if (v149[0])
      {
        v146 = 3;
        v147 = "expected interleave to have (rank) elements";
        v148 = 43;
        v64 = &v146;
        v65 = v150;
        if (v151 >= v152)
        {
          if (v150 <= &v146 && v150 + 24 * v151 > &v146)
          {
            v134 = &v146 - v150;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v65 = v150;
            v64 = (v150 + v134);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
            v64 = &v146;
            v65 = v150;
          }
        }

        v66 = &v65[24 * v151];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        ++v151;
      }

      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
      if (v149[0])
      {
        mlir::InFlightDiagnostic::report(v149);
      }

      if (v159 == 1)
      {
        if (v158 != &v159)
        {
          free(v158);
        }

        v68 = __p;
        if (__p)
        {
          v69 = v157;
          v70 = __p;
          if (v157 != __p)
          {
            do
            {
              v69 = sub_10005BEF4(v69 - 1);
            }

            while (v69 != v68);
            v70 = __p;
          }

          v157 = v68;
          operator delete(v70);
        }

        v52 = v154;
        if (!v154)
        {
          goto LABEL_168;
        }

        v71 = v155;
        v54 = v154;
        if (v155 == v154)
        {
          goto LABEL_167;
        }

        do
        {
          v72 = *--v71;
          *v71 = 0;
          if (v72)
          {
            operator delete[]();
          }
        }

        while (v71 != v52);
        goto LABEL_166;
      }
    }
  }

  else
  {
    a5(v149, a6);
    if (v149[0])
    {
      v146 = 3;
      v147 = "expected alignments to have (rank + 1) elements";
      v148 = 47;
      v55 = &v146;
      v56 = v150;
      if (v151 >= v152)
      {
        if (v150 <= &v146 && v150 + 24 * v151 > &v146)
        {
          v133 = &v146 - v150;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v56 = v150;
          v55 = (v150 + v133);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v150, v153, v151 + 1, 24);
          v55 = &v146;
          v56 = v150;
        }
      }

      v57 = &v56[24 * v151];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      ++v151;
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v149);
    if (v149[0])
    {
      mlir::InFlightDiagnostic::report(v149);
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v157;
        v61 = __p;
        if (v157 != __p)
        {
          do
          {
            v60 = sub_10005BEF4(v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v157 = v59;
        operator delete(v61);
      }

      v52 = v154;
      if (!v154)
      {
        goto LABEL_168;
      }

      v62 = v155;
      v54 = v154;
      if (v155 == v154)
      {
        goto LABEL_167;
      }

      do
      {
        v63 = *--v62;
        *v62 = 0;
        if (v63)
        {
          operator delete[]();
        }
      }

      while (v62 != v52);
      goto LABEL_166;
    }
  }

  return v48;
}

void *mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::materializeConstant(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  result = sub_10006BC04(a3);
  v23[0] = result;
  v23[1] = v10;
  if (result)
  {
    if (mlir::TypedAttr::getType(v23) == a4)
    {
      if (a3)
      {
        v11 = *a3;
        {
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1002A30CC();
          v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          if (!v14)
          {
            goto LABEL_18;
          }
        }

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
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v21 = v15[1];
          goto LABEL_19;
        }
      }

LABEL_18:
      v21 = 0;
LABEL_19:
      v22[0] = a3;
      v22[1] = v21;
      return sub_10016C43C(a2, a5, &v24, v22);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  v11 = a7;
  v10 = a6;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v14[1] = a1;
  return sub_100287CB8(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_8ArrayRefIxEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_, v14, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, &v13, &v12, &v10, &v11);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v41) = 0;
  v44 = 0;
  LOBYTE(v37) = 0;
  v40 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v2 = sub_10027DEB8(a1);
  v3 = *a1;
  if ((v2 & 0x100000000) == 0)
  {
    v4 = (*(v3 + 40))(a1);
    v24 = 259;
    (*(*a1 + 24))(v28, a1, v4, v23);
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v34;
        v7 = __p;
        if (v34 != __p)
        {
          do
          {
            v6 = sub_10005BEF4(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v34 = v5;
        operator delete(v7);
      }

      v8 = v31;
      if (v31)
      {
        v9 = v32;
        v10 = v31;
        if (v32 != v31)
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
          v10 = v31;
        }

        v32 = v8;
        operator delete(v10);
      }

      if (v29 != &v30)
      {
        free(v29);
      }
    }

    goto LABEL_48;
  }

  v12 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "alignments", 10, v23) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v13 = (*(*a1 + 40))(a1);
  if (v44 == 1 && v41 != v43)
  {
    free(v41);
  }

  v41 = v43;
  v42 = 0x600000000;
  v44 = 1;
  if (((*(*a1 + 600))(a1, &v41, 1, 0) & 1) == 0)
  {
    goto LABEL_48;
  }

  if ((v44 & 1) == 0)
  {
    v23[0] = "custom parser failed to parse parameter 'alignments'";
    v24 = 259;
    (*(*a1 + 24))(v27, a1, v13, v23);
    v20 = v27;
    goto LABEL_56;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "interleave", 10, v23) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v14 = (*(*a1 + 40))(a1);
  if (v40 == 1 && v37 != v39)
  {
    free(v37);
  }

  v37 = v39;
  v38 = 0x600000000;
  v40 = 1;
  if (((*(*a1 + 600))(a1, &v37, 1, 0) & 1) == 0)
  {
LABEL_48:
    v18 = 0;
    if (v40 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if ((v40 & 1) == 0)
  {
    v23[0] = "custom parser failed to parse parameter 'interleave'";
    v24 = 259;
    (*(*a1 + 24))(v26, a1, v14, v23);
    v20 = v26;
    goto LABEL_56;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    v17 = 0;
    goto LABEL_60;
  }

  v24 = 257;
  if (((*(*a1 + 400))(a1, "baseEncoding", 12, v23) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = sub_10027E2A0(a1);
  if ((v16 & 1) == 0)
  {
    v22 = (*(*a1 + 40))(a1);
    v24 = 259;
    (*(*a1 + 24))(v25, a1, v22, v23);
    v20 = v25;
LABEL_56:
    sub_10006296C(v20);
    v18 = 0;
    if (v40 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v17 = v15;
LABEL_60:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  Context = mlir::AsmParser::getContext(a1);
  v18 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::get(Context, v41, v42, v37, v38, v12, v17);
  if (v40 != 1)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v37 != v39)
  {
    free(v37);
  }

LABEL_51:
  if (v44 == 1 && v41 != v43)
  {
    free(v41);
  }

  return v18;
}

unint64_t sub_10027DEB8(uint64_t a1)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v2 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 432))(a1, &v26) & 1) == 0)
  {
    v29[0] = "expected keyword for An enum corresponding to the backing type to be used for allocations.";
    v30 = 259;
    (*(*a1 + 24))(&v31, a1, v2, v29);
    if (v31)
    {
      mlir::InFlightDiagnostic::report(&v31);
    }

    if (v40 != 1)
    {
      goto LABEL_56;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v38;
      v13 = __p;
      if (v38 != __p)
      {
        do
        {
          v12 = sub_10005BEF4(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v38 = v11;
      operator delete(v13);
    }

    v14 = v35;
    if (!v35)
    {
      goto LABEL_54;
    }

    v15 = v36;
    v16 = v35;
    if (v36 == v35)
    {
      goto LABEL_53;
    }

    do
    {
      v17 = *--v15;
      *v15 = 0;
      if (v17)
      {
        operator delete[]();
      }
    }

    while (v15 != v14);
    goto LABEL_52;
  }

  v3 = SHIBYTE(v28);
  v4 = v26;
  if (v28 >= 0)
  {
    v4 = &v26;
  }

  if (v28 < 0)
  {
    v3 = v27;
  }

  if (v3 == 4)
  {
    if (*v4 == 1885431112)
    {
      v9 = &_mh_execute_header;
      v10 = 3;
      goto LABEL_57;
    }

LABEL_35:
    v24 = "invalid An enum corresponding to the backing type to be used for allocations. specification: ";
    v25 = 259;
    (*(*a1 + 24))(&v31, a1, v2, &v24);
    if (v31)
    {
      v30 = 260;
      v29[0] = &v26;
      mlir::Diagnostic::operator<<(&v32, v29);
      if (v31)
      {
        mlir::InFlightDiagnostic::report(&v31);
      }
    }

    if (v40 != 1)
    {
      goto LABEL_56;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v38;
      v20 = __p;
      if (v38 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v38 = v18;
      operator delete(v20);
    }

    v14 = v35;
    if (!v35)
    {
LABEL_54:
      if (v33 != &v34)
      {
        free(v33);
      }

LABEL_56:
      v10 = 0;
      v9 = 0;
      goto LABEL_57;
    }

    v21 = v36;
    v16 = v35;
    if (v36 == v35)
    {
LABEL_53:
      v36 = v14;
      operator delete(v16);
      goto LABEL_54;
    }

    do
    {
      v22 = *--v21;
      *v21 = 0;
      if (v22)
      {
        operator delete[]();
      }
    }

    while (v21 != v14);
LABEL_52:
    v16 = v35;
    goto LABEL_53;
  }

  if (v3 != 9)
  {
    goto LABEL_35;
  }

  if (*v4 != 0x6361667275534F49 || v4[8] != 101)
  {
    v6 = *v4;
    v7 = v4[8];
    if (v6 == 0x65666675424C544DLL && v7 == 114)
    {
      v9 = &_mh_execute_header;
      v10 = 2;
      goto LABEL_57;
    }

    goto LABEL_35;
  }

  v9 = &_mh_execute_header;
  v10 = 1;
LABEL_57:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  return v9 | v10;
}

uint64_t sub_10027E2A0(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "coreml", 6);
  v6 = 0;
  v3 = sub_1002881D0(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::print(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 40);
  v7 = (*(*a2 + 16))(a2);
  v8 = v6 - 1;
  if ((v6 - 1) <= 2)
  {
    v9 = qword_1002B0FA0[v8];
    v10 = off_1002DF280[v8];
    if (v9 <= *(v7 + 24) - *(v7 + 32))
    {
      v11 = v7;
      memcpy(*(v7 + 32), v10, v9);
      *(v11 + 32) += v9;
    }

    else
    {
      llvm::raw_ostream::write(v7, v10, v9);
    }
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ",", 1uLL);
  }

  else
  {
    *v13 = 44;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if ((v16[3] - v17) > 9)
  {
    *(v17 + 8) = 29556;
    *v17 = *"alignments";
    v16[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v16, "alignments", 0xAuLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++v18[4];
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

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "[", 1uLL);
  }

  else
  {
    *v23 = 91;
    ++v22[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 8), *(*this + 16));
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, "]", 1uLL);
  }

  else
  {
    *v25 = 93;
    ++v24[4];
  }

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

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 9)
  {
    *(v31 + 8) = 25974;
    *v31 = *"interleave";
    v30[4] += 10;
  }

  else
  {
    llvm::raw_ostream::write(v30, "interleave", 0xAuLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = v32[4];
  if (v32[3] == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++v32[4];
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "[", 1uLL);
  }

  else
  {
    *v37 = 91;
    ++v36[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 24), *(*this + 32));
  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] == v39)
  {
    llvm::raw_ostream::write(v38, "]", 1uLL);
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  else
  {
    *v39 = 93;
    ++v38[4];
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = v40[4];
  if (v40[3] == v41)
  {
    llvm::raw_ostream::write(v40, ",", 1uLL);
  }

  else
  {
    *v41 = 44;
    ++v40[4];
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = v44[4];
  if ((v44[3] - v45) > 0xB)
  {
    *(v45 + 8) = 1735289188;
    *v45 = *"baseEncoding";
    v44[4] += 12;
  }

  else
  {
    llvm::raw_ostream::write(v44, "baseEncoding", 0xCuLL);
  }

  v46 = (*(*a2 + 16))(a2);
  v47 = v46[4];
  if (v46[3] == v47)
  {
    llvm::raw_ostream::write(v46, ":", 1uLL);
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  else
  {
    *v47 = 58;
    ++v46[4];
    if (!*(*this + 48))
    {
      goto LABEL_70;
    }
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  v54 = *(*this + 48);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v50 = (*(*a2 + 16))(a2);
    v51 = (*(*v50 + 80))(v50) + v50[4] - v50[2];
    mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::print(&v54, a2);
    if (v51 == (*(*v50 + 80))(v50) + v50[4] - v50[2])
    {
      (*(*a2 + 40))(a2, v54);
    }
  }

LABEL_70:
  result = (*(*a2 + 16))(a2);
  v53 = result[4];
  if (result[3] == v53)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v53 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getAlignments(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr *this)
{
  v1 = *this;
  result = *(*this + 24);
  v3 = *(v1 + 32);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id;
  v18[1] = a1;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail27ImageConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_20ImageConstraintsAttrEJNS_9StringRefENS4_22ImageContainerTypeEnumENS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v24[1] = v18;
  v20[0] = a2;
  v20[1] = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v13 = llvm::hash_value(a2, a3);
  *v25 = v13;
  *&v25[8] = a4;
  *&v25[12] = sub_10002D970(a5, &a5[a6]);
  v14 = __ROR8__(0xB492B66FBE98F273 * v13 - *&v25[8], 43) + __ROR8__((0x9AE16A3B2F90404FLL * *&v25[12]) ^ 0xFF51AFD7ED558CCDLL, 30);
  v15 = 0xB492B66FBE98F273 * v13 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v25[12] + __ROR8__(*&v25[8] ^ 0xC949D7C7509E6557, 20) + 20;
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * ((v14 - 0x3C5A37A36834CED9 * *&v25[4]) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v14 - 0x3C5A37A36834CED9 * *&v25[4]) ^ v15)));
  v19 = v20;
  *v25 = v20;
  *&v25[8] = v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::parse(mlir::AsmParser *a1)
{
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v21) = 0;
  v24 = 0;
  LOBYTE(v40) = 0;
  v43 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "fourCC", 6, &__p) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  __p = 0;
  v26 = 0uLL;
  if ((sub_10017F4BC(a1, &__p) & 1) == 0)
  {
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    v6 = (*(*a1 + 40))(a1);
    v27 = 259;
    (*(*a1 + 24))(v30, a1, v6, &__p);
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

      v7 = v35;
      if (v35)
      {
        v8 = v36;
        v9 = v35;
        if (v36 != v35)
        {
          do
          {
            v8 = sub_10005BEF4(v8 - 1);
          }

          while (v8 != v7);
          v9 = v35;
        }

        v36 = v7;
        operator delete(v9);
      }

      v10 = v33;
      if (v33)
      {
        v11 = v34;
        v12 = v33;
        if (v34 != v33)
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
          v12 = v33;
        }

        v34 = v10;
        operator delete(v12);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    goto LABEL_49;
  }

  *(v39 + 7) = *(&v26 + 7);
  v39[0] = v26;
  v21 = __p;
  *v22 = v26;
  *&v22[7] = *(v39 + 7);
  v23 = HIBYTE(v26);
  v24 = 1;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
LABEL_49:
    v19 = 0;
    goto LABEL_50;
  }

  v2 = sub_10027F528(a1);
  v3 = *a1;
  if ((v2 & 0x100000000) == 0)
  {
    v4 = (*(v3 + 40))(a1);
    v27 = 259;
    (*(*a1 + 24))(v29, a1, v4, &__p);
    v5 = v29;
LABEL_8:
    sub_10006296C(v5);
    goto LABEL_49;
  }

  v14 = v2;
  if (((*(v3 + 120))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "rowAlignmentsPerPlane", 21, &__p) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v15 = (*(*a1 + 40))(a1);
  if (v43 == 1 && v40 != v42)
  {
    free(v40);
  }

  v40 = v42;
  v41 = 0x600000000;
  v43 = 1;
  if (((*(*a1 + 600))(a1, &v40, 1, 0) & 1) == 0)
  {
    goto LABEL_49;
  }

  if ((v43 & 1) == 0)
  {
    __p = "custom parser failed to parse parameter 'rowAlignmentsPerPlane'";
    v27 = 259;
    (*(*a1 + 24))(v28, a1, v15, &__p);
    v5 = v28;
    goto LABEL_8;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_49;
  }

  Context = mlir::AsmParser::getContext(a1);
  if (v23 >= 0)
  {
    v17 = &v21;
  }

  else
  {
    v17 = v21;
  }

  if (v23 >= 0)
  {
    v18 = v23;
  }

  else
  {
    v18 = *v22;
  }

  v19 = mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::get(Context, v17, v18, v14, v40, v41);
LABEL_50:
  if (v43 == 1 && v40 != v42)
  {
    free(v40);
  }

  if (v24 == 1 && v23 < 0)
  {
    operator delete(v21);
  }

  return v19;
}

unint64_t sub_10027F528(uint64_t a1)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v2 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 432))(a1, &v28))
  {
    v3 = SHIBYTE(v30);
    v4 = v28;
    if (v30 >= 0)
    {
      v4 = &v28;
    }

    if (v30 < 0)
    {
      v3 = v29;
    }

    if (v3 == 10)
    {
      v17 = *v4;
      v18 = *(v4 + 4);
      if (v17 == 0x75747865544C544DLL && v18 == 25970)
      {
        v8 = &_mh_execute_header;
        v9 = 2;
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          return v8 | v9;
        }

        goto LABEL_57;
      }
    }

    else if (v3 == 13)
    {
      v5 = *v4;
      v6 = *(v4 + 5);
      if (v5 == 0x426C657869505643 && v6 == 0x7265666675426C65)
      {
        v8 = &_mh_execute_header;
        v9 = 1;
        if (SHIBYTE(v30) < 0)
        {
          goto LABEL_57;
        }

        return v8 | v9;
      }
    }

    v26 = "invalid An enum corresponding to the backing type to be used for allocations of image types. specification: ";
    v27 = 259;
    (*(*a1 + 24))(&v33, a1, v2, &v26);
    if (v33)
    {
      v32 = 260;
      v31[0] = &v28;
      mlir::Diagnostic::operator<<(&v34, v31);
      if (v33)
      {
        mlir::InFlightDiagnostic::report(&v33);
      }
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v40;
        v22 = __p;
        if (v40 != __p)
        {
          do
          {
            v21 = sub_10005BEF4(v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v40 = v20;
        operator delete(v22);
      }

      v13 = v37;
      if (!v37)
      {
        goto LABEL_54;
      }

      v23 = v38;
      v15 = v37;
      if (v38 == v37)
      {
LABEL_53:
        v38 = v13;
        operator delete(v15);
LABEL_54:
        if (v35 != &v36)
        {
          free(v35);
        }

        goto LABEL_56;
      }

      do
      {
        v24 = *--v23;
        *v23 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v23 != v13);
LABEL_52:
      v15 = v37;
      goto LABEL_53;
    }
  }

  else
  {
    v31[0] = "expected keyword for An enum corresponding to the backing type to be used for allocations of image types.";
    v32 = 259;
    (*(*a1 + 24))(&v33, a1, v2, v31);
    if (v33)
    {
      mlir::InFlightDiagnostic::report(&v33);
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v40;
        v12 = __p;
        if (v40 != __p)
        {
          do
          {
            v11 = sub_10005BEF4(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v40 = v10;
        operator delete(v12);
      }

      v13 = v37;
      if (!v37)
      {
        goto LABEL_54;
      }

      v14 = v38;
      v15 = v37;
      if (v38 == v37)
      {
        goto LABEL_53;
      }

      do
      {
        v16 = *--v14;
        *v14 = 0;
        if (v16)
        {
          operator delete[]();
        }
      }

      while (v14 != v13);
      goto LABEL_52;
    }
  }

LABEL_56:
  v9 = 0;
  v8 = 0;
  if (SHIBYTE(v30) < 0)
  {
LABEL_57:
    operator delete(v28);
  }

  return v8 | v9;
}

void *mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::print(mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 17219;
    *v7 = 1920298854;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "fourCC", 6uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

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

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
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

  v18 = *(*this + 24);
  v19 = (*(*a2 + 16))(a2);
  if (v18 == 1)
  {
    v20 = "CVPixelBuffer";
    v21 = 13;
    v22 = v19[4];
    if (v19[3] - v22 < 0xDuLL)
    {
LABEL_25:
      llvm::raw_ostream::write(v19, v20, v21);
      goto LABEL_28;
    }
  }

  else
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v20 = "MTLTexture";
    v21 = 10;
    v22 = v19[4];
    if (v19[3] - v22 < 0xAuLL)
    {
      goto LABEL_25;
    }
  }

  v23 = v19;
  memcpy(v22, v20, v21);
  v23[4] += v21;
LABEL_28:
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
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
  if (v28[3] - v29 > 0x14uLL)
  {
    qmemcpy(v29, "rowAlignmentsPerPlane", 21);
    v28[4] += 21;
  }

  else
  {
    llvm::raw_ostream::write(v28, "rowAlignmentsPerPlane", 0x15uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, ":", 1uLL);
  }

  else
  {
    *v31 = 58;
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

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, "[", 1uLL);
  }

  else
  {
    *v35 = 91;
    ++v34[4];
  }

  mlir::AsmPrinter::printDimensionList(a2, *(*this + 32), *(*this + 40));
  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "]", 1uLL);
  }

  else
  {
    *v37 = 93;
    ++v36[4];
  }

  result = (*(*a2 + 16))(a2);
  v39 = result[4];
  if (result[3] == v39)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v39 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v44 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v48) = 0;
  v46 = 0;
  v47 = 0;
  v45 = v5;
  LOBYTE(v48) = 0;
  if (((*(*a2 + 640))(a2, &v46) & 1) == 0)
  {
    v6 = 0;
    LOWORD(v48) = 256;
    if ((v48 & 0x10000) != 0)
    {
      v40 = "hw_constraints";
    }

    else
    {
      BYTE2(v48) = 1;
    }

    goto LABEL_24;
  }

  v40 = "hw_constraints";
  v41 = 14;
  if ((v48 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v47;
  if (v47)
  {
    if (v47 == 14 && *v46 == 0x74736E6F635F7768 && *(v46 + 6) == 0x73746E6961727473)
    {
      v11 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::parse(a2);
      goto LABEL_61;
    }

    v40 = "image_constraints";
    v41 = 17;
LABEL_13:
    if (v7 != 17)
    {
      goto LABEL_63;
    }

    v9 = *v46 == 0x6F635F6567616D69 && *(v46 + 8) == 0x746E69617274736ELL;
    if (!v9 || *(v46 + 16) != 115)
    {
      goto LABEL_63;
    }

    v11 = mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::parse(a2);
LABEL_61:
    v6 = v11;
    LOBYTE(v48) = v11 != 0;
    *(&v48 + 1) = 257;
    goto LABEL_24;
  }

  (*(*v44 + 648))(v44, &v40, 1);
  v40 = "image_constraints";
  v41 = 17;
  if ((v48 & 0x10000) != 0)
  {
LABEL_3:
    v6 = 0;
LABEL_24:
    v7 = 0;
    v12 = 0;
    goto LABEL_25;
  }

  v7 = v47;
  if (v47)
  {
    goto LABEL_13;
  }

  (*(*v44 + 648))(v44, &v40, 1);
  if ((v48 & 0x10000) != 0)
  {
    v7 = 0;
    v12 = 0;
    v6 = 0;
    goto LABEL_25;
  }

  v7 = v47;
LABEL_63:
  v6 = 0;
  v12 = v46;
  LOWORD(v48) = 0;
  BYTE2(v48) = 1;
LABEL_25:
  if ((sub_10017F920(&v44) & 0x100) == 0)
  {
    v39 = 257;
    (*(*a2 + 24))(&v44, a2, v4, v38);
    if (v44)
    {
      LODWORD(v40) = 3;
      v42 = 19;
      v13 = &v40;
      v14 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v40 && v47 + 24 * v48 > &v40)
        {
          v35 = &v40 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v14 = v47;
          v13 = (v47 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = &v40;
          v14 = v47;
        }
      }

      v15 = &v14[24 * v48];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      ++v48;
      if (v44)
      {
        v43 = 261;
        v40 = v12;
        v41 = v7;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (v44)
        {
          LODWORD(v40) = 3;
          v42 = 14;
          v17 = &v40;
          v18 = v47;
          if (v48 >= v49)
          {
            if (v47 <= &v40 && v47 + 24 * v48 > &v40)
            {
              v36 = &v40 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v18 = v47;
              v17 = (v47 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v17 = &v40;
              v18 = v47;
            }
          }

          v19 = &v18[24 * v48];
          v20 = *v17;
          *(v19 + 2) = v17[2];
          *v19 = v20;
          ++v48;
          if (v44)
          {
            v21 = *(a1 + 8);
            v22 = *(a1 + 16);
            v43 = 261;
            v40 = v21;
            v41 = v22;
            mlir::Diagnostic::operator<<(&v45, &v40);
            if (v44)
            {
              LODWORD(v40) = 3;
              v42 = 1;
              v23 = &v40;
              v24 = v47;
              if (v48 >= v49)
              {
                if (v47 <= &v40 && v47 + 24 * v48 > &v40)
                {
                  v37 = &v40 - v47;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v24 = v47;
                  v23 = (v47 + v37);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v23 = &v40;
                  v24 = v47;
                }
              }

              v25 = &v24[24 * v48];
              v26 = *v23;
              *(v25 + 2) = v23[2];
              *v25 = v26;
              ++v48;
              if (v44)
              {
                mlir::InFlightDiagnostic::report(&v44);
              }
            }
          }
        }
      }
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v54;
        v29 = __p;
        if (v54 != __p)
        {
          do
          {
            v28 = sub_10005BEF4(v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v54 = v27;
        operator delete(v29);
      }

      v30 = v51;
      if (v51)
      {
        v31 = v52;
        v32 = v51;
        if (v52 != v51)
        {
          do
          {
            v33 = *--v31;
            *v31 = 0;
            if (v33)
            {
              operator delete[]();
            }
          }

          while (v31 != v30);
          v32 = v51;
        }

        v52 = v30;
        operator delete(v32);
      }

      if (v47 != v50)
      {
        free(v47);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    v9 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if (v5[3] - v6 > 0xDuLL)
    {
      qmemcpy(v6, "hw_constraints", 14);
      v5[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v5, "hw_constraints", 0xEuLL);
    }

    mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::print(&v9, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id)
  {
    v9 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if ((v7[3] - v8) > 0x10)
    {
      *(v8 + 16) = 115;
      *v8 = *"image_constraints";
      v7[4] += 17;
    }

    else
    {
      llvm::raw_ostream::write(v7, "image_constraints", 0x11uLL);
    }

    mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr::print(&v9, a3);
  }
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::CoreMLAXDialect(mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "coremlax", 8, a2, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id);
  *v2 = off_1002DEA90;
  mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::initialize(v2);
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::~CoreMLAXDialect(llvm **this)
{
  mlir::Dialect::~Dialect(this);

  operator delete();
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::parseType(mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect *this, mlir::DialectAsmParser *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v43 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v47) = 0;
  v45 = 0;
  v46 = 0;
  v44 = v5;
  LOBYTE(v47) = 0;
  if ((*(*a2 + 640))(a2, &v45))
  {
    v39 = "hw_constraints";
    v40 = 14;
    if ((v47 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v7 = v46;
    if (!v46)
    {
      (*(*v43 + 648))(v43, &v39, 1);
      if ((v47 & 0x10000) != 0)
      {
LABEL_3:
        SingletonImpl = 0;
        v7 = 0;
        v8 = 0;
        if ((sub_10017F920(&v43) & 0x100) != 0)
        {
          return SingletonImpl;
        }

        goto LABEL_22;
      }

      v7 = v46;
LABEL_21:
      SingletonImpl = 0;
      v8 = v45;
      LOWORD(v47) = 0;
      BYTE2(v47) = 1;
      if ((sub_10017F920(&v43) & 0x100) != 0)
      {
        return SingletonImpl;
      }

      goto LABEL_22;
    }

    if (v46 != 14)
    {
      goto LABEL_21;
    }

    if (*v45 != 0x74736E6F635F7768 || *(v45 + 6) != 0x73746E6961727473)
    {
      goto LABEL_21;
    }

    Context = mlir::AsmParser::getContext(a2);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id);
    LOBYTE(v47) = SingletonImpl != 0;
    *(&v47 + 1) = 257;
    v7 = 0;
    v8 = 0;
    if ((sub_10017F920(&v43) & 0x100) != 0)
    {
      return SingletonImpl;
    }
  }

  else
  {
    SingletonImpl = 0;
    if ((v47 & 0x10000) != 0)
    {
      LOWORD(v47) = 256;
      v39 = "hw_constraints";
      v7 = 0;
      v8 = 0;
      if ((sub_10017F920(&v43) & 0x100) != 0)
      {
        return SingletonImpl;
      }
    }

    else
    {
      LOWORD(v47) = 256;
      BYTE2(v47) = 1;
      v7 = 0;
      v8 = 0;
      if ((sub_10017F920(&v43) & 0x100) != 0)
      {
        return SingletonImpl;
      }
    }
  }

LABEL_22:
  v38 = 257;
  (*(*a2 + 24))(&v43, a2, v4, v37);
  if (v43)
  {
    LODWORD(v39) = 3;
    v41 = 15;
    v12 = &v39;
    v13 = v46;
    if (v47 >= v48)
    {
      if (v46 <= &v39 && v46 + 24 * v47 > &v39)
      {
        v34 = &v39 - v46;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v13 = v46;
        v12 = (v46 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
        v12 = &v39;
        v13 = v46;
      }
    }

    v14 = &v13[24 * v47];
    v15 = *v12;
    *(v14 + 2) = v12[2];
    *v14 = v15;
    ++v47;
    if (v43)
    {
      v42 = 261;
      v39 = v8;
      v40 = v7;
      mlir::Diagnostic::operator<<(&v44, &v39);
      if (v43)
      {
        LODWORD(v39) = 3;
        v41 = 14;
        v16 = &v39;
        v17 = v46;
        if (v47 >= v48)
        {
          if (v46 <= &v39 && v46 + 24 * v47 > &v39)
          {
            v35 = &v39 - v46;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
            v17 = v46;
            v16 = (v46 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
            v16 = &v39;
            v17 = v46;
          }
        }

        v18 = &v17[24 * v47];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v47;
        if (v43)
        {
          v20 = *(this + 1);
          v21 = *(this + 2);
          v42 = 261;
          v39 = v20;
          v40 = v21;
          mlir::Diagnostic::operator<<(&v44, &v39);
          if (v43)
          {
            LODWORD(v39) = 3;
            v41 = 1;
            v22 = &v39;
            v23 = v46;
            if (v47 >= v48)
            {
              if (v46 <= &v39 && v46 + 24 * v47 > &v39)
              {
                v36 = &v39 - v46;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
                v23 = v46;
                v22 = (v46 + v36);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
                v22 = &v39;
                v23 = v46;
              }
            }

            v24 = &v23[24 * v47];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            ++v47;
            if (v43)
            {
              mlir::InFlightDiagnostic::report(&v43);
            }
          }
        }
      }
    }
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
          v27 = sub_10005BEF4(v27 - 1);
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
          v32 = *--v30;
          *v30 = 0;
          if (v32)
          {
            operator delete[]();
          }
        }

        while (v30 != v29);
        v31 = v50;
      }

      v51 = v29;
      operator delete(v31);
    }

    if (v46 != v49)
    {
      free(v46);
    }
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = v3[4];
    if (v3[3] - v4 > 0xDuLL)
    {
      qmemcpy(v4, "hw_constraints", 14);
      v3[4] += 14;
    }

    else
    {

      llvm::raw_ostream::write(v3, "hw_constraints", 0xEuLL);
    }
  }
}

uint64_t sub_100281AC0()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100281B8C(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100281C70(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100281D18(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100281DE8(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100281EB8(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CastOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

void sub_1002820AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 3uLL);
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    *(a2 + 64) = 1;
    return;
  }

  v6 = v5;
  v7 = *(*a1 + 68);
  __src = v24;
  v23 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v7, 8);
    v8 = (__src + 8 * (v7 & 0xFFFFFFFC));
    v9 = v7 & 3;
    v10 = vdupq_n_s64(v6);
    v11 = (__src + 16);
    v12 = v7 & 0xFFFFFFFC;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if ((v7 & 0xFFFFFFFC) != v7)
    {
      do
      {
        *v8++ = v6;
        --v9;
      }

      while (v9);
    }

    goto LABEL_25;
  }

  if (v7)
  {
    v13 = vdupq_n_s64(v7 - 1);
    v14 = v7 + 1;
    v15 = vmovn_s64(vcgeq_u64(v13, xmmword_1002B0D80));
    if (v15.i8[0])
    {
      v24[0] = v5;
      v16 = v14 & 0xE;
      if ((v15.i8[4] & 1) == 0)
      {
LABEL_11:
        if (v16 == 2)
        {
          goto LABEL_25;
        }

LABEL_15:
        v17 = vmovn_s64(vcgtq_u64(v13, xmmword_1002B0E30));
        if (v17.i8[0])
        {
          v24[2] = v5;
          if ((v17.i8[4] & 1) == 0)
          {
LABEL_17:
            if (v16 == 4)
            {
              goto LABEL_25;
            }

LABEL_21:
            v18 = vmovn_s64(vcgtq_u64(v13, xmmword_1002B0E40));
            if (v18.i8[0])
            {
              v24[4] = v5;
            }

            if (v18.i8[4])
            {
              v24[5] = v5;
            }

            goto LABEL_25;
          }
        }

        else if ((v17.i8[4] & 1) == 0)
        {
          goto LABEL_17;
        }

        v24[3] = v5;
        if (v16 == 4)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = v14 & 0xE;
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v24[1] = v5;
    if (v16 == 2)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

LABEL_25:
  LODWORD(v23) = v7;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19 = __src;
  if (v7 && &__src != a2)
  {
    if (__src == v24)
    {
      v21 = v7;
      if (v7 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7, 8), v21 = v23, v19 = __src, v23))
      {
        memcpy(*a2, v19, 8 * v21);
        v19 = __src;
      }

      *(a2 + 8) = v7;
    }

    else
    {
      *a2 = __src;
      v20 = HIDWORD(v23);
      *(a2 + 8) = v7;
      *(a2 + 12) = v20;
      __src = v24;
      HIDWORD(v23) = 0;
      v19 = v24;
    }

    LODWORD(v23) = 0;
  }

  *(a2 + 64) = 1;
  if (v19 != v24)
  {
    free(v19);
  }
}

void sub_100282354(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
  v6 = v5;
  v7 = *(*a1 + 36);
  __src = v24;
  v23 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v7, 8);
    v8 = (__src + 8 * (v7 & 0xFFFFFFFC));
    v9 = v7 & 3;
    v10 = vdupq_n_s64(v6);
    v11 = (__src + 16);
    v12 = v7 & 0xFFFFFFFC;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if ((v7 & 0xFFFFFFFC) != v7)
    {
      do
      {
        *v8++ = v6;
        --v9;
      }

      while (v9);
    }

    goto LABEL_24;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  v13 = vdupq_n_s64(v7 - 1);
  v14 = v7 + 1;
  v15 = vmovn_s64(vcgeq_u64(v13, xmmword_1002B0D80));
  if (v15.i8[0])
  {
    v24[0] = v5;
    v16 = v14 & 0xE;
    if ((v15.i8[4] & 1) == 0)
    {
LABEL_10:
      if (v16 == 2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v16 = v14 & 0xE;
    if ((v15.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v24[1] = v5;
  if (v16 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v17 = vmovn_s64(vcgtq_u64(v13, xmmword_1002B0E30));
  if ((v17.i8[0] & 1) == 0)
  {
    if ((v17.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v24[3] = v5;
    if (v16 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v24[2] = v5;
  if (v17.i8[4])
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v16 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v18 = vmovn_s64(vcgtq_u64(v13, xmmword_1002B0E40));
  if (v18.i8[0])
  {
    v24[4] = v5;
  }

  if (v18.i8[4])
  {
    v24[5] = v5;
  }

LABEL_24:
  LODWORD(v23) = v7;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19 = __src;
  if (v7 && &__src != a2)
  {
    if (__src == v24)
    {
      v21 = v7;
      if (v7 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7, 8), v21 = v23, v19 = __src, v23))
      {
        memcpy(*a2, v19, 8 * v21);
        v19 = __src;
      }

      *(a2 + 8) = v7;
    }

    else
    {
      *a2 = __src;
      v20 = HIDWORD(v23);
      *(a2 + 8) = v7;
      *(a2 + 12) = v20;
      __src = v24;
      HIDWORD(v23) = 0;
      v19 = v24;
    }

    LODWORD(v23) = 0;
  }

  *(a2 + 64) = 1;
  if (v19 != v24)
  {
    free(v19);
  }
}

BOOL sub_1002825D4(void *a1)
{
  {
    v65 = a1;
    sub_1002A3308();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    sub_1002A3360();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    sub_1002A4088();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    sub_1002A3410();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    sub_1002A3468();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    sub_1002A34C0();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    sub_1002A3518();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    sub_1002A3570();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    sub_1002A35C8();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    sub_1002A3728();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CastOp::verifyInvariantsImpl(&v7);
}

uint64_t sub_100282948()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100282A08(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100282AEC(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100282B94(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100282C64(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100282D34(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL sub_100282F38(void *a1)
{
  {
    v65 = a1;
    sub_1002A3308();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    sub_1002A3360();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    sub_1002A33B8();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    sub_1002A3410();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    sub_1002A3DD8();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    sub_1002A34C0();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    sub_1002A3518();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    sub_1002A3570();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    sub_1002A35C8();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    sub_1002A3728();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verify(&v6);
}

uint64_t sub_1002832C0()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100283380(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100283464(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_10028350C(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_1002835DC(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_1002836AC(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::verify(&v6) & 1;
}

uint64_t sub_100283998()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100283A58(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100283B3C(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100283BE4(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100283CB4(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100283D84(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL sub_100283F88(void *a1)
{
  {
    v65 = a1;
    sub_1002A3308();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    sub_1002A3360();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    sub_1002A33B8();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    sub_1002A3410();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    sub_1002A3AD0();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    sub_1002A34C0();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    sub_1002A3518();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    sub_1002A3570();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    sub_1002A35C8();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    sub_1002A3728();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::verify(&v6);
}

uint64_t sub_100284310()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_1002843DC(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_1002844C0(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100284568(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100284638(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100284708(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verify(&v7);
}

uint64_t sub_1002849F0()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100284ABC(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100284BA0(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100284C48(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100284D18(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100284DE8(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(&v7);
}

uint64_t sub_1002850D0()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100285190(uint64_t a1, void *a2)
{
  v7 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      v5 = result;
      llvm::deallocate_buffer(v6[0], v6[1], v6[2]);
      return v5;
    }
  }

  return result;
}

void sub_100285274(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_10028531C(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_1002853EC(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_1002854BC(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getSpeculatability;
  {
    v8 = v2;
    sub_1002A3154();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::isCompatibleReturnTypes;
  {
    sub_1002A3204();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getInputIntents;
  v6[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL sub_100285790(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::TypeRange::TypeRange(&v22, v24, v25);
    mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "coremlax.dequantize";
    v23 = 19;
    v18 = sub_10018DFE4(a2, a3, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::DequantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 4))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verify(&v6);
}

uint64_t sub_100285A8C()
{
  v10 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks();
  v5 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      v6 = v9[0];
      if ((v10 & 2) != 0)
      {
        v6 = v9;
      }

      v7 = result;
      (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      v8 = result;
      llvm::deallocate_buffer(v9[0], v9[1], v9[2]);
      return v8;
    }
  }

  return result;
}

BOOL sub_100285B4C(uint64_t a1, void *a2)
{
  v12 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v11, a2);
  v7 = v12;
  if (v12 >= 8)
  {
    if ((v12 & 4) != 0)
    {
      v8 = v11[0];
      if ((v12 & 2) != 0)
      {
        v8 = v11;
      }

      v9 = result;
      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      v10 = result;
      llvm::deallocate_buffer(v11[0], v11[1], v11[2]);
      return v10;
    }
  }

  return result;
}

void sub_100285C30(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v9 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1], v8[2]);
    }
  }
}

uint64_t sub_100285CD8(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100285DA8(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100285E78(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::getSpeculatability;
  {
    v8 = v2;
    sub_1002A3154();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::isCompatibleReturnTypes;
  {
    sub_1002A3204();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::getInputIntents;
  v6[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL sub_10028614C(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::TypeRange::TypeRange(&v22, v24, v25);
    mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "coremlax.quantize";
    v23 = 17;
    v18 = sub_10018DFE4(a2, a3, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::QuantizeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 4))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(&v6);
}

BOOL sub_100286448(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v14, a2, a3, a4, a5);
  v10 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      v11 = v14[0];
      if ((v15 & 2) != 0)
      {
        v11 = v14;
      }

      v12 = result;
      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      v13 = result;
      llvm::deallocate_buffer(v14[0], v14[1], v14[2]);
      return v13;
    }
  }

  return result;
}

BOOL sub_100286508(uint64_t a1, void *a2)
{
  v8 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_1002865EC(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v8 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v7, a2, a3, a4, a5);
  v5 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      if ((v8 & 2) != 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v6);
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
    }
  }
}

uint64_t sub_100286694(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

uint64_t sub_100286764(uint64_t a1, uint64_t a2)
{
  v7[0] = mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyRegionInvariants;
  v8 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v7, a2);
  v3 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v4 = v7[0];
      if ((v8 & 2) != 0)
      {
        v4 = v7;
      }

      v5 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      v6 = result;
      llvm::deallocate_buffer(v7[0], v7[1], v7[2]);
      return v6;
    }
  }

  return result;
}

void sub_100286834(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::getSpeculatability;
  {
    v7 = v2;
    sub_1002A3154();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::getEffects;
  {
    sub_1002A31AC();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::getInputIntents;
  v5[1] = mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::ViewOp>::getOutputIntents;
  {
    sub_1002A325C();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL sub_100286A3C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v17[0] = a1;
  v17[1] = v8;
  v17[2] = v9;
  v18 = 1;
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

  mlir::RegionRange::RegionRange(v19, v12, v11);
  v19[2] = a2;
  v19[3] = a3;
  v13 = mlir::ODIE::Compiler::CoreMLAX::ViewOp::fold(v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    v16 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v14 + 1, 8);
    v13 = v16;
    LODWORD(v14) = *(a4 + 8);
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::ODIE::Compiler::CoreMLAX::ViewOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::ODIE::Compiler::CoreMLAX::ViewOp::verify(&v7);
}

uint64_t sub_100286C70(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id;
  v24 = "coremlax.hw_constraints";
  v25 = 23;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_100286E60(uint64_t a1)
{
  sub_1002870D0(a1, v9);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, v9);
  v2 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v3 = v13;
      }

      else
      {
        v3 = v13[0];
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1], v13[2]);
    }
  }

  v4 = v10;
  if (v11)
  {
    v5 = 16 * v11;
    v6 = (v10 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v10;
  }

  if (v4 != &v12)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_100286F6C(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX20ImageConstraintsAttrES2_NSF_6detail27ImageConstraintsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v18 = &v10;
  v19 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX20ImageConstraintsAttrES2_NSE_6detail27ImageConstraintsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id;
  v22 = "coremlax.image_constraints";
  v23 = 26;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_1002870D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::VerifiableTensorEncodingInterfaceTraits::Model<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr>::verifyEncoding;
  {
    v10 = v4;
    sub_1002A6C08();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    sub_1000E4C5C(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSF_6detail30HardwareConstraintsAttrStorageENSB_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSE_6detail30HardwareConstraintsAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  *(a2 + 144) = "coremlax.hw_constraints";
  *(a2 + 152) = 23;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  sub_1002A6C4C();
  return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSF_6detail30HardwareConstraintsAttrStorageENSB_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 48);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX23HardwareConstraintsAttrES2_NSE_6detail30HardwareConstraintsAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_10028737C(a2, &v8, &v7);
}

uint64_t sub_10028737C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a1 + 24);
  v19 = *(a1 + 8);
  v20 = v3;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = a1;
  v4 = *a2;
  v17 = *a3;
  v18 = v4;
  v28 = &v18;
  v29 = &v17;
  sub_1002875D0(&v28, &v19, &v20, &v21, &v22, &v36);
  Context = mlir::Attribute::getContext(&v23);
  v30 = v32;
  v31 = 0x600000000;
  v6 = v37;
  if (v37)
  {
    if (v37 < 7)
    {
      v8 = v32;
      v7 = v37;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v37, 8);
      v7 = v37;
      if (!v37)
      {
LABEL_7:
        LODWORD(v31) = v6;
        goto LABEL_8;
      }

      v8 = v30;
    }

    memcpy(v8, v36, 8 * v7);
    goto LABEL_7;
  }

LABEL_8:
  v33 = v35;
  v34 = 0x600000000;
  v9 = v40;
  if (!v40)
  {
    v9 = 0;
    v12 = v35;
    goto LABEL_16;
  }

  if (v40 < 7)
  {
    v11 = v35;
    v10 = v40;
    goto LABEL_14;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v40, 8);
  v10 = v40;
  if (v40)
  {
    v11 = v33;
LABEL_14:
    memcpy(v11, v39, 8 * v10);
  }

  LODWORD(v34) = v9;
  v6 = v31;
  v12 = v33;
LABEL_16:
  v35[6] = v42;
  v35[7] = v43;
  v13 = *v42;
  *&v27 = v30;
  *(&v27 + 1) = v6;
  *&v26 = v12;
  *(&v26 + 1) = v9;
  v25 = v43;
  v24 = v13;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v28 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
  v29 = Context;
  v15 = sub_100287CB8(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail30HardwareConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23HardwareConstraintsAttrEJNS_8ArrayRefIxEESG_NS4_18AllocationTypeEnumENS3_6CoreML18TensorEncodingAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_, &v28, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id, &v27, &v26, &v24, &v25);
  if (v33 != v35)
  {
    free(v33);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v39 != &v41)
  {
    free(v39);
  }

  if (v36 != &v38)
  {
    free(v36);
  }

  return v15;
}

void sub_1002875D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_100109374(*a2, *(a2 + 8), &__src);
  v13 = *a1;
  v14 = *(a1 + 8);
  sub_100109374(*a3, *(a3 + 8), &v24);
  if (*a5)
  {
    v15 = **a1;
    **a1 = vaddq_s64(v15, xmmword_1002B0E70);
    v16 = *v15.i64[0];
  }

  else
  {
    v16 = 0;
  }

  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v17 = v29;
  if (v29 && &__src != a6)
  {
    if (__src == v31)
    {
      v19 = v29;
      if (v29 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 16), v29, 8), (v19 = v29) != 0))
      {
        memcpy(*a6, __src, 8 * v19);
      }

      *(a6 + 8) = v17;
    }

    else
    {
      *a6 = __src;
      v18 = v30;
      *(a6 + 8) = v17;
      *(a6 + 12) = v18;
      __src = v31;
      v30 = 0;
    }

    v29 = 0;
  }

  *(a6 + 64) = a6 + 80;
  *(a6 + 72) = 0x600000000;
  v20 = v24;
  if ((a6 + 64) != &v24)
  {
    v21 = v25;
    if (v25)
    {
      if (v24 != v27)
      {
        *(a6 + 64) = v24;
        v22 = v26;
        *(a6 + 72) = v21;
        *(a6 + 76) = v22;
        v24 = v27;
        v26 = 0;
        v20 = v27;
LABEL_23:
        v25 = 0;
        goto LABEL_24;
      }

      if (v25 < 7)
      {
        v23 = v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 64, (a6 + 80), v25, 8);
        v23 = v25;
        v20 = v24;
        if (!v25)
        {
          goto LABEL_22;
        }
      }

      memcpy(*(a6 + 64), v20, 8 * v23);
      v20 = v24;
LABEL_22:
      *(a6 + 72) = v21;
      goto LABEL_23;
    }
  }

LABEL_24:
  *(a6 + 128) = a4;
  *(a6 + 136) = v16;
  if (v20 != v27)
  {
    free(v20);
  }

  if (__src != v31)
  {
    free(__src);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler8CoreMLAX20ImageConstraintsAttrES2_NSE_6detail27ImageConstraintsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_10028783C(a2, &v8, &v7);
}

uint64_t sub_10028783C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v18 = a1;
  v3 = *(a1 + 8);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v14 = *a2;
  v15 = v3;
  v13 = *a3;
  sub_100287990(&v15, &v24);
  Context = mlir::Attribute::getContext(&v18);
  v5 = v24;
  v6 = v25;
  v19 = v24;
  v20 = v25;
  v21 = v23;
  v22 = 0x600000000;
  v7 = v27;
  if (v27)
  {
    v8 = Context;
    if (v27 < 7)
    {
      v10 = v23;
      v9 = v27;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v27, 8);
      v9 = v27;
      if (!v27)
      {
LABEL_7:
        LODWORD(v22) = v7;
        v5 = v19;
        v6 = v20;
        Context = v8;
        goto LABEL_8;
      }

      v10 = v21;
    }

    memcpy(v10, v26, 8 * v9);
    goto LABEL_7;
  }

LABEL_8:
  v11 = sub_100287AD4(Context, v5, v6, &v21);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v26 != &v28)
  {
    free(v26);
  }

  return v11;
}

void sub_100287990(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 16;
  sub_100109374(*(a1 + 24), *(a1 + 32), &__src);
  v5 = (a2 + 32);
  *(a2 + 16) = a2 + 32;
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 24) = 0x600000000;
  v6 = __src;
  if ((a2 + 16) == &__src)
  {
    goto LABEL_12;
  }

  v7 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  if (__src == v13)
  {
    if (v11 < 7)
    {
      v9 = v11;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, (a2 + 32), v11, 8);
      v9 = v11;
      v6 = __src;
      if (!v11)
      {
LABEL_10:
        *(a2 + 24) = v7;
        goto LABEL_11;
      }

      v5 = *(a2 + 16);
    }

    memcpy(v5, v6, 8 * v9);
    v6 = __src;
    goto LABEL_10;
  }

  *(a2 + 16) = __src;
  v8 = v12;
  *(a2 + 24) = v7;
  *(a2 + 28) = v8;
  __src = v13;
  v12 = 0;
  v6 = v13;
LABEL_11:
  v11 = 0;
LABEL_12:
  if (v6 != v13)
  {
    free(v6);
  }
}

uint64_t sub_100287AD4(mlir::MLIRContext *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *a4;
  v9 = *(a4 + 8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id;
  v16[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler8CoreMLAX6detail27ImageConstraintsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_20ImageConstraintsAttrEJNS_9StringRefENS4_22ImageContainerTypeEnumENS_8ArrayRefIxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v22[1] = v16;
  v18[0] = v5;
  v18[1] = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v11 = llvm::hash_value(v5, v6);
  *v23 = v11;
  *&v23[8] = v7;
  *&v23[12] = sub_10002D970(v8, &v8[v9]);
  v12 = __ROR8__(0xB492B66FBE98F273 * v11 - *&v23[8], 43) + __ROR8__((0x9AE16A3B2F90404FLL * *&v23[12]) ^ 0xFF51AFD7ED558CCDLL, 30);
  v13 = 0xB492B66FBE98F273 * v11 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + __ROR8__(*&v23[8] ^ 0xC949D7C7509E6557, 20) + 20;
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * ((v12 - 0x3C5A37A36834CED9 * *&v23[4]) ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v12 - 0x3C5A37A36834CED9 * *&v23[4]) ^ v13)));
  v17 = v18;
  *v23 = v18;
  *&v23[8] = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ImageConstraintsAttr,void>::id, -348639895 * ((v14 >> 47) ^ v14), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

uint64_t sub_100287CB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, int *a7, uint64_t *a8)
{
  v21[0] = a2;
  v21[1] = a3;
  v10 = *a6;
  v17 = *a5;
  v18 = v10;
  v19 = *a7;
  v20 = *a8;
  memset(v26, 0, sizeof(v26));
  v27 = 0xFF51AFD7ED558CCDLL;
  __src = sub_10002D970(v17, v17 + 8 * *(&v17 + 1));
  v22 = 0;
  v11 = sub_10002D970(v18, v18 + 8 * *(&v18 + 1));
  v12 = sub_10002DCBC(&__src, &v22, v26, &v26[3] + 8, v11);
  v23 = v22;
  v13 = sub_10002D050(&__src, &v23, v12, &v26[3] + 8, v19);
  v24 = v23;
  v14 = sub_10002DCBC(&__src, &v24, v13, &v26[3] + 8, (v20 >> 4) ^ (v20 >> 9));
  v15 = sub_10002D330(&__src, v24, v14, &v26[3] + 8);
  v24 = &v17;
  __src = &v17;
  *&v26[0] = v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, v15, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &__src);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && (v5 = *(a2 + 32), v5 == *(v2 + 24)) && !memcmp(*(a2 + 24), *(v2 + 16), 8 * v5) && *(a2 + 40) == *(v2 + 32))
  {
    return *(a2 + 48) == *(v2 + 40);
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::HardwareConstraintsAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::ODIE::Compiler::CoreMLAX::AllocationTypeEnum,mlir::ODIE::Compiler::CoreML::TensorEncodingAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = sub_100287F38(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_100287F38(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = *(a2 + 8);
  v6 = a2[5];
  v7 = *a1;
  if (v2)
  {
    v8 = *a2;
    v9 = 8 * v2;
    a1[10] += 8 * v2;
    if (v7 && (v10 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v10 + v9 <= a1[1]))
    {
      *a1 = v10 + v9;
      v11 = v9 - 8;
      if ((v9 - 8) >= 0x18)
      {
LABEL_5:
        v12 = v10;
        v13 = v8;
        if (v10 - v8 >= 0x20)
        {
          v14 = (v11 >> 3) + 1;
          v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
          v12 = (v10 + v15);
          v13 = (v8 + v15);
          v16 = (v8 + 16);
          v17 = (v10 + 16);
          v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_15:
            v7 = *a1;
            if (v4)
            {
              goto LABEL_16;
            }

LABEL_11:
            v20 = 0;
            goto LABEL_28;
          }
        }

        do
        {
LABEL_14:
          v22 = *v13++;
          *v12++ = v22;
        }

        while (v13 != (v8 + 8 * v2));
        goto LABEL_15;
      }
    }

    else
    {
      v21 = a1;
      v10 = sub_10003E4AC(a1, 8 * v2, 8 * v2, 3);
      a1 = v21;
      v11 = v9 - 8;
      if ((v9 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v12 = v10;
    v13 = v8;
    goto LABEL_14;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  v23 = 8 * v4;
  a1[10] += 8 * v4;
  if (v7 && (v20 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v20 + v23 <= a1[1]))
  {
    *a1 = v20 + v23;
    v24 = v23 - 8;
    if ((v23 - 8) >= 0x18)
    {
LABEL_19:
      v25 = v20;
      v26 = v3;
      if (v20 - v3 >= 0x20)
      {
        v27 = (v24 >> 3) + 1;
        v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
        v25 = (v20 + v28);
        v26 = (v3 + v28);
        v29 = (v3 + 16);
        v30 = (v20 + 16);
        v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v32 = *v29;
          *(v30 - 1) = *(v29 - 1);
          *v30 = v32;
          v29 += 2;
          v30 += 2;
          v31 -= 4;
        }

        while (v31);
        if (v27 == (v27 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_27;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    v33 = a1;
    v20 = sub_10003E4AC(a1, 8 * v4, 8 * v4, 3);
    a1 = v33;
    v24 = v23 - 8;
    if ((v23 - 8) >= 0x18)
    {
      goto LABEL_19;
    }
  }

  v25 = v20;
  v26 = v3;
  do
  {
LABEL_26:
    v34 = *v26++;
    *v25++ = v34;
  }

  while (v26 != (v3 + 8 * v4));
LABEL_27:
  v7 = *a1;
LABEL_28:
  a1[10] += 56;
  v35 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35 + 56;
  if (v7)
  {
    v37 = v36 > a1[1];
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v35 = sub_10003E4AC(a1, 56, 56, 3);
  }

  else
  {
    *a1 = v36;
  }

  *v35 = 0;
  *(v35 + 8) = v10;
  *(v35 + 16) = v2;
  *(v35 + 24) = v20;
  *(v35 + 32) = v4;
  *(v35 + 40) = v5;
  *(v35 + 48) = v6;
  return v35;
}

BOOL sub_1002881D0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 40))(a1);
  v19 = 0;
  v20[0] = a1;
  if (((*(*a1 + 448))(a1, &v19, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML18TensorEncodingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v20) & 1) == 0)
  {
    return 0;
  }

  v7 = v19;
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v17 = "invalid kind of attribute specified";
  v18 = 259;
  (*(*a1 + 24))(v20, a1, v6, &v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = sub_10005BEF4(v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
      {
        do
        {
          v16 = *--v14;
          *v14 = 0;
          if (v16)
          {
            operator delete[]();
          }
        }

        while (v14 != v13);
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML18TensorEncodingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && (!v3 || (v4 = a2, v5 = memcmp(*(a2 + 8), *v2, v3), a2 = v4, !v5)) && *(a2 + 24) == *(v2 + 16) && (v6 = *(a2 + 40), v6 == *(v2 + 32)))
  {
    return memcmp(*(a2 + 32), *(v2 + 24), 8 * v6) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreMLAX::detail::ImageConstraintsAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::ODIE::Compiler::CoreMLAX::ImageContainerTypeEnum,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100288568(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t sub_100288568(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 4);
  v5 = a2[3];
  v4 = a2[4];
  if (v2)
  {
    v6 = *a2;
    v7 = v2 + 1;
    a1[10] += v2 + 1;
    v8 = *a1;
    if (*a1 && v7 + v8 <= a1[1])
    {
      *a1 = v7 + v8;
      if (v2 >= 8)
      {
LABEL_5:
        v9 = v8;
        v10 = v6;
        if ((v8 - v6) < 0x20)
        {
          goto LABEL_21;
        }

        if (v2 >= 0x20)
        {
          v11 = v2 & 0xFFFFFFFFFFFFFFE0;
          v14 = (v6 + 16);
          v15 = (v8 + 16);
          v16 = v2 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 32;
          }

          while (v16);
          if (v2 == v11)
          {
LABEL_22:
            *(v8 + v2) = 0;
            v12 = *a1;
            if (v4)
            {
              goto LABEL_23;
            }

LABEL_9:
            v13 = 0;
            goto LABEL_35;
          }

          if ((v2 & 0x18) == 0)
          {
            v10 = (v6 + v11);
            v9 = (v8 + v11);
            goto LABEL_21;
          }
        }

        else
        {
          v11 = 0;
        }

        v9 = (v8 + (v2 & 0xFFFFFFFFFFFFFFF8));
        v10 = (v6 + (v2 & 0xFFFFFFFFFFFFFFF8));
        v18 = (v6 + v11);
        v19 = (v8 + v11);
        v20 = v11 - (v2 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v21 = *v18++;
          *v19++ = v21;
          v20 += 8;
        }

        while (v20);
        if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_22;
        }

        do
        {
LABEL_21:
          v23 = *v10++;
          *v9++ = v23;
        }

        while (v10 != (v6 + v2));
        goto LABEL_22;
      }
    }

    else
    {
      v22 = a1;
      v8 = sub_10003E4AC(a1, v7, v2 + 1, 0);
      a1 = v22;
      if (v2 >= 8)
      {
        goto LABEL_5;
      }
    }

    v9 = v8;
    v10 = v6;
    goto LABEL_21;
  }

  v8 = 0;
  v12 = *a1;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_23:
  v24 = 8 * v4;
  a1[10] += 8 * v4;
  if (v12 && (v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8, v13 + v24 <= a1[1]))
  {
    *a1 = v13 + v24;
    v25 = v24 - 8;
    if ((v24 - 8) >= 0x18)
    {
LABEL_26:
      v26 = v13;
      v27 = v5;
      if (v13 - v5 >= 0x20)
      {
        v28 = (v25 >> 3) + 1;
        v29 = 8 * (v28 & 0x3FFFFFFFFFFFFFFCLL);
        v26 = (v13 + v29);
        v27 = (v5 + v29);
        v30 = (v5 + 16);
        v31 = (v13 + 16);
        v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v33 = *v30;
          *(v31 - 1) = *(v30 - 1);
          *v31 = v33;
          v30 += 2;
          v31 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    v34 = a1;
    v13 = sub_10003E4AC(a1, 8 * v4, 8 * v4, 3);
    a1 = v34;
    v25 = v24 - 8;
    if ((v24 - 8) >= 0x18)
    {
      goto LABEL_26;
    }
  }

  v26 = v13;
  v27 = v5;
  do
  {
LABEL_33:
    v35 = *v27++;
    *v26++ = v35;
  }

  while (v27 != (v5 + 8 * v4));
LABEL_34:
  v12 = *a1;
LABEL_35:
  a1[10] += 48;
  v36 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = v36 + 48;
  if (v12)
  {
    v38 = v37 > a1[1];
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v36 = sub_10003E4AC(a1, 48, 48, 3);
  }

  else
  {
    *a1 = v37;
  }

  *v36 = 0;
  *(v36 + 8) = v8;
  *(v36 + 16) = v2;
  *(v36 + 24) = v3;
  *(v36 + 32) = v13;
  *(v36 + 40) = v4;
  return v36;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(mlir::Operation **this)
{
  v42[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(v42);
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v42[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::RankedTensorType::getElementType(v42);
  if (ElementType == v4)
  {
    return 1;
  }

  v6 = v4;
  v37 = "expected source ";
  v38 = 259;
  mlir::OpState::emitOpError(this, &v37, v42);
  if (v42[0])
  {
    v7 = &v39;
    mlir::DiagnosticArgument::DiagnosticArgument(&v39, ElementType);
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v33 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v39;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v44;
    if (v42[0])
    {
      v39 = 3;
      v40 = " and result element type ";
      v41 = 25;
      v12 = &v39;
      v13 = v43;
      if (v11 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v11 > &v39)
        {
          v34 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v13 = v43;
          v12 = (v43 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v12 = &v39;
          v13 = v43;
        }
      }

      v14 = &v13[24 * v44];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v44;
      if (v42[0])
      {
        v16 = &v39;
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, v6);
        v17 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v39 && v43 + 24 * v44 > &v39)
          {
            v35 = &v39 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v17 = v43;
            v16 = (v43 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v16 = &v39;
            v17 = v43;
          }
        }

        v18 = &v17[24 * v44];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v44;
        if (v42[0])
        {
          v39 = 3;
          v40 = " to match";
          v41 = 9;
          v21 = &v39;
          v22 = v43;
          if (v20 >= v45)
          {
            if (v43 <= &v39 && v43 + 24 * v20 > &v39)
            {
              v36 = &v39 - v43;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v22 = v43;
              v21 = (v43 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v21 = &v39;
              v22 = v43;
            }
          }

          v23 = &v22[24 * v44];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v44;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = sub_10005BEF4(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v28 = v47;
    if (v47)
    {
      v29 = v48;
      v30 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v47;
      }

      v48 = v28;
      operator delete(v30);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verify(mlir::Operation **this)
{
  v42[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(v42);
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v42[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::RankedTensorType::getElementType(v42);
  if (ElementType == v4)
  {
    return 1;
  }

  v6 = v4;
  v37 = "expected source ";
  v38 = 259;
  mlir::OpState::emitOpError(this, &v37, v42);
  if (v42[0])
  {
    v7 = &v39;
    mlir::DiagnosticArgument::DiagnosticArgument(&v39, ElementType);
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v39 && v43 + 24 * v44 > &v39)
      {
        v33 = &v39 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v39;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v44;
    if (v42[0])
    {
      v39 = 3;
      v40 = " and result element type ";
      v41 = 25;
      v12 = &v39;
      v13 = v43;
      if (v11 >= v45)
      {
        if (v43 <= &v39 && v43 + 24 * v11 > &v39)
        {
          v34 = &v39 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v13 = v43;
          v12 = (v43 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
          v12 = &v39;
          v13 = v43;
        }
      }

      v14 = &v13[24 * v44];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      ++v44;
      if (v42[0])
      {
        v16 = &v39;
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, v6);
        v17 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v39 && v43 + 24 * v44 > &v39)
          {
            v35 = &v39 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v17 = v43;
            v16 = (v43 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v16 = &v39;
            v17 = v43;
          }
        }

        v18 = &v17[24 * v44];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v44;
        if (v42[0])
        {
          v39 = 3;
          v40 = " to match";
          v41 = 9;
          v21 = &v39;
          v22 = v43;
          if (v20 >= v45)
          {
            if (v43 <= &v39 && v43 + 24 * v20 > &v39)
            {
              v36 = &v39 - v43;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v22 = v43;
              v21 = (v43 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v20 + 1, 24);
              v21 = &v39;
              v22 = v43;
            }
          }

          v23 = &v22[24 * v44];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v44;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = sub_10005BEF4(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v28 = v47;
    if (v47)
    {
      v29 = v48;
      v30 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v47;
      }

      v48 = v28;
      operator delete(v30);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v62 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v61 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(&v62);
  if (ElementType != mlir::RankedTensorType::getElementType(&v61))
  {
    __s1 = "expected source ";
    v71[8] = 259;
    mlir::OpState::emitOpError(this, &__s1, &v72);
    v24 = mlir::RankedTensorType::getElementType(&v62);
    if (v72)
    {
      p_s2 = &__s2;
      mlir::DiagnosticArgument::DiagnosticArgument(&__s2, v24);
      v26 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &__s2 && v74 + 24 * v75 > &__s2)
        {
          v53 = &__s2 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v26 = v74;
          p_s2 = (v74 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          p_s2 = &__s2;
          v26 = v74;
        }
      }

      v27 = &v26[24 * v75];
      v28 = *p_s2;
      *(v27 + 2) = p_s2[2];
      *v27 = v28;
      v29 = ++v75;
      if (v72)
      {
        LODWORD(__s2) = 3;
        v67 = " and result element type ";
        v68[0] = 25;
        v30 = &__s2;
        v31 = v74;
        if (v29 >= v76)
        {
          if (v74 <= &__s2 && v74 + 24 * v29 > &__s2)
          {
            v55 = &__s2 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v29 + 1, 24);
            v31 = v74;
            v30 = (v74 + v55);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v29 + 1, 24);
            v30 = &__s2;
            v31 = v74;
          }
        }

        v32 = &v31[24 * v75];
        v33 = *v30;
        *(v32 + 2) = v30[2];
        *v32 = v33;
        ++v75;
      }
    }

    v34 = mlir::RankedTensorType::getElementType(&v61);
    if (v72)
    {
      v35 = &__s2;
      mlir::DiagnosticArgument::DiagnosticArgument(&__s2, v34);
      v36 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &__s2 && v74 + 24 * v75 > &__s2)
        {
          v54 = &__s2 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v36 = v74;
          v35 = (v74 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v35 = &__s2;
          v36 = v74;
        }
      }

      v37 = &v36[24 * v75];
      v38 = *v35;
      *(v37 + 2) = v35[2];
      *v37 = v38;
      v39 = ++v75;
      if (v72)
      {
        LODWORD(__s2) = 3;
        v67 = " to match";
        v68[0] = 9;
        v40 = &__s2;
        v41 = v74;
        if (v39 >= v76)
        {
          if (v74 <= &__s2 && v74 + 24 * v39 > &__s2)
          {
            v56 = &__s2 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v39 + 1, 24);
            v41 = v74;
            v40 = (v74 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v39 + 1, 24);
            v40 = &__s2;
            v41 = v74;
          }
        }

        v42 = &v41[24 * v75];
        v43 = *v40;
        *(v42 + 2) = v40[2];
        *v42 = v43;
        ++v75;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v81;
        v46 = __p;
        if (v81 != __p)
        {
          do
          {
            v45 = sub_10005BEF4(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v81 = v44;
        operator delete(v46);
      }

      v47 = v78;
      if (v78)
      {
        v48 = v79;
        v49 = v78;
        if (v79 != v78)
        {
          do
          {
            v50 = *--v48;
            *v48 = 0;
            if (v50)
            {
              operator delete[]();
            }
          }

          while (v48 != v47);
          v49 = v78;
        }

        v79 = v47;
        operator delete(v49);
      }

      v51 = v74;
      if (v74 != v77)
      {
        goto LABEL_69;
      }
    }

    return v16;
  }

  mlir::ODIE::Compiler::CoreMLAX::getStrides(v62, &__s1);
  mlir::ODIE::Compiler::CoreMLAX::getStrides(v61, &__s2);
  if (v70 == v67 && (v7 = __s2, !memcmp(__s1, __s2, 8 * v70)))
  {
    v16 = 1;
    if (v7 != v68)
    {
LABEL_67:
      free(v7);
    }
  }

  else
  {
    v59 = "source strides [";
    v60 = 259;
    mlir::OpState::emitOpError(this, &v59, &v72);
    if (v72)
    {
      v63 = ", ";
      sub_100066E2C(__s1, __s1 + v70, v73, v73, &v63);
      if (v72)
      {
        LODWORD(v63) = 3;
        v64 = "] do not match dest strides [";
        v65 = 29;
        v8 = &v63;
        v9 = v74;
        if (v75 >= v76)
        {
          if (v74 <= &v63 && v74 + 24 * v75 > &v63)
          {
            v57 = &v63 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
            v9 = v74;
            v8 = (v74 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
            v8 = &v63;
            v9 = v74;
          }
        }

        v10 = &v9[24 * v75];
        v11 = *v8;
        *(v10 + 2) = v8[2];
        *v10 = v11;
        ++v75;
        if (v72)
        {
          v63 = ", ";
          sub_100066E2C(__s2, __s2 + v67, v73, v73, &v63);
          if (v72)
          {
            LODWORD(v63) = 3;
            v64 = "]";
            v65 = 1;
            v12 = &v63;
            v13 = v74;
            if (v75 >= v76)
            {
              if (v74 <= &v63 && v74 + 24 * v75 > &v63)
              {
                v58 = &v63 - v74;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v13 = v74;
                v12 = (v74 + v58);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v12 = &v63;
                v13 = v74;
              }
            }

            v14 = &v13[24 * v75];
            v15 = *v12;
            *(v14 + 2) = v12[2];
            *v14 = v15;
            ++v75;
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v72);
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v72);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v81;
        v19 = __p;
        if (v81 != __p)
        {
          do
          {
            v18 = sub_10005BEF4(v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v81 = v17;
        operator delete(v19);
      }

      v20 = v78;
      if (v78)
      {
        v21 = v79;
        v22 = v78;
        if (v79 != v78)
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
          v22 = v78;
        }

        v79 = v20;
        operator delete(v22);
      }

      if (v74 != v77)
      {
        free(v74);
      }
    }

    v7 = __s2;
    if (__s2 != v68)
    {
      goto LABEL_67;
    }
  }

  v51 = __s1;
  if (__s1 != v71)
  {
LABEL_69:
    free(v51);
  }

  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::fold(uint64_t a1)
{
  v2 = *(*(*(*a1 + 72) + 24) + 8);
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  result = 0;
  if ((*(NextResultAtOffset + 8) ^ v2) <= 7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

  return result;
}

double mlir::ODIE::Compiler::CoreMLAX::ViewOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  *(a2 + 16) = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 2uLL);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 4)
  {
    mlir::RegionRange::RegionRange(&v27, 0, 0);
    v27 = a4;
    v28 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v27, 0);
    v27 = a4;
    v28 = 2;
    v27 = mlir::ValueRange::offset_base(&v27, 2);
    v28 = 0;
    v15 = mlir::ValueRange::dereference_iterator(&v27, 0);
    v27 = sub_10014A5C4((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v28 = v16;
    if (v27)
    {
      v26[0] = sub_10014A5C4((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
      v26[1] = v17;
      if (v26[0])
      {
        Shape = mlir::ShapedType::getShape(v26);
        v20 = v19;
        ElementType = mlir::ShapedType::getElementType(&v27);
        v22 = mlir::RankedTensorType::get(Shape, v20, ElementType, 0);
        v23 = *(a11 + 8);
        if (v23 >= *(a11 + 12))
        {
          v25 = v22;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
          v22 = v25;
          LODWORD(v23) = *(a11 + 8);
        }

        *(*a11 + 8 * v23) = v22;
        ++*(a11 + 8);
        return 1;
      }

      else
      {
        return sub_1001F06E4(a2, a3, "expect shaped type for input");
      }
    }

    else
    {
      return sub_1001F06E4(a2, a3, "expect shaped type for zero_scale");
    }
  }

  else
  {

    return sub_1001F06E4(a2, a3, "expect 4 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 4)
  {
    mlir::RegionRange::RegionRange(&v28, 0, 0);
    v28 = a4;
    v29 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v28, 0);
    v28 = a4;
    v29 = 1;
    v28 = mlir::ValueRange::offset_base(&v28, 1);
    v29 = 0;
    v15 = mlir::ValueRange::dereference_iterator(&v28, 0);
    v28 = sub_10014A5C4((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
    v29 = v16;
    if (v28)
    {
      v27[0] = sub_10014A5C4((*(v14 + 8) & 0xFFFFFFFFFFFFFFF8));
      v27[1] = v17;
      if (v27[0])
      {
        Shape = mlir::ShapedType::getShape(v27);
        v20 = v19;
        ElementType = mlir::ShapedType::getElementType(&v28);
        v22 = mlir::RankedTensorType::get(Shape, v20, ElementType, 0);
        v23 = *(a11 + 8);
        if (v23 >= *(a11 + 12))
        {
          v26 = v22;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v23 + 1, 8);
          v22 = v26;
          LODWORD(v23) = *(a11 + 8);
        }

        *(*a11 + 8 * v23) = v22;
        ++*(a11 + 8);
        return 1;
      }

      v25 = "expect shaped type for input";
    }

    else
    {
      v25 = "expect shaped type for scale";
    }

    return sub_1001F06E4(a2, a3, v25);
  }

  return sub_1001F06E4(a2, a3, "expect 4 operands");
}

BOOL mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verify(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this)
{
  v1 = *(*this + 72);
  v2 = v1[7];
  v3 = v1[11];
  v4 = v1[15];
  v5 = v1[3];
  v15 = this;
  sub_10028A174(&v16, sub_100294F0C, &v15, v5, v2, v3, v4);
  if (!mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16))
  {
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 1;
  if (v16)
  {
LABEL_5:
    mlir::InFlightDiagnostic::report(&v16);
  }

LABEL_6:
  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
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
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v6;
}

void sub_10028A174(_OWORD *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a5;
  v104 = *(a5 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v104);
  v15 = v14;
  v103 = *(a6 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v103);
  v17 = v16;
  v102 = a7[1] & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v102);
  if (v15 >= 2)
  {
    a2(v106, a3);
    if (v106[0])
    {
      LODWORD(v96) = 3;
      *(&v96 + 1) = "scale can only be a scalar or rank-1 tensor";
      *&v97 = 43;
      v19 = &v96;
      v20 = *(&v107 + 1);
      if (v108 >= HIDWORD(v108))
      {
        if (*(&v107 + 1) <= &v96 && *(&v107 + 1) + 24 * v108 > &v96)
        {
          v92 = &v96 - *(&v107 + 1);
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
          v20 = *(&v107 + 1);
          v19 = &v92[*(&v107 + 1)];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
          v19 = &v96;
          v20 = *(&v107 + 1);
        }
      }

      v21 = v20 + 24 * v108;
      v22 = *v19;
      *(v21 + 16) = *(v19 + 2);
      *v21 = v22;
      LODWORD(v108) = v108 + 1;
    }

    sub_10006BAFC(a1, v106);
    if (v106[0])
    {
      mlir::InFlightDiagnostic::report(v106);
    }

    if (v117 == 1)
    {
      if (v116 != &v117)
      {
        free(v116);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v115;
        v25 = __p;
        if (v115 != __p)
        {
          do
          {
            v24 = sub_10005BEF4(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v115 = v23;
        operator delete(v25);
      }

      v26 = v112;
      if (!v112)
      {
        goto LABEL_63;
      }

      v27 = v113;
      v28 = v112;
      if (v113 == v112)
      {
LABEL_62:
        v113 = v26;
        operator delete(v28);
LABEL_63:
        if (*(&v107 + 1) != v109)
        {
          free(*(&v107 + 1));
        }

        return;
      }

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
LABEL_61:
      v28 = v112;
      goto LABEL_62;
    }

    return;
  }

  if (v17 <= 1)
  {
    if (v18 >= 1)
    {
      a2(v106, a3);
      if (v106[0])
      {
        LODWORD(v96) = 3;
        *(&v96 + 1) = "axis can only be a scalar";
        *&v97 = 25;
        v39 = &v96;
        v40 = *(&v107 + 1);
        if (v108 >= HIDWORD(v108))
        {
          if (*(&v107 + 1) <= &v96 && *(&v107 + 1) + 24 * v108 > &v96)
          {
            v94 = &v96 - *(&v107 + 1);
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
            v40 = *(&v107 + 1);
            v39 = &v94[*(&v107 + 1)];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
            v39 = &v96;
            v40 = *(&v107 + 1);
          }
        }

        v41 = v40 + 24 * v108;
        v42 = *v39;
        *(v41 + 16) = *(v39 + 2);
        *v41 = v42;
        LODWORD(v108) = v108 + 1;
      }

      sub_10006BAFC(a1, v106);
      if (v106[0])
      {
        mlir::InFlightDiagnostic::report(v106);
      }

      if (v117 == 1)
      {
        if (v116 != &v117)
        {
          free(v116);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v115;
          v45 = __p;
          if (v115 != __p)
          {
            do
            {
              v44 = sub_10005BEF4(v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v115 = v43;
          operator delete(v45);
        }

        v26 = v112;
        if (!v112)
        {
          goto LABEL_63;
        }

        v46 = v113;
        v28 = v112;
        if (v113 == v112)
        {
          goto LABEL_62;
        }

        do
        {
          v47 = *--v46;
          *v46 = 0;
          if (v47)
          {
            operator delete[]();
          }
        }

        while (v46 != v26);
        goto LABEL_61;
      }

      return;
    }

    Shape = mlir::TensorType::getShape(&v104);
    NumElements = mlir::ShapedType::getNumElements(Shape, v49);
    v51 = mlir::TensorType::getShape(&v103);
    if (NumElements == mlir::ShapedType::getNumElements(v51, v52))
    {
      v101 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::TensorType::getShape(&v101);
      v54 = v53;
      v100 = v53;
      v55 = mlir::TensorType::getShape(&v104);
      if (mlir::ShapedType::getNumElements(v55, v56) < 2)
      {
        goto LABEL_77;
      }

      sub_10020E8BC(a7, v106);
      if (v111)
      {
        v57 = *v106[0];
        if (v106[0] != &v107)
        {
          free(v106[0]);
        }

        LODWORD(v99) = v57;
        if (v54 <= v57 || v57 < -v54)
        {
          a2(v106, a3);
          sub_10008AE40(v106, "axis must be within range (-data_rank - 1, data_rank) (exclusive). Provided axis: ");
          sub_10020E254(v80, &v99);
          sub_10008AE40(v81, " for input with rank: ");
          v83 = &v100;
        }

        else
        {
          v58 = mlir::TensorType::getShape(&v101);
          if (v57 >= 0)
          {
            v59 = 0;
          }

          else
          {
            v59 = v54;
          }

          v60 = v59 + v57;
          if (*(mlir::TensorType::getShape(&v101) + 8 * v60) == 0x8000000000000000 || (*&v96 = *(v58 + 8 * v60), v61 = mlir::TensorType::getShape(&v104), v96 == mlir::ShapedType::getNumElements(v61, v62)))
          {
LABEL_77:
            v99 = 0;
            *&v96 = &v99;
            v106[0] = v9;
            DefiningOp = mlir::Value::getDefiningOp(v106);
            if (DefiningOp && sub_10026CA14(&v96, DefiningOp) && (mlir::DenseElementsAttr::tryGetFloatValues(&v99, v106), v96 = *v106, v97 = v107, v98 = v108, mlir::DenseElementsAttr::tryGetFloatValues(&v99, v106), v64 = v110, v97 != v110))
            {
              while (1)
              {
                v77 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v96, v106);
                v78 = v98;
                v79 = llvm::APFloatBase::PPCDoubleDouble(v77);
                if (v79 == v78)
                {
                  llvm::detail::DoubleAPFloat::DoubleAPFloat(v105, v78);
                }

                llvm::detail::IEEEFloat::IEEEFloat(v105, v78, v106);
                if (LODWORD(v106[1]) >= 0x41 && v106[0])
                {
                  operator delete[]();
                }

                if (llvm::APFloat::convertToFloat(v105) < 0.0)
                {
                  break;
                }

                if (v79 == v105[0])
                {
                  sub_10002B154(v105);
                  *&v97 = v97 + 1;
                  if (v97 == v64)
                  {
                    goto LABEL_110;
                  }
                }

                else
                {
                  llvm::detail::IEEEFloat::~IEEEFloat(v105);
                  *&v97 = v97 + 1;
                  if (v97 == v64)
                  {
                    goto LABEL_110;
                  }
                }
              }

              a2(v106, a3);
              sub_10008AE40(v106, "All scale values must be positive");
              sub_10006BAFC(a1, v91);
              sub_10006296C(v106);
              sub_10002ABB0(v105);
            }

            else
            {
LABEL_110:
              a1[11] = 0u;
              a1[12] = 0u;
              a1[9] = 0u;
              a1[10] = 0u;
              a1[7] = 0u;
              a1[8] = 0u;
              a1[5] = 0u;
              a1[6] = 0u;
              a1[3] = 0u;
              a1[4] = 0u;
              a1[1] = 0u;
              a1[2] = 0u;
              *a1 = 0u;
            }

            return;
          }

          a2(v106, a3);
          sub_10008AE40(v85, "Provided length of scale is ");
          v87 = v86;
          v88 = mlir::TensorType::getShape(&v104);
          v105[0] = mlir::ShapedType::getNumElements(v88, v89);
          sub_10020CF30(v87, v105);
          sub_10008AE40(v90, ", but dimension of input at axis is ");
          v83 = &v96;
        }

        sub_10020CF30(v82, v83);
        sub_10006BAFC(a1, v84);
        sub_10006296C(v106);
        return;
      }

      sub_10026AFCC();
      goto LABEL_136;
    }

    v9 = v106;
    a2(v106, a3);
    if (!v106[0])
    {
LABEL_84:
      sub_10006BAFC(a1, v106);
      if (v106[0])
      {
        mlir::InFlightDiagnostic::report(v106);
      }

      if (v117 == 1)
      {
        if (v116 != &v117)
        {
          free(v116);
        }

        v70 = __p;
        if (__p)
        {
          v71 = v115;
          v72 = __p;
          if (v115 != __p)
          {
            do
            {
              v71 = sub_10005BEF4(v71 - 1);
            }

            while (v71 != v70);
            v72 = __p;
          }

          v115 = v70;
          operator delete(v72);
        }

        v73 = v112;
        if (v112)
        {
          v74 = v113;
          v75 = v112;
          if (v113 != v112)
          {
            do
            {
              v76 = *--v74;
              *v74 = 0;
              if (v76)
              {
                operator delete[]();
              }
            }

            while (v74 != v73);
            v75 = v112;
          }

          v113 = v73;
          operator delete(v75);
        }

        if (*(&v107 + 1) != v109)
        {
          free(*(&v107 + 1));
        }
      }

      return;
    }

    LODWORD(v96) = 3;
    *(&v96 + 1) = "zero_point and scale should be of same length";
    *&v97 = 45;
    v65 = v108;
    v66 = &v96;
    v67 = *(&v107 + 1);
    if (v108 >= HIDWORD(v108))
    {
      if (*(&v107 + 1) <= &v96 && *(&v107 + 1) + 24 * v108 > &v96)
      {
LABEL_136:
        v95 = &v96 - v67;
        llvm::SmallVectorBase<unsigned int>::grow_pod((v9 + 3), v109, v65 + 1, 24);
        v67 = *(&v107 + 1);
        v66 = &v95[*(&v107 + 1)];
        goto LABEL_83;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
      v66 = &v96;
      v67 = *(&v107 + 1);
    }

LABEL_83:
    v68 = v67 + 24 * v108;
    v69 = *v66;
    *(v68 + 16) = *(v66 + 2);
    *v68 = v69;
    LODWORD(v108) = v108 + 1;
    goto LABEL_84;
  }

  a2(v106, a3);
  if (v106[0])
  {
    LODWORD(v96) = 3;
    *(&v96 + 1) = "zero-point can only be a scalar or rank-1 tensor";
    *&v97 = 48;
    v30 = &v96;
    v31 = *(&v107 + 1);
    if (v108 >= HIDWORD(v108))
    {
      if (*(&v107 + 1) <= &v96 && *(&v107 + 1) + 24 * v108 > &v96)
      {
        v93 = &v96 - *(&v107 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
        v31 = *(&v107 + 1);
        v30 = &v93[*(&v107 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v107 + 8, v109, v108 + 1, 24);
        v30 = &v96;
        v31 = *(&v107 + 1);
      }
    }

    v32 = v31 + 24 * v108;
    v33 = *v30;
    *(v32 + 16) = *(v30 + 2);
    *v32 = v33;
    LODWORD(v108) = v108 + 1;
  }

  sub_10006BAFC(a1, v106);
  if (v106[0])
  {
    mlir::InFlightDiagnostic::report(v106);
  }

  if (v117 == 1)
  {
    if (v116 != &v117)
    {
      free(v116);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v115;
      v36 = __p;
      if (v115 != __p)
      {
        do
        {
          v35 = sub_10005BEF4(v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v115 = v34;
      operator delete(v36);
    }

    v26 = v112;
    if (!v112)
    {
      goto LABEL_63;
    }

    v37 = v113;
    v28 = v112;
    if (v113 == v112)
    {
      goto LABEL_62;
    }

    do
    {
      v38 = *--v37;
      *v37 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v37 != v26);
    goto LABEL_61;
  }
}

BOOL mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verify(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this)
{
  v1 = *(*this + 72);
  v2 = v1[3];
  v3 = v1[7];
  v4 = v1[11];
  v5 = v1[15];
  v15 = this;
  sub_10028A174(&v16, sub_100294F3C, &v15, v2, v3, v4, v5);
  if (!mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16))
  {
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 1;
  if (v16)
  {
LABEL_5:
    mlir::InFlightDiagnostic::report(&v16);
  }

LABEL_6:
  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
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
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v6;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = v2[3];
  v4 = v2[7];
  v5 = v2[11];
  v6 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v120 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v121 = v6;
  v119 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v120))
  {
    goto LABEL_18;
  }

  Shape = mlir::TensorType::getShape(&v120);
  if (!v8)
  {
LABEL_6:
    if (mlir::TensorType::hasRank(&v121))
    {
      v10 = mlir::TensorType::getShape(&v121);
      if (!v11)
      {
LABEL_11:
        mlir::TensorType::getShape(&v121);
        v14 = v13;
        mlir::TensorType::getShape(&v120);
        v16 = v15;
        mlir::TensorType::getShape(&v119);
        v18 = v17;
        if (v14 == v16 && v16 == v17)
        {
          v19 = mlir::TensorType::getShape(&v121);
          v20 = mlir::TensorType::getShape(&v120);
          v22 = v21;
          v23 = mlir::TensorType::getShape(&v119);
          v24 = 1;
          if (!v22)
          {
            return v24;
          }

          while (1)
          {
            v26 = *v20++;
            v25 = v26;
            v27 = *v23++;
            if (v25 != v27)
            {
              break;
            }

            if (*v19 % v25)
            {
              v118 = 257;
              mlir::OpState::emitError(this, v117, v125);
              if (v125[0])
              {
                v122 = 3;
                v123 = "scale size across each dimension should be a factor of corresponding size of dimension in data argument";
                v124 = 103;
                v96 = &v122;
                v97 = v126;
                if (v127 >= v128)
                {
                  if (v126 <= &v122 && v126 + 24 * v127 > &v122)
                  {
                    v113 = &v122 - v126;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                    v97 = v126;
                    v96 = (v126 + v113);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                    v96 = &v122;
                    v97 = v126;
                  }
                }

                v98 = &v97[24 * v127];
                v99 = *v96;
                *(v98 + 2) = *(v96 + 2);
                *v98 = v99;
                ++v127;
              }

              v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
              if (v125[0])
              {
                mlir::InFlightDiagnostic::report(v125);
              }

              if (v135 != 1)
              {
                return v24;
              }

              if (v134 != &v135)
              {
                free(v134);
              }

              v100 = __p;
              if (__p)
              {
                v101 = v133;
                v102 = __p;
                if (v133 != __p)
                {
                  do
                  {
                    v101 = sub_10005BEF4(v101 - 1);
                  }

                  while (v101 != v100);
                  v102 = __p;
                }

                v133 = v100;
                operator delete(v102);
              }

              v35 = v130;
              if (!v130)
              {
                goto LABEL_127;
              }

              v103 = v131;
              v37 = v130;
              if (v131 == v130)
              {
                goto LABEL_126;
              }

              do
              {
                v104 = *--v103;
                *v103 = 0;
                if (v104)
                {
                  operator delete[]();
                }
              }

              while (v103 != v35);
              goto LABEL_125;
            }

            ++v19;
            if (!--v22)
            {
              return v24;
            }
          }

          v118 = 257;
          mlir::OpState::emitError(this, v117, v125);
          if (v125[0])
          {
            v122 = 3;
            v123 = "shape of scale, and offset are not matching";
            v124 = 43;
            v87 = &v122;
            v88 = v126;
            if (v127 >= v128)
            {
              if (v126 <= &v122 && v126 + 24 * v127 > &v122)
              {
                v112 = &v122 - v126;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v88 = v126;
                v87 = (v126 + v112);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v87 = &v122;
                v88 = v126;
              }
            }

            v89 = &v88[24 * v127];
            v90 = *v87;
            *(v89 + 2) = *(v87 + 2);
            *v89 = v90;
            ++v127;
          }

          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v135 != 1)
          {
            return v24;
          }

          if (v134 != &v135)
          {
            free(v134);
          }

          v91 = __p;
          if (__p)
          {
            v92 = v133;
            v93 = __p;
            if (v133 != __p)
            {
              do
              {
                v92 = sub_10005BEF4(v92 - 1);
              }

              while (v92 != v91);
              v93 = __p;
            }

            v133 = v91;
            operator delete(v93);
          }

          v35 = v130;
          if (!v130)
          {
            goto LABEL_127;
          }

          v94 = v131;
          v37 = v130;
          if (v131 == v130)
          {
            goto LABEL_126;
          }

          do
          {
            v95 = *--v94;
            *v94 = 0;
            if (v95)
            {
              operator delete[]();
            }
          }

          while (v94 != v35);
        }

        else
        {
          v118 = 257;
          mlir::OpState::emitError(this, v117, v125);
          if (v125[0])
          {
            v122 = 3;
            v123 = "rank of data, scale, and offset should match. ";
            v124 = 46;
            v48 = &v122;
            v49 = v126;
            if (v127 >= v128)
            {
              if (v126 <= &v122 && v126 + 24 * v127 > &v122)
              {
                v108 = &v122 - v126;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v49 = v126;
                v48 = (v126 + v108);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
                v48 = &v122;
                v49 = v126;
              }
            }

            v50 = &v49[24 * v127];
            v51 = *v48;
            *(v50 + 2) = *(v48 + 2);
            *v50 = v51;
            v52 = ++v127;
            if (v125[0])
            {
              v122 = 3;
              v123 = "data_rank = ";
              v124 = 12;
              v53 = &v122;
              v54 = v126;
              if (v52 >= v128)
              {
                if (v126 <= &v122 && v126 + 24 * v52 > &v122)
                {
                  v109 = &v122 - v126;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v52 + 1, 24);
                  v54 = v126;
                  v53 = (v126 + v109);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v52 + 1, 24);
                  v53 = &v122;
                  v54 = v126;
                }
              }

              v55 = &v54[24 * v127];
              v56 = *v53;
              *(v55 + 2) = *(v53 + 2);
              *v55 = v56;
              v57 = ++v127;
              if (v125[0])
              {
                v122 = 2;
                v123 = v14;
                v58 = &v122;
                v59 = v126;
                if (v57 >= v128)
                {
                  if (v126 <= &v122 && v126 + 24 * v57 > &v122)
                  {
                    v110 = &v122 - v126;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v57 + 1, 24);
                    v59 = v126;
                    v58 = (v126 + v110);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v57 + 1, 24);
                    v58 = &v122;
                    v59 = v126;
                  }
                }

                v60 = &v59[24 * v127];
                v61 = *v58;
                *(v60 + 2) = *(v58 + 2);
                *v60 = v61;
                v62 = ++v127;
                if (v125[0])
                {
                  v122 = 3;
                  v123 = ", scale_rank = ";
                  v124 = 15;
                  v63 = &v122;
                  v64 = v126;
                  if (v62 >= v128)
                  {
                    if (v126 <= &v122 && v126 + 24 * v62 > &v122)
                    {
                      v111 = &v122 - v126;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v62 + 1, 24);
                      v64 = v126;
                      v63 = (v126 + v111);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v62 + 1, 24);
                      v63 = &v122;
                      v64 = v126;
                    }
                  }

                  v65 = &v64[24 * v127];
                  v66 = *v63;
                  *(v65 + 2) = *(v63 + 2);
                  *v65 = v66;
                  v67 = ++v127;
                  if (v125[0])
                  {
                    v122 = 2;
                    v123 = v16;
                    v68 = &v122;
                    v69 = v126;
                    if (v67 >= v128)
                    {
                      if (v126 <= &v122 && v126 + 24 * v67 > &v122)
                      {
                        v114 = &v122 - v126;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v67 + 1, 24);
                        v69 = v126;
                        v68 = (v126 + v114);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v67 + 1, 24);
                        v68 = &v122;
                        v69 = v126;
                      }
                    }

                    v70 = &v69[24 * v127];
                    v71 = *v68;
                    *(v70 + 2) = *(v68 + 2);
                    *v70 = v71;
                    v72 = ++v127;
                    if (v125[0])
                    {
                      v122 = 3;
                      v123 = ", offset_rank = ";
                      v124 = 16;
                      v73 = &v122;
                      v74 = v126;
                      if (v72 >= v128)
                      {
                        if (v126 <= &v122 && v126 + 24 * v72 > &v122)
                        {
                          v115 = &v122 - v126;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v72 + 1, 24);
                          v74 = v126;
                          v73 = (v126 + v115);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v72 + 1, 24);
                          v73 = &v122;
                          v74 = v126;
                        }
                      }

                      v75 = &v74[24 * v127];
                      v76 = *v73;
                      *(v75 + 2) = *(v73 + 2);
                      *v75 = v76;
                      v77 = ++v127;
                      if (v125[0])
                      {
                        v122 = 2;
                        v123 = v18;
                        v78 = &v122;
                        v79 = v126;
                        if (v77 >= v128)
                        {
                          if (v126 <= &v122 && v126 + 24 * v77 > &v122)
                          {
                            v116 = &v122 - v126;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v77 + 1, 24);
                            v79 = v126;
                            v78 = (v126 + v116);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v77 + 1, 24);
                            v78 = &v122;
                            v79 = v126;
                          }
                        }

                        v80 = &v79[24 * v127];
                        v81 = *v78;
                        *(v80 + 2) = *(v78 + 2);
                        *v80 = v81;
                        ++v127;
                      }
                    }
                  }
                }
              }
            }
          }

          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v135 != 1)
          {
            return v24;
          }

          if (v134 != &v135)
          {
            free(v134);
          }

          v82 = __p;
          if (__p)
          {
            v83 = v133;
            v84 = __p;
            if (v133 != __p)
            {
              do
              {
                v83 = sub_10005BEF4(v83 - 1);
              }

              while (v83 != v82);
              v84 = __p;
            }

            v133 = v82;
            operator delete(v84);
          }

          v35 = v130;
          if (!v130)
          {
            goto LABEL_127;
          }

          v85 = v131;
          v37 = v130;
          if (v131 == v130)
          {
LABEL_126:
            v131 = v35;
            operator delete(v37);
LABEL_127:
            if (v126 != v129)
            {
              free(v126);
            }

            return v24;
          }

          do
          {
            v86 = *--v85;
            *v85 = 0;
            if (v86)
            {
              operator delete[]();
            }
          }

          while (v85 != v35);
        }

        goto LABEL_125;
      }

      v12 = 8 * v11;
      while (*v10 != 0x8000000000000000)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_11;
        }
      }
    }

    v118 = 257;
    mlir::OpState::emitError(this, v117, v125);
    if (v125[0])
    {
      v122 = 3;
      v123 = "data shape is required to be static";
      v124 = 35;
      v39 = &v122;
      v40 = v126;
      if (v127 >= v128)
      {
        if (v126 <= &v122 && v126 + 24 * v127 > &v122)
        {
          v107 = &v122 - v126;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v40 = v126;
          v39 = (v126 + v107);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
          v39 = &v122;
          v40 = v126;
        }
      }

      v41 = &v40[24 * v127];
      v42 = *v39;
      *(v41 + 2) = *(v39 + 2);
      *v41 = v42;
      ++v127;
    }

    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v135 != 1)
    {
      return v24;
    }

    if (v134 != &v135)
    {
      free(v134);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v133;
      v45 = __p;
      if (v133 != __p)
      {
        do
        {
          v44 = sub_10005BEF4(v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v133 = v43;
      operator delete(v45);
    }

    v35 = v130;
    if (!v130)
    {
      goto LABEL_127;
    }

    v46 = v131;
    v37 = v130;
    if (v131 == v130)
    {
      goto LABEL_126;
    }

    do
    {
      v47 = *--v46;
      *v46 = 0;
      if (v47)
      {
        operator delete[]();
      }
    }

    while (v46 != v35);
LABEL_125:
    v37 = v130;
    goto LABEL_126;
  }

  v9 = 8 * v8;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

LABEL_18:
  v118 = 257;
  mlir::OpState::emitError(this, v117, v125);
  if (v125[0])
  {
    v122 = 3;
    v123 = "scale shape is required to be static";
    v124 = 36;
    v28 = &v122;
    v29 = v126;
    if (v127 >= v128)
    {
      if (v126 <= &v122 && v126 + 24 * v127 > &v122)
      {
        v106 = &v122 - v126;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
        v29 = v126;
        v28 = (v126 + v106);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v129, v127 + 1, 24);
        v28 = &v122;
        v29 = v126;
      }
    }

    v30 = &v29[24 * v127];
    v31 = *v28;
    *(v30 + 2) = *(v28 + 2);
    *v30 = v31;
    ++v127;
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
  if (v125[0])
  {
    mlir::InFlightDiagnostic::report(v125);
  }

  if (v135 == 1)
  {
    if (v134 != &v135)
    {
      free(v134);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v133;
      v34 = __p;
      if (v133 != __p)
      {
        do
        {
          v33 = sub_10005BEF4(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v133 = v32;
      operator delete(v34);
    }

    v35 = v130;
    if (!v130)
    {
      goto LABEL_127;
    }

    v36 = v131;
    v37 = v130;
    if (v131 == v130)
    {
      goto LABEL_126;
    }

    do
    {
      v38 = *--v36;
      *v36 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v36 != v35);
    goto LABEL_125;
  }

  return v24;
}