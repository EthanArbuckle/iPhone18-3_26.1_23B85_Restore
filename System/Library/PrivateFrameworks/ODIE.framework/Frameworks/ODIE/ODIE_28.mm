uint64_t mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verify(mlir::ODIE::Compiler::CoreML::MaxPool3dOp *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v51 = 3;
  v3 = *(v2 + 72);
  v4 = v3[7];
  v5 = v3[15];
  v6 = v3[19];
  v7 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v8 = v7[2];
    if (!v8)
    {
LABEL_29:
      v58 = 257;
      mlir::Operation::emitError(&v59, v2, &v55);
      if (v59)
      {
        mlir::Diagnostic::operator<<<8ul>(&v60, "expect ");
      }

      v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v59, &v51);
      if (!*v24)
      {
        goto LABEL_38;
      }

      v25 = " elements in strides";
LABEL_37:
      mlir::Diagnostic::operator<<<21ul>(v24 + 8, v25);
LABEL_38:
      v1 = (*(v24 + 200) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
LABEL_39:
      v26 = *MEMORY[0x277D85DE8];
      return v1;
    }

    v9 = 0;
    v10 = v7[1];
    while (v10[v9] != 0x8000000000000000)
    {
      if (v8 == ++v9)
      {
        if (v8 != 1 || *v10 != 3)
        {
          goto LABEL_29;
        }

        break;
      }
    }
  }

  v11 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_33:
    v58 = 257;
    mlir::Operation::emitError(&v59, v2, &v55);
    if (v59)
    {
      mlir::Diagnostic::operator<<<8ul>(&v60, "expect ");
    }

    v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v59, &v51);
    if (!*v24)
    {
      goto LABEL_38;
    }

    v25 = " elements in padding";
    goto LABEL_37;
  }

  v13 = 0;
  v14 = v11[1];
  while (v14[v13] != 0x8000000000000000)
  {
    if (v12 == ++v13)
    {
      if (v12 != 1 || *v14 != 3)
      {
        goto LABEL_33;
      }

      break;
    }
  }

LABEL_15:
  v15 = *(v6 + 8);
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v15 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_40:
    v58 = 257;
    mlir::Operation::emitError(&v59, v2, &v55);
    if (v59)
    {
      mlir::Diagnostic::operator<<<8ul>(&v60, "expect ");
    }

    v28 = mlir::InFlightDiagnostic::operator<<<int &>(&v59, &v51);
    v24 = v28;
    if (*v28)
    {
      mlir::Diagnostic::operator<<<22ul>((v28 + 1), " elements in dilation");
    }

    goto LABEL_38;
  }

  v18 = 0;
  v19 = *(v16 + 8);
  while (v19[v18] != 0x8000000000000000)
  {
    if (v17 == ++v18)
    {
      if (v17 != 1 || *v19 != 3)
      {
        goto LABEL_40;
      }

      break;
    }
  }

LABEL_22:
  v59 = 0;
  v60 = 0;
  v55 = &v59;
  if ((~v15 & 7) != 0)
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_60;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = v22 + 120;
    if (v22 == -120)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v23 = v20 + 16 * v21 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v23))
  {
    mlir::ODIE::Compiler::extract1DIntVector<int>(v6, &v59);
    if ((v62 & 1) == 0)
    {
      goto LABEL_112;
    }

    v55 = v57;
    v56 = 0xC00000000;
    if (!v60 || (llvm::SmallVectorImpl<int>::operator=(&v55, &v59), (v62 & 1) != 0))
    {
      if (v59 != v61)
      {
        free(v59);
      }
    }

    v29 = v55;
    if (*v55 < 1 || *(v55 + 1) <= 0)
    {
      v54 = 257;
      mlir::Operation::emitError(&v59, v2, v52);
      if (v59)
      {
        mlir::Diagnostic::operator<<<21ul>(&v60, "dilation must be > 0");
      }

      v1 = (v63 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
      v30 = 0;
      v29 = v55;
    }

    else
    {
      v30 = 1;
    }

    if (v29 != v57)
    {
      free(v29);
    }

    if (!v30)
    {
      goto LABEL_39;
    }
  }

LABEL_60:
  v59 = 0;
  v60 = 0;
  v55 = &v59;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v31 = v5;
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    goto LABEL_111;
  }

  v32 = *(v31 + 8) & 7;
  if (v32 == 6)
  {
    v33 = v31 + 24 * *(v31 + 16);
    v34 = v33 + 120;
    if (v33 == -120)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v34 = v31 + 16 * v32 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v34))
  {
LABEL_111:
    v1 = 1;
    goto LABEL_39;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v59);
  if (v62)
  {
    v55 = v57;
    v56 = 0xC00000000;
    if (!v60 || (llvm::SmallVectorImpl<int>::operator=(&v55, &v59), (v62 & 1) != 0))
    {
      if (v59 != v61)
      {
        free(v59);
      }
    }

    v35 = v51;
    v36 = v55;
    do
    {
      v37 = *v36++;
      if (v37 < 0)
      {
        v54 = 257;
        mlir::Operation::emitError(&v59, v2, v52);
        if (v59)
        {
          mlir::Diagnostic::operator<<<21ul>(&v60, "padding must be >= 0");
        }

        v42 = 1;
        v1 = (v63 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
        goto LABEL_108;
      }

      --v35;
    }

    while (v35);
    v59 = 0;
    v60 = 0;
    v52[0] = &v59;
    if ((~*(v4 + 8) & 7) != 0)
    {
      v38 = v4;
    }

    else
    {
      v38 = 0;
    }

    if (!v38)
    {
      goto LABEL_107;
    }

    v39 = *(v38 + 8) & 7;
    if (v39 == 6)
    {
      v40 = v38 + 24 * *(v38 + 16);
      v41 = v40 + 120;
      if (v40 == -120)
      {
LABEL_107:
        v42 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      v41 = v38 + 16 * v39 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v52, v41))
    {
      goto LABEL_107;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v59);
    if ((v62 & 1) == 0)
    {
      goto LABEL_112;
    }

    v52[0] = v53;
    v52[1] = 0xC00000000;
    if (!v60 || (llvm::SmallVectorImpl<int>::operator=(v52, &v59), (v62 & 1) != 0))
    {
      if (v59 != v61)
      {
        free(v59);
      }
    }

    v43 = v52[0];
    if (*v55 <= *v52[0] / 2)
    {
      v45 = 1;
      while (v51 != v45)
      {
        v46 = *(v55 + v45);
        v47 = *(v52[0] + v45++);
        if (v46 > v47 / 2)
        {
          v44 = v45 - 1 < v51;
          goto LABEL_100;
        }
      }

      v44 = 0;
      v42 = 0;
    }

    else
    {
      v44 = 1;
LABEL_100:
      v50 = 257;
      mlir::Operation::emitError(&v59, v2, v49);
      if (v59)
      {
        mlir::Diagnostic::operator<<<35ul>(&v60, "padding must be <= kernel_size / 2");
      }

      v42 = 1;
      v1 = (v63 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
      v43 = v52[0];
    }

    if (v43 != v53)
    {
      free(v43);
    }

    if (!v44)
    {
      goto LABEL_107;
    }

LABEL_108:
    if (v55 != v57)
    {
      free(v55);
    }

    if (v42)
    {
      goto LABEL_39;
    }

    goto LABEL_111;
  }

LABEL_112:
  v48 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(v48);
}

uint64_t mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(mlir::ODIE::Compiler::CoreML::AvgPool2dOp *this)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v45 = 2;
  v2 = *(v1 + 72);
  v3 = v2[7];
  v4 = v2[15];
  v5 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = v5[2];
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = v5[1];
    v8 = 8 * v6;
    v9 = 8 * v6;
    v10 = v7;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        v11 = 1;
        do
        {
          v12 = *v7++;
          v11 *= v12;
          v8 -= 8;
        }

        while (v8);
        if (v11 != 2)
        {
          goto LABEL_32;
        }

        break;
      }
    }
  }

  v13 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v14 = v13[2];
    if (!v14)
    {
      goto LABEL_32;
    }

    v15 = v13[1];
    v16 = 8 * v14;
    v17 = 8 * v14;
    v18 = v15;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        v19 = 1;
        do
        {
          v20 = *v15++;
          v19 *= v20;
          v16 -= 8;
        }

        while (v16);
        if (v19 != 2)
        {
          goto LABEL_32;
        }

        break;
      }
    }
  }

  v21 = *(v4 + 8);
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v21 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_25;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_32:
    v4 = 0;
LABEL_73:
    v40 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v24 = *(v22 + 8);
  v25 = 8 * v23;
  v26 = 8 * v23;
  v27 = v24;
  while (*v27 != 0x8000000000000000)
  {
    ++v27;
    v26 -= 8;
    if (!v26)
    {
      v28 = 1;
      do
      {
        v29 = *v24++;
        v28 *= v29;
        v25 -= 8;
      }

      while (v25);
      if (v28 != 2)
      {
        goto LABEL_32;
      }

      break;
    }
  }

LABEL_25:
  v48 = 0;
  v49 = 0;
  v53[0] = &v48;
  if ((~v21 & 7) != 0)
  {
    v30 = v4;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    goto LABEL_72;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v53, v33))
  {
LABEL_72:
    v4 = 1;
    goto LABEL_73;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v48);
  if (v51)
  {
    v53[0] = v54;
    v53[1] = 0xC00000000;
    if (!v49 || (llvm::SmallVectorImpl<int>::operator=(v53, &v48), (v51 & 1) != 0))
    {
      if (v48 != v50)
      {
        free(v48);
      }
    }

    if ((*v53[0] & 0x80000000) != 0 || (*(v53[0] + 1) & 0x80000000) != 0)
    {
      v47[8] = 257;
      mlir::Operation::emitError(&v48, v1, v46);
      if (v48)
      {
        mlir::Diagnostic::operator<<<21ul>(&v49, "padding must be >= 0");
      }

      v4 = (v52 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
      v38 = 0;
      goto LABEL_69;
    }

    v48 = 0;
    v49 = 0;
    v46[0] = &v48;
    if ((~*(v3 + 8) & 7) != 0)
    {
      v34 = v3;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_68;
    }

    v35 = *(v34 + 8) & 7;
    if (v35 == 6)
    {
      v36 = v34 + 24 * *(v34 + 16);
      v37 = v36 + 120;
      if (v36 == -120)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v37 = v34 + 16 * v35 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v46, v37))
    {
LABEL_68:
      v38 = 1;
      goto LABEL_69;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &v48);
    if (v51)
    {
      v46[0] = v47;
      v46[1] = 0xC00000000;
      if (!v49 || (llvm::SmallVectorImpl<int>::operator=(v46, &v48), (v51 & 1) != 0))
      {
        if (v48 != v50)
        {
          free(v48);
        }
      }

      v39 = v46[0];
      if (*v53[0] <= *v46[0] / 2 && *(v53[0] + 1) <= *(v46[0] + 1) / 2)
      {
        v38 = 1;
      }

      else
      {
        v44 = 257;
        mlir::Operation::emitError(&v48, v1, v43);
        if (v48)
        {
          mlir::Diagnostic::operator<<<34ul>(&v49, "padding must be <= kernel_size / ");
        }

        v4 = (*(mlir::InFlightDiagnostic::operator<<<int &>(&v48, &v45) + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
        v38 = 0;
        v39 = v46[0];
      }

      if (v39 != v47)
      {
        free(v39);
      }

      if (v38)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (v53[0] != v54)
      {
        free(v53[0]);
      }

      if (!v38)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  v42 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(v42);
}

uint64_t mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(mlir::ODIE::Compiler::CoreML::AvgPool3dOp *this)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v45 = 3;
  v2 = *(v1 + 72);
  v3 = v2[7];
  v4 = v2[15];
  v5 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = v5[2];
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = v5[1];
    v8 = 8 * v6;
    v9 = 8 * v6;
    v10 = v7;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        v11 = 1;
        do
        {
          v12 = *v7++;
          v11 *= v12;
          v8 -= 8;
        }

        while (v8);
        if (v11 != 3)
        {
          goto LABEL_32;
        }

        break;
      }
    }
  }

  v13 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v14 = v13[2];
    if (!v14)
    {
      goto LABEL_32;
    }

    v15 = v13[1];
    v16 = 8 * v14;
    v17 = 8 * v14;
    v18 = v15;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        v19 = 1;
        do
        {
          v20 = *v15++;
          v19 *= v20;
          v16 -= 8;
        }

        while (v16);
        if (v19 != 3)
        {
          goto LABEL_32;
        }

        break;
      }
    }
  }

  v21 = *(v4 + 8);
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v21 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_25;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_32:
    v4 = 0;
LABEL_73:
    v40 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v24 = *(v22 + 8);
  v25 = 8 * v23;
  v26 = 8 * v23;
  v27 = v24;
  while (*v27 != 0x8000000000000000)
  {
    ++v27;
    v26 -= 8;
    if (!v26)
    {
      v28 = 1;
      do
      {
        v29 = *v24++;
        v28 *= v29;
        v25 -= 8;
      }

      while (v25);
      if (v28 != 3)
      {
        goto LABEL_32;
      }

      break;
    }
  }

LABEL_25:
  v48 = 0;
  v49 = 0;
  v53[0] = &v48;
  if ((~v21 & 7) != 0)
  {
    v30 = v4;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    goto LABEL_72;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v53, v33))
  {
LABEL_72:
    v4 = 1;
    goto LABEL_73;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v48);
  if (v51)
  {
    v53[0] = v54;
    v53[1] = 0xC00000000;
    if (!v49 || (llvm::SmallVectorImpl<int>::operator=(v53, &v48), (v51 & 1) != 0))
    {
      if (v48 != v50)
      {
        free(v48);
      }
    }

    if ((*v53[0] & 0x80000000) != 0 || (*(v53[0] + 1) & 0x80000000) != 0)
    {
      v47[8] = 257;
      mlir::Operation::emitError(&v48, v1, v46);
      if (v48)
      {
        mlir::Diagnostic::operator<<<21ul>(&v49, "padding must be >= 0");
      }

      v4 = (v52 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
      v38 = 0;
      goto LABEL_69;
    }

    v48 = 0;
    v49 = 0;
    v46[0] = &v48;
    if ((~*(v3 + 8) & 7) != 0)
    {
      v34 = v3;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_68;
    }

    v35 = *(v34 + 8) & 7;
    if (v35 == 6)
    {
      v36 = v34 + 24 * *(v34 + 16);
      v37 = v36 + 120;
      if (v36 == -120)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v37 = v34 + 16 * v35 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v46, v37))
    {
LABEL_68:
      v38 = 1;
      goto LABEL_69;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &v48);
    if (v51)
    {
      v46[0] = v47;
      v46[1] = 0xC00000000;
      if (!v49 || (llvm::SmallVectorImpl<int>::operator=(v46, &v48), (v51 & 1) != 0))
      {
        if (v48 != v50)
        {
          free(v48);
        }
      }

      v39 = v46[0];
      if (*v53[0] <= *v46[0] / 3 && *(v53[0] + 1) <= *(v46[0] + 1) / 3)
      {
        v38 = 1;
      }

      else
      {
        v44 = 257;
        mlir::Operation::emitError(&v48, v1, v43);
        if (v48)
        {
          mlir::Diagnostic::operator<<<34ul>(&v49, "padding must be <= kernel_size / ");
        }

        v4 = (*(mlir::InFlightDiagnostic::operator<<<int &>(&v48, &v45) + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
        v38 = 0;
        v39 = v46[0];
      }

      if (v39 != v47)
      {
        free(v39);
      }

      if (v38)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (v53[0] != v54)
      {
        free(v53[0]);
      }

      if (!v38)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  v42 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(v42);
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v3 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == v2)
  {
    v4 = 1;
  }

  else
  {
    v14 = 257;
    mlir::Operation::emitError(&v17, v1, v13);
    if (v17)
    {
      mlir::Diagnostic::operator<<<28ul>(v18, "output type expected to be ");
      if (v17)
      {
        v15 = 4;
        v16 = v2;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
        v6 = v19 + 24 * v20;
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++v20;
        if (v17)
        {
          mlir::Diagnostic::operator<<<7ul>(v18, ", got ");
          if (v17)
          {
            v15 = 4;
            v16 = v3;
            v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
            v9 = v19 + 24 * v20;
            v10 = *v8;
            *(v9 + 16) = *(v8 + 16);
            *v9 = v10;
            ++v20;
          }
        }
      }
    }

    v4 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::getInputIntents(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src[0] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  __src[1] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v7, __src, &v7);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::ReadHandleOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src[0] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 0);
  __src[1] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v7, __src, &v7);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verify(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(v1 + 72);
  v3 = *((*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v4 == v3)
  {
    v5 = 1;
  }

  else
  {
    v15 = 257;
    mlir::Operation::emitError(&v18, v1, v14);
    if (v18)
    {
      mlir::Diagnostic::operator<<<26ul>(v19, "data type expected to be ");
      if (v18)
      {
        v16 = 4;
        v17 = v3;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
        v7 = v20 + 24 * v21;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v21;
        if (v18)
        {
          mlir::Diagnostic::operator<<<7ul>(v19, ", got ");
          if (v18)
          {
            v16 = 4;
            v17 = v4;
            v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v10 = v20 + 24 * v21;
            v11 = *v9;
            *(v10 + 16) = *(v9 + 16);
            *v10 = v11;
            ++v21;
          }
        }
      }
    }

    v5 = (v22 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::getInputIntents(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v6[0] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v6[1] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 3uLL);
  v6[2] = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v7, v6, &v7);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v6, &v5, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::CreateTokenOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::CreateTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 0);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v6, &v5, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verify(mlir::ODIE::Compiler::CoreML::JoinTokenOp **this)
{
  v22[6] = *MEMORY[0x277D85DE8];
  __src = *(mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 0) + 24);
  v20 = v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v20, &__src, v19);
  v2 = 1;
  ODSOperands = mlir::ODIE::Compiler::CoreML::JoinTokenOp::getODSOperands(*this, 1u);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v20, ODSOperands, 0, ODSOperands, v4);
  if (v21)
  {
    v5 = v20;
    v6 = 8 * v21;
    while (1)
    {
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v5);
      if (HandleForToken)
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    if (!v21)
    {
LABEL_14:
      v2 = 1;
      goto LABEL_15;
    }

    v8 = HandleForToken;
    v9 = v20;
    v10 = 8 * v21;
    while (1)
    {
      v11 = *v9;
      v12 = mlir::ODIE::Compiler::getHandleForToken(*v9);
      if (v12 && v12 != v8)
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v16 = v12;
    v17[16] = 257;
    mlir::Operation::emitError(&__src, *this, v17);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v19, "expected input token '");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v19, v11);
        if (__src)
        {
          mlir::Diagnostic::operator<<<27ul>(v19, "' to represent state for '");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v19, v8);
            if (__src)
            {
              mlir::Diagnostic::operator<<<30ul>(v19, "', found that it represents '");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v19, v16);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<2ul>(v19, "'");
                }
              }
            }
          }
        }
      }
    }

    v2 = (v19[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

LABEL_15:
  if (v20 != v22)
  {
    free(v20);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::getInputIntents(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v4 = *(*this + 36);
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v7, v4, v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 1uLL);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v6, &v5, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  v3 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = v3[1];
      v6 = 8 * v4;
      while (*v5 != 0x8000000000000000)
      {
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v8 = v7[2];
        if (v8)
        {
          v9 = v7[1];
          v10 = 8 * v8;
          while (*v9 != 0x8000000000000000)
          {
            ++v9;
            v10 -= 8;
            if (!v10)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (v3 == v7)
          {
            return v2 | 4;
          }
        }
      }
    }
  }

  v11 = *(v1 + 56);
  v24 = 0;
  *&v25 = &v24;
  if ((~*(v11 + 8) & 7) == 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16);
    v14 = v13 + 120;
    if (v13 == -120)
    {
      return 0;
    }
  }

  else
  {
    v14 = v11 + 16 * v12 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, v14))
  {
    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v24, &v25);
    v23 = v25;
    if (v3[2] >= 1)
    {
      v15 = 0;
      v16 = v26;
      v17 = v27;
      while (1)
      {
        v25 = v23;
        v26 = v16 + v15;
        v27 = v17;
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v25, &v21);
        if (v22 > 0x40)
        {
          v19 = *v21;
          MEMORY[0x25F891010]();
          if (v19 != 1)
          {
            return 0;
          }
        }

        else
        {
          if (v22)
          {
            v18 = (v21 << -v22) >> -v22 == 1;
          }

          else
          {
            v18 = 0;
          }

          if (!v18)
          {
            return 0;
          }
        }

        if (v3[2] <= ++v15)
        {
          return v2 | 4;
        }
      }
    }

    return v2 | 4;
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verify(mlir::ODIE::Compiler::CoreML::TileOp *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *this;
  if (**((*(*(*(v1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 8) == *((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    v2 = 1;
  }

  else
  {
    v5[16] = 257;
    mlir::Operation::emitError(&v6, v1, v5);
    if (v6)
    {
      mlir::Diagnostic::operator<<<55ul>(v7, "number of elements in dims must be equal to input rank");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2 && v12)
      {
        v12 = v12[3];
      }
    }

    else
    {
      v12 = *v12;
    }

    v14 = (v12[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v14[1]);
      return 1;
    }

    else
    {
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::verify(mlir::ODIE::Compiler::CoreML::Conv2dOp *this)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v23 = 2;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_23:
      v22 = 257;
      mlir::Operation::emitError(&v24, v1, v21);
      if (v24)
      {
        mlir::Diagnostic::operator<<<8ul>(v25, "expect ");
      }

      v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v24, &v23);
      if (!*v16)
      {
        goto LABEL_32;
      }

      v17 = " elements in strides";
LABEL_31:
      mlir::Diagnostic::operator<<<21ul>(v16 + 8, v17);
      goto LABEL_32;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 2)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_27:
    v22 = 257;
    mlir::Operation::emitError(&v24, v1, v21);
    if (v24)
    {
      mlir::Diagnostic::operator<<<8ul>(v25, "expect ");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v24, &v23);
    if (!*v16)
    {
      goto LABEL_32;
    }

    v17 = " elements in padding";
    goto LABEL_31;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 2)
      {
        goto LABEL_27;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (v12)
    {
      v13 = 0;
      v14 = v11[1];
      while (v14[v13] != 0x8000000000000000)
      {
        if (v12 == ++v13)
        {
          if (v12 != 1 || *v14 != 2)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_22;
    }

LABEL_34:
    v22 = 257;
    mlir::Operation::emitError(&v24, v1, v21);
    if (v24)
    {
      mlir::Diagnostic::operator<<<8ul>(v25, "expect ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<int &>(&v24, &v23);
    v16 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<22ul>((v20 + 1), " elements in dilation");
    }

LABEL_32:
    v15 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    goto LABEL_33;
  }

LABEL_22:
  v15 = 1;
LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv3dOp::verify(mlir::ODIE::Compiler::CoreML::Conv3dOp *this)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v23 = 3;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_23:
      v22 = 257;
      mlir::Operation::emitError(&v24, v1, v21);
      if (v24)
      {
        mlir::Diagnostic::operator<<<8ul>(v25, "expect ");
      }

      v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v24, &v23);
      if (!*v16)
      {
        goto LABEL_32;
      }

      v17 = " elements in strides";
LABEL_31:
      mlir::Diagnostic::operator<<<21ul>(v16 + 8, v17);
      goto LABEL_32;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 3)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_27:
    v22 = 257;
    mlir::Operation::emitError(&v24, v1, v21);
    if (v24)
    {
      mlir::Diagnostic::operator<<<8ul>(v25, "expect ");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<int &>(&v24, &v23);
    if (!*v16)
    {
      goto LABEL_32;
    }

    v17 = " elements in padding";
    goto LABEL_31;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 3)
      {
        goto LABEL_27;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (v12)
    {
      v13 = 0;
      v14 = v11[1];
      while (v14[v13] != 0x8000000000000000)
      {
        if (v12 == ++v13)
        {
          if (v12 != 1 || *v14 != 3)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      goto LABEL_22;
    }

LABEL_34:
    v22 = 257;
    mlir::Operation::emitError(&v24, v1, v21);
    if (v24)
    {
      mlir::Diagnostic::operator<<<8ul>(v25, "expect ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<int &>(&v24, &v23);
    v16 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<22ul>((v20 + 1), " elements in dilation");
    }

LABEL_32:
    v15 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    goto LABEL_33;
  }

LABEL_22:
  v15 = 1;
LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp::verify(mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp *this)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v37 = 2;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_37:
      v40 = 257;
      mlir::Operation::emitError(&v42, v1, v38);
      if (v42)
      {
        mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
      }

      v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
      if (!*v21)
      {
        goto LABEL_46;
      }

      v22 = " elements in strides";
LABEL_45:
      mlir::Diagnostic::operator<<<21ul>(v21 + 8, v22);
LABEL_46:
      v23 = *(v21 + 200);
LABEL_47:
      v20 = v23 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
      goto LABEL_48;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 2)
        {
          goto LABEL_37;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_41:
    v40 = 257;
    mlir::Operation::emitError(&v42, v1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
    }

    v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
    if (!*v21)
    {
      goto LABEL_46;
    }

    v22 = " elements in padding";
    goto LABEL_45;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 2)
      {
        goto LABEL_41;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (!v12)
    {
LABEL_49:
      v40 = 257;
      mlir::Operation::emitError(&v42, v1, v38);
      if (v42)
      {
        mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
      }

      v26 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
      v21 = v26;
      if (*v26)
      {
        mlir::Diagnostic::operator<<<22ul>((v26 + 1), " elements in dilation");
      }

      goto LABEL_46;
    }

    v13 = 0;
    v14 = v11[1];
    while (v14[v13] != 0x8000000000000000)
    {
      if (v12 == ++v13)
      {
        if (v12 != 1 || *v14 != 2)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

  v15 = (*(v2[23] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v16 = v15[2];
  if (!v16)
  {
LABEL_53:
    v40 = 257;
    mlir::Operation::emitError(&v42, v1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
    }

    v35[0] = v37 + 2;
    v27 = mlir::InFlightDiagnostic::operator<<<int>(&v42, v35);
    v21 = v27;
    if (*v27)
    {
      mlir::Diagnostic::operator<<<26ul>((v27 + 1), " elements in output_shape");
    }

    goto LABEL_46;
  }

  v17 = 0;
  v18 = v15[1];
  while (v18[v17] != 0x8000000000000000)
  {
    if (v16 == ++v17)
    {
      if (v16 != 1 || *v18 != 4)
      {
        goto LABEL_53;
      }

      break;
    }
  }

LABEL_29:
  v19 = *(*((*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8);
  if (v19 == 0x8000000000000000 || (mlir::ODIE::Compiler::extract1DIntVector<int>(v2[27], v38), v41 != 1))
  {
LABEL_59:
    if (*(v1 + 36))
    {
      v28 = v1 - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v29)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || ((v30 = **((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8), v31 = *v29[1], v31 == 0x8000000000000000) ? (v32 = 0) : (v32 = v31), v30 != 0x8000000000000000 ? (v33 = v31 == 0x8000000000000000) : (v30 = 0, v33 = 1), !v33 ? (v34 = v30 == v32) : (v34 = 1), v34))
    {
      v20 = 1;
      goto LABEL_48;
    }

    v40 = 257;
    mlir::Operation::emitError(&v42, v1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<61ul>(v43, "First dimension should match for input and output in the op.");
    }

    v23 = v44;
    goto LABEL_47;
  }

  if (!(v19 % *v38[0]))
  {
    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    goto LABEL_59;
  }

  v36 = 257;
  mlir::Operation::emitError(&v42, v1, v35);
  if (v42)
  {
    mlir::Diagnostic::operator<<<77ul>(v43, "Number of input channels should be divisible by groupSize in conv_transpose.");
  }

  v20 = v44 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  if ((v41 & 1) != 0 && v38[0] != v39)
  {
    free(v38[0]);
  }

LABEL_48:
  v24 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp::verify(mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp *this)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v37 = 3;
  v2 = *(v1 + 72);
  v3 = (*(v2[11] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v3[2];
    if (!v4)
    {
LABEL_37:
      v40 = 257;
      mlir::Operation::emitError(&v42, v1, v38);
      if (v42)
      {
        mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
      }

      v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
      if (!*v21)
      {
        goto LABEL_46;
      }

      v22 = " elements in strides";
LABEL_45:
      mlir::Diagnostic::operator<<<21ul>(v21 + 8, v22);
LABEL_46:
      v23 = *(v21 + 200);
LABEL_47:
      v20 = v23 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
      goto LABEL_48;
    }

    v5 = 0;
    v6 = v3[1];
    while (v6[v5] != 0x8000000000000000)
    {
      if (v4 == ++v5)
      {
        if (v4 != 1 || *v6 != 3)
        {
          goto LABEL_37;
        }

        break;
      }
    }
  }

  v7 = (*(v2[15] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v8 = v7[2];
  if (!v8)
  {
LABEL_41:
    v40 = 257;
    mlir::Operation::emitError(&v42, v1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
    }

    v21 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
    if (!*v21)
    {
      goto LABEL_46;
    }

    v22 = " elements in padding";
    goto LABEL_45;
  }

  v9 = 0;
  v10 = v7[1];
  while (v10[v9] != 0x8000000000000000)
  {
    if (v8 == ++v9)
    {
      if (v8 != 1 || *v10 != 3)
      {
        goto LABEL_41;
      }

      break;
    }
  }

LABEL_15:
  v11 = (*(v2[19] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = v11[2];
    if (!v12)
    {
LABEL_49:
      v40 = 257;
      mlir::Operation::emitError(&v42, v1, v38);
      if (v42)
      {
        mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
      }

      v26 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
      v21 = v26;
      if (*v26)
      {
        mlir::Diagnostic::operator<<<22ul>((v26 + 1), " elements in dilation");
      }

      goto LABEL_46;
    }

    v13 = 0;
    v14 = v11[1];
    while (v14[v13] != 0x8000000000000000)
    {
      if (v12 == ++v13)
      {
        if (v12 != 1 || *v14 != 3)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

  v15 = (*(v2[23] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v16 = v15[2];
  if (!v16)
  {
LABEL_53:
    v40 = 257;
    mlir::Operation::emitError(&v42, v1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<8ul>(v43, "expect ");
    }

    v35[0] = v37 + 2;
    v27 = mlir::InFlightDiagnostic::operator<<<int>(&v42, v35);
    v21 = v27;
    if (*v27)
    {
      mlir::Diagnostic::operator<<<26ul>((v27 + 1), " elements in output_shape");
    }

    goto LABEL_46;
  }

  v17 = 0;
  v18 = v15[1];
  while (v18[v17] != 0x8000000000000000)
  {
    if (v16 == ++v17)
    {
      if (v16 != 1 || *v18 != 5)
      {
        goto LABEL_53;
      }

      break;
    }
  }

LABEL_29:
  v19 = *(*((*(v2[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8);
  if (v19 == 0x8000000000000000 || (mlir::ODIE::Compiler::extract1DIntVector<int>(v2[27], v38), v41 != 1))
  {
LABEL_59:
    if (*(v1 + 36))
    {
      v28 = v1 - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = (*(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v29)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || ((v30 = **((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8), v31 = *v29[1], v31 == 0x8000000000000000) ? (v32 = 0) : (v32 = v31), v30 != 0x8000000000000000 ? (v33 = v31 == 0x8000000000000000) : (v30 = 0, v33 = 1), !v33 ? (v34 = v30 == v32) : (v34 = 1), v34))
    {
      v20 = 1;
      goto LABEL_48;
    }

    v40 = 257;
    mlir::Operation::emitError(&v42, v1, v38);
    if (v42)
    {
      mlir::Diagnostic::operator<<<61ul>(v43, "First dimension should match for input and output in the op.");
    }

    v23 = v44;
    goto LABEL_47;
  }

  if (!(v19 % *v38[0]))
  {
    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    goto LABEL_59;
  }

  v36 = 257;
  mlir::Operation::emitError(&v42, v1, v35);
  if (v42)
  {
    mlir::Diagnostic::operator<<<77ul>(v43, "Number of input channels should be divisible by groupSize in conv_transpose.");
  }

  v20 = v44 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  if ((v41 & 1) != 0 && v38[0] != v39)
  {
    free(v38[0]);
  }

LABEL_48:
  v24 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::inferInnerType(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *((*(v6 + 8))(v6, a1) + 8);
  v8 = *v6;
  v11[0] = 0;
  v11[16] = 0;
  v9 = v8(v6, a1, v11, v7);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2, v9);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v11)
  {
    if ((a4 & 6) == 2 && v11)
    {
      v11 = v11[3];
    }
  }

  else
  {
    v11 = *v11;
  }

  v12 = (v11[1] & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = *v12;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  }

  else
  {
    v15 = 0;
  }

  v20[0] = (*(v15 + 8))(v15, v12);
  v16 = mlir::detail::TypeUniquer::get<mlir::ComplexType,mlir::Type &>(*(**v20[0] + 32), v20);
  v17 = *v15;
  LOBYTE(v20[0]) = 0;
  v21 = 0;
  v18 = v17(v15, v12, v20, v16);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v18);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::AddOp *this, mlir::OpBuilder *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v34 = xmmword_25D0A0500;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v34, 2))
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v33 = v6;
    v7 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v32 = v8;
    v9 = *(*this + 24);
    v10 = *(PartsOfComplex - 1);
    v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v9 + 32));
    *&v34 = v9;
    *(&v34 + 1) = v11;
    v35 = v37;
    v36 = 0x400000000;
    v38 = v40;
    v39 = 0x400000000;
    v41 = v43;
    v42 = 0x400000000;
    v44 = 4;
    v45 = &v47;
    v46 = 0x100000000;
    v48 = &v50;
    v49 = 0x100000000;
    v51 = 0;
    v52 = 0;
    v53 = &mlir::detail::TypeIDResolver<void,void>::id;
    v54 = 0;
    v55 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v11, &v34, v10 & 0xFFFFFFFFFFFFFFF8, (PartsOfComplex - 16), (v7 - 16));
    v12 = mlir::Operation::create(&v34);
    mlir::OpBuilder::insert(a2, v12);
    v13 = *(*(v12 + 6) + 16);
    mlir::OperationState::~OperationState(&v34);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v31 = v14;
    v15 = *(*this + 24);
    v16 = *(PartsOfComplex - 1);
    v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v15 + 32));
    *&v34 = v15;
    *(&v34 + 1) = v17;
    v35 = v37;
    v36 = 0x400000000;
    v38 = v40;
    v39 = 0x400000000;
    v41 = v43;
    v42 = 0x400000000;
    v44 = 4;
    v45 = &v47;
    v46 = 0x100000000;
    v48 = &v50;
    v49 = 0x100000000;
    v51 = 0;
    v52 = 0;
    v53 = &mlir::detail::TypeIDResolver<void,void>::id;
    v54 = 0;
    v55 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v17, &v34, v16 & 0xFFFFFFFFFFFFFFF8, v33 - 16, v32 - 16);
    v18 = mlir::Operation::create(&v34);
    mlir::OpBuilder::insert(a2, v18);
    v19 = *(*(v18 + 6) + 16);
    mlir::OperationState::~OperationState(&v34);
    if (v19 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v18 = 0;
    }

    v20 = *(*this + 24);
    v21 = *(*this - 8);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v20 + 32));
    *&v34 = v20;
    *(&v34 + 1) = Complex;
    v35 = v37;
    v36 = 0x400000000;
    v38 = v40;
    v39 = 0x400000000;
    v41 = v43;
    v42 = 0x400000000;
    v44 = 4;
    v45 = &v47;
    v46 = 0x100000000;
    v48 = &v50;
    v49 = 0x100000000;
    v51 = 0;
    v52 = 0;
    v53 = &mlir::detail::TypeIDResolver<void,void>::id;
    v54 = 0;
    v55 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v34, v21 & 0xFFFFFFFFFFFFFFF8, (v31 - 16), (v18 - 16));
    v23 = mlir::Operation::create(&v34);
    mlir::OpBuilder::insert(a2, v23);
    v24 = *(*(v23 + 6) + 16);
    mlir::OperationState::~OperationState(&v34);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = (*this - 16);
    v27 = *(v25 + 9);
    v28 = v25 - 16;
    if (!v27)
    {
      v28 = 0;
    }

    *&v34 = v28;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v26, &v34);
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::MulOp *this, mlir::OpBuilder *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v60 = xmmword_25D0A0500;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v60, 2))
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v54 = v5;
    v6 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v52 = v7;
    v8 = *(*this + 24);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v8 + 32));
    *&v60 = v8;
    *(&v60 + 1) = v9;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v9, &v60, (PartsOfComplex - 16), (v6 - 16));
    v10 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v10);
    v11 = *(*(v10 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v58 = v12;
    v13 = *(*this + 24);
    v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v13 + 32));
    *&v60 = v13;
    *(&v60 + 1) = v14;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v51 = v54 - 16;
    v15 = v52 - 16;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v14, &v60, v54 - 16, v52 - 16);
    v16 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v16);
    v17 = *(*(v16 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v53 = v18;
    v19 = *(*this + 24);
    v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v19 + 32));
    *&v60 = v19;
    *(&v60 + 1) = v20;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v20, &v60, (PartsOfComplex - 16), v15);
    v21 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v21);
    v22 = *(*(v21 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v55 = v23;
    v24 = *(*this + 24);
    v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a2, *(**v24 + 32));
    *&v60 = v24;
    *(&v60 + 1) = v25;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::MulOp::build(v25, &v60, v51, (v6 - 16));
    v26 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v26);
    v27 = *(*(v26 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v27 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v56 = v28;
    v29 = *(*this + 24);
    v30 = *(PartsOfComplex - 1);
    v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a2, *(**v29 + 32));
    *&v60 = v29;
    *(&v60 + 1) = v31;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::SubOp::build(v31, &v60, v30 & 0xFFFFFFFFFFFFFFF8, (v58 - 16), (v53 - 16));
    v32 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v32);
    v33 = *(*(v32 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v33 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v59 = v34;
    v35 = *(*this + 24);
    v36 = *(PartsOfComplex - 1);
    v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v35 + 32));
    *&v60 = v35;
    *(&v60 + 1) = v37;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v37, &v60, v36 & 0xFFFFFFFFFFFFFFF8, (v55 - 16), (v56 - 16));
    v38 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v38);
    v39 = *(*(v38 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v39 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v38 = 0;
    }

    v40 = *(*this + 24);
    v41 = *(*this - 8);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v40 + 32));
    *&v60 = v40;
    *(&v60 + 1) = Complex;
    v61 = v63;
    v62 = 0x400000000;
    v64 = v66;
    v65 = 0x400000000;
    v67 = v69;
    v68 = 0x400000000;
    v70 = 4;
    v71 = &v73;
    v72 = 0x100000000;
    v74 = &v76;
    v75 = 0x100000000;
    v77 = 0;
    v78 = 0;
    v79 = &mlir::detail::TypeIDResolver<void,void>::id;
    v80 = 0;
    v81 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v60, v41 & 0xFFFFFFFFFFFFFFF8, (v59 - 16), (v38 - 16));
    v43 = mlir::Operation::create(&v60);
    mlir::OpBuilder::insert(a2, v43);
    v44 = *(*(v43 + 6) + 16);
    mlir::OperationState::~OperationState(&v60);
    if (v44 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v46 = (*this - 16);
    v47 = *(v45 + 9);
    v48 = v45 - 16;
    if (!v47)
    {
      v48 = 0;
    }

    *&v60 = v48;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v46, &v60);
  }

  v49 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::BatchMatmulOp *this, mlir::OpBuilder *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v69 = xmmword_25D0A0500;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v69, 2))
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v61 = v5;
    v6 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v59 = v7;
    v8 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = *v8;
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = *((*(v11 + 8))(v11, v8) + 8);
    v13 = *v11;
    LOBYTE(v69) = 0;
    LOBYTE(v70) = 0;
    v14 = v13(v11, v8, &v69, v12);
    v15 = *(*this + 24);
    v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v15 + 32));
    *&v69 = v15;
    *(&v69 + 1) = v16;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v58 = (PartsOfComplex - 16);
    v63 = (v6 - 16);
    v90 = 0;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v16, &v69, v14, (PartsOfComplex - 16), (v6 - 16));
    v17 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v17);
    v68 = v8;
    v18 = *(*(v17 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v65 = v19;
    v20 = *(*this + 24);
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v20 + 32));
    *&v69 = v20;
    *(&v69 + 1) = v21;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v57 = v61 - 16;
    v22 = v59 - 16;
    v90 = 0;
    v23 = v14;
    v56 = v14;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v21, &v69, v14, v61 - 16, v59 - 16);
    v24 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v24);
    v25 = *(*(v24 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v60 = v26;
    v27 = *(*this + 24);
    v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v27 + 32));
    *&v69 = v27;
    *(&v69 + 1) = v28;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v90 = 0;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v28, &v69, v23, v58, v22);
    v29 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v29);
    v30 = *(*(v29 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v30 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    v62 = v31;
    v32 = *(*this + 24);
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(a2, *(**v32 + 32));
    *&v69 = v32;
    *(&v69 + 1) = v33;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v90 = 0;
    mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(v33, &v69, v56, v57, v63);
    v34 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v64 = v36;
    v37 = *(*this + 24);
    v38 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a2, *(**v37 + 32));
    *&v69 = v37;
    *(&v69 + 1) = v38;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v90 = 0;
    mlir::ODIE::Compiler::CoreML::SubOp::build(v38, &v69, v56, (v65 - 16), (v60 - 16));
    v39 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v39);
    v40 = *(*(v39 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v40 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    v66 = v41;
    v42 = *(*this + 24);
    v43 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a2, *(**v42 + 32));
    *&v69 = v42;
    *(&v69 + 1) = v43;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v90 = 0;
    mlir::ODIE::Compiler::CoreML::AddOp::build(v43, &v69, v56, (v62 - 16), (v64 - 16));
    v44 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v44);
    v45 = *(*(v44 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v45 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
    {
      v44 = 0;
    }

    v46 = *(*this + 24);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v46 + 32));
    *&v69 = v46;
    *(&v69 + 1) = Complex;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = v78;
    v77 = 0x400000000;
    v79 = 4;
    v80 = &v82;
    v81 = 0x100000000;
    v83 = &v85;
    v84 = 0x100000000;
    v86 = 0;
    v87 = 0;
    v88 = &mlir::detail::TypeIDResolver<void,void>::id;
    v89 = 0;
    v90 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v69, v68, (v66 - 16), (v44 - 16));
    v48 = mlir::Operation::create(&v69);
    mlir::OpBuilder::insert(a2, v48);
    v49 = *(*(v48 + 6) + 16);
    mlir::OperationState::~OperationState(&v69);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = (*this - 16);
    v52 = *(v50 + 9);
    v53 = v50 - 16;
    if (!v52)
    {
      v53 = 0;
    }

    *&v69 = v53;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v51, &v69);
  }

  v54 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v53[0] = a4;
  v53[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = mlir::ValueRange::dereference_iterator(v53, 1);
    v17 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = *MEMORY[0x277D85DE8];
      v19 = "x must be a ranked tensor";
LABEL_15:

      return mlir::emitOptionalError<char const(&)[26]>(a2, a3, v19);
    }

    v20 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = *MEMORY[0x277D85DE8];
      v19 = "y must be a ranked tensor";
      goto LABEL_15;
    }

    v22 = v17[2];
    if (v22 != v20[2])
    {
      v25 = *MEMORY[0x277D85DE8];
      v24 = "x, y must have the same rank";
      goto LABEL_22;
    }

    if (v22 <= 1)
    {
      v23 = *MEMORY[0x277D85DE8];
      v24 = "x, y must be at least rank 2";
LABEL_22:

      return mlir::emitOptionalError<char const(&)[29]>(a2, a3, v24);
    }

    v26 = v17[1];
    v50 = v52;
    v51 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v50, v26, &v26[8 * v22]);
    v27 = v20[1];
    v28 = &v27[8 * v20[2]];
    v47 = v49;
    v48 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v47, v27, v28);
    v44 = v46;
    v45 = 0x600000000;
    v29 = v22 - 2;
    if (v29)
    {
      v30 = 0;
      while (1)
      {
        v31 = *(v50 + v30);
        if (v31 != 0x8000000000000000)
        {
          v32 = *(v47 + v30);
          if (v32 != 0x8000000000000000 && v31 != v32)
          {
            break;
          }
        }

        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v44, v31);
        if (v29 == ++v30)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      v34 = *(v50 + v51 - 1);
      if (v34 == 0x8000000000000000 || ((v35 = *(v47 + v29), v35 != 0x8000000000000000) ? (v36 = v34 == v35) : (v36 = 1), v36))
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v44, *(v50 + v29));
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v44, *(v47 + v48 - 1));
        v37 = v17[3];
        *&v43 = v44;
        *(&v43 + 1) = v45;
        v41 = 0;
        v42 = v37;
        v38 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v37 + 32), &v43, &v42, &v41);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v38);
        v39 = 1;
LABEL_42:
        if (v44 != v46)
        {
          free(v44);
        }

        if (v47 != v49)
        {
          free(v47);
        }

        if (v50 != v52)
        {
          free(v50);
        }

        v40 = *MEMORY[0x277D85DE8];
        return v39;
      }
    }

    v39 = mlir::emitOptionalError<char const(&)[28]>(a2, a3, "x, y has incompatible shape");
    goto LABEL_42;
  }

  v14 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[48]>(a2, a3, "expected exactly 2 operands for batch_matmul op");
}

BOOL mlir::emitOptionalError<char const(&)[26]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<26ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::BatchMatmulOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[43]>(a2, a3, "fails to infer the type of batch_matmul op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::NonZeroOp::verify(mlir::ODIE::Compiler::CoreML::NonZeroOp *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *this;
  if (*(v1 + 36))
  {
    v2 = v1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  v6 = *((*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v17 = v6;
  if (v4 != 2)
  {
    v16 = 257;
    mlir::Operation::emitError(&v18, v1, v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<44ul>(v19, "expect output of rank 2 for coreml.non_zero");
    }

    v10 = v19[192];
    goto LABEL_15;
  }

  v8 = *(v5 + 8);
  v7 = (v5 + 8);
  if (v6 != v8)
  {
    v16 = 257;
    mlir::Operation::emitError(&v18, v1, v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<36ul>(v19, "coreml.non_zero output.shape[1] is ");
    }

    v11 = mlir::InFlightDiagnostic::operator<<<long long const&>(&v18, v7);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<35ul>((v11 + 1), " which is not equal to input rank ");
    }

    v10 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v12, &v17) + 200);
LABEL_15:
    v9 = v10 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    goto LABEL_16;
  }

  v9 = 1;
LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53[5] = *MEMORY[0x277D85DE8];
  v43[0] = a4;
  v43[1] = a5;
  if (a5 == 3)
  {
    v12 = mlir::ValueRange::dereference_iterator(v43, 1);
    v47 = 0uLL;
    v39 = &v47;
    if ((~*(v12 + 8) & 7) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_69;
    }

    v14 = v12;
    v15 = *(v13 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v13 + 24 * *(v13 + 16);
      v17 = v16 + 120;
      if (v16 == -120)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v17 = v13 + 16 * v15 + 16;
    }

    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v17);
    if (!result)
    {
LABEL_70:
      v37 = *MEMORY[0x277D85DE8];
      return result;
    }

    v20 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v20)
    {
      if ((a4 & 6) == 2 && v20)
      {
        v20 = v20[3];
      }
    }

    else
    {
      v20 = *v20;
    }

    v21 = v20[1] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
LABEL_69:
      result = 0;
      goto LABEL_70;
    }

    v25 = v22[1];
    v26 = v22[2];
    v27 = v23[3];
    LOBYTE(v39) = 0;
    v42 = 0;
    if (*(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v27[2] == 1073741840)
    {
      mlir::ODIE::Compiler::extract1DIntVector<short>(&v47, v14);
      if (v50)
      {
        v28 = v53;
        v51 = v53;
        v52 = xmmword_25D0A07A0;
        if (!*(&v47 + 1) || (llvm::SmallVectorImpl<short>::operator=(&v51, &v47), (v50 & 1) != 0))
        {
          if (v47 != &v49)
          {
            free(v47);
          }
        }

        if (v52 == 2 * v26)
        {
          v44 = v46;
          v45 = 0x600000000;
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, v25, &v25[8 * v26]);
          v29 = v45;
          if (v45)
          {
            v30 = v44;
            v31 = (v51 + 2);
            do
            {
              if ((*v30 & 0x8000000000000000) == 0)
              {
                *v30 += *(v31 - 1) + *v31;
              }

              v31 += 2;
              ++v30;
              --v29;
            }

            while (v29);
LABEL_54:
            *&v47 = &v48;
            *(&v47 + 1) = 0x600000000;
            llvm::SmallVectorImpl<long long>::operator=(&v47, &v44);
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v47);
      if (v50)
      {
        v28 = &v52 + 8;
        v51 = &v52 + 8;
        *&v52 = 0xC00000000;
        if (!DWORD2(v47) || (llvm::SmallVectorImpl<int>::operator=(&v51, &v47), (v50 & 1) != 0))
        {
          if (v47 != &v48)
          {
            free(v47);
          }
        }

        if (v52 == 2 * v26)
        {
          v44 = v46;
          v45 = 0x600000000;
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, v25, &v25[8 * v26]);
          v32 = v45;
          if (v45)
          {
            v33 = v44;
            v34 = (v51 + 4);
            do
            {
              if ((*v33 & 0x8000000000000000) == 0)
              {
                *v33 += *v34 + *(v34 - 1);
              }

              v34 += 2;
              ++v33;
              --v32;
            }

            while (v32);
            goto LABEL_54;
          }

LABEL_56:
          *&v47 = &v48;
          *(&v47 + 1) = 0x600000000;
LABEL_57:
          v50 = 1;
          if (v44 != v46)
          {
            free(v44);
          }

LABEL_59:
          if (v51 != v28)
          {
            free(v51);
          }

          std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v39, &v47);
          if (v50 == 1 && v47 != &v48)
          {
            free(v47);
          }

          if (v42 == 1)
          {
            v35 = v22[3];
            *&v47 = v39;
            *(&v47 + 1) = v40;
            v51 = v35;
            v44 = 0;
            v36 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v35 + 32), &v47, &v51, &v44);
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v36);
            if ((v42 & 1) != 0 && v39 != &v41)
            {
              free(v39);
            }

            result = 1;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

LABEL_55:
        LOBYTE(v47) = 0;
        v50 = 0;
        goto LABEL_59;
      }
    }

    v38 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::ODIE::Compiler::CoreML::PadOp::refineReturnTypes(v38);
  }

  else
  {
    v18 = *MEMORY[0x277D85DE8];

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::PadOp::verify(void ***this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v85 = *MEMORY[0x277D85DE8];
  v12 = *this;
  v13 = v12[9];
  v14 = v13[3];
  v15 = v13[7];
  v16 = *(v12[10] + 2);
  if (v16 != 1)
  {
    v17 = v13[11];
    v76 = 0;
    v77 = 0;
    v82 = &v76;
    if ((~*(v17 + 8) & 7) == 0)
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_48;
    }

    v18 = *(v17 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v17 + 24 * *(v17 + 16);
      v20 = v19 + 120;
      if (v19 == -120)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = v17 + 16 * v18 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v82, v20))
    {
      v12 = *this;
LABEL_48:
      v84[4] = 257;
      mlir::Operation::emitError(&v76, v12, &v82);
      if (v76)
      {
        mlir::Diagnostic::operator<<<64ul>(&v77, " non-constant padding mode must have padding value as constant.");
      }

      v37 = v81 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
      goto LABEL_92;
    }
  }

  v21 = *(v15 + 8);
  v22 = *((v21 & 0xFFFFFFFFFFFFFFF8) + 24);
  v23 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 8);
  v24 = *(v23 + 16);
  if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v26 = *this;
LABEL_21:
    v76 = 0;
    v77 = 0;
    v82 = &v76;
    if ((~v21 & 7) != 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
      goto LABEL_91;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16);
      v35 = v34 + 120;
      if (v34 == -120)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v35 = v32 + 16 * v33 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v82, v35))
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v15, &v76);
      if (v80)
      {
        v36 = &v83 + 1;
        v82 = &v83 + 1;
        *&v83 = 0xC00000000;
        if (!v77 || (llvm::SmallVectorImpl<int>::operator=(&v82, &v76), (v80 & 1) != 0))
        {
          if (v76 != &v78)
          {
            free(v76);
          }
        }

        if (2 * v24 == v83)
        {
          v37 = 1;
          if (v16 <= 4 && ((1 << v16) & 0x15) != 0)
          {
            if (v24)
            {
              v38 = 0;
              if (v16 == 2)
              {
                v39 = -1;
              }

              else
              {
                v39 = 0;
              }

              v40 = v82 + 1;
              while (1)
              {
                v41 = *(v25 + 8 * v38) + v39;
                v72 = v41;
                if (v41 < *(v40 - 1) || v41 < *v40)
                {
                  break;
                }

                ++v38;
                v40 += 2;
                if (v24 == v38)
                {
                  goto LABEL_46;
                }
              }

              v73 = v38;
              v71 = 257;
              mlir::Operation::emitError(&v76, v26, v70);
              if (v76)
              {
                mlir::Diagnostic::operator<<<26ul>(&v77, " padding lengths for dim ");
              }

              v46 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v76, &v73);
              v47 = v46;
              if (*v46)
              {
                mlir::Diagnostic::operator<<<5ul>((v46 + 1), " is ");
              }

              v48 = mlir::InFlightDiagnostic::operator<<<int &>(v47, &v82[v73]);
              v49 = v48;
              if (*v48)
              {
                mlir::Diagnostic::operator<<<6ul>((v48 + 1), " and ");
              }

              v50 = mlir::InFlightDiagnostic::operator<<<int &>(v49, &v82[v73] + 1);
              if (!*v50)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }

            goto LABEL_46;
          }

          goto LABEL_59;
        }

        v75 = 257;
        mlir::Operation::emitError(&v76, v26, v74);
        if (v76)
        {
          mlir::Diagnostic::operator<<<22ul>(&v77, " padding lengths has ");
        }

        v70[0] = v83;
        v42 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v76, v70);
        v43 = v42;
        if (*v42)
        {
          mlir::Diagnostic::operator<<<19ul>((v42 + 1), " elements, expect ");
        }

        v73 = 2 * v24;
        goto LABEL_56;
      }

      goto LABEL_106;
    }

    goto LABEL_91;
  }

  v27 = v22[2];
  v26 = *this;
  if (v27 >> 30 != 1 || (v27 & 0x3FFFFFFF) != 0x10)
  {
    goto LABEL_21;
  }

  v76 = 0;
  v77 = 0;
  v82 = &v76;
  if ((~v21 & 7) != 0)
  {
    v28 = v15;
  }

  else
  {
    v28 = 0;
  }

  if (!v28)
  {
    goto LABEL_91;
  }

  v29 = *(v28 + 8) & 7;
  if (v29 == 6)
  {
    v30 = v28 + 24 * *(v28 + 16);
    v31 = v30 + 120;
    if (v30 == -120)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v31 = v28 + 16 * v29 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v82, v31))
  {
LABEL_91:
    v37 = 1;
LABEL_92:
    v58 = *MEMORY[0x277D85DE8];
    return v37 & 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<short>(&v76, v15);
  if (v80)
  {
    v36 = v84;
    v82 = v84;
    v83 = xmmword_25D0A07A0;
    if (!v77 || (llvm::SmallVectorImpl<short>::operator=(&v82, &v76), (v80 & 1) != 0))
    {
      if (v76 != &v79)
      {
        free(v76);
      }
    }

    if (v83 == 2 * v24)
    {
      v37 = 1;
      if (v16 <= 4 && ((1 << v16) & 0x15) != 0)
      {
        if (v24)
        {
          v54 = 0;
          if (v16 == 2)
          {
            v55 = -1;
          }

          else
          {
            v55 = 0;
          }

          v56 = v82 + 1;
          while (1)
          {
            v57 = *(v25 + 8 * v54) + v55;
            v72 = v57;
            if (v57 < *(v56 - 1) || v57 < *v56)
            {
              break;
            }

            ++v54;
            v56 += 2;
            if (v24 == v54)
            {
              goto LABEL_46;
            }
          }

          v73 = v54;
          v71 = 257;
          mlir::Operation::emitError(&v76, v26, v70);
          if (v76)
          {
            mlir::Diagnostic::operator<<<26ul>(&v77, " padding lengths for dim ");
          }

          v61 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v76, &v73);
          v50 = v61;
          if (*v61)
          {
            mlir::Diagnostic::operator<<<5ul>((v61 + 1), " is ");
          }

          mlir::InFlightDiagnostic::operator<<<short &>(v50, *(v82 + 2 * v73));
          if (*v50)
          {
            mlir::Diagnostic::operator<<<6ul>((v50 + 1), " and ");
          }

          mlir::InFlightDiagnostic::operator<<<short &>(v50, *(v82 + 2 * v73 + 1));
          if (!*v50)
          {
            goto LABEL_69;
          }

LABEL_68:
          mlir::Diagnostic::operator<<<33ul>((v50 + 1), " which is higher than max value ");
LABEL_69:
          v51 = mlir::InFlightDiagnostic::operator<<<long long &>(v50, &v72);
          v45 = v51;
          if (*v51)
          {
            mlir::Diagnostic::operator<<<11ul>((v51 + 1), " for mode ");
            if (*v45)
            {
              v52 = qword_25D09F6B8[v16];
              v53 = off_2799BDB60[v16];
              v75 = 261;
              v74[0] = v53;
              v74[1] = v52;
              mlir::Diagnostic::operator<<((v45 + 1), v74);
            }
          }

LABEL_58:
          v37 = *(v45 + 200) ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
          goto LABEL_59;
        }

LABEL_46:
        v37 = 1;
      }

LABEL_59:
      if (v82 != v36)
      {
        free(v82);
      }

      goto LABEL_92;
    }

    v75 = 257;
    mlir::Operation::emitError(&v76, v26, v74);
    if (v76)
    {
      mlir::Diagnostic::operator<<<22ul>(&v77, " padding lengths has ");
    }

    v70[0] = v83;
    v60 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v76, v70);
    v43 = v60;
    if (*v60)
    {
      mlir::Diagnostic::operator<<<19ul>((v60 + 1), " elements, expect ");
    }

    v73 = 2 * v24;
LABEL_56:
    v44 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v43, &v73);
    v45 = v44;
    if (*v44)
    {
      mlir::Diagnostic::operator<<<10ul>((v44 + 1), " elements");
    }

    goto LABEL_58;
  }

LABEL_106:
  v62 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11);
}

BOOL mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReverseOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::ReverseOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void mlir::ODIE::Compiler::CoreML::ReverseOp::verify(mlir::ODIE::Compiler::CoreML::ReverseOp *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v106 = *MEMORY[0x277D85DE8];
  v12 = *this;
  v13 = *(v12 + 72);
  v14 = *(v13 + 56);
  v15 = *(v14 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
  if (*(*(v15 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_60;
  }

  v17 = *(v13 + 24);
  v18 = v16[2];
  if (v18)
  {
    v19 = v16[1];
    v20 = 8 * v18;
    v21 = 8 * v18;
    v22 = v19;
    do
    {
      if (*v22 == 0x8000000000000000)
      {
        goto LABEL_60;
      }

      ++v22;
      v21 -= 8;
    }

    while (v21);
    v23 = *((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v89 = v23;
    v24 = 1;
    do
    {
      v25 = *v19++;
      v24 *= v25;
      v20 -= 8;
    }

    while (v20);
  }

  else
  {
    v23 = *((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v89 = v23;
    v24 = 1;
  }

  if (v24 > v23)
  {
    v105[4] = 257;
    mlir::Operation::emitError(&v98, v12, &v103);
    if (v98)
    {
      mlir::Diagnostic::operator<<<23ul>(&v99, " number of dimensions ");
    }

    v26 = v16[2];
    if (v26)
    {
      v27 = v16[1];
      v28 = 8 * v26;
      v29 = 1;
      do
      {
        v30 = *v27++;
        v29 *= v30;
        v28 -= 8;
      }

      while (v28);
    }

    else
    {
      v29 = 1;
    }

    v91[0] = v29;
    v34 = mlir::InFlightDiagnostic::operator<<<long long>(&v98, v91);
    v35 = v34;
    if (*v34)
    {
      mlir::Diagnostic::operator<<<24ul>((v34 + 1), " must be <= input rank ");
    }

    v36 = (*(mlir::InFlightDiagnostic::operator<<<long long &>(v35, &v89) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
    goto LABEL_60;
  }

  v98 = 0;
  v99 = 0;
  v103 = &v98;
  if ((~v15 & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_60:
    v53 = *MEMORY[0x277D85DE8];
    return;
  }

  v31 = *(v14 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v14 + 24 * *(v14 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v33 = v14 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v103, v33))
  {
    goto LABEL_60;
  }

  v37 = v16[3];
  if (*(*v37 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v38 = v37[2], v38 >> 30 == 1))
  {
    v39 = *this;
    if ((v38 & 0x3FFFFFFF) == 0x10)
    {
      v97 = v23;
      mlir::ODIE::Compiler::extract1DIntVector<short>(&v98, *(*(v39 + 72) + 56));
      if (v102)
      {
        v103 = v105;
        v104 = xmmword_25D0A07A0;
        if (!v99 || (llvm::SmallVectorImpl<short>::operator=(&v103, &v98), (v102 & 1) != 0))
        {
          if (v98 != &v101)
          {
            free(v98);
          }
        }

        v94 = 0;
        v95 = 0;
        v96 = 0;
        if (!v104)
        {
          v40 = 0;
          goto LABEL_122;
        }

        v40 = 0;
        v41 = v103;
        v42 = (v103 + 2 * v104);
        while (1)
        {
          v43 = *v41;
          v44 = *v41;
          v45 = v96;
          if (v96)
          {
            v46 = (v96 - 1) & (37 * v43);
            v47 = *(v40 + 2 * v46);
            if (v44 == v47)
            {
LABEL_41:
              if (v46 != v96)
              {
                v92 = 257;
                mlir::Operation::emitError(&v98, v39, v91);
                if (v98)
                {
                  mlir::Diagnostic::operator<<<12ul>(&v99, " dimension ");
                }

                mlir::InFlightDiagnostic::operator<<<short &>(&v98, v44);
                if (v98)
                {
                  mlir::Diagnostic::operator<<<51ul>(&v99, " is specified more than once in dimensions operand");
                }

                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
LABEL_122:
                MEMORY[0x25F891030](v40, 2);
                v75 = v103;
                if (v103 == v105)
                {
                  goto LABEL_60;
                }

LABEL_106:
                free(v75);
                goto LABEL_60;
              }
            }

            else
            {
              v51 = 1;
              while (v47 != 0x7FFF)
              {
                v52 = v46 + v51++;
                v46 = v52 & (v96 - 1);
                v47 = *(v40 + 2 * v46);
                if (v44 == v47)
                {
                  goto LABEL_41;
                }
              }
            }
          }

          v91[0] = 0;
          if ((llvm::DenseMapBase<llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>,short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::LookupBucketFor<short>(v40, v96, v44, v91) & 1) == 0)
          {
            break;
          }

LABEL_48:
          if (v43 < -v23 || v23 <= v43)
          {
            v92 = 257;
            mlir::Operation::emitError(&v98, v39, v91);
            if (v98)
            {
              mlir::Diagnostic::operator<<<12ul>(&v99, " dimension ");
            }

            mlir::InFlightDiagnostic::operator<<<short &>(&v98, v44);
            if (v98)
            {
              mlir::Diagnostic::operator<<<29ul>(&v99, " is beyond the legal range [");
            }

            v90 = -v23;
            v76 = mlir::InFlightDiagnostic::operator<<<long long>(&v98, &v90);
            v77 = v76;
            if (*v76)
            {
              mlir::Diagnostic::operator<<<3ul>((v76 + 1), ", ");
            }

            v78 = mlir::InFlightDiagnostic::operator<<<long long &>(v77, &v97);
            v79 = v78;
            if (*v78)
            {
              mlir::Diagnostic::operator<<<2ul>((v78 + 1), ")");
            }

            v80 = *(v79 + 200) ^ 1;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
            goto LABEL_122;
          }

          v41 = (v41 + 2);
          if (v41 == v42)
          {
            goto LABEL_122;
          }
        }

        v48 = v91[0];
        v98 = v91[0];
        v49 = v95;
        if (4 * v95 + 4 >= 3 * v45)
        {
          v45 *= 2;
        }

        else if (v45 + ~v95 - HIDWORD(v95) > v45 >> 3)
        {
LABEL_45:
          LODWORD(v95) = v49 + 1;
          if (*v48 != 0x7FFF)
          {
            --HIDWORD(v95);
          }

          *v48 = v44;
          goto LABEL_48;
        }

        llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::grow(&v94, v45);
        v40 = v94;
        llvm::DenseMapBase<llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>,short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::LookupBucketFor<short>(v94, v96, v44, &v98);
        v49 = v95;
        v48 = v98;
        goto LABEL_45;
      }

      goto LABEL_124;
    }
  }

  else
  {
    v39 = *this;
  }

  v97 = v23;
  mlir::ODIE::Compiler::extract1DIntVector<int>(*(*(v39 + 72) + 56), &v98);
  if (v102)
  {
    v103 = &v104 + 1;
    *&v104 = 0xC00000000;
    if (!v99 || (llvm::SmallVectorImpl<int>::operator=(&v103, &v98), (v102 & 1) != 0))
    {
      if (v98 != &v100)
      {
        free(v98);
      }
    }

    v94 = 0;
    v95 = 0;
    v96 = 0;
    if (!v104)
    {
      v54 = 0;
      goto LABEL_105;
    }

    v54 = 0;
    v55 = v103;
    v56 = v103 + v104;
    while (1)
    {
      v57 = *v55;
      v93 = *v55;
      v58 = v96;
      if (v96)
      {
        v59 = (v96 - 1) & (37 * v57);
        v60 = *(v54 + 4 * v59);
        if (v57 == v60)
        {
LABEL_71:
          if (v59 != v96)
          {
            v92 = 257;
            mlir::Operation::emitError(&v98, v39, v91);
            if (v98)
            {
              mlir::Diagnostic::operator<<<12ul>(&v99, " dimension ");
            }

            v73 = mlir::InFlightDiagnostic::operator<<<int &>(&v98, &v93);
            v72 = v73;
            if (*v73)
            {
              mlir::Diagnostic::operator<<<51ul>((v73 + 1), " is specified more than once in dimensions operand");
            }

LABEL_104:
            v74 = *(v72 + 200);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v98);
LABEL_105:
            MEMORY[0x25F891030](v54, 4);
            v75 = v103;
            if (v103 == (&v104 + 8))
            {
              goto LABEL_60;
            }

            goto LABEL_106;
          }
        }

        else
        {
          v65 = 1;
          while (v60 != 0x7FFFFFFF)
          {
            v66 = v59 + v65++;
            v59 = v66 & (v96 - 1);
            v60 = *(v54 + 4 * v59);
            if (v57 == v60)
            {
              goto LABEL_71;
            }
          }
        }
      }

      v91[0] = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>,int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::LookupBucketFor<int>(v54, v96, v57, v91))
      {
        v61 = v93;
        goto LABEL_79;
      }

      v62 = v91[0];
      v98 = v91[0];
      v63 = v95;
      if (4 * v95 + 4 >= 3 * v58)
      {
        break;
      }

      if (v58 + ~v95 - HIDWORD(v95) <= v58 >> 3)
      {
        goto LABEL_90;
      }

LABEL_76:
      LODWORD(v95) = v63 + 1;
      if (*v62 != 0x7FFFFFFF)
      {
        --HIDWORD(v95);
      }

      v61 = v93;
      *v62 = v93;
LABEL_79:
      if (v61 < -v23 || v23 <= v61)
      {
        v92 = 257;
        mlir::Operation::emitError(&v98, v39, v91);
        if (v98)
        {
          mlir::Diagnostic::operator<<<12ul>(&v99, " dimension ");
        }

        v67 = mlir::InFlightDiagnostic::operator<<<int &>(&v98, &v93);
        v68 = v67;
        if (*v67)
        {
          mlir::Diagnostic::operator<<<29ul>((v67 + 1), " is beyond the legal range [");
        }

        v90 = -v23;
        v69 = mlir::InFlightDiagnostic::operator<<<long long>(v68, &v90);
        v70 = v69;
        if (*v69)
        {
          mlir::Diagnostic::operator<<<3ul>((v69 + 1), ", ");
        }

        v71 = mlir::InFlightDiagnostic::operator<<<long long &>(v70, &v97);
        v72 = v71;
        if (*v71)
        {
          mlir::Diagnostic::operator<<<2ul>((v71 + 1), ")");
        }

        goto LABEL_104;
      }

      if (++v55 == v56)
      {
        goto LABEL_105;
      }
    }

    v58 *= 2;
LABEL_90:
    llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::grow(&v94, v58);
    v54 = v94;
    llvm::DenseMapBase<llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>,int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::LookupBucketFor<int>(v94, v96, v93, &v98);
    v63 = v95;
    v62 = v98;
    goto LABEL_76;
  }

LABEL_124:
  v81 = std::__throw_bad_optional_access[abi:nn200100]();
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11);
}

void mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63[5] = *MEMORY[0x277D85DE8];
  v50[0] = a4;
  v50[1] = a5;
  if (a5 == 4)
  {
    v12 = mlir::ValueRange::dereference_iterator(v50, 2);
    v13 = mlir::ValueRange::dereference_iterator(v50, 1);
    v14 = v13;
    v15 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v15)
    {
      if ((a4 & 6) == 2 && v15)
      {
        v15 = v15[3];
      }
    }

    else
    {
      v15 = *v15;
    }

    v17 = v15[1] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      goto LABEL_42;
    }

    v21 = v18[1];
    v22 = v18[2];
    v23 = v19[3];
    LOBYTE(v46) = 0;
    v49 = 0;
    v57 = 0uLL;
    v61 = &v57;
    if ((~*(v13 + 8) & 7) != 0)
    {
      v24 = v13;
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
LABEL_39:
      if (v49 == 1 && v46 != &v48)
      {
        free(v46);
      }

LABEL_42:
      v31 = *MEMORY[0x277D85DE8];
      return;
    }

    v25 = *(v24 + 8) & 7;
    if (v25 == 6)
    {
      v26 = v24 + 24 * *(v24 + 16);
      v27 = v26 + 120;
      if (v26 == -120)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v27 = v24 + 16 * v25 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v61, v27))
    {
      goto LABEL_39;
    }

    if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_32;
    }

    v32 = v23[2];
    if (v32 == 1073741856)
    {
      mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<int>(&v57, v21, v22, v14, v12);
      goto LABEL_33;
    }

    if (v32 != 1073741840)
    {
LABEL_32:
      mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<float>(&v57, v21, v22, v14, v12);
LABEL_33:
      std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v46, &v57);
      if (v60 != 1)
      {
LABEL_37:
        if (v49 == 1)
        {
          v29 = v18[3];
          *&v57 = v46;
          *(&v57 + 1) = v47;
          v61 = v29;
          v54 = 0;
          v30 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v29 + 32), &v57, &v61, &v54);
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v30);
        }

        goto LABEL_39;
      }

      v28 = v57;
LABEL_35:
      if (v28 != &v58)
      {
        free(v28);
      }

      goto LABEL_37;
    }

    mlir::ODIE::Compiler::extract1DIntVector<short>(&v57, v14);
    if (v60)
    {
      v51 = v53;
      v52 = xmmword_25D0A07A0;
      if (!*(&v57 + 1) || (llvm::SmallVectorImpl<short>::operator=(&v51, &v57), (v60 & 1) != 0))
      {
        if (v57 != v59)
        {
          free(v57);
        }
      }

      mlir::ODIE::Compiler::extract1DIntVector<BOOL>(v12, &v57);
      if (v60)
      {
        v61 = v63;
        v62 = xmmword_25D0A0550;
        if (!*(&v57 + 1) || (llvm::SmallVectorImpl<BOOL>::operator=(&v61, &v57), (v60 & 1) != 0))
        {
          if (v57 != v59)
          {
            free(v57);
          }
        }

        v54 = v56;
        v55 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v54, v21, &v21[8 * v22]);
        v33 = v55;
        if (v55)
        {
          v34 = v61;
          v35 = v51;
          v36 = v54;
          do
          {
            v38 = *v34;
            v34 = (v34 + 1);
            v37 = v38;
            v40 = *v21;
            v21 += 8;
            v39 = v40;
            if (v37 == 1)
            {
              v39 = (v39 * *v35);
            }

            *v36++ = v39;
            ++v35;
            --v33;
          }

          while (v33);
          *&v57 = &v58;
          *(&v57 + 1) = 0x600000000;
          llvm::SmallVectorImpl<long long>::operator=(&v57, &v54);
        }

        else
        {
          *&v57 = &v58;
          *(&v57 + 1) = 0x600000000;
        }

        v60 = 1;
        if (v54 != v56)
        {
          free(v54);
        }

        if (v61 != v63)
        {
          free(v61);
        }

        if (v51 != v53)
        {
          free(v51);
        }

        std::__optional_storage_base<llvm::SmallVector<long long,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<long long,6u>,false>>(&v46, &v57);
        if (v60 != 1)
        {
          goto LABEL_37;
        }

        v28 = v57;
        goto LABEL_35;
      }
    }

    v41 = std::__throw_bad_optional_access[abi:nn200100]();
    mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<int>(v41, v42, v43, v44, v45);
  }

  else
  {
    v16 = *MEMORY[0x277D85DE8];

    mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 4 operands");
  }
}

void mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<int>(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[5] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DIntVector<int>(a4, &v20);
  if ((v24 & 1) == 0)
  {
    goto LABEL_25;
  }

  v18[0] = v19;
  v18[1] = 0xC00000000;
  if (!v21 || (llvm::SmallVectorImpl<int>::operator=(v18, &v20), (v24 & 1) != 0))
  {
    if (v20 != &v22)
    {
      free(v20);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(a5, &v20);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v25 = v27;
  v26 = xmmword_25D0A0550;
  if (!v21 || (llvm::SmallVectorImpl<BOOL>::operator=(&v25, &v20), (v24 & 1) != 0))
  {
    if (v20 != &v23)
    {
      free(v20);
    }
  }

  v20 = &v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v20, a2, &a2[8 * a3]);
  v9 = v21;
  if (v21)
  {
    v10 = v25;
    v11 = v18[0];
    v12 = v20;
    do
    {
      v14 = *v10++;
      v13 = v14;
      v16 = *a2;
      a2 += 8;
      v15 = v16;
      if (v13 == 1)
      {
        v15 = (v15 * *v11);
      }

      *v12++ = v15;
      ++v11;
      --v9;
    }

    while (v9);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    llvm::SmallVectorImpl<long long>::operator=(a1, &v20);
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  *(a1 + 64) = 1;
  if (v20 != &v22)
  {
    free(v20);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::computeOutputShapeForResizeByScaleOp<float>(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[5] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DFloatVector<float>(a4, &v20);
  if ((v24 & 1) == 0)
  {
    goto LABEL_25;
  }

  v18[0] = v19;
  v18[1] = 0xC00000000;
  if (!v21 || (llvm::SmallVectorImpl<float>::operator=(v18, &v20), (v24 & 1) != 0))
  {
    if (v20 != &v22)
    {
      free(v20);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(a5, &v20);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v25 = v27;
  v26 = xmmword_25D0A0550;
  if (!v21 || (llvm::SmallVectorImpl<BOOL>::operator=(&v25, &v20), (v24 & 1) != 0))
  {
    if (v20 != &v23)
    {
      free(v20);
    }
  }

  v20 = &v22;
  v21 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v20, a2, &a2[8 * a3]);
  v9 = v21;
  if (v21)
  {
    v10 = v25;
    v11 = v18[0];
    v12 = v20;
    do
    {
      v14 = *v10++;
      v13 = v14;
      v16 = *a2;
      a2 += 8;
      v15 = v16;
      if (v13 == 1)
      {
        v15 = vcvtms_s32_f32(*v11 * v15);
      }

      *v12++ = v15;
      ++v11;
      --v9;
    }

    while (v9);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    llvm::SmallVectorImpl<long long>::operator=(a1, &v20);
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  *(a1 + 64) = 1;
  if (v20 != &v22)
  {
    free(v20);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v20 = 0x600000000;
  __src = v21;
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &__src);
  if (v11)
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v20))
    {
      v12 = __src;
      v13 = __src + 8 * v20;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  if (__src != v21)
  {
    free(__src);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::verify(mlir::ODIE::Compiler::CoreML::ResizeByScaleOp *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(v2 + 72) + 88);
  v19 = 0;
  v20[0] = 0;
  v17[0] = &v19;
  if ((~*(v3 + 8) & 7) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
LABEL_13:
    v18 = 257;
    mlir::Operation::emitError(&v19, v2, v17);
    if (v19)
    {
    }

LABEL_15:
    v10 = v21;
    goto LABEL_16;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16);
    v7 = v6 + 120;
    if (v6 == -120)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v4 + 16 * v5 + 16;
  }

  v8 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v17, v7);
  v2 = *this;
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = (*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = 257;
    mlir::Operation::emitError(&v19, v2, v17);
    if (v19)
    {
    }

    goto LABEL_15;
  }

  if (v9[2] == **((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
    v11 = 1;
    goto LABEL_17;
  }

  v18 = 257;
  mlir::Operation::emitError(&v19, v2, v17);
  if (v19)
  {
    mlir::Diagnostic::operator<<<65ul>(v20, " Rank of input needs to be same as len(axes), but input.rank == ");
  }

  v16 = v9[2];
  v14 = mlir::InFlightDiagnostic::operator<<<long long>(&v19, &v16);
  v15 = v14;
  if (*v14)
  {
    mlir::Diagnostic::operator<<<23ul>((v14 + 1), " whereas len(axes) == ");
  }

  v10 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v15, *((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8)) + 200);
LABEL_16:
  v11 = v10 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::RoundOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RoundOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::RoundOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::SoftmaxOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[38]>(a2, a3, "fails to infer the type of softmax op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::SelectOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v54[0] = a4;
  v54[1] = a5;
  if (a5 == 3)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = *MEMORY[0x277D85DE8];

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }

    v18 = v16[1];
    v19 = v16[2];
    v20 = mlir::ValueRange::dereference_iterator(v54, 1);
    __src = 0;
    v51 = 0;
    *&v49 = &__src;
    if ((~*(v20 + 8) & 7) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_47;
    }

    v22 = v20;
    v23 = *(v21 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v21 + 24 * *(v21 + 16);
      v25 = v24 + 120;
      if (v24 == -120)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = v21 + 16 * v23 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v49, v25))
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v22, &__src);
      if ((v53 & 1) == 0)
      {
        v46 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::ODIE::Compiler::CoreML::SelectOp::refineReturnTypes(v46);
      }

      v26 = *__src;
      if (__src != v52)
      {
        free(__src);
      }

      v27 = (v19 & (v26 >> 31)) + v26;
      if (v27 < 0 || v19 <= v27)
      {
        result = mlir::emitOptionalError<char const(&)[27]>(a2, a3, "invalid dim for select op.");
        goto LABEL_50;
      }

      __src = 0;
      v51 = 0;
      v52[0] = 0;
      if (v19 < 1)
      {
        v28 = 0;
        v40 = 0;
      }

      else
      {
        v28 = 0;
        v29 = v19 & 0x7FFFFFFF;
        do
        {
          if (v27)
          {
            if (v28 >= v52[0])
            {
              v30 = __src;
              v31 = v28 - __src;
              v32 = (v28 - __src) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                std::vector<long long>::__throw_length_error[abi:nn200100]();
              }

              v34 = v52[0] - __src;
              if ((v52[0] - __src) >> 2 > v33)
              {
                v33 = v34 >> 2;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF8)
              {
                v35 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__src, v35);
              }

              v36 = (v28 - __src) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = *v18;
              v28 = (v37 + 1);
              memcpy(v38, v30, v31);
              v39 = __src;
              __src = v38;
              v51 = v28;
              v52[0] = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = *v18;
              v28 += 8;
            }

            v51 = v28;
          }

          ++v18;
          --v27;
          --v29;
        }

        while (v29);
        v40 = __src;
      }

      v44 = v16[3];
      *&v49 = v40;
      *(&v49 + 1) = (v28 - v40) >> 3;
      v47 = 0;
      v48 = v44;
      v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v44 + 32), &v49, &v48, &v47);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v45);
      if (__src)
      {
        v51 = __src;
        operator delete(__src);
      }

LABEL_49:
      result = 1;
LABEL_50:
      v43 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_47:
    __src = v52;
    v51 = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&__src, v19 - 1, 0x8000000000000000);
    v41 = v16[3];
    *&v49 = __src;
    *(&v49 + 1) = v51;
    v47 = 0;
    v48 = v41;
    v42 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v41 + 32), &v49, &v48, &v47);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v42);
    if (__src != v52)
    {
      free(__src);
    }

    goto LABEL_49;
  }

  v14 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands");
}

BOOL mlir::ODIE::Compiler::CoreML::SelectOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::SelectOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[37]>(a2, a3, "fails to infer the type of select op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::verify(void ***this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *((*this)[9] + 7);
  v27[0] = 0uLL;
  *&v24[0] = v27;
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_29;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16);
    v5 = v4 + 120;
    if (v4 == -120)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = v1 + 16 * v3 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v24, v5))
  {
LABEL_29:
    v15 = 1;
    goto LABEL_30;
  }

  v6 = *this;
  v7 = (*this)[9];
  v8 = *((*(v7[3] + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v9 = v7[7];
  v26 = 0;
  *&v27[0] = &v26;
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = v9 + 16 * v10 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v27, v12))
  {
    v6 = *this;
LABEL_22:
    v25 = 257;
    mlir::Operation::emitError(v27, v6, v24);
    if (*&v27[0])
    {
      mlir::Diagnostic::operator<<<37ul>(v27 + 8, "Unable to get value of constant axis");
    }

    v14 = v28;
    goto LABEL_25;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v26, v27);
  v24[0] = v27[0];
  v24[1] = v27[1];
  mlir::DenseElementsAttr::IntElementIterator::operator*(v24, v27);
  if (DWORD2(v27[0]) > 0x40)
  {
    v13 = **&v27[0];
    MEMORY[0x25F891010]();
  }

  else if (DWORD2(v27[0]))
  {
    v13 = (*&v27[0] << -BYTE8(v27[0])) >> -BYTE8(v27[0]);
  }

  else
  {
    v13 = 0;
  }

  v23 = v13;
  if ((v13 & 0x8000000000000000) == 0 && v13 < v8)
  {
    goto LABEL_29;
  }

  v25 = 257;
  mlir::Operation::emitError(v27, *this, v24);
  if (*&v27[0])
  {
    mlir::Diagnostic::operator<<<26ul>(v27 + 8, "Axis passed to cumsum is:");
  }

  v18 = mlir::InFlightDiagnostic::operator<<<long long &>(v27, &v23);
  v19 = v18;
  if (*v18)
  {
    mlir::Diagnostic::operator<<<31ul>((v18 + 1), ", expected Axis between 0 and ");
  }

  v22 = v8 - 1;
  v20 = mlir::InFlightDiagnostic::operator<<<long long>(v19, &v22);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<12ul>((v20 + 1), ", inclusive");
  }

  v14 = *(v21 + 200);
LABEL_25:
  v15 = v14 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::CumSumOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 4)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 4 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CumSumOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::CumSumOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void mlir::ODIE::Compiler::CoreML::AcosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v44[25] = *MEMORY[0x277D85DE8];
  v39 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v11 = *a2;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      goto LABEL_16;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      goto LABEL_16;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v21 = v14[2];
      v18 = 1;
      if ((v21 + 2147483644) <= 0x3C && ((1 << (v21 - 4)) & 0x1000000010001011) != 0)
      {
        goto LABEL_40;
      }

      v23 = v21 - 1073741828;
      v24 = v23 > 0x3C;
      v25 = (1 << v23) & 0x1000000010001011;
      if (!v24 && v25 != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v19 = *(**(v14 + 1) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
LABEL_16:
        v18 = 1;
        goto LABEL_40;
      }
    }
  }

LABEL_34:
  v38 = 261;
  v37[0] = a3;
  v37[1] = a4;
  mlir::Operation::emitOpError(a1, v37, &v43);
  if (v43)
  {
    mlir::Diagnostic::operator<<<3ul>(v44, " #");
  }

  v27 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v43, &v39);
  v28 = v27;
  if (*v27)
  {
    v40 = 3;
    v41 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
    v42 = 261;
    v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v27 + 3), &v40, 1);
    v30 = v28[3] + 24 * *(v28 + 8);
    v31 = *v29;
    *(v30 + 16) = *(v29 + 16);
    *v30 = v31;
    ++*(v28 + 8);
    if (*v28)
    {
      v40 = 4;
      v41 = a2;
      v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v28 + 3), &v40, 1);
      v33 = v28[3] + 24 * *(v28 + 8);
      v34 = *v32;
      *(v33 + 16) = *(v32 + 16);
      *v33 = v34;
      ++*(v28 + 8);
    }
  }

  v18 = (v28[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
LABEL_40:
  v35 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v19 = a3[1];
  v20 = v6;
  if (v6 == v19)
  {
    if (v6)
    {
      v8 = *a2;
      v9 = *a3;
      v10 = 32 * v6;
      while (((*(*a1 + 728))(a1, v8, *v9, a5) & 1) != 0)
      {
        v8 += 32;
        ++v9;
        v10 -= 32;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_6:
      v11 = 1;
    }
  }

  else
  {
    v18[16] = 257;
    (*(*a1 + 24))(&v21, a1, a4, v18);
    if (v21)
    {
      mlir::Diagnostic::operator<<<48ul>(v22, "number of operands and types do not match: got ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v21, &v20);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " operands and ");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v19);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<7ul>((v14 + 1), " types");
    }

    v11 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void mlir::ODIE::Compiler::CoreML::AcosOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AcoshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AcoshOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  __src = a3;
  v8[0] = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &__src, 0, &__src, 2);
  __src = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  v6 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v10 == v15)
    {
      v17 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v17);
      v20 = v18;
      if (v18)
      {
        v18 = (*(v19 + 8))(v19, v18);
      }

      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v17;
      }

      v22 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v23 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v22);
      v25 = v23;
      if (v23)
      {
        v23 = (*(v24 + 8))(v24, v23);
      }

      if (v25)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      if (v21 == v26)
      {
        v7 = 1;
        goto LABEL_10;
      }

      v16 = "failed to verify that Result 0 element type must match element type of operand 1.";
    }

    else
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
    }

    v27 = v16;
    v28 = 259;
    mlir::Operation::emitOpError(*this, &v27, v29);
    v7 = v29[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v42[25] = *MEMORY[0x277D85DE8];
  v37 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v11 = *a2;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
    v14 = (*(v13 + 8))(v13, a2);
    v15 = *(*v14 + 136);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      goto LABEL_16;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
    {
      goto LABEL_16;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v21 = v14[2];
      v18 = 1;
      if ((v21 + 2147483644) <= 0x3C && ((1 << (v21 - 4)) & 0x1000000010001011) != 0)
      {
        goto LABEL_42;
      }

      v23 = (v21 - 1073741828) > 0x3C || ((1 << (v21 - 4)) & 0x1000000010001011) == 0;
      if (!v23 || v21 == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if (v15 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v19 = *(**(v14 + 1) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
LABEL_16:
        v18 = 1;
        goto LABEL_42;
      }
    }
  }

LABEL_36:
  v36 = 261;
  v35[0] = a3;
  v35[1] = a4;
  mlir::Operation::emitOpError(a1, v35, &v41);
  if (v41)
  {
    mlir::Diagnostic::operator<<<3ul>(v42, " #");
  }

  v25 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v41, &v37);
  v26 = v25;
  if (*v25)
  {
    v38 = 3;
    v39 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
    v40 = 278;
    v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v25 + 3), &v38, 1);
    v28 = v26[3] + 24 * *(v26 + 8);
    v29 = *v27;
    *(v28 + 16) = *(v27 + 16);
    *v28 = v29;
    ++*(v26 + 8);
    if (*v26)
    {
      v38 = 4;
      v39 = a2;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v26 + 3), &v38, 1);
      v31 = v26[3] + 24 * *(v26 + 8);
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++*(v26 + 8);
    }
  }

  v18 = (v26[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
LABEL_42:
  v33 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::AddOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AddOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
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
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
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

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AllOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v11);
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v29[25] = *MEMORY[0x277D85DE8];
  v25 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1) && (v11 = *a2, v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12), v14 = (*(v13 + 8))(v13, a2), *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v14[2] == 1)
  {
    v15 = 1;
  }

  else
  {
    v24 = 261;
    v23[0] = a3;
    v23[1] = a4;
    mlir::Operation::emitOpError(a1, v23, &v28);
    if (v28)
    {
      mlir::Diagnostic::operator<<<3ul>(v29, " #");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v25);
    v17 = v16;
    if (*v16)
    {
      mlir::Diagnostic::operator<<<57ul>((v16 + 1), " must be CoreML Tensor of Boolean type. values, but got ");
      if (*v17)
      {
        v26 = 4;
        v27 = a2;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v26, 1);
        v19 = v17[3] + 24 * *(v17 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v17 + 8);
      }
    }

    v15 = (v17[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v36[25] = *MEMORY[0x277D85DE8];
  v32 = a5;
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  if (!(*(v11 + 16))(v11, a2))
  {
    goto LABEL_5;
  }

  v12 = *a2;
  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  (*(v14 + 24))(v14, a2);
  if (v15 != 1)
  {
    goto LABEL_5;
  }

  v16 = *a2;
  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
  v19 = (*(v18 + 8))(v18, a2);
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    goto LABEL_5;
  }

  v28 = v19[2];
  if (v28 == 1073741840 || v28 == 1073741856)
  {
    v25 = 1;
  }

  else
  {
LABEL_5:
    v31 = 261;
    v30[0] = a3;
    v30[1] = a4;
    mlir::Operation::emitOpError(a1, v30, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<3ul>(v36, " #");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v35, &v32);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<51ul>((v20 + 1), " must be 1D tensor of Index type. values, but got ");
      if (*v21)
      {
        v33 = 4;
        v34 = a2;
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v33, 1);
        v23 = v21[3] + 24 * *(v21 + 8);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++*(v21 + 8);
      }
    }

    v25 = (v21[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v34[25] = *MEMORY[0x277D85DE8];
  v30 = a5;
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_7;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  if (!(*(v11 + 16))(v11, a2))
  {
    goto LABEL_7;
  }

  v12 = *a2;
  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  (*(v14 + 24))(v14, a2);
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = *a2;
  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
  v19 = (*(v18 + 8))(v18, a2);
  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 1)
  {
    v20 = 1;
  }

  else
  {
LABEL_7:
    v29 = 261;
    v28[0] = a3;
    v28[1] = a4;
    mlir::Operation::emitOpError(a1, v28, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<3ul>(v34, " #");
    }

    v21 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v33, &v30);
    v22 = v21;
    if (*v21)
    {
      mlir::Diagnostic::operator<<<53ul>((v21 + 1), " must be 0D tensor of Boolean type. values, but got ");
      if (*v22)
      {
        v31 = 4;
        v32 = a2;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v22 + 3), &v31, 1);
        v24 = v22[3] + 24 * *(v22 + 8);
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++*(v22 + 8);
      }
    }

    v20 = (v22[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::AllOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v15 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v13 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AllOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
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
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
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
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v41, 0);
  v40 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  v6 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v6, 0, &v6, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::ODIE::Compiler::CoreML::AndOp::build(void **a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 6);
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(v6, v7, 1, v8 & 0xFFFFFFFFFFFFFFF9, v9, v10, v11, v12, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v12 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) && (v10 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (__src = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AndOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
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
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
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

  v30 = *this - 16;
  if (!*(*this + 9))
  {
    v30 = 0;
  }

  (*(*a2 + 32))(a2, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
  v32 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AnyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v7 = a6;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v11);
}

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v15 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v13 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v11 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v8)) && (__src = v8, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::AnyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
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
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ",", 1uLL);
  }

  else
  {
    *v23 = 44;
    ++*(v22 + 4);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ")", 1uLL);
  }

  else
  {
    *v31 = 41;
    ++*(v30 + 4);
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
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 1uLL)
  {
    *v35 = 15917;
    *(v34 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v34, "->", 2uLL);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this - 16;
  if (!*(*this + 9))
  {
    v38 = 0;
  }

  (*(*a2 + 32))(a2, *(v38 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v41, 0);
  v40 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::ArgSortOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __src = a3;
  v10 = a5;
  v11 = a4;
  v8 = a7;
  v9 = a6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
}

BOOL mlir::ODIE::Compiler::CoreML::ArgSortOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = 1;
    if ((mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(*this, 0, 0) & 1) == 0)
    {
      v6 = "failed to verify that Result 0 and operand 0 must have the same shape.";
      v7 = 259;
      mlir::Operation::emitOpError(*this, &v6, v8);
      v3 = (v8[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v42[25] = *MEMORY[0x277D85DE8];
  v37 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v10 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_18;
  }

  v11 = *a2;
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  v14 = (*(v13 + 8))(v13, a2);
  v15 = *(*v14 + 136);
  v16 = v15 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  if (v16 || (v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id ? (v17 = v15 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v17 = 1), v17))
  {
    v18 = 1;
    goto LABEL_24;
  }

  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || ((v29 = v14[2], v18 = 1, (v29 + 2147483644) <= 0x3C) ? (v30 = ((1 << (v29 - 4)) & 0x1000000010001011) == 0) : (v30 = 1), v30 && ((v31 = v29 - 1073741828, v32 = v31 > 0x3C, v33 = (1 << v31) & 0x1000000010001011, !v32) ? (v34 = v33 == 0) : (v34 = 1), v34)))
  {
LABEL_18:
    v36 = 261;
    v35[0] = a3;
    v35[1] = a4;
    mlir::Operation::emitOpError(a1, v35, &v41);
    if (v41)
    {
      mlir::Diagnostic::operator<<<3ul>(v42, " #");
    }

    v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v41, &v37);
    v20 = v19;
    if (*v19)
    {
      v38 = 3;
      v39 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer values, but got ";
      v40 = 175;
      v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v38, 1);
      v22 = v20[3] + 24 * *(v20 + 8);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 16);
      *v22 = v23;
      ++*(v20 + 8);
      if (*v20)
      {
        v38 = 4;
        v39 = a2;
        v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v38, 1);
        v25 = v20[3] + 24 * *(v20 + 8);
        v26 = *v24;
        *(v25 + 16) = *(v24 + 16);
        *v25 = v26;
        ++*(v20 + 8);
      }
    }

    v18 = (v20[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
  }

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v36[25] = *MEMORY[0x277D85DE8];
  v32 = a5;
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  if (!(*(v11 + 16))(v11, a2))
  {
    goto LABEL_5;
  }

  v12 = *a2;
  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
  (*(v14 + 24))(v14, a2);
  if (v15)
  {
    goto LABEL_5;
  }

  v16 = *a2;
  v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17);
  v19 = (*(v18 + 8))(v18, a2);
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    goto LABEL_5;
  }

  v28 = v19[2];
  if (v28 == 1073741840 || v28 == 1073741856)
  {
    v25 = 1;
  }

  else
  {
LABEL_5:
    v31 = 261;
    v30[0] = a3;
    v30[1] = a4;
    mlir::Operation::emitOpError(a1, v30, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<3ul>(v36, " #");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v35, &v32);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<51ul>((v20 + 1), " must be 0D tensor of Index type. values, but got ");
      if (*v21)
      {
        v33 = 4;
        v34 = a2;
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v33, 1);
        v23 = v21[3] + 24 * *(v21 + 8);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++*(v21 + 8);
      }
    }

    v25 = (v21[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps8(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v31[25] = *MEMORY[0x277D85DE8];
  v27 = a5;
  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v10 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1) && (v11 = *a2, v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12), v14 = (*(v13 + 8))(v13, a2), *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && ((v23 = v14[2], v23 != 1073741840) ? (v24 = v23 == 1073741856) : (v24 = 1), v24))
  {
    v20 = 1;
  }

  else
  {
    v26 = 261;
    v25[0] = a3;
    v25[1] = a4;
    mlir::Operation::emitOpError(a1, v25, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<3ul>(v31, " #");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v27);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<55ul>((v15 + 1), " must be CoreML Tensor of Index type. values, but got ");
      if (*v16)
      {
        v28 = 4;
        v29 = a2;
        v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v28, 1);
        v18 = v16[3] + 24 * *(v16 + 8);
        v19 = *v17;
        *(v18 + 16) = *(v17 + 16);
        *v18 = v19;
        ++*(v16 + 8);
      }
    }

    v20 = (v16[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::ArgSortOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v16 = 0;
  v17[0] = &v18;
  v15[0] = &v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v18 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v16 = __src;
  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src)) && (v12 = __src, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v9)) && (__src = v9, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v17, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, v15, v5, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v13, v6, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v11, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ArgSortOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
    ++*(v10 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++*(v24 + 4);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++*(v26 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++*(v30 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, ",", 1uLL);
  }

  else
  {
    *v35 = 44;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) == v39)
  {
    llvm::raw_ostream::write(v38, ")", 1uLL);
  }

  else
  {
    *v39 = 41;
    ++*(v38 + 4);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (*(v42 + 3) - v43 > 1uLL)
  {
    *v43 = 15917;
    *(v42 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v42, "->", 2uLL);
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  v46 = *this - 16;
  if (!*(*this + 9))
  {
    v46 = 0;
  }

  (*(*a2 + 32))(a2, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v49, 0);
  v48 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AsinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AsinOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AsinhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AsinhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AtanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AtanOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AtanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v3 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v3);
    v6 = v4;
    if (v4)
    {
      v4 = (*(v5 + 8))(v5, v4);
    }

    if (v6)
    {
      v10 = v4;
    }

    else
    {
      v10 = v3;
    }

    v11 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v11);
    v14 = v12;
    if (v12)
    {
      v12 = (*(v13 + 8))(v13, v12);
    }

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v7 = 1;
    if (v10 != v15)
    {
      v16 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v17 = 259;
      mlir::Operation::emitOpError(*this, &v16, v18);
      v7 = (v18[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::AtanhOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = a4;
  __src = a3;
  v15 = a6;
  v16 = a5;
  v13 = a8;
  v14 = a7;
  v11 = a10;
  v12 = a9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v15, 0, &v15, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v11, 0, &v11, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v19);
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v10 = *MEMORY[0x277D85DE8];
  if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) && mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps7(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6)))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
    v4 = 1;
    if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      v7 = "failed to verify that Result 0 element type must match element type of operand 0.";
      v8 = 259;
      mlir::Operation::emitOpError(*this, &v7, v9);
      v4 = (v9[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v44[25] = *MEMORY[0x277D85DE8];
  v40 = 0;
  v8 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    if ((*(v10 + 16))(v10, a2))
    {
      v11 = *a2;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      (*(v13 + 24))(v13, a2);
      if (v14 == 4)
      {
        v15 = *a2;
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        v18 = (*(v17 + 8))(v17, a2);
        v19 = *(*v18 + 136);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
        {
          goto LABEL_13;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_13;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v25 = v18[2];
          v22 = 1;
          if ((v25 + 2147483644) <= 0x3C && ((1 << (v25 - 4)) & 0x1000000010001011) != 0)
          {
            goto LABEL_37;
          }

          v27 = v25 - 1073741828;
          v28 = v27 > 0x3C;
          v29 = (1 << v27) & 0x1000000010001011;
          if (!v28 && v29 != 0)
          {
            goto LABEL_37;
          }

          goto LABEL_31;
        }

        if (v19 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v23 = *(**(v18 + 1) + 136);
          if (v23 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
          {
LABEL_13:
            v22 = 1;
            goto LABEL_37;
          }
        }
      }
    }
  }

LABEL_31:
  v39 = 261;
  v38[0] = a3;
  v38[1] = a4;
  mlir::Operation::emitOpError(a1, v38, &v43);
  if (v43)
  {
    mlir::Diagnostic::operator<<<3ul>(v44, " #");
  }

  v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v43, &v40);
  v32 = v31;
  if (*v31)
  {
    mlir::Diagnostic::operator<<<258ul>((v31 + 1), " must be 4D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ");
    if (*v32)
    {
      v41 = 4;
      v42 = a2;
      v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v32 + 3), &v41, 1);
      v34 = v32[3] + 24 * *(v32 + 8);
      v35 = *v33;
      *(v34 + 16) = *(v33 + 16);
      *v34 = v35;
      ++*(v32 + 8);
    }
  }

  v22 = (v32[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
LABEL_37:
  v36 = *MEMORY[0x277D85DE8];
  return v22;
}