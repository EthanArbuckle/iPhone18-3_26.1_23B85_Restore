void mlir::mps::ConstantOp::downgradeToVersion(mlir::Operation **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v47 = &unk_28685B550;
  v48 = 0x300000001;
  v49 = 1;
  if (*(v6 + 9))
  {
    v7 = v6 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  v50[0] = mlir::getElementTypeOrSelf(NextResultAtOffset);
  if (mlir::Type::isUnsignedInteger(v50, 6) && ((v9 = a2[2], v9 < v48) || v9 == v48 && ((v18 = a2[3], v18 < HIDWORD(v48)) || v18 == HIDWORD(v48) && a2[4] < v49)))
  {
    v34 = "failed to downgrade: requested target version is {0}, but uint6 data is only supported from version {1}";
    v35 = 103;
    v36 = &v43;
    v37 = 2;
    v38 = 1;
    v39 = &unk_28685E490;
    v40 = a2;
    v41 = &unk_28685E4C0;
    v42 = &v47;
    v43 = &v39;
    v44 = &v41;
    v46 = 263;
    v45[0] = &v34;
    mlir::OpState::emitOpError(a1, v45, v50);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v10 = __p;
      if (__p)
      {
        v11 = v56;
        v12 = __p;
        if (v56 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v56 = v10;
        operator delete(v12);
      }

      v13 = v53;
      if (!v53)
      {
        goto LABEL_57;
      }

      v14 = v54;
      v15 = v53;
      if (v54 == v53)
      {
        goto LABEL_56;
      }

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
      goto LABEL_55;
    }
  }

  else
  {
    v31 = &unk_28685B550;
    v32 = 0x300000001;
    v33 = 3;
    if (*(*a1 + 9))
    {
      v19 = *a1 - 16;
    }

    else
    {
      v19 = 0;
    }

    v20 = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
    v50[0] = mlir::getElementTypeOrSelf(v20);
    if (!mlir::Type::isUnsignedInteger(v50, 3) || (v21 = a2[2], v21 >= v32) && (v21 != v32 || (v28 = a2[3], v28 >= HIDWORD(v32)) && (v28 != HIDWORD(v32) || a2[4] >= v33)))
    {
      v29 = *(v6 + 9);
      if (v29)
      {
        v30 = v6 - 16;
      }

      else
      {
        v30 = 0;
      }

      *a3 = v30;
      *(a3 + 8) = v29;
      *(a3 + 16) = 1;
      return;
    }

    v34 = "failed to downgrade: requested target version is {0}, but uint3 data is only supported from version {1}";
    v35 = 103;
    v36 = &v43;
    v37 = 2;
    v38 = 1;
    v39 = &unk_28685E490;
    v40 = a2;
    v41 = &unk_28685E4C0;
    v42 = &v31;
    v43 = &v39;
    v44 = &v41;
    v46 = 263;
    v45[0] = &v34;
    mlir::OpState::emitOpError(a1, v45, v50);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v22 = __p;
      if (__p)
      {
        v23 = v56;
        v24 = __p;
        if (v56 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v56 = v22;
        operator delete(v24);
      }

      v13 = v53;
      if (!v53)
      {
        goto LABEL_57;
      }

      v25 = v54;
      v15 = v53;
      if (v54 == v53)
      {
LABEL_56:
        v54 = v13;
        operator delete(v15);
LABEL_57:
        if (v51 != &v52)
        {
          free(v51);
        }

        return;
      }

      do
      {
        v27 = *--v25;
        v26 = v27;
        *v25 = 0;
        if (v27)
        {
          MEMORY[0x259C63150](v26, 0x1000C8077774924);
        }
      }

      while (v25 != v13);
LABEL_55:
      v15 = v53;
      goto LABEL_56;
    }
  }
}

void mlir::mps::ReadDataFromFileOp::downgradeToVersion(mlir::Operation **a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v57[0] = &unk_28685B550;
  v57[1] = 0x300000001;
  v58 = 0;
  v7 = a2[2];
  if (v7 && (v7 != 1 || a2[3] > 2u))
  {
    v41 = &unk_28685B550;
    v42 = 0x300000001;
    v43 = 1;
    if (*(v6 + 9))
    {
      v16 = v6 - 16;
    }

    else
    {
      v16 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v59[0] = mlir::getElementTypeOrSelf(NextResultAtOffset);
    if (mlir::Type::isUnsignedInteger(v59, 6) && ((v18 = a2[2], v18 < v42) || v18 == v42 && ((v25 = a2[3], v25 < HIDWORD(v42)) || v25 == HIDWORD(v42) && a2[4] < v43)))
    {
      v44 = "failed to downgrade: requested target version is {0}, but uint6 data is only supported from version {1}";
      v45 = 103;
      v46 = &v53;
      v47 = 2;
      v48 = 1;
      v49 = &unk_28685E490;
      v50 = a2;
      v51 = &unk_28685E4C0;
      v52 = &v41;
      v53 = &v49;
      v54 = &v51;
      v56 = 263;
      v55[0] = &v44;
      mlir::OpState::emitOpError(a1, v55, v59);
      *a3 = 0;
      *(a3 + 16) = 0;
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

        v19 = __p;
        if (__p)
        {
          v20 = v65;
          v21 = __p;
          if (v65 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v65 = v19;
          operator delete(v21);
        }

        v11 = v62;
        if (!v62)
        {
          goto LABEL_68;
        }

        v22 = v63;
        v13 = v62;
        if (v63 == v62)
        {
          goto LABEL_67;
        }

        do
        {
          v24 = *--v22;
          v23 = v24;
          *v22 = 0;
          if (v24)
          {
            MEMORY[0x259C63150](v23, 0x1000C8077774924);
          }
        }

        while (v22 != v11);
        goto LABEL_66;
      }
    }

    else
    {
      v38 = &unk_28685B550;
      v39 = 0x300000001;
      v40 = 3;
      if (*(*a1 + 9))
      {
        v26 = *a1 - 16;
      }

      else
      {
        v26 = 0;
      }

      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
      v59[0] = mlir::getElementTypeOrSelf(v27);
      if (mlir::Type::isUnsignedInteger(v59, 3) && ((v28 = a2[2], v28 < v39) || v28 == v39 && ((v35 = a2[3], v35 < HIDWORD(v39)) || v35 == HIDWORD(v39) && a2[4] < v40)))
      {
        v44 = "failed to downgrade: requested target version is {0}, but uint3 data is only supported from version {1}";
        v45 = 103;
        v46 = &v53;
        v47 = 2;
        v48 = 1;
        v49 = &unk_28685E490;
        v50 = a2;
        v51 = &unk_28685E4C0;
        v52 = &v38;
        v53 = &v49;
        v54 = &v51;
        v56 = 263;
        v55[0] = &v44;
        mlir::OpState::emitOpError(a1, v55, v59);
        *a3 = 0;
        *(a3 + 16) = 0;
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

          v29 = __p;
          if (__p)
          {
            v30 = v65;
            v31 = __p;
            if (v65 != __p)
            {
              do
              {
                v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
              }

              while (v30 != v29);
              v31 = __p;
            }

            v65 = v29;
            operator delete(v31);
          }

          v11 = v62;
          if (!v62)
          {
            goto LABEL_68;
          }

          v32 = v63;
          v13 = v62;
          if (v63 == v62)
          {
            goto LABEL_67;
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

          while (v32 != v11);
          goto LABEL_66;
        }
      }

      else
      {
        v36 = *(v6 + 9);
        if (v36)
        {
          v37 = v6 - 16;
        }

        else
        {
          v37 = 0;
        }

        *a3 = v37;
        *(a3 + 8) = v36;
        *(a3 + 16) = 1;
      }
    }
  }

  else
  {
    v44 = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v45 = 97;
    v46 = &v53;
    v47 = 2;
    v48 = 1;
    v49 = &unk_28685E490;
    v50 = a2;
    v51 = &unk_28685E4C0;
    v52 = v57;
    v53 = &v49;
    v54 = &v51;
    v56 = 263;
    v55[0] = &v44;
    mlir::OpState::emitOpError(a1, v55, v59);
    *a3 = 0;
    *(a3 + 16) = 0;
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

      v8 = __p;
      if (__p)
      {
        v9 = v65;
        v10 = __p;
        if (v65 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v65 = v8;
        operator delete(v10);
      }

      v11 = v62;
      if (!v62)
      {
        goto LABEL_68;
      }

      v12 = v63;
      v13 = v62;
      if (v63 == v62)
      {
LABEL_67:
        v63 = v11;
        operator delete(v13);
LABEL_68:
        if (v60 != &v61)
        {
          free(v60);
        }

        return;
      }

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
LABEL_66:
      v13 = v62;
      goto LABEL_67;
    }
  }
}

uint64_t mlir::mps::MatMulOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v106 = *MEMORY[0x277D85DE8];
  v92 = a4;
  v93 = a5;
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v15 = 0uLL;
  }

  v84 = a6;
  v85[0] = 0;
  v86 = 0;
  v87 = v15;
  v16 = a5;
  v88 = a9;
  v89 = a10;
  if (a6)
  {
    v17 = a1;
    Context = mlir::Attribute::getContext(&v84);
    if (v86 == 1)
    {
      v86 = 0;
    }

    mlir::OperationName::OperationName(v85, "mps.matmul", 10, Context);
    v86 = 1;
    v16 = v93;
    a1 = v17;
  }

  v90 = a4;
  v91 = a5;
  if (v16 <= 1)
  {
    v19 = mlir::Float32Type::get(a1, a2);
LABEL_20:
    v28 = mlir::UnrankedTensorType::get(v19);
    goto LABEL_21;
  }

  mlir::UnknownLoc::get(a1, a2);
  v80 = *(&v87 + 1);
  v81 = v87;
  if (!v87)
  {
    Value = 0;
    if (*(&v87 + 1))
    {
      goto LABEL_12;
    }

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  Value = mlir::BoolAttr::getValue(&v81);
  if (!v80)
  {
    goto LABEL_14;
  }

LABEL_12:
  v21 = mlir::BoolAttr::getValue(&v80);
LABEL_15:
  v22 = (*(mlir::ValueRange::dereference_iterator(&v92, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = (*(mlir::ValueRange::dereference_iterator(&v92, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  v100 = v22;
  v101 = v23;
  mlir::TypeRange::TypeRange(&v103, &v100, 2uLL);
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_20;
  }

  v24 = v19;
  v83[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v22);
  v83[1] = v25;
  v26 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v23);
  v82[0] = v26;
  v82[1] = v27;
  if (!v83[0] && !v26)
  {
    v19 = v24;
    goto LABEL_20;
  }

  if (*(*v83[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if (!mlir::emitOptionalError<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(a2, a3, "invalid input types: ", v83, ", ", v82))
    {
      return 0;
    }

    v28 = 0;
    goto LABEL_21;
  }

  v94 = v96;
  v95 = 0x400000000;
  Shape = mlir::ShapedType::getShape(v83);
  v33 = v32;
  v34 = mlir::ShapedType::getShape(v82);
  v103 = &v105;
  v104 = 0x400000000;
  v79 = v35;
  v100 = v102;
  v101 = 0x400000000;
  v78 = v33;
  if (v33 == 1)
  {
    v36 = *Shape;
    v105.i64[0] = 1;
    v105.i64[1] = v36;
    goto LABEL_31;
  }

  if (!v33)
  {
    v105 = vdupq_n_s64(1uLL);
LABEL_31:
    LODWORD(v104) = 2;
    goto LABEL_32;
  }

  __n = v33;
  v97 = v99;
  v98 = 0x400000000;
  __src = v34;
  if (((8 * v33) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  memcpy(v99, Shape, __n * 8);
  v41 = v97;
  v42 = (v98 + v33);
  LODWORD(v98) = v98 + v33;
  if (v97 == v99)
  {
    v44 = v104;
    if (v104 >= v42)
    {
      if (v42)
      {
        memmove(v103, v97, 8 * v42);
      }
    }

    else
    {
      if (HIDWORD(v104) < v42)
      {
        LODWORD(v104) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v104)
      {
        memmove(v103, v97, 8 * v104);
      }

      else
      {
        v44 = 0;
      }

      if (v98 != v44)
      {
        memcpy(v103 + 8 * v44, v97 + 8 * v44, 8 * (v98 - v44));
      }
    }

    LODWORD(v104) = v42;
  }

  else
  {
    if (v103 != &v105)
    {
      free(v103);
      v41 = v97;
      LODWORD(v42) = v98;
    }

    v103 = v41;
    v104 = __PAIR64__(HIDWORD(v98), v42);
    v97 = v99;
    HIDWORD(v98) = 0;
  }

  LODWORD(v98) = 0;
  if (v97 != v99)
  {
    free(v97);
  }

  v34 = __src;
  v35 = v79;
  if (Value)
  {
    v46 = &v103->i8[8 * v104];
    *(v46 - 1) = Shape[__n - 2];
    *(v46 - 2) = Shape[__n - 1];
  }

LABEL_32:
  if (v35 == 1)
  {
    v37 = *v34;
    LODWORD(v101) = 0;
    if (HIDWORD(v101) <= 1)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v100;
    *v100 = v37;
    goto LABEL_44;
  }

  if (!v35)
  {
    LODWORD(v101) = 0;
    if (HIDWORD(v101) <= 1)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v100;
    *v100 = 1;
LABEL_44:
    v39[1] = 1;
    LODWORD(v40) = v101 + 2;
    LODWORD(v101) = v101 + 2;
    goto LABEL_84;
  }

  __srca = v34;
  v38 = 8 * v35;
  v97 = v99;
  v98 = 0x400000000;
  if (((8 * v35) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  memcpy(v99, v34, v38);
  v43 = v97;
  v40 = v98 + (v38 >> 3);
  LODWORD(v98) = v98 + (v38 >> 3);
  if (v97 == v99)
  {
    v45 = v101;
    if (v101 >= v40)
    {
      if (v40)
      {
        memmove(v100, v97, 8 * v40);
      }
    }

    else
    {
      if (HIDWORD(v101) < v40)
      {
        LODWORD(v101) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v101)
      {
        memmove(v100, v97, 8 * v101);
      }

      else
      {
        v45 = 0;
      }

      if (v98 != v45)
      {
        memcpy(&v100[8 * v45], v97 + 8 * v45, 8 * (v98 - v45));
      }
    }

    LODWORD(v101) = v40;
  }

  else
  {
    if (v100 != v102)
    {
      free(v100);
      v43 = v97;
      LODWORD(v40) = v98;
    }

    v100 = v43;
    v101 = __PAIR64__(HIDWORD(v98), v40);
    v97 = v99;
    HIDWORD(v98) = 0;
  }

  LODWORD(v98) = 0;
  if (v97 != v99)
  {
    free(v97);
    LODWORD(v40) = v101;
  }

  if (v21)
  {
    v47 = &v100[8 * v40];
    *(v47 - 1) = *&__srca[v38 - 16];
    *(v47 - 2) = *&__srca[v38 - 8];
  }

LABEL_84:
  LODWORD(v95) = 0;
  if (v104 <= v40)
  {
    v48 = 0;
    if (v40)
    {
      v51 = v100;
      v52 = 8 * v40;
      do
      {
        if (v48 >= HIDWORD(v95))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v94 + v48) = *v51;
        v48 = v95 + 1;
        LODWORD(v95) = v95 + 1;
        ++v51;
        v52 -= 8;
      }

      while (v52);
    }
  }

  else
  {
    v48 = 0;
    v49 = v103;
    v50 = 8 * v104;
    do
    {
      if (v48 >= HIDWORD(v95))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v94 + v48) = *v49;
      v48 = v95 + 1;
      LODWORD(v95) = v95 + 1;
      ++v49;
      v50 -= 8;
    }

    while (v50);
  }

  v53 = v103;
  v54 = v104;
  v55 = &v103->i8[8 * v104];
  v56 = v100;
  v57 = v101;
  v58 = &v100[8 * v101];
  v59 = v94;
  v60 = v94 + 8 * v48;
  *(v60 - 1) = *(v58 - 1);
  v61 = v58 - 16;
  *(v60 - 2) = *(v55 - 2);
  v62 = v55 - 16 == v53 || v61 == v56;
  if (v62)
  {
LABEL_117:
    if (v78 <= 1)
    {
      v70 = *(v60 - 1);
      LODWORD(v95) = --v48;
      v59[v48 - 1] = v70;
    }

    if (v79 > 1)
    {
      v71 = 0;
      if (v56 == v102)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v71 = 0;
      LODWORD(v95) = v48 - 1;
      if (v56 == v102)
      {
        goto LABEL_122;
      }
    }

    goto LABEL_121;
  }

  v63 = 8 * v54 - 24;
  v64 = &v59[v48 - 3];
  v65 = 8 * v57 - 24;
  while (1)
  {
    v66 = *&v53[v63];
    v67 = *&v56[v65];
    if (v66 == 0x8000000000000000)
    {
      if (v67 <= 1)
      {
        v66 = 0x8000000000000000;
      }

      else
      {
        v66 = *&v56[v65];
      }

      goto LABEL_115;
    }

    if (v67 == 0x8000000000000000)
    {
      if (v66 <= 1)
      {
        v66 = 0x8000000000000000;
      }

      goto LABEL_115;
    }

    if (v66 != v67 && v67 != 1)
    {
      v62 = v66 == 1;
      v66 = *&v56[v65];
      if (!v62)
      {
        break;
      }
    }

LABEL_115:
    *v64-- = v66;
    if (v63)
    {
      v63 -= 8;
      v69 = v65;
      v65 -= 8;
      if (v69)
      {
        continue;
      }
    }

    goto LABEL_117;
  }

  LODWORD(v95) = 0;
  v74 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "incompatible dimensions");
  v56 = v100;
  v71 = !v74;
  if (v100 != v102)
  {
LABEL_121:
    free(v56);
  }

LABEL_122:
  if (v103 != &v105)
  {
    free(v103);
  }

  if (v71)
  {
    v72 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid shape");
    v28 = 0;
  }

  else
  {
    v28 = mlir::RankedTensorType::get(v94, v95, v24, 0);
    v72 = 1;
  }

  if (v94 != v96)
  {
    v73 = v28;
    free(v94);
    v28 = v73;
  }

  if (!v72)
  {
    return 0;
  }

LABEL_21:
  v29 = *(a11 + 8);
  if (v29 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v29) = v28;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::anonymous namespace::defaultInferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  if (!a3)
  {
    v7 = mlir::Float32Type::get(a1, a2);
    v4 = mlir::UnrankedTensorType::get(v7);
    v5 = *(a2 + 2);
    if (v5 < *(a2 + 3))
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = mlir::UnrankedTensorType::get(a3);
  v5 = *(a2 + 2);
  if (v5 >= *(a2 + 3))
  {
    goto LABEL_5;
  }

LABEL_3:
  *(*a2 + 8 * v5) = v4;
  ++*(a2 + 2);
  return 1;
}

BOOL mlir::mps::MatMulOp::verify(mlir::Operation **this)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v62 = v3;
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v62 + 8);
    v6 = *(v62 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v66[0] = v2;
  v66[1] = v13;
  v14 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v14;
      mlir::TensorType::operator mlir::ShapedType();
      v14 = v25;
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = v17;
    v20 = v18;
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < v16)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != &v17[2 * v18] && *v19 == v16)
    {
      v26 = v19[1];
      goto LABEL_30;
    }
  }

LABEL_29:
  v26 = 0;
LABEL_30:
  v65[0] = v14;
  v65[1] = v26;
  if (*(*v66[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v66);
  v29 = v28;
  v30 = mlir::ShapedType::getShape(v65);
  if (!v29)
  {
    v39 = 1;
    if (v31)
    {
      goto LABEL_38;
    }

LABEL_48:
    v43 = 1;
    result = 1;
    if (v39 == 0x8000000000000000)
    {
      return result;
    }

    goto LABEL_49;
  }

  if (v29 != 1)
  {
    v32 = &Shape[v29];
    v69[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    v33 = v30;
    v34 = v31;
    Value = mlir::BoolAttr::getValue(v69);
    v31 = v34;
    v36 = Value;
    v30 = v33;
    v37 = !v36;
    v38 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v37)
    {
      v38 = 0x1FFFFFFFFFFFFFFELL;
    }

    Shape = &v32[v38];
  }

  v39 = *Shape;
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_38:
  if (v31 != 1)
  {
    v40 = &v30[v31];
    v69[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
    v41 = mlir::BoolAttr::getValue(v69);
    v42 = 0x1FFFFFFFFFFFFFFELL;
    if (v41)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    v30 = &v40[v42];
  }

  v43 = *v30;
  result = 1;
  if (v39 != 0x8000000000000000)
  {
LABEL_49:
    if (v43 != 0x8000000000000000 && v39 != v43)
    {
      v63 = "contracting dimensions differ ";
      v64 = 259;
      mlir::OpState::emitOpError(this, &v63, v69);
      if (v69[0])
      {
        LODWORD(v67) = 2;
        *(&v67 + 1) = v39;
        if (v71 >= v72)
        {
          if (v70 > &v67 || v70 + 24 * v71 <= &v67)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v70 + 24 * v71;
        v46 = v67;
        *(v45 + 2) = v68;
        *v45 = v46;
        v47 = ++v71;
        if (v69[0])
        {
          LODWORD(v67) = 3;
          *(&v67 + 1) = " & ";
          v68 = 3;
          if (v47 >= v72)
          {
            if (v70 > &v67 || v70 + 24 * v47 <= &v67)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v70 + 24 * v71;
          v49 = v67;
          *(v48 + 2) = v68;
          *v48 = v49;
          v50 = ++v71;
          if (v69[0])
          {
            LODWORD(v67) = 2;
            *(&v67 + 1) = v43;
            if (v50 >= v72)
            {
              if (v70 > &v67 || v70 + 24 * v50 <= &v67)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v51 = v70 + 24 * v71;
            v52 = v67;
            *(v51 + 2) = v68;
            *v51 = v52;
            ++v71;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v69);
      v53 = result;
      if (v69[0])
      {
        mlir::InFlightDiagnostic::report(v69);
        result = v53;
      }

      if (v79 == 1)
      {
        if (v78 != &v79)
        {
          free(v78);
          result = v53;
        }

        v54 = __p;
        if (__p)
        {
          v55 = v77;
          v56 = __p;
          if (v77 != __p)
          {
            do
            {
              v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
            }

            while (v55 != v54);
            v56 = __p;
          }

          v77 = v54;
          operator delete(v56);
          result = v53;
        }

        v57 = v74;
        if (v74)
        {
          v58 = v75;
          v59 = v74;
          if (v75 != v74)
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
            v59 = v74;
          }

          v75 = v57;
          operator delete(v59);
          result = v53;
        }

        if (v70 != &v73)
        {
          free(v70);
          return v53;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::MatMulOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::verifySparseTensorHelper(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(void *__return_ptr, uint64_t, void *), uint64_t a8)
{
  v116 = *MEMORY[0x277D85DE8];
  v105 = a6;
  v106 = a5;
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = *v13;
    {
      v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v77 = v14;
      v78 = v13;
      mlir::TensorType::operator mlir::ShapedType();
      v13 = v78;
      v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v16 = *(v77 + 8);
      v17 = *(v77 + 16);
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    v18 = v16;
    v19 = v17;
    do
    {
      v20 = v19 >> 1;
      v21 = &v18[2 * (v19 >> 1)];
      v23 = *v21;
      v22 = v21 + 2;
      v19 += ~(v19 >> 1);
      if (v23 < v15)
      {
        v18 = v22;
      }

      else
      {
        v19 = v20;
      }
    }

    while (v19);
    if (v18 != &v16[2 * v17] && *v18 == v15)
    {
      v43 = v18[1];
      v103 = v13;
      v104 = v43;
      if (!mlir::ShapedType::hasRank(&v103))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v103 = v13;
  v104 = 0;
  if (!mlir::ShapedType::hasRank(&v103))
  {
    return 1;
  }

LABEL_15:
  Shape = mlir::ShapedType::getShape(&v103);
  if (v25)
  {
    v26 = 8 * v25;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    return 1;
  }

LABEL_19:
  v27 = *mlir::ShapedType::getShape(&v103) - 1;
  if (a4 == 2 && v106 != v27)
  {
    v87 = "failed: sparse tensor shape is {0}x{1} while index_tensor1 shape is {2}";
    v88 = 71;
    v89 = &v98;
    v90 = 3;
    v91 = 1;
    v92 = &unk_28685E520;
    v93 = &v106;
    v94 = &unk_28685E520;
    v95 = &v105;
    v96 = &unk_28686BB90;
    v97 = &v103;
    v98 = &v92;
    v99 = &v94;
    v100 = &v96;
    v101[0] = &v87;
    v102 = 263;
    a7(v107, a8, v101);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
    if (v107[0])
    {
      mlir::InFlightDiagnostic::report(v107);
    }

    if (v115 == 1)
    {
      if (v114 != &v115)
      {
        free(v114);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v113;
        v31 = __p;
        if (v113 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v113 = v29;
        operator delete(v31);
      }

      v32 = v110;
      if (!v110)
      {
        goto LABEL_69;
      }

      v33 = v111;
      v34 = v110;
      if (v111 == v110)
      {
LABEL_68:
        v111 = v32;
        operator delete(v34);
LABEL_69:
        if (v108 != &v109)
        {
          free(v108);
        }

        return v28;
      }

      do
      {
        v36 = *--v33;
        v35 = v36;
        *v33 = 0;
        if (v36)
        {
          MEMORY[0x259C63150](v35, 0x1000C8077774924);
        }
      }

      while (v33 != v32);
LABEL_67:
      v34 = v110;
      goto LABEL_68;
    }

    return v28;
  }

  if (a4 != 1 || v105 == v27)
  {
    v44 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v44)
    {
      goto LABEL_74;
    }

    v45 = *v44;
    {
      v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v47 = *(v45 + 8);
      v48 = *(v45 + 16);
      if (!v48)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v79 = v45;
      mlir::mps::ConstantOp::verify();
      v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v47 = *(v79 + 8);
      v48 = *(v79 + 16);
      if (!v48)
      {
        goto LABEL_74;
      }
    }

    v49 = v47;
    v50 = v48;
    do
    {
      v51 = v50 >> 1;
      v52 = &v49[2 * (v50 >> 1)];
      v54 = *v52;
      v53 = v52 + 2;
      v50 += ~(v50 >> 1);
      if (v54 < v46)
      {
        v49 = v53;
      }

      else
      {
        v50 = v51;
      }
    }

    while (v50);
    if (v49 != &v47[2 * v48] && *v49 == v46)
    {
      v66 = v49[1];
      v85 = v44;
      v86 = v66;
      v55 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v55)
      {
        goto LABEL_89;
      }

LABEL_75:
      v56 = *v55;
      {
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (!v59)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v80 = v56;
        mlir::mps::ConstantOp::verify();
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v80 + 8);
        v59 = *(v80 + 16);
        if (!v59)
        {
          goto LABEL_89;
        }
      }

      v60 = v58;
      v61 = v59;
      do
      {
        v62 = v61 >> 1;
        v63 = &v60[2 * (v61 >> 1)];
        v65 = *v63;
        v64 = v63 + 2;
        v61 += ~(v61 >> 1);
        if (v65 < v57)
        {
          v60 = v64;
        }

        else
        {
          v61 = v62;
        }
      }

      while (v61);
      if (v60 != &v58[2 * v59] && *v60 == v57)
      {
        v75 = v60[1];
        v83 = v55;
        v84 = v75;
        if (!mlir::ShapedType::hasRank(&v85))
        {
          return 1;
        }

LABEL_90:
        v67 = mlir::ShapedType::getShape(&v85);
        if (v68)
        {
          v69 = 8 * v68;
          while (*v67 != 0x8000000000000000)
          {
            ++v67;
            v69 -= 8;
            if (!v69)
            {
              goto LABEL_94;
            }
          }
        }

        else
        {
LABEL_94:
          if (mlir::ShapedType::hasRank(&v83))
          {
            v70 = mlir::ShapedType::getShape(&v83);
            if (v71)
            {
              v72 = 8 * v71;
              while (*v70 != 0x8000000000000000)
              {
                ++v70;
                v72 -= 8;
                if (!v72)
                {
                  goto LABEL_99;
                }
              }
            }

            else
            {
LABEL_99:
              v73 = *mlir::ShapedType::getShape(&v85);
              if (v73 != *mlir::ShapedType::getShape(&v83))
              {
                v74 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
                v81 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
                v82 = v74;
                llvm::formatv<mlir::Type,mlir::Type>("failed: index_tensor0 and sparse_values shape mismatch, {0} and {1}", &v82, &v81, &v87);
                v102 = 263;
                v101[0] = &v87;
                a7(v107, a8, v101);
                v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(v107);
                return v28;
              }
            }
          }
        }

        return 1;
      }

LABEL_89:
      v83 = v55;
      v84 = 0;
      if (!mlir::ShapedType::hasRank(&v85))
      {
        return 1;
      }

      goto LABEL_90;
    }

LABEL_74:
    v85 = v44;
    v86 = 0;
    v55 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v55)
    {
      goto LABEL_89;
    }

    goto LABEL_75;
  }

  v87 = "failed: sparse tensor shape is {0}x{1} while index_tensor1 shape is {2}";
  v88 = 71;
  v89 = &v98;
  v90 = 3;
  v91 = 1;
  v92 = &unk_28685E520;
  v93 = &v106;
  v94 = &unk_28685E520;
  v95 = &v105;
  v96 = &unk_28686BB90;
  v97 = &v103;
  v98 = &v92;
  v99 = &v94;
  v100 = &v96;
  v101[0] = &v87;
  v102 = 263;
  a7(v107, a8, v101);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v107);
  if (v107[0])
  {
    mlir::InFlightDiagnostic::report(v107);
  }

  if (v115 == 1)
  {
    if (v114 != &v115)
    {
      free(v114);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v113;
      v39 = __p;
      if (v113 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v113 = v37;
      operator delete(v39);
    }

    v32 = v110;
    if (!v110)
    {
      goto LABEL_69;
    }

    v40 = v111;
    v34 = v110;
    if (v111 == v110)
    {
      goto LABEL_68;
    }

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

    while (v40 != v32);
    goto LABEL_67;
  }

  return v28;
}

const char *llvm::formatv<mlir::Type,mlir::Type>@<X0>(const char *__s@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = __s;
  v6 = *a2;
  v7 = *a3;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v4;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_286872008;
  *(a4 + 48) = v6;
  *(a4 + 56) = &unk_286872008;
  *(a4 + 64) = v7;
  *(a4 + 80) = a4 + 56;
  return __s;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::verify(mlir::Operation **this)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v3)
  {
    goto LABEL_17;
  }

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
    v14 = v8[1];
    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
LABEL_18:
  v36[0] = v3;
  v36[1] = v14;
  Shape = mlir::ShapedType::getShape(v36);
  v16 = *Shape;
  v17 = Shape[1];
  v18 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v18 + 17) - 1 <= 1)
  {
    v34 = "failure: expected at least two operands to represent COO, CSR or CSC sparse formats.";
    v35 = 259;
    mlir::OpState::emitOpError(this, &v34, v36);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
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

      v23 = v39;
      if (v39)
      {
        v24 = v40;
        v25 = v39;
        if (v40 != v39)
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
          v25 = v39;
        }

        v40 = v23;
        operator delete(v25);
      }

      if (v37 != &v38)
      {
        free(v37);
      }
    }
  }

  else
  {
    v28 = *(v18 + 9);
    v29 = v28[3];
    v30 = v28[7];
    v31 = v28[11];
    v32 = *(*(v18 + 10) + 8);
    v36[0] = this;
    return mlir::mps::verifySparseTensorHelper(v29, v30, v31, v32, v16, v17, llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::Twine const&)>::callback_fn<mlir::mps::MaterializeSparseTensorOp::verify(void)::$_0>, v36);
  }

  return v19;
}

uint64_t mlir::mps::HammingDistanceOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v65 = a4;
  v66 = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v57 = a6;
  v58[0] = 0;
  v59 = 0;
  v60 = v14;
  v61 = a9;
  v15 = a5;
  v62 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v57);
    if (v59 == 1)
    {
      v59 = 0;
    }

    mlir::OperationName::OperationName(v58, "mps.hamming_distance", 20, Context);
    v59 = 1;
    v15 = v66;
  }

  v63 = a4;
  v64 = a5;
  if (v15 >= 2)
  {
    v17 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::HammingDistanceOpAdaptor::verify(&v57, v17))
    {
      v54 = v60;
      Value = mlir::IntegerType::get(this, 32, 2u);
      if (v54)
      {
        Value = mlir::TypeAttr::getValue(&v54);
      }

      v19 = Value;
      v20 = (*(mlir::ValueRange::dereference_iterator(&v65, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      v21 = mlir::ValueRange::dereference_iterator(&v65, 1);
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v22 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8), *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) || (v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v20), v56[0] = v23, v56[1] = v24, v25 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v22), v55[0] = v25, v55[1] = v26, !v23) || !v25)
      {
        v39 = mlir::UnrankedTensorType::get(v19);
LABEL_27:
        v40 = *(a11 + 8);
        if (v40 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v40) = v39;
        goto LABEL_29;
      }

      v67 = v69;
      v68 = 0x400000000;
      Shape = mlir::ShapedType::getShape(v56);
      v29 = v28;
      v30 = mlir::ShapedType::getShape(v55);
      if (v29 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      if (v29 < 2)
      {
        v33 = 1;
        if (v31 < 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = *(Shape + 8 * v29 - 16);
        if (v31 < 2)
        {
LABEL_21:
          v34 = 1;
LABEL_32:
          v42 = v68;
          if (v32 != v68)
          {
            if (v32 >= v68)
            {
              if (v32 > HIDWORD(v68))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v32 != v68)
              {
                v43 = v30;
                v44 = v31;
                bzero(v67 + 8 * v68, 8 * (v32 - v68));
                v31 = v44;
                v30 = v43;
              }
            }

            LODWORD(v68) = v32;
            v42 = v32;
          }

          v45 = v67;
          if (v32 >= 1)
          {
            v46 = v67 + 8 * v32;
            *(v46 - 1) = v34;
            if (v32 != 1)
            {
              *(v46 - 2) = v33;
              if (v32 >= 3)
              {
                v47 = v31 - 3;
                v48 = v32 - 2;
                v49 = (v46 - 24);
                v50 = v29 - 3;
                do
                {
                  if ((v50 & 0x8000000000000000) != 0)
                  {
                    if ((v47 & 0x8000000000000000) != 0)
                    {
                      v51 = 1;
                    }

                    else
                    {
                      v51 = *(v30 + 8 * v47);
                    }
                  }

                  else
                  {
                    v51 = *(Shape + 8 * v50);
                    if ((v47 & 0x8000000000000000) == 0)
                    {
                      if (v51 == 0x8000000000000000)
                      {
                        v52 = *(v30 + 8 * v47);
                      }

                      else
                      {
                        v52 = *(Shape + 8 * v50);
                      }

                      if (*(v30 + 8 * v47) == 1)
                      {
                        v52 = *(Shape + 8 * v50);
                      }

                      if (v51 == 1)
                      {
                        v51 = *(v30 + 8 * v47);
                      }

                      else
                      {
                        v51 = v52;
                      }
                    }
                  }

                  *v49-- = v51;
                  --v47;
                  --v48;
                  --v50;
                }

                while (v48 > 0);
              }
            }
          }

          v39 = mlir::RankedTensorType::get(v45, v42, v19, 0);
          if (v67 != v69)
          {
            v53 = v39;
            free(v67);
            v39 = v53;
          }

          goto LABEL_27;
        }
      }

      v34 = *(v30 + 8 * v31 - 16);
      goto LABEL_32;
    }
  }

  v35 = mlir::IntegerType::get(this, 32, 2u);
  if (!v35)
  {
    v35 = mlir::Float32Type::get(this, v36);
  }

  v37 = mlir::UnrankedTensorType::get(v35);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v38) = v37;
LABEL_29:
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::HammingDistanceOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::TypeAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.hamming_distance' op requires attribute 'resultElementType'";
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
  }

  return v2;
}

uint64_t mlir::mps::HammingDistanceOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::HammingDistanceOp::verify(mlir::Operation **this)
{
  v90 = *MEMORY[0x277D85DE8];
  v79[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::TypeAttr::getValue(v79);
  isSignedInteger = mlir::Type::isSignedInteger(&Value);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&Value);
  if (!isSignedInteger && (IntOrFloatBitWidth == 16 || IntOrFloatBitWidth == 32))
  {
    v4 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = *v4;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_33;
        }
      }

      else
      {
        mlir::mps::ConstantOp::verify();
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          goto LABEL_33;
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
        v24 = v9[1];
LABEL_34:
        v73[0] = v4;
        v73[1] = v24;
        v25 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v25)
        {
          goto LABEL_48;
        }

        v26 = *v25;
        {
          v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }
        }

        else
        {
          mlir::mps::ConstantOp::verify();
          v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v28 = *(v26 + 8);
          v29 = *(v26 + 16);
          if (!v29)
          {
            goto LABEL_48;
          }
        }

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
        if (v30 != &v28[2 * v29] && *v30 == v27)
        {
          v46 = v30[1];
          v71 = v25;
          v72 = v46;
          v36 = v73[0];
          if (!v73[0])
          {
            return 1;
          }

          goto LABEL_49;
        }

LABEL_48:
        v71 = v25;
        v72 = 0;
        v36 = v73[0];
        if (!v73[0])
        {
          return 1;
        }

LABEL_49:
        v37 = *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v25 == 0;
        if (v37 || *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          return 1;
        }

        Shape = mlir::ShapedType::getShape(v73);
        v40 = v39;
        v41 = mlir::ShapedType::getShape(&v71);
        if (v40 <= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v40;
        }

        if (v40)
        {
          v44 = *(Shape + 8 * v40 - 8);
          if (v42)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v44 = 1;
          if (v42)
          {
LABEL_59:
            v45 = *(v41 + 8 * v42 - 8);
            if (v45 == 0x8000000000000000)
            {
LABEL_68:
              if (v43 < 3)
              {
                return 1;
              }

              v50 = v43 - 2;
              v51 = v40 - 3;
              for (i = v42 - 3; ; --i)
              {
                if ((v51 & 0x8000000000000000) != 0)
                {
                  v53 = 1;
                  if ((i & 0x8000000000000000) == 0)
                  {
LABEL_74:
                    v54 = *(v41 + 8 * i);
                    if (v53 == 0x8000000000000000)
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_78;
                  }
                }

                else
                {
                  v53 = *(Shape + 8 * v51);
                  if ((i & 0x8000000000000000) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                v54 = 1;
                if (v53 == 0x8000000000000000)
                {
                  goto LABEL_71;
                }

LABEL_78:
                if (v54 != 1 && v54 != 0x8000000000000000 && v53 != 1 && v53 != v54)
                {
                  v74[0] = "Leading n-2 dimensions not broadcast compatible: ";
                  v75 = 259;
                  mlir::OpState::emitOpError(this, v74, v79);
                  if (v79[0])
                  {
                    LODWORD(v77) = 3;
                    *(&v77 + 1) = "LHS = ";
                    v78 = 6;
                    if (v81 >= v82)
                    {
                      if (v80 > &v77 || v80 + 24 * v81 <= &v77)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v55 = v80 + 24 * v81;
                    v56 = v77;
                    *(v55 + 2) = v78;
                    *v55 = v56;
                    ++v81;
                    if (v79[0])
                    {
                      mlir::DiagnosticArgument::DiagnosticArgument(&v77, v73[0]);
                      if (v81 >= v82)
                      {
                        if (v80 > &v77 || v80 + 24 * v81 <= &v77)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v57 = v80 + 24 * v81;
                      v58 = v77;
                      *(v57 + 2) = v78;
                      *v57 = v58;
                      v59 = ++v81;
                      if (v79[0])
                      {
                        LODWORD(v77) = 3;
                        *(&v77 + 1) = " RHS = ";
                        v78 = 7;
                        if (v59 >= v82)
                        {
                          if (v80 > &v77 || v80 + 24 * v59 <= &v77)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v60 = v80 + 24 * v81;
                        v61 = v77;
                        *(v60 + 2) = v78;
                        *v60 = v61;
                        ++v81;
                        if (v79[0])
                        {
                          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v71);
                          if (v81 >= v82)
                          {
                            if (v80 > &v77 || v80 + 24 * v81 <= &v77)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v62 = v80 + 24 * v81;
                          v63 = v77;
                          *(v62 + 2) = v78;
                          *v62 = v63;
                          ++v81;
                        }
                      }
                    }
                  }

                  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
                  if (v79[0])
                  {
                    mlir::InFlightDiagnostic::report(v79);
                  }

                  if (v89)
                  {
                    if (v88 != &v89)
                    {
                      free(v88);
                    }

                    v64 = __p;
                    if (__p)
                    {
                      v65 = v87;
                      v66 = __p;
                      if (v87 != __p)
                      {
                        do
                        {
                          v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
                        }

                        while (v65 != v64);
                        v66 = __p;
                      }

                      v87 = v64;
                      operator delete(v66);
                    }

                    v19 = v84;
                    if (v84)
                    {
                      v67 = v85;
                      v21 = v84;
                      if (v85 != v84)
                      {
                        do
                        {
                          v69 = *--v67;
                          v68 = v69;
                          *v67 = 0;
                          if (v69)
                          {
                            MEMORY[0x259C63150](v68, 0x1000C8077774924);
                          }
                        }

                        while (v67 != v19);
                        goto LABEL_107;
                      }

                      goto LABEL_108;
                    }

                    goto LABEL_109;
                  }

                  return v15;
                }

LABEL_71:
                --v50;
                --v51;
                if (v50 < 1)
                {
                  return 1;
                }
              }
            }

LABEL_65:
            if (v44 != 0x8000000000000000 && v44 != v45)
            {
              v74[0] = "Incompatible last dimension shapes: LHS = ";
              v75 = 259;
              mlir::OpState::emitOpError(this, v74, v79);
              mlir::InFlightDiagnostic::append<mlir::Type const&>(v79, v73);
              mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v47, " RHS = ");
              mlir::InFlightDiagnostic::append<mlir::Type const&>(v48, &v71);
              v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(v79);
              return v15;
            }

            goto LABEL_68;
          }
        }

        v45 = 1;
        goto LABEL_65;
      }
    }

LABEL_33:
    v24 = 0;
    goto LABEL_34;
  }

  v75 = 259;
  mlir::OpState::emitOpError(this, v74, v79);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
  if (v79[0])
  {
    mlir::InFlightDiagnostic::report(v79);
  }

  if (v89 == 1)
  {
    if (v88 != &v89)
    {
      free(v88);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v87;
      v18 = __p;
      if (v87 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v87 = v16;
      operator delete(v18);
    }

    v19 = v84;
    if (v84)
    {
      v20 = v85;
      v21 = v84;
      if (v85 != v84)
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
LABEL_107:
        v21 = v84;
      }

LABEL_108:
      v85 = v19;
      operator delete(v21);
    }

LABEL_109:
    if (v80 != &v83)
    {
      free(v80);
    }
  }

  return v15;
}

uint64_t mlir::mps::TransposeOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v73 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
    goto LABEL_9;
  }

  v66 = a6;
  v67[0] = 0;
  v68 = 0;
  v69 = a9;
  v70 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v66);
    if (v68 == 1)
    {
      v68 = 0;
    }

    mlir::OperationName::OperationName(v67, "mps.transpose", 13, Context);
    v68 = 1;
  }

  v71 = a4;
  v72 = a5;
  if (a5 <= 2)
  {
    v59 = a4;
    v60 = 0;
    v14 = mlir::ValueRange::dereference_iterator(&v59, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v14);
LABEL_9:
    v16 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v17 = *(a11 + 8);
    if (v17 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v17) = v16;
    ++*(a11 + 8);
    return 1;
  }

  v59 = a4;
  v60 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v59, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = *v18;
  {
    mlir::mps::ConstantOp::verify();
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_14:
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
    goto LABEL_25;
  }

  v29 = v23[1];
LABEL_26:
  v55[0] = v18;
  v55[1] = v29;
  v64[0] = &v65;
  v64[1] = 0x100000000;
  v62[0] = &v63;
  v62[1] = 0x100000000;
  if (mlir::ShapedType::hasRank(v55))
  {
    v59 = v71;
    v60 = 1;
    v59 = mlir::ValueRange::offset_base(&v59, 1);
    v60 = 0;
    v30 = mlir::ValueRange::dereference_iterator(&v59, 0);
    mlir::ShapedType::getShape(v55);
    v32 = v31;
    v59 = 0;
    v60 = 0;
    v56 = &v59;
    *&v57 = v30;
    DefiningOp = mlir::Value::getDefiningOp(&v57);
    if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v56, DefiningOp) & 1) != 0)
    {
      {
        goto LABEL_35;
      }

LABEL_32:
      v59 = v71;
      v60 = 2;
      v59 = mlir::ValueRange::offset_base(&v59, 2);
      v60 = 0;
      v34 = mlir::ValueRange::dereference_iterator(&v59, 0);
      mlir::ShapedType::getShape(v55);
      v36 = v35;
      v59 = 0;
      v60 = 0;
      v56 = &v59;
      *&v57 = v34;
      v37 = mlir::Value::getDefiningOp(&v57);
      if (v37 && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v56, v37) & 1) != 0)
      {
        {
          goto LABEL_35;
        }
      }

      else if (!mlir::emitOptionalError<char const(&)[24]>(0, 0, "axes is not a constant"))
      {
        goto LABEL_35;
      }

      Shape = mlir::ShapedType::getShape(v55);
      v44 = mlir::ShapedType::getShape(v55);
      v46 = (v44 + 8 * v45);
      v59 = v61;
      v60 = 0x600000000;
      if (((v46 - Shape) >> 3) >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = 0;
      v48 = v61;
      if (v46 != Shape)
      {
        memcpy(v61, Shape, v46 - Shape);
        v47 = v60;
        v48 = v59;
      }

      v49 = v47 + ((v46 - Shape) >> 3);
      LODWORD(v60) = v49;
      v50 = *v62[0];
      v51 = *&v48[8 * *v64[0]];
      *&v48[8 * *v64[0]] = *&v48[8 * *v62[0]];
      *&v48[8 * v50] = v51;
      *&v57 = v48;
      *(&v57 + 1) = v49;
      v58 = 1;
      ElementType = mlir::ShapedType::getElementType(v55);
      v53 = mlir::ShapedType::cloneWith(v55, &v57, ElementType);
      v54 = *(a11 + 8);
      if (v54 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v54) = v53;
      ++*(a11 + 8);
      if (v59 != v61)
      {
        free(v59);
      }

      goto LABEL_37;
    }

    if (mlir::emitOptionalError<char const(&)[24]>(0, 0, "axes is not a constant"))
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v59 = v71;
  v60 = 0;
  v38 = mlir::ValueRange::dereference_iterator(&v59, 0);
  v39 = mlir::getElementTypeOrSelf(v38);
  v40 = mlir::UnrankedTensorType::get(v39);
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
LABEL_37:
  if (v62[0] != &v63)
  {
    free(v62[0]);
  }

  if (v64[0] != &v65)
  {
    free(v64[0]);
  }

  return 1;
}

uint64_t llvm::SmallVector<long long,6u>::SmallVector<long long const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v4 = a3 - a2;
  if (((a3 - a2) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  if (a2 != a3)
  {
    memcpy(*a1, a2, v4);
    v5 = *(a1 + 8);
  }

  *(a1 + 8) = v5 + (v4 >> 3);
  return a1;
}

uint64_t mlir::mps::TransposeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::PermuteOp::inferReturnTypes(mlir::Float32Type *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v63[0] = a4;
  v63[1] = a5;
  if (a5 == 2)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(v63, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v15 = mlir::ValueRange::dereference_iterator(v63, 1);
    v16 = *(*v14 + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    v58 = v18;
    if (!v18)
    {
      if (mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot permute a non-tensor type"))
      {
        v25 = 0;
LABEL_63:
        v52 = *(a11 + 8);
        if (v52 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v52) = v25;
LABEL_69:
        ++*(a11 + 8);
        return 1;
      }

LABEL_65:
      v53 = mlir::ValueRange::dereference_iterator(v63, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v53);
      if (!ElementTypeOrSelf)
      {
        ElementTypeOrSelf = mlir::Float32Type::get(a1, v55);
      }

      v56 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v57 = *(a11 + 8);
      if (v57 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v57) = v56;
      goto LABEL_69;
    }

    v19 = v15;
    __b = v66;
    v65 = 0x400000000;
    v62 = v18;
    if (mlir::TensorType::hasRank(&v62))
    {
      goto LABEL_10;
    }

    v26 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v26)
    {
      goto LABEL_53;
    }

    v27 = *v26;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_53;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_53;
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
      v51 = v31[1];
      v67 = v26;
      v68 = v51;
      if (!mlir::ShapedType::hasRank(&v67))
      {
        goto LABEL_60;
      }

LABEL_54:
      Shape = mlir::ShapedType::getShape(&v67);
      if (v49)
      {
        v50 = 8 * v49;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v50 -= 8;
          if (!v50)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_60;
      }

LABEL_10:
      if (mlir::TensorType::hasRank(&v62))
      {
        mlir::TensorType::getShape(&v62);
        NumElements = v20;
        v61 = v20;
        v22 = v65;
        v23 = v20 >= v65;
        if (v20 == v65)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v67 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
        v37 = mlir::RankedTensorType::getShape(&v67);
        NumElements = mlir::ShapedType::getNumElements(v37, v38);
        v61 = NumElements;
        v22 = v65;
        v23 = NumElements >= v65;
        if (NumElements == v65)
        {
          goto LABEL_36;
        }
      }

      if (v23)
      {
        if (NumElements > HIDWORD(v65))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (NumElements != v22)
        {
          bzero(__b + 8 * v22, 8 * (NumElements - v22));
        }
      }

      LODWORD(v65) = NumElements;
LABEL_36:
      v67 = v69;
      v68 = 0x400000000;
      if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (mlir::matchConstantWithIntVector<long long>(v19, &v67) & 1) == 0)
      {
        if (NumElements)
        {
          memset_pattern16(__b, &unk_25736EFD0, 8 * NumElements);
        }

        v41 = 1;
        v42 = v67;
        if (v67 == v69)
        {
LABEL_44:
          if (v41)
          {
            v43 = __b;
            v44 = v65;
            ElementType = mlir::TensorType::getElementType(&v58);
            v25 = mlir::RankedTensorType::get(v43, v44, ElementType, 0);
            v46 = 1;
            v47 = __b;
            if (__b == v66)
            {
LABEL_62:
              if (v46)
              {
                goto LABEL_63;
              }

              goto LABEL_65;
            }

LABEL_61:
            free(v47);
            goto LABEL_62;
          }

LABEL_60:
          v25 = 0;
          v46 = 0;
          v47 = __b;
          if (__b == v66)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }

      else
      {
        if (NumElements == v68)
        {
          v59[0] = mlir::TensorType::getShape(&v62);
          v59[1] = v39;
          v60 = 1;
        }

        else
        {
          v59[0] = v68;
          v40 = mlir::emitOptionalError<char const(&)[37],char const(&)[14],unsigned long,char const(&)[5],unsigned long &>(a2, a3, "perm tensor length must equal input ", "tensor rank, ", v59, " != ", &v61);
        }

        v41 = v40;
        v42 = v67;
        if (v67 == v69)
        {
          goto LABEL_44;
        }
      }

      free(v42);
      goto LABEL_44;
    }

LABEL_53:
    v67 = v26;
    v68 = 0;
    if (!mlir::ShapedType::hasRank(&v67))
    {
      goto LABEL_60;
    }

    goto LABEL_54;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::PermuteOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::PermuteOp::verify(mlir::Operation **this)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v53 = v3;
  v6 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  v52 = v6;
  if (!v3)
  {
    v51 = 259;
    mlir::OpState::emitOpError(this, v49, &v56);
    if (v56)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v54, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v60 >= v61)
      {
        if (v59 > &v54 || v59 + 24 * v60 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v59 + 24 * v60;
      v19 = v54;
      *(v18 + 2) = v55;
      *v18 = v19;
      ++v60;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
    if (v56)
    {
      mlir::InFlightDiagnostic::report(&v56);
    }

    if (v68 != 1)
    {
      return v17;
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
        goto LABEL_61;
      }

LABEL_62:
      v64 = v23;
      operator delete(v25);
    }

LABEL_63:
    v36 = v59;
    if (v59 == &v62)
    {
      return v17;
    }

    goto LABEL_64;
  }

  if (!v6)
  {
    v51 = 259;
    mlir::OpState::emitOpError(this, v49, &v56);
    if (v56)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v54, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v60 >= v61)
      {
        if (v59 > &v54 || v59 + 24 * v60 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v59 + 24 * v60;
      v29 = v54;
      *(v28 + 2) = v55;
      *v28 = v29;
      ++v60;
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
    if (v56)
    {
      mlir::InFlightDiagnostic::report(&v56);
    }

    if (v68 != 1)
    {
      return v17;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v66;
      v32 = __p;
      if (v66 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v66 = v30;
      operator delete(v32);
    }

    v23 = v63;
    if (v63)
    {
      v33 = v64;
      v25 = v63;
      if (v64 != v63)
      {
        do
        {
          v35 = *--v33;
          v34 = v35;
          *v33 = 0;
          if (v35)
          {
            MEMORY[0x259C63150](v34, 0x1000C8077774924);
          }
        }

        while (v33 != v23);
LABEL_61:
        v25 = v63;
        goto LABEL_62;
      }

      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (!mlir::TensorType::hasRank(&v53) || !mlir::TensorType::hasRank(&v52))
  {
    return 1;
  }

  Shape = mlir::TensorType::getShape(&v52);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    return 1;
  }

LABEL_19:
  mlir::TensorType::getShape(&v53);
  v13 = v12;
  v14 = mlir::TensorType::getShape(&v52);
  if (mlir::ShapedType::getNumElements(v14, v15) == v13)
  {
    v56 = &v58;
    v57 = 0x400000000;
    if (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 56), &v56))
    {
      v16 = *(*this + 3);
      LOBYTE(v49[0]) = 0;
      v50 = 0;
    }

    else
    {
      v17 = 1;
    }

    v36 = v56;
    if (v56 == &v58)
    {
      return v17;
    }

LABEL_64:
    free(v36);
    return v17;
  }

  v49[0] = "perm tensor length must equal input tensor rank, ";
  v51 = 259;
  mlir::OpState::emitOpError(this, v49, &v56);
  v38 = mlir::TensorType::getShape(&v52);
  NumElements = mlir::ShapedType::getNumElements(v38, v39);
  if (v56)
  {
    LODWORD(v54) = 2;
    *(&v54 + 1) = NumElements;
    if (v60 >= v61)
    {
      if (v59 > &v54 || v59 + 24 * v60 <= &v54)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v41 = v59 + 24 * v60;
    v42 = v54;
    *(v41 + 2) = v55;
    *v41 = v42;
    v43 = ++v60;
    if (v56)
    {
      LODWORD(v54) = 3;
      *(&v54 + 1) = " != ";
      v55 = 4;
      if (v43 >= v61)
      {
        if (v59 > &v54 || v59 + 24 * v43 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v44 = v59 + 24 * v60;
      v45 = v54;
      *(v44 + 2) = v55;
      *v44 = v45;
      v46 = ++v60;
      if (v56)
      {
        LODWORD(v54) = 5;
        *(&v54 + 1) = v13;
        if (v46 >= v61)
        {
          if (v59 > &v54 || v59 + 24 * v46 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v47 = v59 + 24 * v60;
        v48 = v54;
        *(v47 + 2) = v55;
        *v47 = v48;
        ++v60;
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v57);
  }

  return v17;
}

BOOL mlir::mps::anonymous namespace::permuteShapeWithAxes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t a7)
{
  v13[1] = 0;
  v14 = a7;
  v12 = v13;
  v13[0] = 0;
  if (a6)
  {
    v7 = *a5;
    v10 = (v14 & (*a5 >> 63)) + *a5;
    v11 = v7;
    if (v14 > v10)
    {
      operator new();
    }

    v8 = mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[7],char const(&)[15],unsigned long &>(a1, a2, "invalid axis (", &v11, ") for ", "input of rank ", &v14);
  }

  else
  {
    v8 = 1;
  }

  std::__tree<long long>::destroy(&v12, v13[0]);
  return v8;
}

uint64_t mlir::mps::OneHotOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, unint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v44 = a6;
  v45[0] = 0;
  v46 = 0;
  v47 = v14;
  v48 = a9;
  v49 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v44);
    if (v46 == 1)
    {
      v46 = 0;
    }

    mlir::OperationName::OperationName(v45, "mps.one_hot", 11, Context);
    v46 = 1;
  }

  v50 = a4;
  v51 = a5;
  if (a5 && (v16 = mlir::UnknownLoc::get(this, a2), (mlir::mps::OneHotOpAdaptor::verify(&v44, v16) & 1) != 0))
  {
    v41 = v50;
    v42 = 0;
    v17 = mlir::ValueRange::dereference_iterator(&v41, 0);
    v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    v20 = v19;
    v41 = v50;
    v42 = 1;
    v41 = mlir::ValueRange::offset_base(&v41, 1);
    v42 = 0;
    v21 = mlir::ValueRange::dereference_iterator(&v41, 0);
    v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
    v41 = v50;
    v42 = 2;
    v41 = mlir::ValueRange::offset_base(&v41, 2);
    v42 = 0;
    v23 = mlir::ValueRange::dereference_iterator(&v41, 0);
    v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8));
    v41 = &v43;
    v42 = 0x100000000;
    v39[0] = &v40;
    v39[1] = 0x100000000;
    if (v18 && v22 && v24 && (v52 = v50, v53 = 1, v52 = mlir::ValueRange::offset_base(&v52, 1), v53 = 0, v25 = mlir::ValueRange::dereference_iterator(&v52, 0), (mlir::matchConstantWithIntVector<unsigned long long>(v25, &v41) & 1) != 0) && (Axis = mlir::mps::OneHotOpGenericAdaptor<mlir::ValueRange>::getAxis(&v44), (mlir::matchConstantWithIntVector<long long>(Axis, v39) & 1) != 0))
    {
      v38 = 0;
      v27 = *v41;
      v28 = *v39[0];
      v52 = v47;
      Value = mlir::TypeAttr::getValue(&v52);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v38);
    }

    else
    {
      v52 = v47;
      v33 = mlir::TypeAttr::getValue(&v52);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
      v35 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v36 = *(a11 + 8);
      if (v36 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v36) = v35;
      ++*(a11 + 8);
    }

    if (v39[0] != &v40)
    {
      free(v39[0]);
    }

    if (v41 != &v43)
    {
      free(v41);
    }
  }

  else
  {
    v30 = mlir::Float32Type::get(this, a2);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v32) = v31;
    ++*(a11 + 8);
  }

  return 1;
}

uint64_t mlir::mps::OneHotOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::TypeAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.one_hot' op requires attribute 'resultElementType'";
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
  }

  return v2;
}

uint64_t mlir::mps::OneHotOpGenericAdaptor<mlir::ValueRange>::getAxis(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = 2;
  v2 = mlir::ValueRange::offset_base(&v2, 2);
  v3 = 0;
  return mlir::ValueRange::dereference_iterator(&v2, 0);
}

void mlir::mps::anonymous namespace::inferOneHotReturnType(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t *a6)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v21[0] = a1;
  v21[1] = a2;
  mlir::ShapedType::getShape(v21);
  if (a4 >= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + a4;
  if (v11 + a4 < 0 || (v13 = v12 & 0x7FFFFFFF, mlir::ShapedType::getShape(v21), v13 >= v14))
  {
    *a6 = mlir::UnrankedTensorType::get(a5);
  }

  else
  {
    __dst = v24;
    v23 = 0x1000000000;
    Shape = mlir::ShapedType::getShape(v21);
    v17 = v15;
    if (v15 != v23)
    {
      if (v15 >= v23)
      {
        if (v15 > HIDWORD(v23))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v15 != v23)
        {
          bzero(__dst + 8 * v23, 8 * (v15 - v23));
        }
      }

      LODWORD(v23) = v17;
    }

    v18 = 8 * v13;
    v19 = __dst;
    if (v12)
    {
      memmove(__dst, Shape, 8 * v13);
      v19 = __dst;
    }

    v20 = &v19[v13];
    *v20 = a3;
    if (8 * v17 != v18)
    {
      memmove(v20 + 1, &Shape[8 * v13], 8 * v17 - v18);
      v19 = __dst;
    }

    *a6 = mlir::RankedTensorType::get(v19, v23, a5, 0);
    if (__dst != v24)
    {
      free(__dst);
    }
  }
}

uint64_t mlir::mps::OneHotOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::OneHotOp::verify(mlir::Operation **this)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
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
      v38 = v7[1];
      v43 = v2;
      v44 = v38;
      if (mlir::ShapedType::hasRank(&v43))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v43 = v2;
  v44 = 0;
  if (!mlir::ShapedType::hasRank(&v43))
  {
    return 1;
  }

LABEL_15:
  v58[0] = v59;
  v58[1] = 0x100000000;
  if (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 88), v58))
  {
    mlir::ShapedType::getShape(&v43);
    v14 = v13;
    v42 = 0;
    {
      v16 = v14 - 1;
      v17 = *(mlir::ShapedType::getShape(&v43) + 8 * (v14 - 1));
      v18 = 1;
      if (v17 != 0x8000000000000000 && v17 != 1)
      {
        v41 = 259;
        mlir::OpState::emitOpError(this, &v40, v47);
        if (v47[0])
        {
          LODWORD(v45) = 2;
          *(&v45 + 1) = v17;
          if (v49 >= v50)
          {
            if (v48 > &v45 || v48 + 24 * v49 <= &v45)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v48 + 24 * v49;
          v20 = v45;
          *(v19 + 2) = v46;
          *v19 = v20;
          v21 = ++v49;
          if (v47[0])
          {
            LODWORD(v45) = 3;
            v46 = 17;
            if (v21 >= v50)
            {
              if (v48 > &v45 || v48 + 24 * v21 <= &v45)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v22 = v48 + 24 * v49;
            v23 = v45;
            *(v22 + 2) = v46;
            *v22 = v23;
            v24 = ++v49;
            if (v47[0])
            {
              LODWORD(v45) = 2;
              *(&v45 + 1) = v16;
              if (v24 >= v50)
              {
                if (v48 > &v45 || v48 + 24 * v24 <= &v45)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v25 = v48 + 24 * v49;
              v26 = v45;
              *(v25 + 2) = v46;
              *v25 = v26;
              v27 = ++v49;
              if (v47[0])
              {
                LODWORD(v45) = 3;
                *(&v45 + 1) = ".";
                v46 = 1;
                if (v27 >= v50)
                {
                  if (v48 > &v45 || v48 + 24 * v27 <= &v45)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v28 = v48 + 24 * v49;
                v29 = v45;
                *(v28 + 2) = v46;
                *v28 = v29;
                ++v49;
              }
            }
          }
        }

        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
        if (v47[0])
        {
          mlir::InFlightDiagnostic::report(v47);
        }

        if (v57 == 1)
        {
          if (v56 != &v57)
          {
            free(v56);
          }

          v30 = __p;
          if (__p)
          {
            v31 = v55;
            v32 = __p;
            if (v55 != __p)
            {
              do
              {
                v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
              }

              while (v31 != v30);
              v32 = __p;
            }

            v55 = v30;
            operator delete(v32);
          }

          v33 = v52;
          if (v52)
          {
            v34 = v53;
            v35 = v52;
            if (v53 != v52)
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
              v35 = v52;
            }

            v53 = v33;
            operator delete(v35);
          }

          if (v48 != &v51)
          {
            free(v48);
          }
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  if (v58[0] != v59)
  {
    free(v58[0]);
  }

  return v18;
}

BOOL mlir::mps::anonymous namespace::validateSingleAxis(mlir::mps::_anonymous_namespace_ *this, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = ((a3 & (a2 >> 63)) + a2);
  if (v7 < 0 || v7 >= a3)
  {
    v29 = "invalid axis: ";
    v30 = 259;
    mlir::Operation::emitOpError(v33, this, &v29);
    if (v33[0])
    {
      LODWORD(v31) = 2;
      *(&v31 + 1) = a2;
      if (v35 >= v36)
      {
        if (v34 > &v31 || v34 + 24 * v35 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v34 + 24 * v35;
      v10 = v31;
      *(v9 + 2) = v32;
      *v9 = v10;
      v11 = ++v35;
      if (v33[0])
      {
        LODWORD(v31) = 3;
        *(&v31 + 1) = ", axis must be in ";
        v32 = 18;
        if (v11 >= v36)
        {
          if (v34 > &v31 || v34 + 24 * v11 <= &v31)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v34 + 24 * v35;
        v13 = v31;
        *(v12 + 2) = v32;
        *v12 = v13;
        v14 = ++v35;
        if (v33[0])
        {
          LODWORD(v31) = 3;
          *(&v31 + 1) = "range - rank <= axis < rank, rank = ";
          v32 = 36;
          if (v14 >= v36)
          {
            if (v34 > &v31 || v34 + 24 * v14 <= &v31)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v34 + 24 * v35;
          v16 = v31;
          *(v15 + 2) = v32;
          *v15 = v16;
          v17 = ++v35;
          if (v33[0])
          {
            LODWORD(v31) = 2;
            *(&v31 + 1) = a3;
            if (v17 >= v36)
            {
              if (v34 > &v31 || v34 + 24 * v17 <= &v31)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v18 = v34 + 24 * v35;
            v19 = v31;
            *(v18 + 2) = v32;
            *v18 = v19;
            ++v35;
          }
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
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

      v23 = v38;
      if (v38)
      {
        v24 = v39;
        v25 = v38;
        if (v39 != v38)
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
          v25 = v38;
        }

        v39 = v23;
        operator delete(v25);
      }

      if (v34 != &v37)
      {
        free(v34);
      }
    }
  }

  else
  {
    *a4 = v7;
    return 1;
  }

  return v8;
}

uint64_t mlir::mps::ScatterNDOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, mlir::MLIRContext *a11)
{
  v69[2] = *MEMORY[0x277D85DE8];
  v69[0] = a4;
  v69[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v61 = a6;
  v62[0] = 0;
  v63 = 0;
  v64 = v16;
  v65 = a9;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v61);
    if (v63 == 1)
    {
      v63 = 0;
    }

    mlir::OperationName::OperationName(v62, "mps.scatter_nd", 14, Context);
    v63 = 1;
  }

  v67 = a4;
  v68 = a5;
  if (a5 < 3 || (v18 = mlir::UnknownLoc::get(this, a2), (mlir::mps::ScatterNDOpAdaptor::verify(&v61, v18) & 1) == 0))
  {
    v35 = mlir::Float32Type::get(this, a2);
    v36 = mlir::UnrankedTensorType::get(v35);
    v37 = *(a11 + 2);
    if (v37 >= *(a11 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v37) = v36;
    goto LABEL_21;
  }

  v19 = mlir::ValueRange::dereference_iterator(v69, 0);
  v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
  v22 = v21;
  v23 = mlir::ValueRange::dereference_iterator(v69, 1);
  v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v23 + 8) & 0xFFFFFFFFFFFFFFF8));
  v26 = v25;
  v27 = mlir::ValueRange::dereference_iterator(v69, 2);
  v28 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v27 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v20 || !v24 || (v30 = v28) == 0)
  {
    v39 = mlir::ValueRange::dereference_iterator(v69, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v39);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v41);
    }

    v42 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v43 = *(a11 + 2);
    if (v43 >= *(a11 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v43) = v42;
    goto LABEL_21;
  }

  v31 = v29;
  v54 = v20;
  v55 = v22;
  if (mlir::ShapedType::hasRank(&v54))
  {
    Shape = mlir::ShapedType::getShape(&v54);
    if (!v33)
    {
LABEL_34:
      v53 = *(a11 + 2);
      if (v53 >= *(a11 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v53) = v54;
LABEL_21:
      ++*(a11 + 2);
      return 1;
    }

    v34 = 8 * v33;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v34 -= 8;
      if (!v34)
      {
        goto LABEL_34;
      }
    }
  }

  {
    goto LABEL_34;
  }

  BatchDims = mlir::mps::detail::ScatterNDOpGenericAdaptorBase::getBatchDims(&v61);
  v58 = v60;
  v59 = 0x400000000;
  if (v45)
  {
    v46 = v58;
    v47 = v59;
    v48 = mlir::getElementTypeOrSelf(v20);
    *&v56 = v46;
    *(&v56 + 1) = v47;
    v57 = 1;
    result = mlir::ShapedType::cloneWith(&v54, &v56, v48);
    v54 = result;
    v55 = v49;
  }

  else
  {
    v50 = mlir::ValueRange::dereference_iterator(v69, 0);
    v51 = mlir::getElementTypeOrSelf(v50);
  }

  if (v58 != v60)
  {
    v52 = result;
    free(v58);
    result = v52;
  }

  if (v45)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t mlir::mps::ScatterNDOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v25[0] = *(a1 + 24);
      v27[0] = mlir::IntegerAttr::getType(v25);
      if (mlir::Type::isUnsignedInteger(v27, 32))
      {
        return 1;
      }

      v25[0] = "'mps.scatter_nd' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v26 = 259;
      mlir::emitError(a2, v25, v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

        v18 = __p;
        if (__p)
        {
          v19 = v33;
          v20 = __p;
          if (v33 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v33 = v18;
          operator delete(v20);
        }

        v7 = v30;
        if (!v30)
        {
          goto LABEL_55;
        }

        v21 = v31;
        v9 = v30;
        if (v31 == v30)
        {
LABEL_54:
          v31 = v7;
          operator delete(v9);
LABEL_55:
          if (v28 != &v29)
          {
            free(v28);
          }

          return v3;
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

        while (v21 != v7);
LABEL_53:
        v9 = v30;
        goto LABEL_54;
      }
    }

    else
    {
      v25[0] = "'mps.scatter_nd' op requires attribute 'mode'";
      v26 = 259;
      mlir::emitError(a2, v25, v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

        v7 = v30;
        if (!v30)
        {
          goto LABEL_55;
        }

        v15 = v31;
        v9 = v30;
        if (v31 == v30)
        {
          goto LABEL_54;
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
        goto LABEL_53;
      }
    }
  }

  else
  {
    v25[0] = "'mps.scatter_nd' op requires attribute 'batch_dims'";
    v26 = 259;
    mlir::emitError(a2, v25, v27);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

      v4 = __p;
      if (__p)
      {
        v5 = v33;
        v6 = __p;
        if (v33 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v33 = v4;
        operator delete(v6);
      }

      v7 = v30;
      if (!v30)
      {
        goto LABEL_55;
      }

      v8 = v31;
      v9 = v30;
      if (v31 == v30)
      {
        goto LABEL_54;
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
      goto LABEL_53;
    }
  }

  return v3;
}

uint64_t mlir::mps::anonymous namespace::scatterNDRankInferrable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a5;
  v10[1] = a6;
  if (mlir::ShapedType::hasRank(v12))
  {
    return 1;
  }

  if (mlir::ShapedType::hasRank(v10))
  {
    Shape = mlir::ShapedType::getShape(v10);
    v9 = *(Shape + 8 * v8 - 8) != 0x8000000000000000;
  }

  else
  {
    v9 = 0;
  }

  return mlir::ShapedType::hasRank(v11) & v9;
}

uint64_t *mlir::mps::detail::ScatterNDOpGenericAdaptorBase::getBatchDims(mlir::mps::detail::ScatterNDOpGenericAdaptorBase *this)
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

BOOL mlir::mps::anonymous namespace::inferScatterNDShape(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v46 = *MEMORY[0x277D85DE8];
  v42[0] = a3;
  v42[1] = a4;
  v41[0] = a5;
  v41[1] = a6;
  v40[0] = a7;
  v40[1] = a8;
  if (mlir::ShapedType::hasRank(v42))
  {
    Shape = mlir::ShapedType::getShape(v42);
    v14 = v12;
    v15 = *(a10 + 8);
    if (v12 != v15)
    {
      if (v12 >= v15)
      {
        if (v12 > *(a10 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v12 != v15)
        {
          bzero((*a10 + 8 * v15), 8 * (v12 - v15));
        }
      }

      *(a10 + 8) = v14;
    }

    if (v14)
    {
      memmove(*a10, Shape, 8 * v14);
    }

    if (mlir::ShapedType::hasRank(v42))
    {
      v16 = mlir::ShapedType::getShape(v42);
      if (!v17)
      {
        return 1;
      }

      v18 = 8 * v17;
      while (*v16 != 0x8000000000000000)
      {
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    v14 = 0x8000000000000000;
  }

  if (!mlir::ShapedType::hasRank(v40) || !mlir::ShapedType::hasRank(v41))
  {
    return 1;
  }

  v19 = mlir::ShapedType::getShape(v41);
  v21 = v20;
  v23 = mlir::ShapedType::getShape(v40);
  v39 = v21;
  v24 = v23[v22 - 1];
  v38 = v24;
  if (v24 == 0x8000000000000000)
  {
    if (v14 == 0x8000000000000000)
    {
      return 1;
    }

    v24 = v14 + ~a9 - v21 + v22;
    v38 = v24;
  }

  if (v24 <= 0)
  {
    return mlir::emitOptionalError<char const(&)[36],char const(&)[49],long long &,char const(&)[6]>(a1, a2, "invalid input tensor shapes: minor ", "dimension of indices must have positive length, ", &v38, " <= 0");
  }

  if (v22 - 1 > v21)
  {
    v43 = v22 - 1;
    return mlir::emitOptionalError<char const(&)[35],char const(&)[13],long long &,char const(&)[6],long long const&>(a1, a2, "invalid input tensor shapes: requires ", "|updates| >= |indices| - 1, ", &v39, " < ", &v43);
  }

  v26 = v21 + a9 - v22 + v24 + 1;
  if (v14 != 0x8000000000000000)
  {
    v27 = v14 == v26;
    v26 = v14;
    if (!v27)
    {
      return mlir::emitOptionalError<char const(&)[31],char const(&)[45],char const(&)[25]>(a1, a2, "Rank of data array must equal ", "number of outer dimensions in index array + ", "rank of slice to update.");
    }
  }

  if ((mlir::ShapedType::hasRank(v42) & 1) == 0)
  {
    llvm::SmallVectorImpl<long long>::assign(a10, v26, 0x8000000000000000);
  }

  if (a9)
  {
    v28 = *a10;
    v29 = 8 * a9;
    v30 = v19;
    do
    {
      v43 = *v28;
      v31 = *v23++;
      v44 = v31;
      v32 = *v30++;
      v45 = v32;
      *v28++ = mlir::mps::mergeDynamicDims(&v43, 3);
      v29 -= 8;
    }

    while (v29);
  }

  v33 = v19 + 8 * v21;
  if (v33 != v33 - 8 * v26 + 8 * v24 + 8 * a9)
  {
    v34 = 8 * (v24 + a9) - 8 * v26;
    v35 = (v33 - 8);
    v36 = (*a10 + 8 * *(a10 + 8) - 8);
    do
    {
      v43 = *v36;
      v37 = *v35--;
      v44 = v37;
      *v36-- = mlir::mps::mergeDynamicDims(&v43, 2);
      v34 += 8;
    }

    while (v34);
  }

  return 1;
}

uint64_t mlir::mps::ScatterNDOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ScatterNDOp::verify(mlir::Operation **this)
{
  v137 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v121[0] = v2;
  v121[1] = v13;
  v14 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_29;
  }

  v25 = v19[1];
LABEL_30:
  v120[0] = v14;
  v120[1] = v25;
  v26 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = *v26;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (v30)
    {
      goto LABEL_33;
    }

LABEL_44:
    v37 = 0;
    goto LABEL_45;
  }

  v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  if (!v30)
  {
    goto LABEL_44;
  }

LABEL_33:
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
  if (v31 == &v29[2 * v30] || *v31 != v28)
  {
    goto LABEL_44;
  }

  v37 = v31[1];
LABEL_45:
  v119[0] = v26;
  v119[1] = v37;
  v38 = 0x8000000000000000;
  v116 = 0x8000000000000000;
  v117 = 0x8000000000000000;
  v118 = 0x8000000000000000;
  if (mlir::ShapedType::hasRank(v120))
  {
    Shape = mlir::ShapedType::getShape(v120);
    v38 = v40;
    v118 = v40;
    if (!mlir::ShapedType::hasRank(v119))
    {
      goto LABEL_47;
    }

LABEL_50:
    v41 = mlir::ShapedType::getShape(v119);
    v43 = v46;
    v42 = v41[v46 - 1];
    v116 = v42;
    if (!mlir::ShapedType::hasRank(v121))
    {
      goto LABEL_48;
    }

    goto LABEL_51;
  }

  Shape = 0;
  if (mlir::ShapedType::hasRank(v119))
  {
    goto LABEL_50;
  }

LABEL_47:
  v41 = 0;
  v42 = 0x8000000000000000;
  v43 = 0x8000000000000000;
  if (!mlir::ShapedType::hasRank(v121))
  {
LABEL_48:
    v44 = 0;
    v45 = 0x8000000000000000;
    goto LABEL_52;
  }

LABEL_51:
  v44 = mlir::ShapedType::getShape(v121);
  v45 = v47;
  v117 = v47;
LABEL_52:
  v122 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v122, &v125);
  if (LODWORD(v126[0]) > 0x40)
  {
    v48 = *v125;
    MEMORY[0x259C63150]();
    if (v38 == 0x8000000000000000)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v48 = v125;
    if (v38 == 0x8000000000000000)
    {
      goto LABEL_57;
    }
  }

  if (v48 >= v38)
  {
    goto LABEL_61;
  }

LABEL_57:
  if ((v43 == 0x8000000000000000 || v48 < v43) && (v45 == 0x8000000000000000 || v48 < v45))
  {
    v106 = v42;
    v107 = v45;
    v122 = v124;
    v123 = 0x400000000;
    if (v48)
    {
      if (v48 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v122, 8 * v48);
      v65 = 0;
      LODWORD(v123) = v48;
      do
      {
        if (mlir::ShapedType::hasRank(v120))
        {
          v68 = Shape[v65];
          if (!mlir::ShapedType::hasRank(v119))
          {
            goto LABEL_96;
          }
        }

        else
        {
          v68 = 0x8000000000000000;
          if (!mlir::ShapedType::hasRank(v119))
          {
LABEL_96:
            v69 = 0x8000000000000000;
            if (!mlir::ShapedType::hasRank(v121))
            {
              goto LABEL_100;
            }

            goto LABEL_92;
          }
        }

        v69 = v41[v65];
        if (!mlir::ShapedType::hasRank(v121))
        {
LABEL_100:
          v66 = 0x8000000000000000;
          goto LABEL_93;
        }

LABEL_92:
        v66 = v44[v65];
LABEL_93:
        v125 = v68;
        v126[0] = v69;
        v126[1] = v66;
        v67 = mlir::mps::mergeDynamicDims(&v125, 3);
        v122[v65++] = v67;
      }

      while (v48 != v65);
    }

    if ((mlir::ShapedType::hasRank(v120) & 1) != 0 && (mlir::verifyCompatibleShape(Shape, v48, v122, v123) & 1) == 0)
    {
      *&v108 = "invalid updates tensor shape: input tensor shapes ";
      v111 = 259;
      mlir::OpState::emitOpError(this, &v108, &v125);
      if (v125)
      {
        LODWORD(v112) = 3;
        *(&v112 + 1) = "must match along batch dimensions";
        v113 = 33;
        if (v128 >= v129)
        {
          if (v127 > &v112 || v127 + 24 * v128 <= &v112)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v76 = v127 + 24 * v128;
        v77 = v112;
        *(v76 + 2) = v113;
        *v76 = v77;
        ++v128;
      }

      v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
      if (v125)
      {
        mlir::InFlightDiagnostic::report(&v125);
      }

      if (v136 == 1)
      {
        if (v135 != &v136)
        {
          free(v135);
        }

        v78 = __p;
        if (__p)
        {
          v79 = v134;
          v80 = __p;
          if (v134 != __p)
          {
            do
            {
              v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
            }

            while (v79 != v78);
            v80 = __p;
          }

          v134 = v78;
          operator delete(v80);
        }

        v81 = v131;
        if (v131)
        {
          v82 = v132;
          v83 = v131;
          if (v132 != v131)
          {
            do
            {
              v85 = *--v82;
              v84 = v85;
              *v82 = 0;
              if (v85)
              {
                MEMORY[0x259C63150](v84, 0x1000C8077774924);
              }
            }

            while (v82 != v81);
            goto LABEL_157;
          }

LABEL_158:
          v132 = v81;
          operator delete(v83);
        }

LABEL_159:
        if (v127 != v130)
        {
          free(v127);
          v63 = v122;
          if (v122 == v124)
          {
            return v54;
          }

          goto LABEL_85;
        }
      }
    }

    else
    {
      if (!mlir::ShapedType::hasRank(v119) || (mlir::verifyCompatibleShape(v41, v48, v122, v123) & 1) != 0)
      {
        if (mlir::ShapedType::hasRank(v121) && (mlir::verifyCompatibleShape(v44, v48, v122, v123) & 1) == 0)
        {
          *&v108 = "invalid data tensor shape: input tensor shapes ";
          v111 = 259;
          mlir::OpState::emitOpError(this, &v108, &v125);
          if (v125)
          {
            LODWORD(v112) = 3;
            *(&v112 + 1) = "must match along batch dimensions";
            v113 = 33;
            if (v128 >= v129)
            {
              if (v127 > &v112 || v127 + 24 * v128 <= &v112)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v94 = v127 + 24 * v128;
            v95 = v112;
            *(v94 + 2) = v113;
            *v94 = v95;
            ++v128;
          }

          v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
          if (v125)
          {
            mlir::InFlightDiagnostic::report(&v125);
          }

          if (v136 == 1)
          {
            mlir::Diagnostic::~Diagnostic(v126);
            v63 = v122;
            if (v122 == v124)
            {
              return v54;
            }

            goto LABEL_85;
          }

          goto LABEL_174;
        }

        v70 = v107;
        if (!mlir::ShapedType::hasRank(v119) || !mlir::ShapedType::hasRank(v120))
        {
          goto LABEL_173;
        }

        v71 = v43 - 1;
        if (v38 < (v43 - 1))
        {
          *&v108 = "invalid input tensor shapes: requires ";
          v111 = 259;
          mlir::OpState::emitOpError(this, &v108, &v125);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v125, "|updates| >= |indices| - 1, ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v72, &v118);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v73, " < ");
          *&v112 = v43 - 1;
          mlir::InFlightDiagnostic::operator<<<long long &>(v74, &v112);
          goto LABEL_183;
        }

        v96 = v106;
        if (v106 == 0x8000000000000000)
        {
          if (v107 == 0x8000000000000000 || (v96 = v71 - (v48 + v38) + v107, v116 = v96, v96 == 0x8000000000000000))
          {
            *&v108 = "invalid input tensor shapes: minor dimension of indices was dynamic and could not be inferred";
            *(&v108 + 1) = 93;
            v109 = 0;
            v110 = 0;
            LOBYTE(v111) = 1;
            v114 = 263;
            *&v112 = &v108;
            mlir::OpState::emitOpError(this, &v112, &v125);
            v75 = &v125;
            goto LABEL_183;
          }
        }

        else if (v107 == 0x8000000000000000)
        {
          v117 = v48 - v43 + v38 + v106 + 1;
          v70 = v117;
        }

        else if (v107 != v48 - v43 + v38 + v106 + 1)
        {
          *&v108 = "Rank of data array must equal number of outer ";
          v111 = 259;
          mlir::OpState::emitOpError(this, &v108, &v125);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v125, "dimensions in indices array + rank of slice to update, ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v101, &v117);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v102, " != ");
          *&v112 = v106 + v48;
          mlir::InFlightDiagnostic::operator<<<unsigned long &>(v103, &v112);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v104, " + ");
          v115 = v38 - (v43 - 1);
          mlir::InFlightDiagnostic::operator<<<long long &>(v105, &v115);
          goto LABEL_183;
        }

        if (v96 <= 0)
        {
          *&v108 = "invalid input tensor shapes: minor dimension of ";
          v111 = 259;
          mlir::OpState::emitOpError(this, &v108, &v125);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v125, "indices must have positive length, ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v98, &v116);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v99, " <= 0");
        }

        else
        {
          v97 = v38 - (v43 - 1);
          if (mlir::verifyCompatibleShape(&Shape[v48], v71 - v48, &v41[v48], v71 - v48))
          {
            if (!mlir::ShapedType::hasRank(v121) || (mlir::verifyCompatibleShape(&Shape[v71], v97, &v44[v96 + v48], v70 - (v96 + v48)) & 1) != 0)
            {
LABEL_173:
              v54 = 1;
              goto LABEL_174;
            }

            *&v108 = "invalid input tensor shape: updates tensor ";
            v111 = 259;
            mlir::OpState::emitOpError(this, &v108, &v125);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v125, "shape and data tensor shape must match along inner dimensions");
          }

          else
          {
            *&v108 = "invalid input tensor shape: updates tensor ";
            v111 = 259;
            mlir::OpState::emitOpError(this, &v108, &v125);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v125, "shape and indices tensor shape must match along outer ");
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v100, "dimensions");
          }
        }

LABEL_183:
        v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v125);
        v63 = v122;
        if (v122 == v124)
        {
          return v54;
        }

        goto LABEL_85;
      }

      *&v108 = "invalid indices tensor shape: input tensor shapes ";
      v111 = 259;
      mlir::OpState::emitOpError(this, &v108, &v125);
      if (v125)
      {
        LODWORD(v112) = 3;
        *(&v112 + 1) = "must match along batch dimensions";
        v113 = 33;
        if (v128 >= v129)
        {
          if (v127 > &v112 || v127 + 24 * v128 <= &v112)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v86 = v127 + 24 * v128;
        v87 = v112;
        *(v86 + 2) = v113;
        *v86 = v87;
        ++v128;
      }

      v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
      if (v125)
      {
        mlir::InFlightDiagnostic::report(&v125);
      }

      if (v136 == 1)
      {
        if (v135 != &v136)
        {
          free(v135);
        }

        v88 = __p;
        if (__p)
        {
          v89 = v134;
          v90 = __p;
          if (v134 != __p)
          {
            do
            {
              v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
            }

            while (v89 != v88);
            v90 = __p;
          }

          v134 = v88;
          operator delete(v90);
        }

        v81 = v131;
        if (v131)
        {
          v91 = v132;
          v83 = v131;
          if (v132 != v131)
          {
            do
            {
              v93 = *--v91;
              v92 = v93;
              *v91 = 0;
              if (v93)
              {
                MEMORY[0x259C63150](v92, 0x1000C8077774924);
              }
            }

            while (v91 != v81);
LABEL_157:
            v83 = v131;
            goto LABEL_158;
          }

          goto LABEL_158;
        }

        goto LABEL_159;
      }
    }

LABEL_174:
    v63 = v122;
    if (v122 == v124)
    {
      return v54;
    }

    goto LABEL_85;
  }

LABEL_61:
  v122 = "invalid batch dimensions: ";
  v124[8] = 259;
  mlir::OpState::emitOpError(this, &v122, &v125);
  if (v125)
  {
    LODWORD(v108) = 5;
    *(&v108 + 1) = v48;
    if (v128 >= v129)
    {
      if (v127 > &v108 || v127 + 24 * v128 <= &v108)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v49 = v127 + 24 * v128;
    v50 = v108;
    *(v49 + 2) = v109;
    *v49 = v50;
    v51 = ++v128;
    if (v125)
    {
      LODWORD(v108) = 3;
      *(&v108 + 1) = ", must be less than ranks of all input tensors";
      v109 = 46;
      if (v51 >= v129)
      {
        if (v127 > &v108 || v127 + 24 * v51 <= &v108)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v52 = v127 + 24 * v128;
      v53 = v108;
      *(v52 + 2) = v109;
      *v52 = v53;
      ++v128;
    }
  }

  v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
  if (v125)
  {
    mlir::InFlightDiagnostic::report(&v125);
  }

  if (v136 == 1)
  {
    if (v135 != &v136)
    {
      free(v135);
    }

    v55 = __p;
    if (__p)
    {
      v56 = v134;
      v57 = __p;
      if (v134 != __p)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = __p;
      }

      v134 = v55;
      operator delete(v57);
    }

    v58 = v131;
    if (v131)
    {
      v59 = v132;
      v60 = v131;
      if (v132 != v131)
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
        v60 = v131;
      }

      v132 = v58;
      operator delete(v60);
    }

    v63 = v127;
    if (v127 != v130)
    {
LABEL_85:
      free(v63);
    }
  }

  return v54;
}

uint64_t *mlir::mps::ScatterNDOp::getBatchDims(mlir::mps::ScatterNDOp *this)
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

uint64_t llvm::SmallVectorImpl<long long>::resize(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(result + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (a2 != v2)
      {
        v4 = result;
        bzero((*result + 8 * v2), 8 * (a2 - v2));
        result = v4;
      }
    }

    *(result + 8) = v3;
  }

  return result;
}

uint64_t mlir::mps::getAxis(uint64_t a1, char a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v16 = 0;
  v17 = 0;
  v14 = a4;
  v15 = &v16;
  v18 = a3;
  DefiningOp = mlir::Value::getDefiningOp(&v18);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v15, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v16, v17);
  v16 = SingleInt;
  LOBYTE(v17) = v11;
  v12 = 1;
  if (v11)
  {
    *a5 = SingleInt;
    *(a5 + 8) = 1;
    if (SingleInt < 0)
    {
      SingleInt += a4;
      *a5 = SingleInt;
      if (SingleInt < 0)
      {
        return mlir::emitOptionalError<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(a1, a2, "invalid axis tensor: [", &v16, "], axis must be in range -rank <= axis < rank,", " rank = ", &v14);
      }
    }

    if (SingleInt >= a4)
    {
      return mlir::emitOptionalError<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(a1, a2, "invalid axis tensor: [", &v16, "], axis must be in range -rank <= axis < rank,", " rank = ", &v14);
    }
  }

  return v12;
}

BOOL mlir::emitOptionalError<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char a2, char *a3, uint64_t *a4, char *a5, char *a6, unint64_t *a7)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v22);
  if (v22)
  {
    mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(&v23, a3, a4, a5, a6, a7);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
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
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v12;
}

uint64_t mlir::mps::ScatterOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v50[0] = a4;
  v50[1] = a5;
  if (a5 == 4)
  {
    v13 = mlir::ValueRange::dereference_iterator(v50, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v45 = v16;
    v17 = *(mlir::ValueRange::dereference_iterator(v50, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = 0;
    }

    v44 = v17;
    if (v16)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot scatter a non-tensor type");
    }

    v43 = v16;
    if (mlir::TensorType::hasRank(&v43))
    {
      Shape = mlir::TensorType::getShape(&v43);
      if (!v24)
      {
LABEL_43:
        v40 = *(a11 + 8);
        if (v40 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v40) = v43;
        ++*(a11 + 8);
        return 1;
      }

      v25 = 8 * v24;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_43;
        }
      }
    }

    if (mlir::TensorType::hasRank(&v44))
    {
      v26 = mlir::TensorType::getShape(&v44);
      v28 = v27;
      LOBYTE(v41) = 0;
      v42 = 0;
      v29 = mlir::ValueRange::dereference_iterator(v50, 3);
      if ((mlir::mps::getAxis(a2, a3, v29, v28, &v41) & 1) == 0)
      {
        return 0;
      }

      if (v42)
      {
        __dst = v49;
        v48 = 0x400000000;
        if (mlir::TensorType::hasRank(&v45))
        {
          llvm::SmallVectorImpl<long long>::resize(&__dst, v28);
          v30 = mlir::TensorType::getShape(&v45);
          v31 = mlir::TensorType::getShape(&v45);
          v33 = (v31 + 8 * v32);
          if (v33 != v30)
          {
            memmove(__dst, v30, v33 - v30);
          }
        }

        else
        {
          llvm::SmallVectorImpl<long long>::assign(&__dst, v28, 0x8000000000000000);
        }

        if (v28 >= 1)
        {
          v34 = 0;
          v35 = v41;
          do
          {
            if (v35 != v34)
            {
              v46[0] = *(__dst + v34);
              v46[1] = *(v26 + 8 * v34);
              v36 = mlir::mps::mergeDynamicDims(v46, 2);
              *(__dst + v34) = v36;
            }

            ++v34;
          }

          while (v28 != v34);
        }

        v37 = __dst;
        v38 = v48;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v45);
        v43 = mlir::RankedTensorType::get(v37, v38, ElementTypeOrSelf, 0);
        if (__dst != v49)
        {
          free(__dst);
        }
      }
    }

    goto LABEL_43;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

_DWORD *llvm::SmallVectorImpl<long long>::assign(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 12) < a2)
  {
    *(a1 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *a1;
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 < 4)
    {
      v8 = v3;
      v9 = v7;
      do
      {
LABEL_13:
        *v8++ = a3;
        --v9;
      }

      while (v9);
      goto LABEL_14;
    }

    v8 = v3 + (v7 & 0xFFFFFFFC);
    v9 = v7 & 3;
    v10 = vdupq_n_s64(a3);
    v11 = v3 + 1;
    v12 = v7 & 0xFFFFFFFC;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v7 != (v7 & 0xFFFFFFFC))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v13 = a2 - v5;
  if (a2 <= v5)
  {
    goto LABEL_3;
  }

  v14 = (v3 + 8 * v5);
  if (v13 < 4)
  {
    v15 = v3 + v5;
    v16 = a2 - v5;
    do
    {
LABEL_20:
      *v15++ = a3;
      --v16;
    }

    while (v16);
    goto LABEL_3;
  }

  v15 = v14 + (v13 & 0xFFFFFFFFFFFFFFFCLL);
  v16 = v13 & 3;
  v17 = vdupq_n_s64(a3);
  v18 = v14 + 1;
  v19 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v18[-1] = v17;
    *v18 = v17;
    v18 += 2;
    v19 -= 4;
  }

  while (v19);
  if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_20;
  }

LABEL_3:
  *result = a2;
  return result;
}

uint64_t mlir::mps::ScatterOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::ScatterOp::verify(mlir::Operation **this)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v70[0] = v2;
  v70[1] = v13;
  v14 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_29;
  }

  v25 = v19[1];
LABEL_30:
  v69[0] = v14;
  v69[1] = v25;
  v26 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_44;
  }

  v27 = *v26;
  {
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_44;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_44;
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
    v48 = v31[1];
    v67 = v26;
    v68 = v48;
    if (!mlir::ShapedType::hasRank(v69))
    {
      return 1;
    }

    goto LABEL_45;
  }

LABEL_44:
  v67 = v26;
  v68 = 0;
  if (!mlir::ShapedType::hasRank(v69))
  {
    return 1;
  }

LABEL_45:
  mlir::ShapedType::getShape(v69);
  v38 = v37;
  LOBYTE(v65) = 0;
  v66 = 0;
  Axis = mlir::mps::getAxis(*(*this + 3), 1, *(*(*this + 9) + 120), v37, &v65);
  result = 0;
  if ((Axis & 1) == 0)
  {
    return result;
  }

  if (v66 != 1)
  {
    return 1;
  }

  Shape = mlir::ShapedType::getShape(v69);
  if (mlir::ShapedType::hasRank(&v67))
  {
    if (*mlir::ShapedType::getShape(&v67) != 0x8000000000000000)
    {
      v42 = v65;
      if (*(mlir::ShapedType::getShape(v69) + 8 * v42) != 0x8000000000000000)
      {
        v43 = Shape[v42];
        if (v43 != *mlir::ShapedType::getShape(&v67))
        {
          v63[0] = "invalid updates tensor shape, shape at axis must ";
          v64 = 259;
          mlir::OpState::emitOpError(this, v63, &v73);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v73, "equal length of indices tensor");
          v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v73);
          return v61;
        }
      }
    }
  }

  if (!mlir::ShapedType::hasRank(v70))
  {
    return 1;
  }

  mlir::ShapedType::getShape(v70);
  if (v44 == v38)
  {
    v45 = mlir::ShapedType::getShape(v70);
    v46 = v65;
    if ((mlir::verifyCompatibleShape(Shape, v65, v45, v65) & 1) == 0 || (mlir::verifyCompatibleShape(&Shape[v46 + 1], v38 + ~v46, &v45[v46 + 1], v38 + ~v46) & 1) == 0)
    {
      v63[0] = "invalid input tensor shapes, updates shape and ";
      v64 = 259;
      mlir::OpState::emitOpError(this, v63, &v73);
      if (!v73)
      {
        goto LABEL_73;
      }

      LODWORD(v71) = 3;
      *(&v71 + 1) = "data shape must match except at axis";
      v72 = 36;
      v47 = v75;
      if (v76 >= v77)
      {
        if (v75 > &v71 || v75 + 24 * v76 <= &v71)
        {
          goto LABEL_84;
        }

        goto LABEL_92;
      }

      goto LABEL_72;
    }

    return 1;
  }

  v63[0] = "invalid input tensor shapes, updates rank and result ";
  v64 = 259;
  mlir::OpState::emitOpError(this, v63, &v73);
  if (v73)
  {
    LODWORD(v71) = 3;
    *(&v71 + 1) = "rank must be equal, ";
    v72 = 20;
    if (v76 >= v77)
    {
      if (v75 > &v71 || v75 + 24 * v76 <= &v71)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v49 = v75 + 24 * v76;
    v50 = v71;
    *(v49 + 16) = v72;
    *v49 = v50;
    v51 = ++v76;
    if (v73)
    {
      LODWORD(v71) = 2;
      *(&v71 + 1) = v38;
      if (v51 >= v77)
      {
        if (v75 > &v71 || v75 + 24 * v51 <= &v71)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v52 = v75 + 24 * v76;
      v53 = v71;
      *(v52 + 16) = v72;
      *v52 = v53;
      v54 = ++v76;
      if (v73)
      {
        LODWORD(v71) = 3;
        *(&v71 + 1) = " != ";
        v72 = 4;
        if (v54 >= v77)
        {
          if (v75 > &v71 || v75 + 24 * v54 <= &v71)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v55 = v75 + 24 * v76;
        v56 = v71;
        *(v55 + 16) = v72;
        *v55 = v56;
        ++v76;
      }
    }
  }

  mlir::ShapedType::getShape(v70);
  if (v73)
  {
    LODWORD(v71) = 2;
    *(&v71 + 1) = v57;
    v47 = v75;
    if (v76 >= v77)
    {
      if (v75 > &v71 || v75 + 24 * v76 <= &v71)
      {
LABEL_84:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

LABEL_92:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_72:
    v58 = v47 + 24 * v76;
    v59 = v71;
    *(v58 + 16) = v72;
    *v58 = v59;
    ++v76;
  }

LABEL_73:
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
  if (v73)
  {
    v60 = result;
    mlir::InFlightDiagnostic::report(&v73);
    result = v60;
  }

  if (v78 == 1)
  {
    v61 = result;
    mlir::Diagnostic::~Diagnostic(&v74);
    return v61;
  }

  return result;
}

uint64_t mlir::mps::ScatterAlongAxisOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v61[0] = a4;
  v61[1] = a5;
  if (a5 == 4)
  {
    v13 = mlir::ValueRange::dereference_iterator(v61, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v55 = v16;
    v17 = *(mlir::ValueRange::dereference_iterator(v61, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = 0;
    }

    v54 = v17;
    v20 = *(mlir::ValueRange::dereference_iterator(v61, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(*v20 + 136);
    if (v21 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v20 = 0;
    }

    v53 = v20;
    if (v16)
    {
      v23 = v54 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23 || v20 == 0)
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "cannot scatter_along_axis a non-tensor type");
    }

    v52 = v16;
    if (mlir::TensorType::hasRank(&v52))
    {
      Shape = mlir::TensorType::getShape(&v52);
      if (!v28)
      {
        goto LABEL_67;
      }

      v29 = 8 * v28;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v29 -= 8;
        if (!v29)
        {
          goto LABEL_67;
        }
      }
    }

    if (mlir::TensorType::hasRank(&v54) || mlir::TensorType::hasRank(&v53))
    {
      if (mlir::TensorType::hasRank(&v54))
      {
        v30 = mlir::TensorType::getShape(&v54);
        mlir::TensorType::getShape(&v54);
        v32 = v31;
        if (!mlir::TensorType::hasRank(&v53))
        {
LABEL_40:
          v33 = 0;
          goto LABEL_43;
        }
      }

      else
      {
        v30 = 0;
        v32 = 0;
        if (!mlir::TensorType::hasRank(&v53))
        {
          goto LABEL_40;
        }
      }

      v33 = mlir::TensorType::getShape(&v53);
      mlir::TensorType::getShape(&v53);
      v32 = v34;
LABEL_43:
      __dst = v60;
      v59 = 4;
      if (v32 >= 5)
      {
        v58 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v32)
      {
        memset_pattern16(v60, &unk_25736EFD0, 8 * v32);
      }

      v58 = v32;
      LOBYTE(v50) = 0;
      v51 = 0;
      v35 = mlir::ValueRange::dereference_iterator(v61, 3);
      Axis = mlir::mps::getAxis(a2, a3, v35, v32, &v50);
      if (Axis)
      {
        if (v51 == 1)
        {
          if (mlir::TensorType::hasRank(&v55))
          {
            llvm::SmallVectorImpl<long long>::resize(&__dst, v32);
            v37 = mlir::TensorType::getShape(&v55);
            v38 = mlir::TensorType::getShape(&v55);
            v40 = (v38 + 8 * v39);
            if (v40 != v37)
            {
              memmove(__dst, v37, v40 - v37);
            }
          }

          if (v32 >= 1)
          {
            v41 = 0;
            v42 = v50;
            do
            {
              if (v42 == v41)
              {
                goto LABEL_56;
              }

              if (mlir::TensorType::hasRank(&v54))
              {
                v45 = *(v30 + 8 * v41);
                if (!mlir::TensorType::hasRank(&v53))
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v45 = 0x8000000000000000;
                if (!mlir::TensorType::hasRank(&v53))
                {
LABEL_62:
                  v43 = 0x8000000000000000;
                  goto LABEL_55;
                }
              }

              v43 = *(v33 + 8 * v41);
LABEL_55:
              v56[0] = *(__dst + v41);
              v56[1] = v45;
              v56[2] = v43;
              v44 = mlir::mps::mergeDynamicDims(v56, 3);
              *(__dst + v41) = v44;
LABEL_56:
              ++v41;
            }

            while (v32 != v41);
          }
        }

        v46 = __dst;
        v47 = v58;
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v55);
        v52 = mlir::RankedTensorType::get(v46, v47, ElementTypeOrSelf, 0);
      }

      if (__dst != v60)
      {
        free(__dst);
      }

      if ((Axis & 1) == 0)
      {
        return 0;
      }
    }

LABEL_67:
    v49 = *(a11 + 8);
    if (v49 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v49) = v52;
    ++*(a11 + 8);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::ScatterAlongAxisOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::ScatterAlongAxisOp::verify(mlir::Operation **this)
{
  v127[4] = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v110[0] = v2;
  v110[1] = v13;
  v14 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    v25 = 0;
    goto LABEL_30;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_29;
  }

  v25 = v19[1];
LABEL_30:
  v109[0] = v14;
  v109[1] = v25;
  v26 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26)
  {
    v27 = *v26;
    {
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::TensorType::operator mlir::ShapedType();
      v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      if (!v30)
      {
        goto LABEL_44;
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
      v37 = v31[1];
      goto LABEL_45;
    }
  }

LABEL_44:
  v37 = 0;
LABEL_45:
  v108[0] = v26;
  v108[1] = v37;
  v125 = v127;
  v126 = 0x400000000;
  if (mlir::ShapedType::hasRank(v109) && mlir::ShapedType::hasRank(v108))
  {
    mlir::ShapedType::getShape(v109);
    v39 = v38;
    Shape = mlir::ShapedType::getShape(v109);
    mlir::ShapedType::getShape(v108);
    if (v41 != v39)
    {
      v106[0] = "invalid input tensor shapes, indices rank and";
      v107 = 259;
      mlir::OpState::emitOpError(this, v106, &v113);
      if (v113)
      {
        LODWORD(v111) = 3;
        *(&v111 + 1) = " updates rank must be equal, ";
        v112 = 29;
        if (v116 >= v117)
        {
          if (v115 > &v111 || v115 + 24 * v116 <= &v111)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v75 = v115 + 24 * v116;
        v76 = v111;
        *(v75 + 2) = v112;
        *v75 = v76;
        ++v116;
      }

      mlir::ShapedType::getShape(v108);
      if (v113)
      {
        LODWORD(v111) = 2;
        *(&v111 + 1) = v77;
        if (v116 >= v117)
        {
          if (v115 > &v111 || v115 + 24 * v116 <= &v111)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v78 = v115 + 24 * v116;
        v79 = v111;
        *(v78 + 2) = v112;
        *v78 = v79;
        v80 = ++v116;
        if (v113)
        {
          LODWORD(v111) = 3;
          *(&v111 + 1) = " != ";
          v112 = 4;
          if (v80 >= v117)
          {
            if (v115 > &v111 || v115 + 24 * v80 <= &v111)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v81 = v115 + 24 * v116;
          v82 = v111;
          *(v81 + 2) = v112;
          *v81 = v82;
          v83 = ++v116;
          if (v113)
          {
            LODWORD(v111) = 2;
            *(&v111 + 1) = v39;
            if (v83 >= v117)
            {
              if (v115 > &v111 || v115 + 24 * v83 <= &v111)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v84 = v115 + 24 * v116;
            v85 = v111;
            *(v84 + 2) = v112;
            *v84 = v85;
            ++v116;
          }
        }
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
      if (v113)
      {
        mlir::InFlightDiagnostic::report(&v113);
      }

      if (v124 != 1)
      {
        goto LABEL_72;
      }

      if (v123 != &v124)
      {
        free(v123);
      }

      v86 = __p;
      if (__p)
      {
        v87 = v122;
        v88 = __p;
        if (v122 != __p)
        {
          do
          {
            v87 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v87 - 1);
          }

          while (v87 != v86);
          v88 = __p;
        }

        v122 = v86;
        operator delete(v88);
      }

      v70 = v119;
      if (v119)
      {
        v89 = v120;
        v72 = v119;
        if (v120 != v119)
        {
          do
          {
            v91 = *--v89;
            v90 = v91;
            *v89 = 0;
            if (v91)
            {
              MEMORY[0x259C63150](v90, 0x1000C8077774924);
            }
          }

          while (v89 != v70);
          goto LABEL_147;
        }

LABEL_148:
        v120 = v70;
        operator delete(v72);
      }

LABEL_149:
      if (v115 != v118)
      {
        free(v115);
      }

      goto LABEL_72;
    }

    v42 = mlir::ShapedType::getShape(v109);
    v44 = v43;
    v45 = mlir::ShapedType::getShape(v108);
    v47 = mlir::verifyCompatibleShape(v45, v46, v42, v44);
    if (v47)
    {
      if (v39 != v126)
      {
        if (v39 >= v126)
        {
          if (v39 > HIDWORD(v126))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v39 != v126)
          {
            bzero(&v125[v126], 8 * (v39 - v126));
          }
        }

        LODWORD(v126) = v39;
      }

      if (v39 <= 0)
      {
        Shape = v125;
        goto LABEL_65;
      }

      for (i = 0; i != v39; ++i)
      {
        v113 = *(v42 + 8 * i);
        v114 = v45[i];
        v49 = mlir::mps::mergeDynamicDims(&v113, 2);
        Shape = v125;
        v125[i] = v49;
      }
    }

    else
    {
      v106[0] = "invalid input tensor shapes, indices shape and ";
      v107 = 259;
      mlir::OpState::emitOpError(this, v106, &v113);
      if (v113)
      {
        LODWORD(v111) = 3;
        *(&v111 + 1) = "updates shape must be equal";
        v112 = 27;
        if (v116 >= v117)
        {
          if (v115 > &v111 || v115 + 24 * v116 <= &v111)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v92 = v115 + 24 * v116;
        v93 = v111;
        *(v92 + 2) = v112;
        *v92 = v93;
        ++v116;
      }

      v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
      if (v113)
      {
        mlir::InFlightDiagnostic::report(&v113);
      }

      if (v124 == 1)
      {
        if (v123 != &v124)
        {
          free(v123);
        }

        v94 = __p;
        if (__p)
        {
          v95 = v122;
          v96 = __p;
          if (v122 != __p)
          {
            do
            {
              v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
            }

            while (v95 != v94);
            v96 = __p;
          }

          v122 = v94;
          operator delete(v96);
        }

        v97 = v119;
        if (v119)
        {
          v98 = v120;
          v99 = v119;
          if (v120 != v119)
          {
            do
            {
              v101 = *--v98;
              v100 = v101;
              *v98 = 0;
              if (v101)
              {
                MEMORY[0x259C63150](v100, 0x1000C8077774924);
              }
            }

            while (v98 != v97);
            v99 = v119;
          }

          v120 = v97;
          operator delete(v99);
        }

        if (v115 != v118)
        {
          free(v115);
        }
      }
    }

    if ((v47 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (mlir::ShapedType::hasRank(v109))
    {
      Shape = mlir::ShapedType::getShape(v109);
      v50 = v109;
    }

    else
    {
      if (!mlir::ShapedType::hasRank(v108))
      {
LABEL_71:
        v42 = 1;
        goto LABEL_72;
      }

      Shape = mlir::ShapedType::getShape(v108);
      v50 = v108;
    }

    mlir::ShapedType::getShape(v50);
    v39 = v51;
  }

LABEL_65:
  if (!mlir::ShapedType::hasRank(v110))
  {
    goto LABEL_71;
  }

  mlir::ShapedType::getShape(v110);
  if (v52 != v39)
  {
    v106[0] = "invalid input tensor shapes, indices rank and ";
    v107 = 259;
    mlir::OpState::emitOpError(this, v106, &v113);
    if (v113)
    {
      LODWORD(v111) = 3;
      *(&v111 + 1) = "result rank must be equal, ";
      v112 = 27;
      if (v116 >= v117)
      {
        if (v115 > &v111 || v115 + 24 * v116 <= &v111)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v56 = v115 + 24 * v116;
      v57 = v111;
      *(v56 + 2) = v112;
      *v56 = v57;
      v58 = ++v116;
      if (v113)
      {
        LODWORD(v111) = 2;
        *(&v111 + 1) = v39;
        if (v58 >= v117)
        {
          if (v115 > &v111 || v115 + 24 * v58 <= &v111)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v59 = v115 + 24 * v116;
        v60 = v111;
        *(v59 + 2) = v112;
        *v59 = v60;
        v61 = ++v116;
        if (v113)
        {
          LODWORD(v111) = 3;
          *(&v111 + 1) = " != ";
          v112 = 4;
          if (v61 >= v117)
          {
            if (v115 > &v111 || v115 + 24 * v61 <= &v111)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v62 = v115 + 24 * v116;
          v63 = v111;
          *(v62 + 2) = v112;
          *v62 = v63;
          ++v116;
        }
      }
    }

    mlir::ShapedType::getShape(v110);
    if (v113)
    {
      LODWORD(v111) = 2;
      *(&v111 + 1) = v64;
      if (v116 >= v117)
      {
        if (v115 > &v111 || v115 + 24 * v116 <= &v111)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v65 = v115 + 24 * v116;
      v66 = v111;
      *(v65 + 2) = v112;
      *v65 = v66;
      ++v116;
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
    if (v113)
    {
      mlir::InFlightDiagnostic::report(&v113);
    }

    if (v124 != 1)
    {
      goto LABEL_72;
    }

    if (v123 != &v124)
    {
      free(v123);
    }

    v67 = __p;
    if (__p)
    {
      v68 = v122;
      v69 = __p;
      if (v122 != __p)
      {
        do
        {
          v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
        }

        while (v68 != v67);
        v69 = __p;
      }

      v122 = v67;
      operator delete(v69);
    }

    v70 = v119;
    if (v119)
    {
      v71 = v120;
      v72 = v119;
      if (v120 != v119)
      {
        do
        {
          v74 = *--v71;
          v73 = v74;
          *v71 = 0;
          if (v74)
          {
            MEMORY[0x259C63150](v73, 0x1000C8077774924);
          }
        }

        while (v71 != v70);
LABEL_147:
        v72 = v119;
        goto LABEL_148;
      }

      goto LABEL_148;
    }

    goto LABEL_149;
  }

  LOBYTE(v104) = 0;
  v105 = 0;
  v42 = 0;
  if ((mlir::mps::getAxis(*(*this + 3), 1, *(*(*this + 9) + 120), v39, &v104) & 1) == 0)
  {
    goto LABEL_72;
  }

  if (v105 != 1)
  {
    goto LABEL_71;
  }

  v53 = mlir::ShapedType::getShape(v110);
  v54 = v104;
  if (mlir::verifyCompatibleShape(Shape, v104, v53, v104) & 1) != 0 && (mlir::verifyCompatibleShape(&Shape[v54 + 1], v39 + ~v54, &v53[v54 + 1], v39 + ~v54))
  {
    goto LABEL_71;
  }

  v106[0] = "invalid input tensor shapes, updates shape and ";
  v107 = 259;
  mlir::OpState::emitOpError(this, v106, &v113);
  if (v113)
  {
    LODWORD(v111) = 3;
    *(&v111 + 1) = "data shape must match except at axis";
    v112 = 36;
    if (v116 >= v117)
    {
      if (v115 > &v111 || v115 + 24 * v116 <= &v111)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v102 = v115 + 24 * v116;
    v103 = v111;
    *(v102 + 2) = v112;
    *v102 = v103;
    ++v116;
  }

  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  if (v113)
  {
    mlir::InFlightDiagnostic::report(&v113);
  }

  if (v124 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v114);
  }

LABEL_72:
  if (v125 != v127)
  {
    free(v125);
  }

  return v42;
}

uint64_t mlir::mps::gatherNDRankInferrable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  result = mlir::ShapedType::hasRank(v8);
  if (result)
  {
    result = mlir::ShapedType::hasRank(v7);
    if (result)
    {
      Shape = mlir::ShapedType::getShape(v7);
      return *(Shape + 8 * v6 - 8) != 0x8000000000000000;
    }
  }

  return result;
}

uint64_t mlir::mps::GatherNDOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, mlir::MLIRContext *a11)
{
  v116 = *MEMORY[0x277D85DE8];
  v112 = a4;
  v113 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v104 = a6;
  v105[0] = 0;
  v106 = 0;
  v107 = v16;
  v17 = a5;
  v108 = a9;
  v109 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v104);
    if (v106 == 1)
    {
      v106 = 0;
    }

    mlir::OperationName::OperationName(v105, "mps.gather_nd", 13, Context);
    v106 = 1;
    v17 = v113;
  }

  v110 = a4;
  v111 = a5;
  if (v17 >= 2)
  {
    v19 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::GatherNDOpAdaptor::verify(&v104, v19))
    {
      v20 = mlir::ValueRange::dereference_iterator(&v112, 0);
      v96 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
      v97 = v21;
      v22 = mlir::ValueRange::dereference_iterator(&v112, 1);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v95[0] = v23;
      v95[1] = v24;
      if (!v96 || !v23)
      {
        v33 = mlir::ValueRange::dereference_iterator(&v112, 0);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
        if (!ElementTypeOrSelf)
        {
          ElementTypeOrSelf = mlir::Float32Type::get(this, v35);
        }

        v28 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
        goto LABEL_21;
      }

      v101 = v96;
      v102 = v97;
      v114 = v23;
      v115 = v24;
      if (!mlir::ShapedType::hasRank(&v101) || (mlir::ShapedType::hasRank(&v114) & 1) == 0 || (Shape = mlir::ShapedType::getShape(&v114), *(Shape + 8 * v26 - 8) == 0x8000000000000000))
      {
        v27 = mlir::getElementTypeOrSelf(v96);
        v101 = mlir::UnrankedTensorType::get(v27);
        v28 = mlir::TensorType::operator mlir::ShapedType(&v101);
LABEL_21:
        v36 = *(a11 + 2);
        if (v36 >= *(a11 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a11 + 8 * v36) = v28;
        ++*(a11 + 2);
        return 1;
      }

      v114 = *(&v107 + 1);
      mlir::IntegerAttr::getValue(&v114, &v101);
      if (v102 > 0x40)
      {
        v38 = *v101;
        MEMORY[0x259C63150]();
      }

      else
      {
        v38 = v101;
      }

      v101 = v103;
      v102 = 0x400000000;
      v39 = mlir::ShapedType::getShape(&v96);
      v41 = v40;
      v42 = mlir::ShapedType::getShape(v95);
      v100 = v38;
      v44 = v41 - v38;
      if (v41 <= v38 || (v45 = v43 - v38, v43 <= v38))
      {
        if (!mlir::emitOptionalError<char const(&)[27],unsigned int &,char const(&)[47]>(a2, a3, "invalid batch dimensions: ", &v100, ", must be less than ranks of all input tensors"))
        {
LABEL_48:
          v62 = mlir::ValueRange::dereference_iterator(&v112, 0);
          v63 = mlir::getElementTypeOrSelf(v62);
          v64 = 0;
          v28 = 0;
          goto LABEL_67;
        }

LABEL_66:
        v37 = v101;
        v90 = v102;
        v91 = mlir::getElementTypeOrSelf(v96);
        v114 = mlir::RankedTensorType::get(v37, v90, v91, 0);
        v28 = mlir::TensorType::operator mlir::ShapedType(&v114);
        v64 = 1;
LABEL_67:
        if (v101 != v103)
        {
          v92 = v28;
          free(v101);
          v28 = v92;
        }

        if ((v64 & 1) == 0)
        {
          return v37;
        }

        goto LABEL_21;
      }

      v46 = v42;
      v99 = v41 - v38;
      v47 = v42 + 8 * v43;
      v49 = v47 - 8;
      v48 = *(v47 - 8);
      v98 = v48;
      if (v48 == 0x8000000000000000)
      {
        v50 = mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a2, a3, "inner-most dimension of indices array ", "cannot be inferred.");
        goto LABEL_47;
      }

      if (v48 > v44)
      {
        v50 = mlir::emitOptionalError<char const(&)[38],char const(&)[49],char const(&)[41],unsigned long &,char const(&)[4],long long &>(a2, a3, "invalid input tensor shapes: rank of ", "updates tensor must be greater than or equal to ", "inner-most dimension of indices tensor, ", &v99, " < ", &v98);
        goto LABEL_47;
      }

      v51 = ~v48 + v44 + v45;
      if (v51 < 1)
      {
        v50 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "Rank of destination array must be greater than 0");
LABEL_47:
        if (!v50)
        {
          goto LABEL_48;
        }

        goto LABEL_66;
      }

      v52 = v51 + v38;
      if (v51 + v38 != v102)
      {
        if (v52 >= v102)
        {
          v93 = v43;
          v94 = v47;
          if (v52 > HIDWORD(v102))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v52 != v102)
          {
            v53 = v48;
            v54 = v43 - v38;
            bzero(v101 + 8 * v102, 8 * (v52 - v102));
            v45 = v54;
            v48 = v53;
            v43 = v93;
            v47 = v94;
          }
        }

        LODWORD(v102) = v52;
        v52 = v52;
      }

      v55 = v101;
      v56 = v101 + 8 * v52;
      if (v48 != v44)
      {
        v57 = &v39[v41];
        v58 = v41;
        v59 = 8 * v41 - 8 * (v48 + v38) - 8;
        if (v59 >= 0x58)
        {
          v65 = v101 + 8 * v52;
          v60 = &v39[v41];
          v61 = v65;
          if ((&v39[v58] - v65) >= 0x20)
          {
            v66 = (v59 >> 3) + 1;
            v67 = 8 * (v66 & 0x3FFFFFFFFFFFFFFCLL);
            v60 = &v57[v67 / 0xFFFFFFFFFFFFFFF8];
            v61 = &v56[-v67];
            v68 = &v39[v58 - 2];
            v69 = v65 - 16;
            v70 = v66 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v71 = *v68;
              *(v69 - 1) = *(v68 - 1);
              *v69 = v71;
              v68 -= 2;
              v69 -= 32;
              v70 -= 4;
            }

            while (v70);
            if (v66 == (v66 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          v60 = &v39[v41];
          v61 = v101 + 8 * v52;
        }

        v72 = &v57[v48 - v44];
        v73 = v61 - 8;
        do
        {
          v74 = *--v60;
          *v73 = v74;
          v73 -= 8;
        }

        while (v60 != v72);
      }

LABEL_56:
      v75 = 8 * v38;
      if (8 * v45 != 8)
      {
        v76 = &v56[8 * v48 + -8 * v44];
        v77 = v43;
        v78 = 8 * v43 - v75 - 16;
        if (v78 < 0xC8)
        {
          goto LABEL_62;
        }

        if ((&(&v46[v41])[v77] - &v55[v52 + v48 + v38] - 8) < 0x20)
        {
          goto LABEL_62;
        }

        v79 = (v78 >> 3) + 1;
        v80 = 8 * (v79 & 0x3FFFFFFFFFFFFFFCLL);
        v49 -= v80;
        v76 -= v80;
        v81 = &v46[v77 - 5];
        v82 = (v55 + 8 * v52 + 8 * v48 + v75 - 8 * v41 - 16);
        v83 = v79 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v85 = *v81;
          v84 = v81[1];
          v81 -= 2;
          *(v82 - 1) = v85;
          *v82 = v84;
          v82 -= 2;
          v83 -= 4;
        }

        while (v83);
        if (v79 != (v79 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_62:
          v86 = (v76 - 8);
          do
          {
            v87 = *(v49 - 8);
            v49 -= 8;
            *v86-- = v87;
          }

          while (v49 != v47 - 8 * v45);
        }
      }

      if (v38)
      {
        do
        {
          v88 = *v46++;
          v114 = v88;
          v89 = *v39++;
          v115 = v89;
          *v55++ = mlir::mps::mergeDynamicDims(&v114, 2);
          v75 -= 8;
        }

        while (v75);
      }

      goto LABEL_66;
    }
  }

  v29 = mlir::Float32Type::get(this, a2);
  v30 = mlir::UnrankedTensorType::get(v29);
  v31 = *(a11 + 2);
  if (v31 >= *(a11 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 2);
  return 1;
}

uint64_t mlir::mps::GatherNDOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v19[0] = *(a1 + 32);
    v21[0] = mlir::IntegerAttr::getType(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.gather_nd' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
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
    v19[0] = "'mps.gather_nd' op requires attribute 'batch_dims'";
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

uint64_t *mlir::mps::detail::GatherNDOpGenericAdaptorBase::getBatchDims(mlir::mps::detail::GatherNDOpGenericAdaptorBase *this)
{
  v5 = *(this + 4);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::GatherNDOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::GatherNDOp::verify(mlir::Operation **this)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v59[0] = v2;
  v59[1] = v13;
  v14 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
LABEL_29:
    v57 = v14;
    v58 = 0;
    v25 = 0x8000000000000000;
    v56 = 0x8000000000000000;
    if (mlir::ShapedType::hasRank(v59))
    {
      goto LABEL_30;
    }

LABEL_33:
    Shape = 0;
    if (mlir::ShapedType::hasRank(&v57))
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v32 = v19[1];
  v57 = v14;
  v58 = v32;
  v25 = 0x8000000000000000;
  v56 = 0x8000000000000000;
  if (!mlir::ShapedType::hasRank(v59))
  {
    goto LABEL_33;
  }

LABEL_30:
  Shape = mlir::ShapedType::getShape(v59);
  v25 = v27;
  if (mlir::ShapedType::hasRank(&v57))
  {
LABEL_31:
    v28 = mlir::ShapedType::getShape(&v57);
    v30 = v29;
    v31 = v28[v29 - 1];
    v56 = v31;
    goto LABEL_35;
  }

LABEL_34:
  v28 = 0;
  v31 = 0x8000000000000000;
  v30 = 0x8000000000000000;
LABEL_35:
  v54[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  mlir::IntegerAttr::getValue(v54, &v62);
  if (v63 > 0x40)
  {
    v33 = *v62;
    MEMORY[0x259C63150]();
    if (v25 == 0x8000000000000000)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v33 = v62;
    if (v25 == 0x8000000000000000)
    {
      goto LABEL_40;
    }
  }

  if (v25 <= v33)
  {
LABEL_42:
    v54[0] = "invalid batch dimensions: ";
    v55 = 259;
    mlir::OpState::emitOpError(this, v54, &v62);
    if (v62)
    {
      LODWORD(v60) = 5;
      *(&v60 + 1) = v33;
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v64 + 24 * v65;
      v35 = v60;
      *(v34 + 2) = v61;
      *v34 = v35;
      v36 = ++v65;
      if (v62)
      {
        LODWORD(v60) = 3;
        *(&v60 + 1) = ", must be less than ranks of all input tensors";
        v61 = 46;
        if (v36 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v36 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v37 = v64 + 24 * v65;
        v38 = v60;
        *(v37 + 2) = v61;
        *v37 = v38;
        ++v65;
      }
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v73 == 1)
    {
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

      v43 = v68;
      if (v68)
      {
        v44 = v69;
        v45 = v68;
        if (v69 != v68)
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
          v45 = v68;
        }

        v69 = v43;
        operator delete(v45);
      }

      if (v64 != &v67)
      {
        free(v64);
      }
    }

    return v39;
  }

LABEL_40:
  if (v30 != 0x8000000000000000 && v33 >= v30)
  {
    goto LABEL_42;
  }

  v39 = 1;
  if (v25 != 0x8000000000000000 && v30 != 0x8000000000000000)
  {
    if (mlir::verifyCompatibleShape(Shape, v33, v28, v33))
    {
      if (v31 == 0x8000000000000000)
      {
        return v39;
      }

      if (v25 - v33 >= v31)
      {
        if ((~(v33 + v31) + v25 + v30) > 0)
        {
          return 1;
        }

        v54[0] = "Rank of destination array must be greater than 0";
        v55 = 259;
        mlir::OpState::emitOpError(this, v54, &v62);
        v52 = &v62;
      }

      else
      {
        v54[0] = "invalid input tensor shapes: rank of updates tensor ";
        v55 = 259;
        mlir::OpState::emitOpError(this, v54, &v62);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v62, "must be greater than or equal to inner-most dimension of ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v48, "indices tensor, ");
        *&v60 = v25 - v33;
        mlir::InFlightDiagnostic::operator<<<unsigned long &>(v49, &v60);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, " < ");
        mlir::InFlightDiagnostic::operator<<<long long &>(v51, &v56);
      }
    }

    else
    {
      v54[0] = "invalid input tensor shapes: input tensor shapes ";
      v55 = 259;
      mlir::OpState::emitOpError(this, v54, &v62);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v62, "must match along batch dimensions");
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
  }

  return v39;
}

uint64_t *mlir::mps::GatherNDOp::getBatchDims(mlir::mps::GatherNDOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::GatherOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65[2] = *MEMORY[0x277D85DE8];
  v65[0] = a4;
  v65[1] = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0uLL;
  }

  v57 = a6;
  v58[0] = 0;
  v59 = 0;
  v60 = v16;
  v61 = a9;
  v62 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v57);
    if (v59 == 1)
    {
      v59 = 0;
    }

    mlir::OperationName::OperationName(v58, "mps.gather", 10, Context);
    v59 = 1;
  }

  v63 = a4;
  v64 = a5;
  if (a5 >= 3 && (v18 = mlir::UnknownLoc::get(this, a2), (mlir::mps::GatherOpAdaptor::verify(&v57, v18) & 1) != 0))
  {
    v19 = mlir::ValueRange::dereference_iterator(v65, 0);
    v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
    v53[0] = v20;
    v53[1] = v21;
    v22 = mlir::ValueRange::dereference_iterator(v65, 1);
    v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
    v52[0] = v23;
    v52[1] = v24;
    if (v20 && v23)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v20);
      v26 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      if (mlir::ShapedType::hasRank(v53) && mlir::ShapedType::hasRank(v52))
      {
        mlir::ShapedType::getShape(v53);
        v28 = v27;
        LOBYTE(v50) = 0;
        v51 = 0;
        v29 = mlir::ValueRange::dereference_iterator(v65, 2);
        if ((mlir::mps::getAxis(a2, a3, v29, v28, &v50) & 1) == 0)
        {
          return 0;
        }

        if (v51 == 1)
        {
          BatchDims = mlir::mps::detail::GatherOpGenericAdaptorBase::getBatchDims(&v57);
          v54 = v56;
          v55 = 0x400000000;
          Shape = mlir::ShapedType::getShape(v53);
          v33 = v32;
          v34 = mlir::ShapedType::getShape(v52);
          if (v36)
          {
            v37 = v54;
            v38 = v55;
            v39 = mlir::getElementTypeOrSelf(v53[0]);
            v26 = mlir::RankedTensorType::get(v37, v38, v39, 0);
          }

          if (v54 != v56)
          {
            free(v54);
          }

          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }
      }

      v40 = *(a11 + 8);
      if (v40 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v40) = v26;
    }

    else
    {
      v45 = mlir::ValueRange::dereference_iterator(v65, 0);
      v46 = mlir::getElementTypeOrSelf(v45);
      if (!v46)
      {
        v46 = mlir::Float32Type::get(this, v47);
      }

      v48 = mlir::UnrankedTensorType::get(v46);
      v49 = *(a11 + 8);
      if (v49 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v49) = v48;
    }
  }

  else
  {
    v41 = mlir::Float32Type::get(this, a2);
    v42 = mlir::UnrankedTensorType::get(v41);
    v43 = *(a11 + 8);
    if (v43 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v43) = v42;
  }

  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::GatherOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v19[0] = *(a1 + 32);
    v21[0] = mlir::IntegerAttr::getType(v19);
    if (mlir::Type::isUnsignedInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'mps.gather' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
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
    v19[0] = "'mps.gather' op requires attribute 'batch_dims'";
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

uint64_t *mlir::mps::detail::GatherOpGenericAdaptorBase::getBatchDims(mlir::mps::detail::GatherOpGenericAdaptorBase *this)
{
  v5 = *(this + 4);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::anonymous namespace::inferGatherShape(uint64_t a1, char a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v73[2] = *MEMORY[0x277D85DE8];
  v72 = a7;
  v71 = a8;
  v9 = a8;
  v10 = a4 - a8;
  if (a4 <= a8 || a6 < a8)
  {
    return mlir::emitOptionalError<char const(&)[27],unsigned int &,char const(&)[47]>(a1, a2, "invalid batch dimensions: ", &v71, ", must be less than ranks of all input tensors");
  }

  v13 = a7 - a8;
  if (a7 < a8)
  {
    return mlir::emitOptionalError<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(a1, a2, "Axis must be greater than or equal to ", "batch dimensions, ", &v72, " < ", &v71);
  }

  v14 = a6 - a8;
  v15 = v10 - 1;
  if ((v10 - 1 + v14) >= 0)
  {
    v18 = v15 + a6;
    v19 = *(a9 + 8);
    if (v15 + a6 != v19)
    {
      if (v15 + a6 >= v19)
      {
        v69 = a7;
        v70 = a4;
        v68 = a8;
        if (v18 > *(a9 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v18 != v19)
        {
          v20 = a6;
          bzero((*a9 + 8 * v19), 8 * (v18 - v19));
          a7 = v69;
          a4 = v70;
          a6 = v20;
          a8 = v68;
        }
      }

      *(a9 + 8) = v18;
      v19 = v18;
    }

    v21 = &a3[a4];
    v22 = *a9;
    v23 = *a9 + 8 * v19;
    v24 = v13 - v15;
    if (v13 != v15)
    {
      v25 = 8 * a4 - 16;
      v26 = v25 - 8 * a7;
      if (v26 < 0x58)
      {
        v27 = &a3[a4];
        v28 = &v22[v19];
LABEL_26:
        v35 = v28 - 1;
        do
        {
          v36 = *(v27 - 1);
          v27 -= 8;
          *v35-- = v36;
        }

        while (v27 != &v21[v24]);
        goto LABEL_28;
      }

      v27 = &a3[a4];
      v28 = &v22[v19];
      if (v27 - v22 - 8 * v19 < 0x20)
      {
        goto LABEL_26;
      }

      v29 = (v26 >> 3) + 1;
      v30 = 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
      v27 = &v21[v30 / 0xFFFFFFFFFFFFFFF8];
      v28 = (v23 - v30);
      v31 = (a3 + v25);
      v32 = &v22[v19 - 2];
      v33 = v29 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v34 = *v31;
        *(v32 - 1) = *(v31 - 1);
        *v32 = v34;
        v31 -= 2;
        v32 -= 4;
        v33 -= 4;
      }

      while (v33);
      if (v29 != (v29 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    if (a6 != v9)
    {
      v37 = &a5[a6];
      v38 = v23 + 8 * v24;
      v39 = a6;
      v40 = 8 * a6 - 8 * v9 - 8;
      if (v40 >= 0x98)
      {
        v42 = v19 + a7;
        v41 = &a5[a6];
        if (&a5[v39 - 1] + 8 * a4 - &v22[v42] >= 0x20)
        {
          v43 = (v40 >> 3) + 1;
          v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFFCLL);
          v41 = &v37[v44 / 0xFFFFFFFFFFFFFFF8];
          v38 -= v44;
          v45 = &a5[v39 - 2];
          v46 = (v22 + v42 * 8 - 8 * a4 - 8);
          v47 = v43 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v48 = *v45;
            *(v46 - 1) = *(v45 - 1);
            *v46 = v48;
            v45 -= 4;
            v46 -= 2;
            v47 -= 4;
          }

          while (v47);
          if (v43 == (v43 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v41 = &a5[a6];
      }

      v49 = &v37[-v14];
      v50 = (v38 - 8);
      do
      {
        v51 = *--v41;
        *v50-- = v51;
      }

      while (v41 != v49);
    }

LABEL_37:
    if (a7 != v9)
    {
      v52 = v13 - (v10 + v14);
      v53 = v23 + 8 * v52 + 8;
      v54 = &v21[v13 - v10];
      v55 = 8 * a7 - 8 * v9 - 8;
      if (v55 < 0x88)
      {
        goto LABEL_43;
      }

      if ((&a3[a6 + a4] - &v22[v19 + v9] - 8) < 0x20)
      {
        goto LABEL_43;
      }

      v56 = (v55 >> 3) + 1;
      v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
      v54 = (v54 - v57);
      v53 -= v57;
      v58 = &a3[a7 - 2];
      v59 = &v22[v19 - 1 + v52];
      v60 = v56 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v61 = *v58;
        *(v59 - 1) = *(v58 - 1);
        *v59 = v61;
        v58 -= 4;
        v59 -= 4;
        v60 -= 4;
      }

      while (v60);
      if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_43:
        v62 = &v21[-v10];
        v63 = (v53 - 8);
        do
        {
          v64 = *--v54;
          *v63-- = v64;
        }

        while (v54 != v62);
      }
    }

    if (a8)
    {
      v65 = 8 * v9;
      do
      {
        v66 = *a5++;
        v73[0] = v66;
        v67 = *a3++;
        v73[1] = v67;
        *v22++ = mlir::mps::mergeDynamicDims(v73, 2);
        v65 -= 8;
      }

      while (v65);
    }

    return 1;
  }

  return mlir::emitOptionalError<char const(&)[30],char const(&)[27]>(a1, a2, "Rank of destination array must be greater than or equal ", "to 0");
}

uint64_t mlir::mps::GatherOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::mps::GatherAlongAxisOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v56[0] = a4;
  v56[1] = a5;
  if (a5 == 3)
  {
    v13 = mlir::ValueRange::dereference_iterator(v56, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v50 = v16;
    v17 = *(mlir::ValueRange::dereference_iterator(v56, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(*v17 + 136);
    if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = 0;
    }

    v49 = v17;
    if (v16)
    {
      v20 = v17 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return mlir::emitOptionalError<char const(&)[39]>(a2, a3, "cannot gather_along_axis a non-tensor type");
    }

    if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
      v26 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      if (!mlir::TensorType::hasRank(&v49))
      {
        goto LABEL_31;
      }
    }

    else
    {
      Shape = mlir::TensorType::getShape(&v49);
      v24 = v23;
      v25 = mlir::getElementTypeOrSelf(v16);
      v26 = mlir::RankedTensorType::get(Shape, v24, v25, 0);
      if (!mlir::TensorType::hasRank(&v49))
      {
        goto LABEL_31;
      }
    }

    v28 = mlir::TensorType::getShape(&v49);
    if (!v29)
    {
LABEL_50:
      v46 = *(a11 + 8);
      if (v46 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v46) = v26;
      ++*(a11 + 8);
      return 1;
    }

    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_50;
      }
    }

LABEL_31:
    if (mlir::TensorType::hasRank(&v50))
    {
      v32 = mlir::TensorType::getShape(&v50);
      v33 = v31;
      __dst = v55;
      v54 = 4;
      if (v31 >= 5)
      {
        v53 = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v31)
      {
        memset_pattern16(v55, &unk_25736EFD0, 8 * v31);
      }

      v53 = v33;
      LOBYTE(v47) = 0;
      v48 = 0;
      v34 = mlir::ValueRange::dereference_iterator(v56, 2);
      Axis = mlir::mps::getAxis(a2, a3, v34, v33, &v47);
      if (Axis)
      {
        if (v48 == 1)
        {
          if (mlir::TensorType::hasRank(&v49))
          {
            llvm::SmallVectorImpl<long long>::resize(&__dst, v33);
            v36 = mlir::TensorType::getShape(&v49);
            v37 = mlir::TensorType::getShape(&v49);
            v39 = (v37 + 8 * v38);
            if (v39 != v36)
            {
              memmove(__dst, v36, v39 - v36);
            }
          }

          if (v33 >= 1)
          {
            v40 = 0;
            v41 = v47;
            do
            {
              if (v41 != v40)
              {
                v51[0] = *(__dst + v40);
                v51[1] = *(v32 + 8 * v40);
                v42 = mlir::mps::mergeDynamicDims(v51, 2);
                *(__dst + v40) = v42;
              }

              ++v40;
            }

            while (v33 != v40);
          }
        }

        v43 = __dst;
        v44 = v53;
        v45 = mlir::getElementTypeOrSelf(v50);
        v26 = mlir::RankedTensorType::get(v43, v44, v45, 0);
      }

      if (__dst != v55)
      {
        free(__dst);
      }

      if ((Axis & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_50;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::GatherAlongAxisOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::GatherAlongAxisOp::verify(mlir::Operation **this)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    mlir::TensorType::operator mlir::ShapedType();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v64[0] = v2;
  v64[1] = v13;
  v14 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::TensorType::operator mlir::ShapedType();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 != &v17[2 * v18] && *v19 == v16)
  {
    v37 = v19[1];
    v62 = v14;
    v63 = v37;
    if (!mlir::ShapedType::hasRank(v64))
    {
      return 1;
    }

    goto LABEL_30;
  }

LABEL_29:
  v62 = v14;
  v63 = 0;
  if (!mlir::ShapedType::hasRank(v64))
  {
    return 1;
  }

LABEL_30:
  mlir::ShapedType::getShape(v64);
  v26 = v25;
  if (!mlir::ShapedType::hasRank(&v62))
  {
    return 1;
  }

  mlir::ShapedType::getShape(&v62);
  if (v27 == v26)
  {
    LOBYTE(v58) = 0;
    v59 = 0;
    Axis = mlir::mps::getAxis(*(*this + 3), 1, *(*(*this + 9) + 88), v26, &v58);
    result = 0;
    if ((Axis & 1) == 0)
    {
      return result;
    }

    if (v59 == 1)
    {
      Shape = mlir::ShapedType::getShape(v64);
      v31 = mlir::ShapedType::getShape(&v62);
      v32 = v58;
      if ((mlir::verifyCompatibleShape(Shape, v58, v31, v58) & 1) == 0 || (mlir::verifyCompatibleShape(&Shape[v32 + 1], v26 + ~v32, &v31[v32 + 1], v26 + ~v32) & 1) == 0)
      {
        v60[0] = "invalid input tensor shapes, updates shape and ";
        v61 = 259;
        mlir::OpState::emitOpError(this, v60, &v67);
        if (v67)
        {
          LODWORD(v65) = 3;
          *(&v65 + 1) = "indices shape must match except at axis";
          v66 = 39;
          if (v70 >= v71)
          {
            if (v69 > &v65 || v69 + 24 * v70 <= &v65)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v69 + 24 * v70;
          v34 = v65;
          *(v33 + 2) = v66;
          *v33 = v34;
          ++v70;
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
        if (v67)
        {
          v35 = result;
          mlir::InFlightDiagnostic::report(&v67);
          result = v35;
        }

        if (v78 == 1)
        {
          v36 = result;
          mlir::Diagnostic::~Diagnostic(&v68);
          return v36;
        }

        return result;
      }
    }

    return 1;
  }

  v60[0] = "invalid input tensor shapes, updates rank and ";
  v61 = 259;
  mlir::OpState::emitOpError(this, v60, &v67);
  if (v67)
  {
    LODWORD(v65) = 3;
    *(&v65 + 1) = "indices rank must be equal, ";
    v66 = 28;
    if (v70 >= v71)
    {
      if (v69 > &v65 || v69 + 24 * v70 <= &v65)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v38 = v69 + 24 * v70;
    v39 = v65;
    *(v38 + 2) = v66;
    *v38 = v39;
    v40 = ++v70;
    if (v67)
    {
      LODWORD(v65) = 2;
      *(&v65 + 1) = v26;
      if (v40 >= v71)
      {
        if (v69 > &v65 || v69 + 24 * v40 <= &v65)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v69 + 24 * v70;
      v42 = v65;
      *(v41 + 2) = v66;
      *v41 = v42;
      v43 = ++v70;
      if (v67)
      {
        LODWORD(v65) = 3;
        *(&v65 + 1) = " != ";
        v66 = 4;
        if (v43 >= v71)
        {
          if (v69 > &v65 || v69 + 24 * v43 <= &v65)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v69 + 24 * v70;
        v45 = v65;
        *(v44 + 2) = v66;
        *v44 = v45;
        ++v70;
      }
    }
  }

  mlir::ShapedType::getShape(&v62);
  if (v67)
  {
    LODWORD(v65) = 2;
    *(&v65 + 1) = v46;
    if (v70 >= v71)
    {
      if (v69 > &v65 || v69 + 24 * v70 <= &v65)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v47 = v69 + 24 * v70;
    v48 = v65;
    *(v47 + 2) = v66;
    *v47 = v48;
    ++v70;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  v49 = result;
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
    result = v49;
  }

  if (v78 == 1)
  {
    if (v77 != &v78)
    {
      free(v77);
      result = v49;
    }

    v50 = __p;
    if (__p)
    {
      v51 = v76;
      v52 = __p;
      if (v76 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v76 = v50;
      operator delete(v52);
      result = v49;
    }

    v53 = v73;
    if (v73)
    {
      v54 = v74;
      v55 = v73;
      if (v74 != v73)
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
        v55 = v73;
      }

      v74 = v53;
      operator delete(v55);
      result = v49;
    }

    if (v69 != &v72)
    {
      free(v69);
      return v49;
    }
  }

  return result;
}