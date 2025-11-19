void mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(mlir::Operation **this)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 9);
  v3 = v2[7];
  v4 = v2[15];
  v5 = v2[19];
  if (mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v3) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, *(*(*this + 9) + 88)) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v4) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v5))
  {
    v24 = 0;
    v17[0] = &v24;
    v20 = v5;
    DefiningOp = mlir::Value::getDefiningOp(&v20);
    if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v17, DefiningOp))
    {
      goto LABEL_48;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_45;
    }

    v24 = v26;
    v25 = 0xC00000000;
    if (!v21 || (llvm::SmallVectorImpl<int>::operator=(&v24, &v20), (v23 & 1) != 0))
    {
      if (v20 != v22)
      {
        free(v20);
      }
    }

    v7 = v24;
    if (*v24 < 1 || v24[1] <= 0)
    {
      v19 = 257;
      mlir::OpState::emitError(this, v17, &v20);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v20, "dilation must be > 0");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      v8 = 0;
      v7 = v24;
    }

    else
    {
      v8 = 1;
    }

    if (v7 != v26)
    {
      free(v7);
    }

    if (v8)
    {
LABEL_48:
      v24 = 0;
      v17[0] = &v24;
      v20 = v4;
      v10 = mlir::Value::getDefiningOp(&v20);
      if (v10)
      {
        if (mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v17, v10))
        {
          mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v20);
          if ((v23 & 1) == 0)
          {
            goto LABEL_45;
          }

          v24 = v26;
          v25 = 0xC00000000;
          if (!v21 || (llvm::SmallVectorImpl<int>::operator=(&v24, &v20), (v23 & 1) != 0))
          {
            if (v20 != v22)
            {
              free(v20);
            }
          }

          if (*v24 < 0 || v24[1] < 0)
          {
            v19 = 257;
            mlir::OpState::emitError(this, v17, &v20);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v20, "padding must be >= 0");
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
          }

          else if (mlir::ODIE::Compiler::isConstantValue(v3))
          {
            mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &v20);
            if (v23)
            {
              v17[0] = v18;
              v17[1] = 0xC00000000;
              if (!v21 || (llvm::SmallVectorImpl<int>::operator=(v17, &v20), (v23 & 1) != 0))
              {
                if (v20 != v22)
                {
                  free(v20);
                }
              }

              v11 = v17[0];
              if (*v24 > *v17[0] / 2 || v24[1] > *(v17[0] + 1) / 2)
              {
                v16[16] = 257;
                mlir::OpState::emitError(this, v16, &v20);
                mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v20, "padding must be <= kernel_size / 2");
                mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
                v11 = v17[0];
              }

              if (v11 != v18)
              {
                free(v11);
              }

              goto LABEL_42;
            }

LABEL_45:
            v14 = std::__throw_bad_optional_access[abi:nn200100]();
            mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(v14, v15);
            return;
          }

LABEL_42:
          if (v24 != v26)
          {
            free(v24);
          }
        }
      }
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(mlir::Operation **a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v22))
  {
    return 1;
  }

  Shape = mlir::RankedTensorType::getShape(&v22);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  v7 = mlir::RankedTensorType::getShape(&v22);
  if (mlir::ShapedType::getNumElements(v7, v8) == 2)
  {
    return 1;
  }

  v21[16] = 257;
  mlir::OpState::emitError(a1, v21, &v25);
  if (v25)
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "expect exactly two elements for ";
    v24 = 32;
    if (v28 >= v29)
    {
      if (v27 > &v23 || v27 + 24 * v28 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v27 + 24 * v28;
    v11 = v23;
    *(v10 + 2) = v24;
    *v10 = v11;
    ++v28;
    if (v25)
    {
      mlir::Diagnostic::operator<<(&v26, a2);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  v12 = result;
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
    result = v12;
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v34;
      v15 = __p;
      if (v34 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v34 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v31;
    if (v31)
    {
      v17 = v32;
      v18 = v31;
      if (v32 != v31)
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
        v18 = v31;
      }

      v32 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v27 != &v30)
    {
      free(v27);
      return v12;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(mlir::Operation **this)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 9);
  v3 = *(v2 + 56);
  v4 = *(v2 + 120);
  if (mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v3) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, *(*(*this + 9) + 88)) && mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(void)::$_0::operator()(this, v4))
  {
    v25 = 0;
    v15[0] = &v25;
    __src = v4;
    DefiningOp = mlir::Value::getDefiningOp(&__src);
    if (DefiningOp)
    {
      if (mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v15, DefiningOp))
      {
        mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &__src);
        if ((v23 & 1) == 0)
        {
          goto LABEL_44;
        }

        v25 = v27;
        v26 = 0xC00000000;
        v6 = v18;
        if (v18)
        {
          if (__src == &v19)
          {
            if (v18 >= 0xD)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v25, __src, 4 * v18);
            LODWORD(v26) = v6;
            LODWORD(v18) = 0;
            if ((v23 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v25 = __src;
            v26 = v18;
            __src = &v19;
            v18 = 0;
          }
        }

        if (__src != &v19)
        {
          free(__src);
        }

LABEL_15:
        if (*v25 < 0 || v25[1] < 0)
        {
          v16[8] = 257;
          mlir::OpState::emitError(this, v15, &__src);
          if (__src)
          {
            LODWORD(v12) = 3;
            *(&v12 + 1) = "padding must be >= 0";
            v13 = 20;
            if (v21 >= v22)
            {
              if (v20 > &v12 || v20 + 24 * v21 <= &v12)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

LABEL_45:
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v10 = v20 + 24 * v21;
            v11 = v12;
            *(v10 + 16) = v13;
            *v10 = v11;
            ++v21;
          }

          mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
          if (__src)
          {
            mlir::InFlightDiagnostic::report(&__src);
          }

          if (v24 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v18);
          }

          goto LABEL_38;
        }

        v15[0] = 0;
        *&v12 = v15;
        __src = v3;
        v7 = mlir::Value::getDefiningOp(&__src);
        if (!v7 || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v12, v7))
        {
LABEL_38:
          if (v25 != v27)
          {
            free(v25);
          }

          return;
        }

        mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &__src);
        if (v23)
        {
          v15[0] = v16;
          v15[1] = 0xC00000000;
          if (!v18 || (llvm::SmallVectorImpl<int>::operator=(v15, &__src), (v23 & 1) != 0))
          {
            if (__src != &v19)
            {
              free(__src);
            }
          }

          v8 = v15[0];
          if (*v25 > *v15[0] / 2 || v25[1] > *(v15[0] + 1) / 2)
          {
            v14 = 257;
            mlir::OpState::emitError(this, &v12, &__src);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&__src, "padding must be <= kernel_size / 2");
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
            v8 = v15[0];
          }

          if (v8 != v16)
          {
            free(v8);
          }

          goto LABEL_38;
        }

LABEL_44:
        std::__throw_bad_optional_access[abi:nn200100]();
        goto LABEL_45;
      }
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v28[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  InnerType = mlir::ODIE::Compiler::CoreML::HandleType::getInnerType(v28);
  v3 = this;
  v4 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  if (InnerType == v4)
  {
    return 1;
  }

  v25 = 257;
  mlir::OpState::emitError(v3, v24, v28);
  if (v28[0])
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "output type expected to be ";
    v27 = 27;
    if (v30 >= v31)
    {
      if (v29 > &v26 || v29 + 24 * v30 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v29 + 24 * v30;
    v7 = v26;
    *(v6 + 2) = v27;
    *v6 = v7;
    ++v30;
    if (v28[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v26, InnerType);
      if (v30 >= v31)
      {
        if (v29 > &v26 || v29 + 24 * v30 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v29 + 24 * v30;
      v9 = v26;
      *(v8 + 2) = v27;
      *v8 = v9;
      v10 = ++v30;
      if (v28[0])
      {
        LODWORD(v26) = 3;
        *(&v26 + 1) = ", got ";
        v27 = 6;
        if (v10 >= v31)
        {
          if (v29 > &v26 || v29 + 24 * v10 <= &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v29 + 24 * v30;
        v12 = v26;
        *(v11 + 2) = v27;
        *v11 = v12;
        ++v30;
        if (v28[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v26, v4);
          if (v30 >= v31)
          {
            if (v29 > &v26 || v29 + 24 * v30 <= &v26)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v29 + 24 * v30;
          v14 = v26;
          *(v13 + 2) = v27;
          *v13 = v14;
          ++v30;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v36;
      v17 = __p;
      if (v36 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v36 = v15;
      operator delete(v17);
    }

    v18 = v33;
    if (v33)
    {
      v19 = v34;
      v20 = v33;
      if (v34 != v33)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v33;
      }

      v34 = v18;
      operator delete(v20);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verify(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v28[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  InnerType = mlir::ODIE::Compiler::CoreML::HandleType::getInnerType(v28);
  v3 = this;
  v4 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (InnerType == v4)
  {
    return 1;
  }

  v25 = 257;
  mlir::OpState::emitError(v3, v24, v28);
  if (v28[0])
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "data type expected to be ";
    v27 = 25;
    if (v30 >= v31)
    {
      if (v29 > &v26 || v29 + 24 * v30 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v29 + 24 * v30;
    v7 = v26;
    *(v6 + 2) = v27;
    *v6 = v7;
    ++v30;
    if (v28[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v26, InnerType);
      if (v30 >= v31)
      {
        if (v29 > &v26 || v29 + 24 * v30 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v29 + 24 * v30;
      v9 = v26;
      *(v8 + 2) = v27;
      *v8 = v9;
      v10 = ++v30;
      if (v28[0])
      {
        LODWORD(v26) = 3;
        *(&v26 + 1) = ", got ";
        v27 = 6;
        if (v10 >= v31)
        {
          if (v29 > &v26 || v29 + 24 * v10 <= &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v29 + 24 * v30;
        v12 = v26;
        *(v11 + 2) = v27;
        *v11 = v12;
        ++v30;
        if (v28[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v26, v4);
          if (v30 >= v31)
          {
            if (v29 > &v26 || v29 + 24 * v30 <= &v26)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v29 + 24 * v30;
          v14 = v26;
          *(v13 + 2) = v27;
          *v13 = v14;
          ++v30;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v36;
      v17 = __p;
      if (v36 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v36 = v15;
      operator delete(v17);
    }

    v18 = v33;
    if (v33)
    {
      v19 = v34;
      v20 = v33;
      if (v34 != v33)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v33;
      }

      v34 = v18;
      operator delete(v20);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verify(mlir::Operation **this)
{
  v69[3] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 9);
  v4 = *(v3 + 24);
  v65 = &v67;
  v67 = v4;
  v66 = 0x600000001;
  v5 = *(v2 + 17);
  v6 = v5 - 1;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = &v67;
  if (v5 == 1)
  {
    v18 = v5;
    LODWORD(v66) = v5;
  }

  else
  {
    v7 = v68;
    if (v6 >= 0xF && (v68 < v3 + 32 * v5 ? (v8 = v3 + 56 >= &v68[v5 - 1]) : (v8 = 1), v8))
    {
      v9 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v9 = 4;
      }

      v10 = v6 - v9;
      v11 = (v3 + 120);
      v12 = v69;
      v13 = v10;
      do
      {
        v14 = v11 - 8;
        v15 = vld4q_f64(v14);
        v16 = vld4q_f64(v11);
        *(v12 - 1) = v15;
        *v12 = v16;
        v11 += 16;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      v7 = &v68[v10];
    }

    else
    {
      v10 = 0;
    }

    v19 = ~v10 + v5;
    v20 = (v3 + 32 * v10 + 56);
    do
    {
      v21 = *v20;
      v20 += 4;
      *v7++ = v21;
      --v19;
    }

    while (v19);
    v17 = v65;
    v18 = (v66 + v6);
    LODWORD(v66) = v18;
    if (!v18)
    {
LABEL_32:
      v30 = 1;
      goto LABEL_33;
    }
  }

  v22 = 8 * v18;
  while (1)
  {
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v17);
    if (HandleForToken)
    {
      break;
    }

    ++v17;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (!v66)
  {
    goto LABEL_32;
  }

  v24 = HandleForToken;
  v25 = v65;
  v26 = 8 * v66;
  while (1)
  {
    v27 = *v25;
    v28 = mlir::ODIE::Compiler::getHandleForToken(*v25);
    if (v28 && v28 != v24)
    {
      break;
    }

    ++v25;
    v26 -= 8;
    if (!v26)
    {
      goto LABEL_32;
    }
  }

  v32 = v28;
  v50 = 257;
  mlir::OpState::emitError(this, v49, &v53);
  if (v53)
  {
    LODWORD(v51) = 3;
    *(&v51 + 1) = "expected input token '";
    v52 = 22;
    if (v56 >= v57)
    {
      if (v55 > &v51 || v55 + 24 * v56 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = v55 + 24 * v56;
    v34 = v51;
    *(v33 + 2) = v52;
    *v33 = v34;
    ++v56;
    if (v53)
    {
      mlir::Diagnostic::operator<<(v54, v27);
      if (v53)
      {
        LODWORD(v51) = 3;
        *(&v51 + 1) = "' to represent state for '";
        v52 = 26;
        if (v56 >= v57)
        {
          if (v55 > &v51 || v55 + 24 * v56 <= &v51)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v55 + 24 * v56;
        v36 = v51;
        *(v35 + 2) = v52;
        *v35 = v36;
        ++v56;
        if (v53)
        {
          mlir::Diagnostic::operator<<(v54, v24);
          if (v53)
          {
            LODWORD(v51) = 3;
            *(&v51 + 1) = "', found that it represents '";
            v52 = 29;
            if (v56 >= v57)
            {
              if (v55 > &v51 || v55 + 24 * v56 <= &v51)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v37 = v55 + 24 * v56;
            v38 = v51;
            *(v37 + 2) = v52;
            *v37 = v38;
            ++v56;
            if (v53)
            {
              mlir::Diagnostic::operator<<(v54, v32);
              if (v53)
              {
                LODWORD(v51) = 3;
                *(&v51 + 1) = "'";
                v52 = 1;
                if (v56 >= v57)
                {
                  if (v55 > &v51 || v55 + 24 * v56 <= &v51)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v39 = v55 + 24 * v56;
                v40 = v51;
                *(v39 + 2) = v52;
                *v39 = v40;
                ++v56;
              }
            }
          }
        }
      }
    }
  }

  v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
  }

  if (v64)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v62;
      v43 = __p;
      if (v62 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v62 = v41;
      operator delete(v43);
    }

    v44 = v59;
    if (v59)
    {
      v45 = v60;
      v46 = v59;
      if (v60 != v59)
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
        v46 = v59;
      }

      v60 = v44;
      operator delete(v46);
    }

    if (v55 != &v58)
    {
      free(v55);
    }
  }

LABEL_33:
  if (v65 != &v67)
  {
    free(v65);
  }

  return v30;
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::fold(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 72) + 24);
  v24 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v24))
  {
    Shape = mlir::TensorType::getShape(&v24);
    if (v5)
    {
      v6 = 8 * v5;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
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
      if (mlir::TensorType::hasRank(&v23))
      {
        v7 = mlir::TensorType::getShape(&v23);
        if (v8)
        {
          v9 = 8 * v8;
          while (*v7 != 0x8000000000000000)
          {
            ++v7;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (v24 == v23)
          {
            return v3 | 4;
          }
        }
      }
    }
  }

  v22 = 0;
  v10 = *(*(*a1 + 72) + 56);
  *&v25 = &v22;
  *&v19 = v10;
  result = mlir::Value::getDefiningOp(&v19);
  if (!result)
  {
    return result;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v25, result))
  {
    return 0;
  }

  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v22, &v19);
  mlir::TensorType::getShape(&v24);
  if (v12 < 1)
  {
    return v3 | 4;
  }

  v13 = 0;
  while (1)
  {
    v25 = v19;
    v26 = v13 + v20;
    v27 = v21;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v25, &v17);
    if (v18 > 0x40)
    {
      v14 = *v17;
      MEMORY[0x259C63150]();
      if (v14 != 1)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (!v18 || (v17 << -v18) >> -v18 != 1)
    {
      return 0;
    }

LABEL_17:
    ++v13;
    mlir::TensorType::getShape(&v24);
    if (v15 <= v13)
    {
      return v3 | 4;
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verify(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v18);
  v17 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*mlir::RankedTensorType::getShape(&v17) == v2)
  {
    return 1;
  }

  v16 = 257;
  mlir::OpState::emitError(this, v15, v21);
  if (v21[0])
  {
    LODWORD(v19) = 3;
    *(&v19 + 1) = "number of elements in dims must be equal to input rank";
    v20 = 54;
    if (v23 >= v24)
    {
      if (v22 > &v19 || v22 + 24 * v23 <= &v19)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v22 + 24 * v23;
    v5 = v19;
    *(v4 + 2) = v20;
    *v4 = v5;
    ++v23;
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v29;
      v8 = __p;
      if (v29 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v29 = v6;
      operator delete(v8);
    }

    v9 = v26;
    if (v26)
    {
      v10 = v27;
      v11 = v26;
      if (v27 != v26)
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
        v11 = v26;
      }

      v27 = v9;
      operator delete(v11);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = a4;
  v18[1] = a5;
  if (a5 == 1)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      v13 = 0;
    }

    v17 = v13;
    if (v13)
    {
      InnerType = mlir::ODIE::Compiler::CoreML::AsyncValueType::getInnerType(&v17);
      v15 = *(a11 + 8);
      if (v15 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v15) = InnerType;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected exactly 1 operand");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::Conv2dOp::verify(mlir::Operation **this)
{
  v63 = *MEMORY[0x277D85DE8];
  v52[0] = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v52))
  {
    Shape = mlir::RankedTensorType::getShape(v52);
    if (v3)
    {
      v4 = 8 * v3;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(v52);
      if (v5 != 1 || (v6 = mlir::RankedTensorType::getShape(v52), mlir::ShapedType::getNumElements(v6, v7) != 2))
      {
        v49 = 257;
        mlir::OpState::emitError(this, v48, v52);
        if (v52[0])
        {
          LODWORD(v50) = 3;
          *(&v50 + 1) = "expect two elements in strides";
          v51 = 30;
          if (v54 >= v55)
          {
            if (v53 > &v50 || v53 + 24 * v54 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v21 = v53 + 24 * v54;
          v22 = v50;
          *(v21 + 2) = v51;
          *v21 = v22;
          ++v54;
        }

        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
        if (v52[0])
        {
          mlir::InFlightDiagnostic::report(v52);
        }

        if (v62 == 1)
        {
          if (v61 != &v62)
          {
            free(v61);
          }

          v23 = __p;
          if (__p)
          {
            v24 = v60;
            v25 = __p;
            if (v60 != __p)
            {
              do
              {
                v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
              }

              while (v24 != v23);
              v25 = __p;
            }

            v60 = v23;
            operator delete(v25);
          }

          v26 = v57;
          if (!v57)
          {
            goto LABEL_82;
          }

          v27 = v58;
          v28 = v57;
          if (v58 == v57)
          {
            goto LABEL_81;
          }

          do
          {
            v30 = *--v27;
            v29 = v30;
            *v27 = 0;
            if (v30)
            {
              MEMORY[0x259C63150](v29, 0x1000C8077774924);
            }
          }

          while (v27 != v26);
          goto LABEL_80;
        }

        return v20;
      }
    }
  }

  v52[0] = *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(v52))
  {
    goto LABEL_15;
  }

  v8 = mlir::RankedTensorType::getShape(v52);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  mlir::RankedTensorType::getShape(v52);
  if (v11 == 1)
  {
    v12 = mlir::RankedTensorType::getShape(v52);
    if (mlir::ShapedType::getNumElements(v12, v13) == 2)
    {
LABEL_15:
      v52[0] = *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::TensorType::hasRank(v52))
      {
        return 1;
      }

      v14 = mlir::RankedTensorType::getShape(v52);
      if (v15)
      {
        v16 = 8 * v15;
        while (*v14 != 0x8000000000000000)
        {
          ++v14;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        return 1;
      }

LABEL_20:
      mlir::RankedTensorType::getShape(v52);
      if (v17 == 1)
      {
        v18 = mlir::RankedTensorType::getShape(v52);
        if (mlir::ShapedType::getNumElements(v18, v19) == 2)
        {
          return 1;
        }
      }

      v49 = 257;
      mlir::OpState::emitError(this, v48, v52);
      if (v52[0])
      {
        LODWORD(v50) = 3;
        *(&v50 + 1) = "expect two elements in dilation";
        v51 = 31;
        if (v54 >= v55)
        {
          if (v53 > &v50 || v53 + 24 * v54 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v39 = v53 + 24 * v54;
        v40 = v50;
        *(v39 + 2) = v51;
        *v39 = v40;
        ++v54;
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v41 = __p;
        if (__p)
        {
          v42 = v60;
          v43 = __p;
          if (v60 != __p)
          {
            do
            {
              v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
            }

            while (v42 != v41);
            v43 = __p;
          }

          v60 = v41;
          operator delete(v43);
        }

        v26 = v57;
        if (!v57)
        {
          goto LABEL_82;
        }

        v44 = v58;
        v28 = v57;
        if (v58 == v57)
        {
LABEL_81:
          v58 = v26;
          operator delete(v28);
LABEL_82:
          if (v53 != &v56)
          {
            free(v53);
          }

          return v20;
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

        while (v44 != v26);
LABEL_80:
        v28 = v57;
        goto LABEL_81;
      }

      return v20;
    }
  }

  v49 = 257;
  mlir::OpState::emitError(this, v48, v52);
  if (v52[0])
  {
    LODWORD(v50) = 3;
    *(&v50 + 1) = "expect two elements in padding";
    v51 = 30;
    if (v54 >= v55)
    {
      if (v53 > &v50 || v53 + 24 * v54 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = v53 + 24 * v54;
    v32 = v50;
    *(v31 + 2) = v51;
    *v31 = v32;
    ++v54;
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v60;
      v35 = __p;
      if (v60 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v60 = v33;
      operator delete(v35);
    }

    v26 = v57;
    if (!v57)
    {
      goto LABEL_82;
    }

    v36 = v58;
    v28 = v57;
    if (v58 == v57)
    {
      goto LABEL_81;
    }

    do
    {
      v38 = *--v36;
      v37 = v38;
      *v36 = 0;
      if (v38)
      {
        MEMORY[0x259C63150](v37, 0x1000C8077774924);
      }
    }

    while (v36 != v26);
    goto LABEL_80;
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::RealPartOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  return mlir::ODIE::Compiler::CoreML::inferInnerType((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8), a11);
}

uint64_t mlir::ODIE::Compiler::CoreML::inferInnerType(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v18 = a1;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    a1 = v18;
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
  v19[0] = a1;
  v19[1] = v13;
  *&v20 = mlir::ShapedType::getElementType(v19);
  ElementType = mlir::ComplexType::getElementType(&v20);
  LOBYTE(v20) = 0;
  v21 = 0;
  v15 = mlir::ShapedType::cloneWith(v19, &v20, ElementType);
  v16 = *(a2 + 8);
  if (v16 >= *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a2 + 8 * v16) = v15;
  ++*(a2 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  return mlir::ODIE::Compiler::CoreML::inferInnerType((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8), a11);
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  v11 = (*(mlir::ValueRange::dereference_iterator(v32, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *v11;
  {
    v28 = v11;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v11 = v28;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_14;
  }

  v22 = v16[1];
LABEL_15:
  v29[0] = v11;
  v29[1] = v22;
  ElementType = mlir::ShapedType::getElementType(v29);
  v24 = mlir::ComplexType::get(ElementType);
  LOBYTE(v30) = 0;
  v31 = 0;
  v25 = mlir::ShapedType::cloneWith(v29, &v30, v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::AddOp *this, mlir::OpBuilder *a2)
{
  v4 = *this;
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v25 = v6;
    v22 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
    v23 = v7;
    v8 = *(*this + 24);
    v20 = *(PartsOfComplex - 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, v8, &v20, &PartsOfComplex, &v22);
    v9 = *(*this + 24);
    v19 = *(PartsOfComplex - 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, v9, &v19, &v25, &v23);
    v10 = *(*this + 24);
    v19 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(a2, v10, &v19, &v21, &v20);
    v12 = *this;
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0); ; *i = v15)
    {
      v15 = *(v12 - 16);
      if (!v15)
      {
        break;
      }

      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = *v15;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      v15[3] = i;
      v15[1] = i;
      v18 = *i;
      *v15 = *i;
      if (v18)
      {
        *(v18 + 8) = v15;
      }
    }
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v20[0] = *a4 - 16;
  v19[0] = v14;
  mlir::OperationState::addOperands(v21, v20, 1uLL);
  mlir::OperationState::addOperands(v21, v19, 1uLL);
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v21[8] + 8 * v22++) = v13;
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::BatchMatmulOp *this, mlir::OpBuilder *a2)
{
  v4 = *this;
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
  v42 = v6;
  v39 = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 56), *(*this + 24));
  v40 = v7;
  v8 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *v8;
  {
    v30 = v9;
    v31 = v8;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v8 = v31;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v30 + 8);
    v12 = *(v30 + 16);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_17;
  }

  v19 = v13[1];
LABEL_18:
  v38[0] = v8;
  v38[1] = v19;
  *&v43 = mlir::ShapedType::getElementType(v38);
  ElementType = mlir::ComplexType::getElementType(&v43);
  LOBYTE(v43) = 0;
  v44 = 0;
  *&v43 = mlir::ShapedType::cloneWith(v38, &v43, ElementType);
  *(&v43 + 1) = v21;
  v37 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &PartsOfComplex, &v39);
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &v42, &v40);
  v35 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &PartsOfComplex, &v40);
  v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &v42, &v39);
  v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(a2, *(*this + 24), &v43, &v37, &v36);
  v32 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v43, &v35, &v34);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(a2, *(*this + 24), v38, &v33, &v32);
  v23 = *this;
  if (*(v22 + 36))
  {
    v24 = v22 - 16;
  }

  else
  {
    v24 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0); ; *i = v26)
  {
    v26 = *(v23 - 16);
    if (!v26)
    {
      break;
    }

    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      *v27 = *v26;
      if (v28)
      {
        *(v28 + 8) = v27;
      }
    }

    v26[3] = i;
    v26[1] = i;
    v29 = *i;
    *v26 = *i;
    if (v29)
    {
      *(v29 + 8) = v26;
    }
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v20[0] = *a4 - 16;
  v19[0] = v14;
  mlir::OperationState::addOperands(v21, v20, 1uLL);
  mlir::OperationState::addOperands(v21, v19, 1uLL);
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v21[8] + 8 * v22++) = v13;
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v20[0] = *a4 - 16;
  v19[0] = v14;
  mlir::OperationState::addOperands(v21, v20, 1uLL);
  mlir::OperationState::addOperands(v21, v19, 1uLL);
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v21[8] + 8 * v22++) = v13;
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verify(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v42[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::RankedTensorType::getShape(v42);
  v5 = v4;
  v42[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(v42);
  if (v5 == 2)
  {
    if (v6 == *(Shape + 8))
    {
      return 1;
    }

    v39 = 257;
    v18 = v6;
    mlir::OpState::emitError(this, v38, v42);
    if (v42[0])
    {
      LODWORD(v40) = 3;
      *(&v40 + 1) = "coreml.non_zero output.shape[1] is ";
      v41 = 35;
      if (v44 >= v45)
      {
        if (v43 > &v40 || v43 + 24 * v44 <= &v40)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v43 + 24 * v44;
      v20 = v40;
      *(v19 + 2) = v41;
      *v19 = v20;
      v21 = ++v44;
      if (v42[0])
      {
        v22 = *(Shape + 8);
        LODWORD(v40) = 2;
        *(&v40 + 1) = v22;
        if (v21 >= v45)
        {
          if (v43 > &v40 || v43 + 24 * v21 <= &v40)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v43 + 24 * v44;
        v24 = v40;
        *(v23 + 2) = v41;
        *v23 = v24;
        v25 = ++v44;
        if (v42[0])
        {
          LODWORD(v40) = 3;
          *(&v40 + 1) = " which is not equal to input rank ";
          v41 = 34;
          if (v25 >= v45)
          {
            if (v43 > &v40 || v43 + 24 * v25 <= &v40)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v26 = v43 + 24 * v44;
          v27 = v40;
          *(v26 + 2) = v41;
          *v26 = v27;
          v28 = ++v44;
          if (v42[0])
          {
            LODWORD(v40) = 2;
            *(&v40 + 1) = v18;
            if (v28 >= v45)
            {
              if (v43 > &v40 || v43 + 24 * v28 <= &v40)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v29 = v43 + 24 * v44;
            v30 = v40;
            *(v29 + 2) = v41;
            *v29 = v30;
            ++v44;
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
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

      v31 = __p;
      if (__p)
      {
        v32 = v50;
        v33 = __p;
        if (v50 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v50 = v31;
        operator delete(v33);
      }

      v13 = v47;
      if (!v47)
      {
        goto LABEL_53;
      }

      v34 = v48;
      v15 = v47;
      if (v48 == v47)
      {
LABEL_52:
        v48 = v13;
        operator delete(v15);
LABEL_53:
        if (v43 != &v46)
        {
          free(v43);
        }

        return v7;
      }

      do
      {
        v36 = *--v34;
        v35 = v36;
        *v34 = 0;
        if (v36)
        {
          MEMORY[0x259C63150](v35, 0x1000C8077774924);
        }
      }

      while (v34 != v13);
LABEL_51:
      v15 = v47;
      goto LABEL_52;
    }
  }

  else
  {
    v39 = 257;
    mlir::OpState::emitError(this, v38, v42);
    if (v42[0])
    {
      LODWORD(v40) = 3;
      *(&v40 + 1) = "expect output of rank 2 for coreml.non_zero";
      v41 = 43;
      if (v44 >= v45)
      {
        if (v43 > &v40 || v43 + 24 * v44 <= &v40)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v43 + 24 * v44;
      v9 = v40;
      *(v8 + 2) = v41;
      *v8 = v9;
      ++v44;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
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

      v10 = __p;
      if (__p)
      {
        v11 = v50;
        v12 = __p;
        if (v50 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v50 = v10;
        operator delete(v12);
      }

      v13 = v47;
      if (!v47)
      {
        goto LABEL_53;
      }

      v14 = v48;
      v15 = v47;
      if (v48 == v47)
      {
        goto LABEL_52;
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
      goto LABEL_51;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v9[1] = a4;
  mlir::ValueRange::ValueRange(v10, v9, 2uLL);
  result = mlir::OperationState::addOperands(a2, v10[0], v10[1]);
  v7 = *(a3 + 8);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = v7 & 0xFFFFFFFFFFFFFFF8;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::AddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::AddOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v22[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    v7 = result;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
      result = v7;
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
        result = v7;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v30;
        v18 = __p;
        if (v30 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v30 = v16;
        operator delete(v18);
        result = v7;
      }

      v11 = v27;
      if (!v27)
      {
        goto LABEL_46;
      }

      v19 = v28;
      v13 = v27;
      if (v28 == v27)
      {
LABEL_45:
        v28 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v25 != &v26)
        {
          free(v25);
          return v7;
        }

        return result;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v11);
LABEL_44:
      v13 = v27;
      goto LABEL_45;
    }
  }

  else
  {
    v22[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    v7 = result;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
      result = v7;
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v30;
        v10 = __p;
        if (v30 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v30 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v27;
      if (!v27)
      {
        goto LABEL_46;
      }

      v12 = v28;
      v13 = v27;
      if (v28 == v27)
      {
        goto LABEL_45;
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
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_36;
  }

  v12 = *a2;
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v50[0] = a2;
  v50[1] = v22;
  v43[0] = mlir::ShapedType::getElementType(v50);
  if (mlir::Type::isF16(v43))
  {
    return 1;
  }

  if (mlir::Type::isF32(v43))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 64))
  {
    return 1;
  }

  if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v47 = v43[0];
    *&v48 = mlir::ComplexType::getElementType(&v47);
    if (mlir::Type::isF16(&v48))
    {
      return 1;
    }

    if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v45 = v43[0];
      ElementType = mlir::ComplexType::getElementType(&v45);
      if (mlir::Type::isF32(&ElementType))
      {
        return 1;
      }
    }
  }

  v23 = 1;
  if (mlir::Type::isSignlessInteger(v43, 1))
  {
    return v23;
  }

LABEL_36:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v50, a1, v43);
  if (v50[0])
  {
    LODWORD(v48) = 3;
    *(&v48 + 1) = " #";
    v49 = 2;
    if (v52 >= v53)
    {
      if (v51 > &v48 || v51 + 24 * v52 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v51 + 24 * v52;
    v25 = v48;
    *(v24 + 2) = v49;
    *v24 = v25;
    v26 = ++v52;
    if (v50[0])
    {
      LODWORD(v48) = 5;
      *(&v48 + 1) = a5;
      if (v26 >= v53)
      {
        if (v51 > &v48 || v51 + 24 * v26 <= &v48)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v51 + 24 * v52;
      v28 = v48;
      *(v27 + 2) = v49;
      *v27 = v28;
      v29 = ++v52;
      if (v50[0])
      {
        LODWORD(v48) = 3;
        *(&v48 + 1) = " must be CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v49 = 246;
        if (v29 >= v53)
        {
          if (v51 > &v48 || v51 + 24 * v29 <= &v48)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v51 + 24 * v52;
        v31 = v48;
        *(v30 + 2) = v49;
        *v30 = v31;
        ++v52;
        if (v50[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
          if (v52 >= v53)
          {
            if (v51 > &v48 || v51 + 24 * v52 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v51 + 24 * v52;
          v33 = v48;
          *(v32 + 2) = v49;
          *v32 = v33;
          ++v52;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v58;
      v36 = __p;
      if (v58 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v58 = v34;
      operator delete(v36);
    }

    v37 = v55;
    if (v55)
    {
      v38 = v56;
      v39 = v55;
      if (v56 != v55)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v55;
      }

      v56 = v37;
      operator delete(v39);
    }

    if (v51 != &v54)
    {
      free(v51);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::AllOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::AllOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::ODIE::Compiler::CoreML::AllOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::AllOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11 && mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    v12 = *a2;
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      if (!v15)
      {
        goto LABEL_19;
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
LABEL_21:
      v47[0] = a2;
      v47[1] = v22;
      v43[0] = mlir::ShapedType::getElementType(v47);
      v23 = 1;
      if (mlir::Type::isSignlessInteger(v43, 1))
      {
        return v23;
      }

      goto LABEL_22;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

LABEL_22:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v47, a1, v43);
  if (v47[0])
  {
    LODWORD(v45) = 3;
    *(&v45 + 1) = " #";
    v46 = 2;
    if (v49 >= v50)
    {
      if (v48 > &v45 || v48 + 24 * v49 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v48 + 24 * v49;
    v25 = v45;
    *(v24 + 2) = v46;
    *v24 = v25;
    v26 = ++v49;
    if (v47[0])
    {
      LODWORD(v45) = 5;
      *(&v45 + 1) = a5;
      if (v26 >= v50)
      {
        if (v48 > &v45 || v48 + 24 * v26 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v48 + 24 * v49;
      v28 = v45;
      *(v27 + 2) = v46;
      *v27 = v28;
      v29 = ++v49;
      if (v47[0])
      {
        LODWORD(v45) = 3;
        *(&v45 + 1) = " must be CoreML Tensor of Boolean type. values, but got ";
        v46 = 56;
        if (v29 >= v50)
        {
          if (v48 > &v45 || v48 + 24 * v29 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v48 + 24 * v49;
        v31 = v45;
        *(v30 + 2) = v46;
        *v30 = v31;
        ++v49;
        if (v47[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
          if (v49 >= v50)
          {
            if (v48 > &v45 || v48 + 24 * v49 <= &v45)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v48 + 24 * v49;
          v33 = v45;
          *(v32 + 2) = v46;
          *v32 = v33;
          ++v49;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
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

    v34 = __p;
    if (__p)
    {
      v35 = v55;
      v36 = __p;
      if (v55 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v55 = v34;
      operator delete(v36);
    }

    v37 = v52;
    if (v52)
    {
      v38 = v53;
      v39 = v52;
      if (v53 != v52)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v52;
      }

      v53 = v37;
      operator delete(v39);
    }

    if (v48 != &v51)
    {
      free(v48);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v29 = a1;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v9[1];
    v32 = *(v9 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v40[1];
    v32 = *(v40 + 4);
    if (!v32)
    {
      goto LABEL_56;
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
    v42 = v33[1];
    v77 = a2;
    v78 = v42;
    hasRank = mlir::ShapedType::hasRank(&v77);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v77 = a2;
  v78 = 0;
  v41 = mlir::ShapedType::hasRank(&v77);
  a1 = v29;
  if (!v41)
  {
    goto LABEL_2;
  }

LABEL_59:
  v44 = *a2;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v44[1];
    v47 = *(v44 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v70 = v44;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v70[1];
    v47 = *(v70 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
  if (v48 != &v46[2 * v47] && *v48 == v45)
  {
    v55 = v48[1];
    v71 = a2;
    v72 = v55;
    mlir::ShapedType::getShape(&v71);
    a1 = v29;
    if (v56 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v71 = a2;
  v72 = 0;
  mlir::ShapedType::getShape(&v71);
  a1 = v29;
  if (v54 != 1)
  {
    goto LABEL_2;
  }

LABEL_74:
  v57 = *a2;
  {
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = v57[1];
    v60 = *(v57 + 4);
    if (!v60)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v67 = v57;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = v67[1];
    v60 = *(v67 + 4);
    if (!v60)
    {
      goto LABEL_88;
    }
  }

  v61 = v59;
  v62 = v60;
  do
  {
    v63 = v62 >> 1;
    v64 = &v61[2 * (v62 >> 1)];
    v66 = *v64;
    v65 = v64 + 2;
    v62 += ~(v62 >> 1);
    if (v66 < v58)
    {
      v61 = v65;
    }

    else
    {
      v62 = v63;
    }
  }

  while (v62);
  if (v61 != &v59[2 * v60] && *v61 == v58)
  {
    v68 = v61[1];
    goto LABEL_90;
  }

LABEL_88:
  v68 = 0;
LABEL_90:
  *&v75 = a2;
  *(&v75 + 1) = v68;
  ElementType = mlir::ShapedType::getElementType(&v75);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v29;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v73 = 261;
  v71 = a3;
  v72 = a4;
  mlir::Operation::emitOpError(&v77, a1, &v71);
  if (v77)
  {
    LODWORD(v75) = 3;
    *(&v75 + 1) = " #";
    v76 = 2;
    if (v80 >= v81)
    {
      if (v79 > &v75 || v79 + 24 * v80 <= &v75)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v79 + 24 * v80;
    v11 = v75;
    *(v10 + 2) = v76;
    *v10 = v11;
    v12 = ++v80;
    if (v77)
    {
      LODWORD(v75) = 5;
      *(&v75 + 1) = a5;
      if (v12 >= v81)
      {
        if (v79 > &v75 || v79 + 24 * v12 <= &v75)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v79 + 24 * v80;
      v14 = v75;
      *(v13 + 2) = v76;
      *v13 = v14;
      v15 = ++v80;
      if (v77)
      {
        LODWORD(v75) = 3;
        *(&v75 + 1) = " must be 1D tensor of Index type. values, but got ";
        v76 = 50;
        if (v15 >= v81)
        {
          if (v79 > &v75 || v79 + 24 * v15 <= &v75)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v79 + 24 * v80;
        v17 = v75;
        *(v16 + 2) = v76;
        *v16 = v17;
        ++v80;
        if (v77)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, a2);
          if (v80 >= v81)
          {
            if (v79 > &v75 || v79 + 24 * v80 <= &v75)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v79 + 24 * v80;
          v19 = v75;
          *(v18 + 2) = v76;
          *v18 = v19;
          ++v80;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v88 == 1)
  {
    if (v87 != &v88)
    {
      free(v87);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v86;
      v23 = __p;
      if (v86 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v86 = v21;
      operator delete(v23);
    }

    v24 = v83;
    if (v83)
    {
      v25 = v84;
      v26 = v83;
      if (v84 != v83)
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
        v26 = v83;
      }

      v84 = v24;
      operator delete(v26);
    }

    if (v79 != &v82)
    {
      free(v79);
    }
  }

  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v29 = a1;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v9[1];
    v32 = *(v9 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v40[1];
    v32 = *(v40 + 4);
    if (!v32)
    {
      goto LABEL_56;
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
    v42 = v33[1];
    v77 = a2;
    v78 = v42;
    hasRank = mlir::ShapedType::hasRank(&v77);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v77 = a2;
  v78 = 0;
  v41 = mlir::ShapedType::hasRank(&v77);
  a1 = v29;
  if (!v41)
  {
    goto LABEL_2;
  }

LABEL_59:
  v44 = *a2;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v44[1];
    v47 = *(v44 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v70 = v44;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v70[1];
    v47 = *(v70 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
  if (v48 != &v46[2 * v47] && *v48 == v45)
  {
    v55 = v48[1];
    v71 = a2;
    v72 = v55;
    mlir::ShapedType::getShape(&v71);
    a1 = v29;
    if (!v56)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v71 = a2;
  v72 = 0;
  mlir::ShapedType::getShape(&v71);
  a1 = v29;
  if (!v54)
  {
LABEL_74:
    v57 = *a2;
    {
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v57[1];
      v60 = *(v57 + 4);
      if (!v60)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v67 = v57;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v67[1];
      v60 = *(v67 + 4);
      if (!v60)
      {
        goto LABEL_88;
      }
    }

    v61 = v59;
    v62 = v60;
    do
    {
      v63 = v62 >> 1;
      v64 = &v61[2 * (v62 >> 1)];
      v66 = *v64;
      v65 = v64 + 2;
      v62 += ~(v62 >> 1);
      if (v66 < v58)
      {
        v61 = v65;
      }

      else
      {
        v62 = v63;
      }
    }

    while (v62);
    if (v61 != &v59[2 * v60] && *v61 == v58)
    {
      v68 = v61[1];
LABEL_90:
      *&v75 = a2;
      *(&v75 + 1) = v68;
      ElementType = mlir::ShapedType::getElementType(&v75);
      v20 = 1;
      isSignlessInteger = mlir::Type::isSignlessInteger(&ElementType, 1);
      a1 = v29;
      if (isSignlessInteger)
      {
        return v20;
      }

      goto LABEL_2;
    }

LABEL_88:
    v68 = 0;
    goto LABEL_90;
  }

LABEL_2:
  v73 = 261;
  v71 = a3;
  v72 = a4;
  mlir::Operation::emitOpError(&v77, a1, &v71);
  if (v77)
  {
    LODWORD(v75) = 3;
    *(&v75 + 1) = " #";
    v76 = 2;
    if (v80 >= v81)
    {
      if (v79 > &v75 || v79 + 24 * v80 <= &v75)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v79 + 24 * v80;
    v11 = v75;
    *(v10 + 2) = v76;
    *v10 = v11;
    v12 = ++v80;
    if (v77)
    {
      LODWORD(v75) = 5;
      *(&v75 + 1) = a5;
      if (v12 >= v81)
      {
        if (v79 > &v75 || v79 + 24 * v12 <= &v75)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v79 + 24 * v80;
      v14 = v75;
      *(v13 + 2) = v76;
      *v13 = v14;
      v15 = ++v80;
      if (v77)
      {
        LODWORD(v75) = 3;
        *(&v75 + 1) = " must be 0D tensor of Boolean type. values, but got ";
        v76 = 52;
        if (v15 >= v81)
        {
          if (v79 > &v75 || v79 + 24 * v15 <= &v75)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v79 + 24 * v80;
        v17 = v75;
        *(v16 + 2) = v76;
        *v16 = v17;
        ++v80;
        if (v77)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, a2);
          if (v80 >= v81)
          {
            if (v79 > &v75 || v79 + 24 * v80 <= &v75)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v79 + 24 * v80;
          v19 = v75;
          *(v18 + 2) = v76;
          *v18 = v19;
          ++v80;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v88 == 1)
  {
    if (v87 != &v88)
    {
      free(v87);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v86;
      v23 = __p;
      if (v86 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v86 = v21;
      operator delete(v23);
    }

    v24 = v83;
    if (v83)
    {
      v25 = v84;
      v26 = v83;
      if (v84 != v83)
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
        v26 = v83;
      }

      v84 = v24;
      operator delete(v26);
    }

    if (v79 != &v82)
    {
      free(v79);
    }
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::AndOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

BOOL mlir::ODIE::Compiler::CoreML::AndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::AnyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::AnyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::ODIE::Compiler::CoreML::AnyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::AnyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = a5;
  v20 = a4;
  v17 = a7;
  v18 = a6;
  v15 = a9;
  v16 = a8;
  v14 = a10;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a6;
  v24 = a5;
  v21 = a8;
  v22 = a7;
  v19 = a10;
  v20 = a9;
  v18 = a11;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
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

unint64_t mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v29 = a1;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v9[1];
    v32 = *(v9 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v40[1];
    v32 = *(v40 + 4);
    if (!v32)
    {
      goto LABEL_56;
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
    v42 = v33[1];
    v81 = a2;
    v82 = v42;
    hasRank = mlir::ShapedType::hasRank(&v81);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v81 = a2;
  v82 = 0;
  v41 = mlir::ShapedType::hasRank(&v81);
  a1 = v29;
  if (!v41)
  {
    goto LABEL_2;
  }

LABEL_59:
  v44 = *a2;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v44[1];
    v47 = *(v44 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v70 = v44;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v70[1];
    v47 = *(v70 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
  if (v48 != &v46[2 * v47] && *v48 == v45)
  {
    v55 = v48[1];
    v71 = a2;
    v72 = v55;
    mlir::ShapedType::getShape(&v71);
    a1 = v29;
    if (v56 == 4)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v71 = a2;
  v72 = 0;
  mlir::ShapedType::getShape(&v71);
  a1 = v29;
  if (v54 == 4)
  {
LABEL_74:
    v57 = *a2;
    {
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v57[1];
      v60 = *(v57 + 4);
      if (!v60)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v67 = v57;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v67[1];
      v60 = *(v67 + 4);
      if (!v60)
      {
        goto LABEL_87;
      }
    }

    v61 = v59;
    v62 = v60;
    do
    {
      v63 = v62 >> 1;
      v64 = &v61[2 * (v62 >> 1)];
      v66 = *v64;
      v65 = v64 + 2;
      v62 += ~(v62 >> 1);
      if (v66 < v58)
      {
        v61 = v65;
      }

      else
      {
        v62 = v63;
      }
    }

    while (v62);
    if (v61 != &v59[2 * v60] && *v61 == v58)
    {
      v68 = v61[1];
      goto LABEL_89;
    }

LABEL_87:
    v68 = 0;
LABEL_89:
    *&v79 = a2;
    *(&v79 + 1) = v68;
    ElementType = mlir::ShapedType::getElementType(&v79);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      return 1;
    }

    if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_103;
    }

    v76 = ElementType;
    v77 = mlir::ComplexType::getElementType(&v76);
    if (!mlir::Type::isF16(&v77))
    {
      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_103:
        a1 = v29;
        goto LABEL_2;
      }

      v74 = ElementType;
      v75 = mlir::ComplexType::getElementType(&v74);
      isF32 = mlir::Type::isF32(&v75);
      a1 = v29;
      if (!isF32)
      {
        goto LABEL_2;
      }
    }

    return 1;
  }

LABEL_2:
  v73 = 261;
  v71 = a3;
  v72 = a4;
  mlir::Operation::emitOpError(&v81, a1, &v71);
  if (v81)
  {
    LODWORD(v79) = 3;
    *(&v79 + 1) = " #";
    v80 = 2;
    if (v84 >= v85)
    {
      if (v83 > &v79 || v83 + 24 * v84 <= &v79)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v83 + 24 * v84;
    v11 = v79;
    *(v10 + 2) = v80;
    *v10 = v11;
    v12 = ++v84;
    if (v81)
    {
      LODWORD(v79) = 5;
      *(&v79 + 1) = a5;
      if (v12 >= v85)
      {
        if (v83 > &v79 || v83 + 24 * v12 <= &v79)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v83 + 24 * v84;
      v14 = v79;
      *(v13 + 2) = v80;
      *v13 = v14;
      v15 = ++v84;
      if (v81)
      {
        LODWORD(v79) = 3;
        *(&v79 + 1) = " must be 4D tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v80 = 225;
        if (v15 >= v85)
        {
          if (v83 > &v79 || v83 + 24 * v15 <= &v79)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v83 + 24 * v84;
        v17 = v79;
        *(v16 + 2) = v80;
        *v16 = v17;
        ++v84;
        if (v81)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v79, a2);
          if (v84 >= v85)
          {
            if (v83 > &v79 || v83 + 24 * v84 <= &v79)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v83 + 24 * v84;
          v19 = v79;
          *(v18 + 2) = v80;
          *v18 = v19;
          ++v84;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
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

    v21 = __p;
    if (__p)
    {
      v22 = v90;
      v23 = __p;
      if (v90 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v90 = v21;
      operator delete(v23);
    }

    v24 = v87;
    if (v87)
    {
      v25 = v88;
      v26 = v87;
      if (v88 != v87)
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
        v26 = v87;
      }

      v88 = v24;
      operator delete(v26);
    }

    if (v83 != &v86)
    {
      free(v83);
    }
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v29 = a1;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v9[1];
    v32 = *(v9 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v40[1];
    v32 = *(v40 + 4);
    if (!v32)
    {
      goto LABEL_56;
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
    v42 = v33[1];
    v77 = a2;
    v78 = v42;
    hasRank = mlir::ShapedType::hasRank(&v77);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v77 = a2;
  v78 = 0;
  v41 = mlir::ShapedType::hasRank(&v77);
  a1 = v29;
  if (!v41)
  {
    goto LABEL_2;
  }

LABEL_59:
  v44 = *a2;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v44[1];
    v47 = *(v44 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v70 = v44;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v70[1];
    v47 = *(v70 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
  if (v48 != &v46[2 * v47] && *v48 == v45)
  {
    v55 = v48[1];
    v71 = a2;
    v72 = v55;
    mlir::ShapedType::getShape(&v71);
    a1 = v29;
    if (v56)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v71 = a2;
  v72 = 0;
  mlir::ShapedType::getShape(&v71);
  a1 = v29;
  if (v54)
  {
    goto LABEL_2;
  }

LABEL_74:
  v57 = *a2;
  {
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = v57[1];
    v60 = *(v57 + 4);
    if (!v60)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v67 = v57;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v59 = v67[1];
    v60 = *(v67 + 4);
    if (!v60)
    {
      goto LABEL_88;
    }
  }

  v61 = v59;
  v62 = v60;
  do
  {
    v63 = v62 >> 1;
    v64 = &v61[2 * (v62 >> 1)];
    v66 = *v64;
    v65 = v64 + 2;
    v62 += ~(v62 >> 1);
    if (v66 < v58)
    {
      v61 = v65;
    }

    else
    {
      v62 = v63;
    }
  }

  while (v62);
  if (v61 != &v59[2 * v60] && *v61 == v58)
  {
    v68 = v61[1];
    goto LABEL_90;
  }

LABEL_88:
  v68 = 0;
LABEL_90:
  *&v75 = a2;
  *(&v75 + 1) = v68;
  ElementType = mlir::ShapedType::getElementType(&v75);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v29;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v73 = 261;
  v71 = a3;
  v72 = a4;
  mlir::Operation::emitOpError(&v77, a1, &v71);
  if (v77)
  {
    LODWORD(v75) = 3;
    *(&v75 + 1) = " #";
    v76 = 2;
    if (v80 >= v81)
    {
      if (v79 > &v75 || v79 + 24 * v80 <= &v75)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v79 + 24 * v80;
    v11 = v75;
    *(v10 + 2) = v76;
    *v10 = v11;
    v12 = ++v80;
    if (v77)
    {
      LODWORD(v75) = 5;
      *(&v75 + 1) = a5;
      if (v12 >= v81)
      {
        if (v79 > &v75 || v79 + 24 * v12 <= &v75)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v79 + 24 * v80;
      v14 = v75;
      *(v13 + 2) = v76;
      *v13 = v14;
      v15 = ++v80;
      if (v77)
      {
        LODWORD(v75) = 3;
        *(&v75 + 1) = " must be 0D tensor of Index type. values, but got ";
        v76 = 50;
        if (v15 >= v81)
        {
          if (v79 > &v75 || v79 + 24 * v15 <= &v75)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v79 + 24 * v80;
        v17 = v75;
        *(v16 + 2) = v76;
        *v16 = v17;
        ++v80;
        if (v77)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, a2);
          if (v80 >= v81)
          {
            if (v79 > &v75 || v79 + 24 * v80 <= &v75)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v79 + 24 * v80;
          v19 = v75;
          *(v18 + 2) = v76;
          *v18 = v19;
          ++v80;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
  if (v77)
  {
    mlir::InFlightDiagnostic::report(&v77);
  }

  if (v88 == 1)
  {
    if (v87 != &v88)
    {
      free(v87);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v86;
      v23 = __p;
      if (v86 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v86 = v21;
      operator delete(v23);
    }

    v24 = v83;
    if (v83)
    {
      v25 = v84;
      v26 = v83;
      if (v84 != v83)
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
        v26 = v83;
      }

      v84 = v24;
      operator delete(v26);
    }

    if (v79 != &v82)
    {
      free(v79);
    }
  }

  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariants(mlir::Operation **this)
{
  result = 0;
  if (mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(this))
  {
    mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(this);
    if (v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::ODIE::Compiler::CoreML::AwaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  __src = v19;
  v18 = 0x200000000;
  v4 = *a2;
  mlir::ValueRange::ValueRange(v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v6 = mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(v6, v4, 1, v16[0], v16[1], v7, v8, v9, v12, v13, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v10 = v18;
  v11 = *(a2 + 72);
  if (v11 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v11), __src, 8 * v18);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v19)
  {
    free(__src);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::AwaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src) & 1) == 0)
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

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v26 = 261;
    v25[0] = "operand";
    v25[1] = 7;
    mlir::Operation::emitOpError(v29, v2, v25);
    if (v29[0])
    {
      LODWORD(v27) = 3;
      *(&v27 + 1) = " #";
      v28 = 2;
      if (v31 >= v32)
      {
        if (v30 > &v27 || v30 + 24 * v31 <= &v27)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v30 + 24 * v31;
      v5 = v27;
      *(v4 + 2) = v28;
      *v4 = v5;
      v6 = ++v31;
      if (v29[0])
      {
        LODWORD(v27) = 5;
        *(&v27 + 1) = 0;
        if (v6 >= v32)
        {
          if (v30 > &v27 || v30 + 24 * v6 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v30 + 24 * v31;
        v8 = v27;
        *(v7 + 2) = v28;
        *v7 = v8;
        v9 = ++v31;
        if (v29[0])
        {
          LODWORD(v27) = 3;
          *(&v27 + 1) = " must be , but got ";
          v28 = 19;
          if (v9 >= v32)
          {
            if (v30 > &v27 || v30 + 24 * v9 <= &v27)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v10 = v30 + 24 * v31;
          v11 = v27;
          *(v10 + 2) = v28;
          *v10 = v11;
          ++v31;
          if (v29[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v27, v3);
            if (v31 >= v32)
            {
              if (v30 > &v27 || v30 + 24 * v31 <= &v27)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v12 = v30 + 24 * v31;
            v13 = v27;
            *(v12 + 2) = v28;
            *v12 = v13;
            ++v31;
          }
        }
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v37;
        v17 = __p;
        if (v37 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v37 = v15;
        operator delete(v17);
      }

      v18 = v34;
      if (v34)
      {
        v19 = v35;
        v20 = v34;
        if (v35 != v34)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v34;
        }

        v35 = v18;
        operator delete(v20);
      }

      if (v30 != &v33)
      {
        free(v30);
      }
    }

    if (!v14)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::parse(mlir::ODIE::Compiler::CoreML::AwaitOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16[1] = 1;
  v17 = 0;
  v16[0] = &v17;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  if (!mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::AsyncValueType>(this, &v23))
  {
    return 0;
  }

  v17 = v23;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v18, v16, v5, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v23 = v25;
  v24 = 0x600000000;
  mlir::AsmParser::getContext(this);
  v6 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 2), *(a2 + 6));
  Context = mlir::AsmParser::getContext(this);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v8 = mlir::RegionRange::RegionRange(&v21, *(a2 + 28), *(a2 + 58));
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(v8, v6, 1, v22[0], v22[1], v9, v10, v11, v14, v15, &v23))
  {
    mlir::OperationState::addTypes(a2, v23, v24);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v23 != v25)
  {
    v13 = result;
    free(v23);
    return v13;
  }

  return result;
}

BOOL mlir::AsmParser::parseCustomTypeWithFallback<mlir::ODIE::Compiler::CoreML::AsyncValueType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  v19[0] = a1;
  if (((*(*a1 + 544))(a1, &v18, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_, v19) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of Type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
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

void mlir::ODIE::Compiler::CoreML::AwaitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v18 = v12;
  if ((*(*a2 + 64))(a2))
  {
    goto LABEL_18;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
  mlir::ODIE::Compiler::CoreML::AsyncValueType::print(&v18, a2);
  if (v14 != (*(*v13 + 80))(v13) + v13[4] - v13[2])
  {
    goto LABEL_18;
  }

  v12 = v18;
LABEL_17:
  (*(*a2 + 32))(a2, v12);
LABEL_18:
  v18 = v20;
  v19 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v16, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v54 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v4 + 17) < 2u)
  {
LABEL_13:
    v40[0] = "failed to verify that number of dims >=2 and last dim of operand 0 equals second last dim of operand 1";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v44);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    v17 = result;
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
      result = v17;
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v51;
        v20 = __p;
        if (v51 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v51 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v48;
      if (!v48)
      {
        goto LABEL_63;
      }

      v22 = v49;
      v23 = v48;
      if (v49 == v48)
      {
LABEL_62:
        v49 = v21;
        operator delete(v23);
        result = v17;
LABEL_63:
        if (v46 != &v47)
        {
          free(v46);
          return v17;
        }

        return result;
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
LABEL_61:
      v23 = v48;
      goto LABEL_62;
    }

    return result;
  }

  v5 = *(v4 + 9);
  if (*(*(*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && *(*(*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = mlir::Type::cast<mlir::ShapedType>(&v43);
    v8 = v7;
    v42 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = mlir::Type::cast<mlir::ShapedType>(&v42);
    v44 = v6;
    v45 = v8;
    v40[0] = v9;
    v40[1] = v10;
    mlir::ShapedType::getShape(&v44);
    v12 = v11;
    mlir::ShapedType::getShape(v40);
    if (v12 != v13)
    {
      goto LABEL_13;
    }

    mlir::ShapedType::getShape(&v44);
    v15 = v14 - 2;
    if (v14 < 2)
    {
      goto LABEL_13;
    }

    v26 = v14 - 1;
    v27 = *(mlir::ShapedType::getShape(&v44) + 8 * (v14 - 1));
    if (v27 != *(mlir::ShapedType::getShape(v40) + 8 * v15) && *(mlir::ShapedType::getShape(&v44) + 8 * v26) != 0x8000000000000000 && *(mlir::ShapedType::getShape(v40) + 8 * v15) != 0x8000000000000000)
    {
      goto LABEL_13;
    }

    if (v15)
    {
      v28 = 0;
      do
      {
        if (*(mlir::ShapedType::getShape(&v44) + 8 * v28) != 0x8000000000000000 && *(mlir::ShapedType::getShape(v40) + 8 * v28) != 0x8000000000000000)
        {
          v29 = *(mlir::ShapedType::getShape(&v44) + 8 * v28);
          if (v29 != *(mlir::ShapedType::getShape(v40) + 8 * v28))
          {
            goto LABEL_13;
          }
        }
      }

      while (v15 != ++v28);
    }

    v4 = *this;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v4 - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v31 = mlir::getElementTypeOrSelf(*this - 16);
    if (v31 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    else
    {
      v40[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, &v44);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
      if (v44)
      {
        v38 = result;
        mlir::InFlightDiagnostic::report(&v44);
        result = v38;
      }

      if (v53 == 1)
      {
        v39 = result;
        mlir::Diagnostic::~Diagnostic(&v45);
        return v39;
      }
    }
  }

  else
  {
    v40[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v44);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    v17 = result;
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
      result = v17;
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
        result = v17;
      }

      v32 = __p;
      if (__p)
      {
        v33 = v51;
        v34 = __p;
        if (v51 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v51 = v32;
        operator delete(v34);
        result = v17;
      }

      v21 = v48;
      if (!v48)
      {
        goto LABEL_63;
      }

      v35 = v49;
      v23 = v48;
      if (v49 == v48)
      {
        goto LABEL_62;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          MEMORY[0x259C63150](v36, 0x1000C8077774924);
        }
      }

      while (v35 != v21);
      goto LABEL_61;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_35;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v50[0] = a2;
  v50[1] = v22;
  v43[0] = mlir::ShapedType::getElementType(v50);
  if (mlir::Type::isF16(v43))
  {
    return 1;
  }

  if (mlir::Type::isF32(v43))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 64))
  {
    return 1;
  }

  if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v47 = v43[0];
    *&v48 = mlir::ComplexType::getElementType(&v47);
    if (mlir::Type::isF16(&v48))
    {
      return 1;
    }

    if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v45 = v43[0];
      ElementType = mlir::ComplexType::getElementType(&v45);
      if (mlir::Type::isF32(&ElementType))
      {
        return 1;
      }
    }
  }

LABEL_35:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v50, a1, v43);
  if (v50[0])
  {
    LODWORD(v48) = 3;
    *(&v48 + 1) = " #";
    v49 = 2;
    if (v52 >= v53)
    {
      if (v51 > &v48 || v51 + 24 * v52 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v51 + 24 * v52;
    v25 = v48;
    *(v24 + 2) = v49;
    *v24 = v25;
    v26 = ++v52;
    if (v50[0])
    {
      LODWORD(v48) = 5;
      *(&v48 + 1) = a5;
      if (v26 >= v53)
      {
        if (v51 > &v48 || v51 + 24 * v26 <= &v48)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v51 + 24 * v52;
      v28 = v48;
      *(v27 + 2) = v49;
      *v27 = v28;
      v29 = ++v52;
      if (v50[0])
      {
        LODWORD(v48) = 3;
        *(&v48 + 1) = " must be CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v49 = 229;
        if (v29 >= v53)
        {
          if (v51 > &v48 || v51 + 24 * v29 <= &v48)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v51 + 24 * v52;
        v31 = v48;
        *(v30 + 2) = v49;
        *v30 = v31;
        ++v52;
        if (v50[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
          if (v52 >= v53)
          {
            if (v51 > &v48 || v51 + 24 * v52 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v51 + 24 * v52;
          v33 = v48;
          *(v32 + 2) = v49;
          *v32 = v33;
          ++v52;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v58;
      v36 = __p;
      if (v58 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v58 = v34;
      operator delete(v36);
    }

    v37 = v55;
    if (v55)
    {
      v38 = v56;
      v39 = v55;
      if (v56 != v55)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v55;
      }

      v56 = v37;
      operator delete(v39);
    }

    if (v51 != &v54)
    {
      free(v51);
    }
  }

  return v23;
}

void *mlir::Type::cast<mlir::ShapedType>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a4;
  v16 = a6;
  v17 = a5;
  v14 = a8;
  v15 = a7;
  v13 = a9;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::BatchNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a5;
  v19 = a8;
  v20 = a7;
  v17 = a10;
  v18 = a9;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
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

unint64_t mlir::ODIE::Compiler::CoreML::BatchNormOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v111 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_37;
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = v4[1];
    v7 = *(v4 + 4);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = 0;
    v8 = v6;
    goto LABEL_17;
  }

  v14 = v4;
  mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = v14[1];
  v7 = *(v14 + 4);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_9:
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
LABEL_17:
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
  }

  else
  {
    v15 = 0;
  }

  *&v100 = v3;
  *(&v100 + 1) = v15;
  if (mlir::ShapedType::hasRank(&v100))
  {
    v16 = *v3;
    {
      v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v18 = v16[1];
      v19 = *(v16 + 4);
      if (v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v93 = v16;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v18 = v93[1];
      v19 = *(v93 + 4);
      if (v19)
      {
LABEL_24:
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
LABEL_32:
        if (v20 != &v18[2 * v19] && *v20 == v17)
        {
          v26 = v20[1];
        }

        else
        {
          v26 = 0;
        }

        v94 = v3;
        v95 = v26;
        mlir::ShapedType::getShape(&v94);
        if (v27)
        {
          goto LABEL_37;
        }

        v69 = *v3;
        {
          v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v71 = v69[1];
          v72 = *(v69 + 4);
          if (v72)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v91 = v69;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v71 = v91[1];
          v72 = *(v91 + 4);
          if (v72)
          {
LABEL_104:
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
LABEL_157:
            if (v73 != &v71[2 * v72] && *v73 == v70)
            {
              v92 = v73[1];
            }

            else
            {
              v92 = 0;
            }

            *&v98 = v3;
            *(&v98 + 1) = v92;
            ElementType = mlir::ShapedType::getElementType(&v98);
            if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
            {
              goto LABEL_67;
            }

            goto LABEL_37;
          }
        }

        v72 = 0;
        v73 = v71;
        goto LABEL_157;
      }
    }

    v19 = 0;
    v20 = v18;
    goto LABEL_32;
  }

LABEL_37:
  v96 = 261;
  v94 = "operand";
  v95 = 7;
  mlir::Operation::emitOpError(&v100, v2, &v94);
  if (v100)
  {
    LODWORD(v98) = 3;
    *(&v98 + 1) = " #";
    v99 = 2;
    if (v102 >= v103)
    {
      if (v101 > &v98 || v101 + 24 * v102 <= &v98)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v28 = v101 + 24 * v102;
    v29 = v98;
    *(v28 + 2) = v99;
    *v28 = v29;
    v30 = ++v102;
    if (v100)
    {
      LODWORD(v98) = 5;
      *(&v98 + 1) = 5;
      if (v30 >= v103)
      {
        if (v101 > &v98 || v101 + 24 * v30 <= &v98)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v101 + 24 * v102;
      v32 = v98;
      *(v31 + 2) = v99;
      *v31 = v32;
      v33 = ++v102;
      if (v100)
      {
        LODWORD(v98) = 3;
        *(&v98 + 1) = " must be 0D tensor of 16-bit float or 32-bit float values, but got ";
        v99 = 67;
        if (v33 >= v103)
        {
          if (v101 > &v98 || v101 + 24 * v33 <= &v98)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v34 = v101 + 24 * v102;
        v35 = v98;
        *(v34 + 2) = v99;
        *v34 = v35;
        ++v102;
        if (v100)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v98, v3);
          if (v102 >= v103)
          {
            if (v101 > &v98 || v101 + 24 * v102 <= &v98)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v36 = v101 + 24 * v102;
          v37 = v98;
          *(v36 + 2) = v99;
          *v36 = v37;
          ++v102;
        }
      }
    }
  }

  v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
  if (v100)
  {
    mlir::InFlightDiagnostic::report(&v100);
  }

  if (v110[0] == 1)
  {
    if (v109 != v110)
    {
      free(v109);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v108;
      v41 = __p;
      if (v108 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v108 = v39;
      operator delete(v41);
    }

    v42 = v105;
    if (v105)
    {
      v43 = v106;
      v44 = v105;
      if (v106 != v105)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v43 != v42);
        v44 = v105;
      }

      v106 = v42;
      operator delete(v44);
    }

    if (v101 != v104)
    {
      free(v101);
    }
  }

  if (!v38)
  {
    return 0;
  }

LABEL_67:
  if (*(*this + 9))
  {
    v47 = *this - 16;
  }

  else
  {
    v47 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 56));
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)) || (v50 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)), v50 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 56))) || (v51 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 120)), v51 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 88))) || (v52 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 152)), v52 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 120))))
  {
    v94 = "failed to verify that Operands should have same element type.";
    v96 = 259;
    mlir::OpState::emitOpError(this, &v94, &v100);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
    v60 = result;
    if (v100)
    {
      mlir::InFlightDiagnostic::report(&v100);
      result = v60;
    }

    if (v110[0] != 1)
    {
      return result;
    }

    if (v109 != v110)
    {
      free(v109);
      result = v60;
    }

    v61 = __p;
    if (__p)
    {
      v62 = v108;
      v63 = __p;
      if (v108 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v108 = v61;
      operator delete(v63);
      result = v60;
    }

    v64 = v105;
    if (v105)
    {
      v65 = v106;
      v66 = v105;
      if (v106 != v105)
      {
        do
        {
          v68 = *--v65;
          v67 = v68;
          *v65 = 0;
          if (v68)
          {
            MEMORY[0x259C63150](v67, 0x1000C8077774924);
          }
        }

        while (v65 != v64);
        v66 = v105;
      }

      v106 = v64;
      operator delete(v66);
      result = v60;
    }

    v79 = v101;
    if (v101 == v104)
    {
      return result;
    }

LABEL_113:
    free(v79);
    return v60;
  }

  v53 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
  if (v53 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 184)))
  {
    v54 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 184));
    v55 = *(*v54 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? v54 : 0;
    *&v100 = v55;
    *(&v100 + 1) = this;
    if (v55)
    {
      v56 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
      if (v56 != mlir::ComplexType::getElementType(&v100))
      {
        v89 = "failed to verify that Operand 5 and operand 0 must have the same inner element type.";
LABEL_132:
        v94 = v89;
        v96 = 259;
        mlir::OpState::emitOpError(this, &v94, &v100);
        v90 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
        if (v100)
        {
          mlir::InFlightDiagnostic::report(&v100);
        }

        if (v110[0] == 1)
        {
          mlir::Diagnostic::~Diagnostic((&v100 + 8));
        }

        return v90;
      }
    }
  }

  v57 = *this;
  v100 = xmmword_25736D380;
  if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v57, &v100, 4))
  {
    v58 = mlir::getElementTypeOrSelf(*this - 16);
    if (v58 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v89 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_132;
  }

  v94 = "failed to verify that Operands should have same shape.";
  v96 = 259;
  mlir::OpState::emitOpError(this, &v94, &v100);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v100);
  if (v100)
  {
    v80 = result;
    mlir::InFlightDiagnostic::report(&v100);
    result = v80;
  }

  if (v110[0] == 1)
  {
    v60 = result;
    if (v109 != v110)
    {
      free(v109);
    }

    v81 = __p;
    if (__p)
    {
      v82 = v108;
      v83 = __p;
      if (v108 != __p)
      {
        do
        {
          v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
        }

        while (v82 != v81);
        v83 = __p;
      }

      v108 = v81;
      operator delete(v83);
    }

    v84 = v105;
    if (v105)
    {
      v85 = v106;
      v86 = v105;
      if (v106 != v105)
      {
        do
        {
          v88 = *--v85;
          v87 = v88;
          *v85 = 0;
          if (v88)
          {
            MEMORY[0x259C63150](v87, 0x1000C8077774924);
          }
        }

        while (v85 != v84);
        v86 = v105;
      }

      v106 = v84;
      operator delete(v86);
    }

    v79 = v101;
    result = v60;
    if (v101 != v104)
    {
      goto LABEL_113;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_25;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v50[0] = a2;
  v50[1] = v22;
  v43[0] = mlir::ShapedType::getElementType(v50);
  if (mlir::Type::isF16(v43))
  {
    return 1;
  }

  if (mlir::Type::isF32(v43))
  {
    return 1;
  }

  if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v47 = v43[0];
    *&v48 = mlir::ComplexType::getElementType(&v47);
    if (mlir::Type::isF16(&v48))
    {
      return 1;
    }

    if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v45 = v43[0];
      ElementType = mlir::ComplexType::getElementType(&v45);
      if (mlir::Type::isF32(&ElementType))
      {
        return 1;
      }
    }
  }

LABEL_25:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v50, a1, v43);
  if (v50[0])
  {
    LODWORD(v48) = 3;
    *(&v48 + 1) = " #";
    v49 = 2;
    if (v52 >= v53)
    {
      if (v51 > &v48 || v51 + 24 * v52 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v51 + 24 * v52;
    v25 = v48;
    *(v24 + 2) = v49;
    *v24 = v25;
    v26 = ++v52;
    if (v50[0])
    {
      LODWORD(v48) = 5;
      *(&v48 + 1) = a5;
      if (v26 >= v53)
      {
        if (v51 > &v48 || v51 + 24 * v26 <= &v48)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v51 + 24 * v52;
      v28 = v48;
      *(v27 + 2) = v49;
      *v27 = v28;
      v29 = ++v52;
      if (v50[0])
      {
        LODWORD(v48) = 3;
        *(&v48 + 1) = " must be CoreML Tensor of 16-bit float or 32-bit float or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v49 = 157;
        if (v29 >= v53)
        {
          if (v51 > &v48 || v51 + 24 * v29 <= &v48)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v51 + 24 * v52;
        v31 = v48;
        *(v30 + 2) = v49;
        *v30 = v31;
        ++v52;
        if (v50[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
          if (v52 >= v53)
          {
            if (v51 > &v48 || v51 + 24 * v52 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v51 + 24 * v52;
          v33 = v48;
          *(v32 + 2) = v49;
          *v32 = v33;
          ++v52;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v58;
      v36 = __p;
      if (v58 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v58 = v34;
      operator delete(v36);
    }

    v37 = v55;
    if (v55)
    {
      v38 = v56;
      v39 = v55;
      if (v56 != v55)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v55;
      }

      v56 = v37;
      operator delete(v39);
    }

    if (v51 != &v54)
    {
      free(v51);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps11(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v29 = a1;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v9[1];
    v32 = *(v9 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v40[1];
    v32 = *(v40 + 4);
    if (!v32)
    {
      goto LABEL_56;
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
    v42 = v33[1];
    v81 = a2;
    v82 = v42;
    hasRank = mlir::ShapedType::hasRank(&v81);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v81 = a2;
  v82 = 0;
  v41 = mlir::ShapedType::hasRank(&v81);
  a1 = v29;
  if (!v41)
  {
    goto LABEL_2;
  }

LABEL_59:
  v44 = *a2;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v44[1];
    v47 = *(v44 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v70 = v44;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v70[1];
    v47 = *(v70 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
  if (v48 != &v46[2 * v47] && *v48 == v45)
  {
    v55 = v48[1];
    v71 = a2;
    v72 = v55;
    mlir::ShapedType::getShape(&v71);
    a1 = v29;
    if (v56 == 1)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v71 = a2;
  v72 = 0;
  mlir::ShapedType::getShape(&v71);
  a1 = v29;
  if (v54 == 1)
  {
LABEL_74:
    v57 = *a2;
    {
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v57[1];
      v60 = *(v57 + 4);
      if (!v60)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v67 = v57;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v67[1];
      v60 = *(v67 + 4);
      if (!v60)
      {
        goto LABEL_88;
      }
    }

    v61 = v59;
    v62 = v60;
    do
    {
      v63 = v62 >> 1;
      v64 = &v61[2 * (v62 >> 1)];
      v66 = *v64;
      v65 = v64 + 2;
      v62 += ~(v62 >> 1);
      if (v66 < v58)
      {
        v61 = v65;
      }

      else
      {
        v62 = v63;
      }
    }

    while (v62);
    if (v61 != &v59[2 * v60] && *v61 == v58)
    {
      v68 = v61[1];
      goto LABEL_90;
    }

LABEL_88:
    v68 = 0;
LABEL_90:
    *&v79 = a2;
    *(&v79 + 1) = v68;
    ElementType = mlir::ShapedType::getElementType(&v79);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
    {
      return 1;
    }

    if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_94;
    }

    v76 = ElementType;
    v77 = mlir::ComplexType::getElementType(&v76);
    if (!mlir::Type::isF16(&v77))
    {
      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_94:
        a1 = v29;
        goto LABEL_2;
      }

      v74 = ElementType;
      v75 = mlir::ComplexType::getElementType(&v74);
      isF32 = mlir::Type::isF32(&v75);
      a1 = v29;
      if (!isF32)
      {
        goto LABEL_2;
      }
    }

    return 1;
  }

LABEL_2:
  v73 = 261;
  v71 = a3;
  v72 = a4;
  mlir::Operation::emitOpError(&v81, a1, &v71);
  if (v81)
  {
    LODWORD(v79) = 3;
    *(&v79 + 1) = " #";
    v80 = 2;
    if (v84 >= v85)
    {
      if (v83 > &v79 || v83 + 24 * v84 <= &v79)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v83 + 24 * v84;
    v11 = v79;
    *(v10 + 2) = v80;
    *v10 = v11;
    v12 = ++v84;
    if (v81)
    {
      LODWORD(v79) = 5;
      *(&v79 + 1) = a5;
      if (v12 >= v85)
      {
        if (v83 > &v79 || v83 + 24 * v12 <= &v79)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v83 + 24 * v84;
      v14 = v79;
      *(v13 + 2) = v80;
      *v13 = v14;
      v15 = ++v84;
      if (v81)
      {
        LODWORD(v79) = 3;
        *(&v79 + 1) = " must be 1D tensor of 16-bit float or 32-bit float or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v80 = 153;
        if (v15 >= v85)
        {
          if (v83 > &v79 || v83 + 24 * v15 <= &v79)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v83 + 24 * v84;
        v17 = v79;
        *(v16 + 2) = v80;
        *v16 = v17;
        ++v84;
        if (v81)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v79, a2);
          if (v84 >= v85)
          {
            if (v83 > &v79 || v83 + 24 * v84 <= &v79)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v83 + 24 * v84;
          v19 = v79;
          *(v18 + 2) = v80;
          *v18 = v19;
          ++v84;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
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

    v21 = __p;
    if (__p)
    {
      v22 = v90;
      v23 = __p;
      if (v90 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v90 = v21;
      operator delete(v23);
    }

    v24 = v87;
    if (v87)
    {
      v25 = v88;
      v26 = v87;
      if (v88 != v87)
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
        v26 = v87;
      }

      v88 = v24;
      operator delete(v26);
    }

    if (v83 != &v86)
    {
      free(v83);
    }
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v18 = 0uLL;
  if (a3)
  {
    v3 = a2;
    v5 = &a2[a3];
    do
    {
      v6 = (*(*(*(a1 + 72) + 32 * *v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        *&v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v6);
        *(&v17 + 1) = v7;
        if (v17 && mlir::ShapedType::hasRank(&v17))
        {
          Shape = mlir::ShapedType::getShape(&v17);
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
          }

          else
          {
LABEL_14:
            if (v18)
            {
              v11 = mlir::ShapedType::getShape(&v18);
              v13 = v12;
              v14 = mlir::ShapedType::getShape(&v17);
              if (v13 != v15 || memcmp(v11, v14, 8 * v13))
              {
                return 0;
              }
            }

            else
            {
              v18 = v17;
            }
          }
        }
      }

      else
      {
        v17 = 0uLL;
      }

      ++v3;
    }

    while (v3 != v5);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v27 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::Type::cast<mlir::ShapedType>(&v27);
    v30[1] = v5;
    mlir::ShapedType::getShape(v30);
    v7 = v6;
    v26 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = mlir::Type::cast<mlir::ShapedType>(&v26);
    v28[1] = v8;
    mlir::ShapedType::getShape(v28);
    if (v7 == v9)
    {
      return 1;
    }

    v28[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v11 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v11;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v11;
      }

      v20 = __p;
      if (__p)
      {
        v21 = v36;
        v22 = __p;
        if (v36 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v36 = v20;
        operator delete(v22);
        result = v11;
      }

      v15 = v33;
      if (!v33)
      {
        goto LABEL_47;
      }

      v23 = v34;
      v17 = v33;
      if (v34 == v33)
      {
LABEL_46:
        v34 = v15;
        operator delete(v17);
        result = v11;
LABEL_47:
        if (v31 != &v32)
        {
          free(v31);
          return v11;
        }

        return result;
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
LABEL_45:
      v17 = v33;
      goto LABEL_46;
    }
  }

  else
  {
    v28[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v11 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v11;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v36;
        v14 = __p;
        if (v36 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v36 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v33;
      if (!v33)
      {
        goto LABEL_47;
      }

      v16 = v34;
      v17 = v33;
      if (v34 == v33)
      {
        goto LABEL_46;
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
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

void *mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::getCalleeAttr(mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase *this)
{
  result = *(this + 3);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'coreml.llo.call' op requires attribute 'callee'";
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

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v33 = v6;
  if (!v6)
  {
    a3(v36, a4);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = "expected DictionaryAttr to set properties";
      v35 = 41;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v37 + 24 * v38;
      v14 = v34;
      *(v13 + 2) = v35;
      *v13 = v14;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v44;
      v17 = __p;
      if (v44 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v44 = v15;
      operator delete(v17);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v19 = v42;
    v20 = v41;
    if (v42 == v41)
    {
      goto LABEL_48;
    }

    do
    {
      v22 = *--v19;
      v21 = v22;
      *v19 = 0;
      if (v22)
      {
        MEMORY[0x259C63150](v21, 0x1000C8077774924);
      }
    }

    while (v19 != v18);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "callee", 6uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v36, a4);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    v35 = 51;
    if (v38 >= v39)
    {
      if (v37 > &v34 || v37 + 24 * v38 <= &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v37 + 24 * v38;
    v24 = v34;
    *(v23 + 2) = v35;
    *v23 = v24;
    ++v38;
    if (v36[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v34, v9);
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v37 + 24 * v38;
      v26 = v34;
      *(v25 + 2) = v35;
      *v25 = v26;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if (v46)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v30 = v42;
    v20 = v41;
    if (v42 == v41)
    {
LABEL_48:
      v42 = v18;
      operator delete(v20);
LABEL_49:
      if (v37 != &v40)
      {
        free(v37);
      }

      return 0;
    }

    do
    {
      v32 = *--v30;
      v31 = v32;
      *v30 = 0;
      if (v32)
      {
        MEMORY[0x259C63150](v31, 0x1000C8077774924);
      }
    }

    while (v30 != v18);
LABEL_47:
    v20 = v41;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "callee", 6, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1819042147 ? (v4 = *(a3 + 4) == 25957) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::CallOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6 && *a2 == 1819042147 && *(a2 + 4) == 25957)
  {
    if (a4)
    {
      v5 = result;
      v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
      result = v5;
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      *result = 0;
      result[1] = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "callee", 6uLL, *a2);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v7 = *a1;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v32 = a4;
    v17 = a5;
    mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
    a5 = v17;
    a4 = v32;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
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
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    return 1;
  }

LABEL_14:
  a4(&v36, a5);
  if (v36)
  {
    LODWORD(v33) = 3;
    *(&v33 + 1) = "attribute '";
    v34 = 11;
    if (v39 >= v40)
    {
      if (v38 > &v33 || v38 + 24 * v39 <= &v33)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v38 + 24 * v39;
    v19 = v33;
    *(v18 + 2) = v34;
    *v18 = v19;
    ++v39;
    if (v36)
    {
      v35 = 261;
      *&v33 = a2;
      *(&v33 + 1) = a3;
      mlir::Diagnostic::operator<<(&v37, &v33);
      if (v36)
      {
        LODWORD(v33) = 3;
        *(&v33 + 1) = "' failed to satisfy constraint: TypedAttr instance";
        v34 = 50;
        if (v39 >= v40)
        {
          if (v38 > &v33 || v38 + 24 * v39 <= &v33)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v38 + 24 * v39;
        v21 = v33;
        *(v20 + 2) = v34;
        *v20 = v21;
        ++v39;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v45;
      v25 = __p;
      if (v45 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v45 = v23;
      operator delete(v25);
    }

    v26 = v42;
    if (v42)
    {
      v27 = v43;
      v28 = v42;
      if (v43 != v42)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v42;
      }

      v43 = v26;
      operator delete(v28);
    }

    if (v38 != &v41)
    {
      free(v38);
    }
  }

  return v22;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, v2);
}

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(a3);
  Context = mlir::Attribute::getContext(a2);
  v20 = 261;
  v19[0] = "callee";
  v19[1] = 6;
  v14 = mlir::StringAttr::get(Context, v19, v13);
  mlir::NamedAttribute::NamedAttribute(v21, v14, v11);
  result = mlir::NamedAttrList::push_back(a2 + 112, v21[0], v21[1]);
  v16 = *(a2 + 72);
  if (a5 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a4, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a5 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a5;
  return result;
}

{
  v12 = mlir::SymbolRefAttr::get(a3);

  return mlir::ODIE::Compiler::CoreML::CallOp::build(v12, a2, v12, a4, a5, a6, a7);
}

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = *a1;
  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  v14 = mlir::StringAttr::get(v13, v17, a3);
  v15 = mlir::SymbolRefAttr::get(v14);
  return mlir::ODIE::Compiler::CoreML::CallOp::build(v15, a2, v15, a5, a6, a7, a8);
}

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a5;
  v14[1] = a6;
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

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v18[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v1, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v3 = *(*this + 9);
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'callee'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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