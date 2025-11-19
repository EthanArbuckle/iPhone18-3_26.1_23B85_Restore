void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MaximumFOpGenericAdaptorBase::Properties]";
  v6 = 111;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaximumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MinNumFOpGenericAdaptorBase::Properties]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MinimumFOpGenericAdaptorBase::Properties]";
  v6 = 111;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MinimumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MulFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MulFOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MulIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MulIOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MulIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::NegFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::NegFOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::NegFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::RemFOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::RemFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ShLIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::SubFOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::SubIOpGenericAdaptorBase::Properties]";
  v6 = 107;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::TruncFOpGenericAdaptorBase::Properties]";
  v6 = 109;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
      {
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_12()
{
  if (*(v0 + 36))
  {
    return v0 - 16;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_10_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24)
{
  v27 = *(v25 - 160);
  v28 = *(*v27 + 24);
  v29 = *(v27[1] + 24);
  a23 = v28;
  a24 = v29;

  mlir::Builder::getFusedLoc((v24 + 8), &a23, 2, 0);
}

uint64_t OUTLINED_FUNCTION_11_12@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(a1 + 16) == v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  a16 = *(*(v19 + 72) + 24);

  return mlir::Value::getDefiningOp(&a16);
}

uint64_t OUTLINED_FUNCTION_12_14()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_13_14()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return applyToIntegerAttrs(a1, a2, a3, llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>, va);
}

uint64_t OUTLINED_FUNCTION_21_7()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_23_8()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_24_11@<X0>(const llvm::Twine *a1@<X2>, size_t a2@<X8>, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  a4 = a2;
  a8 = 259;

  return mlir::Builder::getStringAttr((v8 + 8), &a4, a1);
}

void OUTLINED_FUNCTION_25_9()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_26_12()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_27_13()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_28_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a23 = a21;
  a33 = v33;

  return mlir::Attribute::getContext(&a23);
}

uint64_t OUTLINED_FUNCTION_43_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  a16 = a1;
  a26 = v26;

  return mlir::Attribute::getContext(&a16);
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  a23 = *(*(v23 + 72) + 56);

  return mlir::Value::getDefiningOp(&a23);
}

void *OUTLINED_FUNCTION_46_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return mlir::NamedAttribute::NamedAttribute((a17 + 16 * a2), a1, v17);
}

uint64_t OUTLINED_FUNCTION_47_6(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  a17 = a1;

  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>((v17 + 8), v18, &a17);
}

uint64_t OUTLINED_FUNCTION_49_8()
{
  if (*(v0 + 36))
  {
    v2 = v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  a16 = *(**(v17 - 152) + 24);

  mlir::Builder::getFusedLoc((v16 + 8), &a16, 1, 0);
}

void OUTLINED_FUNCTION_53_7()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_56_7@<X0>(const llvm::Twine *a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  a3 = a2;
  a7 = 259;

  return mlir::Builder::getStringAttr((v7 + 8), &a3, a1);
}

void OUTLINED_FUNCTION_60_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a2;
  *(v2 - 152) = v2 - 136;
  *(v2 - 136) = a1;
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);

  return llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::growAndEmplaceBack<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(va2, va, va1);
}

unint64_t *OUTLINED_FUNCTION_64_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(v14 - 208);
  v17 = *(v14 - 200);

  return mlir::ValueRange::ValueRange(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{

  return mlir::arith::IntegerOverflowFlagsAttr::getValue(&a33);
}

uint64_t OUTLINED_FUNCTION_89_6@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 36);
  v3 = a1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
}

void *OUTLINED_FUNCTION_105_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return mlir::NamedAttribute::NamedAttribute((a10 + 16 * a2), a1, v10);
}

uint64_t OUTLINED_FUNCTION_108_6(uint64_t a1, const void *a2)
{

  return mlir::DictionaryAttr::get(v2 + 56, a2, 0xDuLL);
}

uint64_t OUTLINED_FUNCTION_114_5(uint64_t a1, uint64_t a2)
{

  return mlir::Operation::getInherentAttr(v2, a2, 13);
}

uint64_t OUTLINED_FUNCTION_115_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return mlir::arith::IntegerOverflowFlagsAttr::getValue(va);
}

uint64_t OUTLINED_FUNCTION_116_5(int a1)
{

  return mlir::arith::IntegerOverflowFlagsAttr::get(v1, a1 & v2);
}

uint64_t OUTLINED_FUNCTION_121_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);

  return llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::growAndEmplaceBack<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(va2, va, va1);
}

unint64_t *OUTLINED_FUNCTION_122_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v34 = a32;
  v35 = a33;

  return mlir::ValueRange::ValueRange(&a16, v34, v35);
}

void OUTLINED_FUNCTION_128_3()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_129_4(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

uint64_t OUTLINED_FUNCTION_130_3(uint64_t a1)
{

  return mlir::detail::OpResultImpl::getNextResultAtOffset(a1, 0);
}

void mlir::arith::ArithDialect::ArithDialect(mlir::arith::ArithDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "arith", 5, a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id);
  *v2 = &unk_286895E38;
  mlir::arith::ArithDialect::initialize(v2);
}

{
  v2 = mlir::Dialect::Dialect(this, "arith", 5, a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id);
  *v2 = &unk_286895E38;
  mlir::arith::ArithDialect::initialize(v2);
}

void sub_256FD6690()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::arith::FastMathFlagsAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::arith::FastMathFlagsAttr::parse(mlir::AsmParser *a1)
{
  v113 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  LODWORD(v3) = 0;
  v88 = 0;
  v89 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v88))
    {
      goto LABEL_69;
    }

    v4 = mlir::arith::symbolizeFastMathFlags(v88, v89);
    if ((v4 & 0x100000000) == 0)
    {
      v87 = 257;
      (*(*a1 + 24))(v102, a1, v2, v86);
      if (v102[0])
      {
        LODWORD(v90) = 3;
        *(&v90 + 1) = "expected ";
        v91 = 9;
        if (v104 >= v105)
        {
          if (v103 > &v90 || v103 + 24 * v104 <= &v90)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v103 + 24 * v104;
        v11 = v90;
        *(v10 + 2) = v91;
        *v10 = v11;
        v12 = ++v104;
        if (v102[0])
        {
          LODWORD(v90) = 3;
          *(&v90 + 1) = "::mlir::arith::FastMathFlags";
          v91 = 28;
          if (v12 >= v105)
          {
            if (v103 > &v90 || v103 + 24 * v12 <= &v90)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v103 + 24 * v104;
          v14 = v90;
          *(v13 + 2) = v91;
          *v13 = v14;
          v15 = ++v104;
          if (v102[0])
          {
            LODWORD(v90) = 3;
            *(&v90 + 1) = " to be one of: ";
            v91 = 15;
            if (v15 >= v105)
            {
              if (v103 > &v90 || v103 + 24 * v15 <= &v90)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v103 + 24 * v104;
            v17 = v90;
            *(v16 + 2) = v91;
            *v16 = v17;
            v18 = ++v104;
            if (v102[0])
            {
              LODWORD(v90) = 3;
              *(&v90 + 1) = "none";
              v91 = 4;
              if (v18 >= v105)
              {
                if (v103 > &v90 || v103 + 24 * v18 <= &v90)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v19 = v103 + 24 * v104;
              v20 = v90;
              *(v19 + 2) = v91;
              *v19 = v20;
              v21 = ++v104;
              if (v102[0])
              {
                LODWORD(v90) = 3;
                *(&v90 + 1) = ", ";
                v91 = 2;
                if (v21 >= v105)
                {
                  if (v103 > &v90 || v103 + 24 * v21 <= &v90)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v22 = v103 + 24 * v104;
                v23 = v90;
                *(v22 + 2) = v91;
                *v22 = v23;
                v24 = ++v104;
                if (v102[0])
                {
                  LODWORD(v90) = 3;
                  *(&v90 + 1) = "reassoc";
                  v91 = 7;
                  if (v24 >= v105)
                  {
                    if (v103 > &v90 || v103 + 24 * v24 <= &v90)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v25 = v103 + 24 * v104;
                  v26 = v90;
                  *(v25 + 2) = v91;
                  *v25 = v26;
                  v27 = ++v104;
                  if (v102[0])
                  {
                    LODWORD(v90) = 3;
                    *(&v90 + 1) = ", ";
                    v91 = 2;
                    if (v27 >= v105)
                    {
                      if (v103 > &v90 || v103 + 24 * v27 <= &v90)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v28 = v103 + 24 * v104;
                    v29 = v90;
                    *(v28 + 2) = v91;
                    *v28 = v29;
                    v30 = ++v104;
                    if (v102[0])
                    {
                      LODWORD(v90) = 3;
                      *(&v90 + 1) = "nnan";
                      v91 = 4;
                      if (v30 >= v105)
                      {
                        if (v103 > &v90 || v103 + 24 * v30 <= &v90)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v31 = v103 + 24 * v104;
                      v32 = v90;
                      *(v31 + 2) = v91;
                      *v31 = v32;
                      v33 = ++v104;
                      if (v102[0])
                      {
                        LODWORD(v90) = 3;
                        *(&v90 + 1) = ", ";
                        v91 = 2;
                        if (v33 >= v105)
                        {
                          if (v103 > &v90 || v103 + 24 * v33 <= &v90)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v34 = v103 + 24 * v104;
                        v35 = v90;
                        *(v34 + 2) = v91;
                        *v34 = v35;
                        v36 = ++v104;
                        if (v102[0])
                        {
                          LODWORD(v90) = 3;
                          *(&v90 + 1) = "ninf";
                          v91 = 4;
                          if (v36 >= v105)
                          {
                            if (v103 > &v90 || v103 + 24 * v36 <= &v90)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v37 = v103 + 24 * v104;
                          v38 = v90;
                          *(v37 + 2) = v91;
                          *v37 = v38;
                          v39 = ++v104;
                          if (v102[0])
                          {
                            LODWORD(v90) = 3;
                            *(&v90 + 1) = ", ";
                            v91 = 2;
                            if (v39 >= v105)
                            {
                              if (v103 > &v90 || v103 + 24 * v39 <= &v90)
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            v40 = v103 + 24 * v104;
                            v41 = v90;
                            *(v40 + 2) = v91;
                            *v40 = v41;
                            v42 = ++v104;
                            if (v102[0])
                            {
                              LODWORD(v90) = 3;
                              *(&v90 + 1) = "nsz";
                              v91 = 3;
                              if (v42 >= v105)
                              {
                                if (v103 > &v90 || v103 + 24 * v42 <= &v90)
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              v43 = v103 + 24 * v104;
                              v44 = v90;
                              *(v43 + 2) = v91;
                              *v43 = v44;
                              v45 = ++v104;
                              if (v102[0])
                              {
                                LODWORD(v90) = 3;
                                *(&v90 + 1) = ", ";
                                v91 = 2;
                                if (v45 >= v105)
                                {
                                  if (v103 > &v90 || v103 + 24 * v45 <= &v90)
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                v46 = v103 + 24 * v104;
                                v47 = v90;
                                *(v46 + 2) = v91;
                                *v46 = v47;
                                v48 = ++v104;
                                if (v102[0])
                                {
                                  LODWORD(v90) = 3;
                                  *(&v90 + 1) = "arcp";
                                  v91 = 4;
                                  if (v48 >= v105)
                                  {
                                    if (v103 > &v90 || v103 + 24 * v48 <= &v90)
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  v49 = v103 + 24 * v104;
                                  v50 = v90;
                                  *(v49 + 2) = v91;
                                  *v49 = v50;
                                  v51 = ++v104;
                                  if (v102[0])
                                  {
                                    LODWORD(v90) = 3;
                                    *(&v90 + 1) = ", ";
                                    v91 = 2;
                                    if (v51 >= v105)
                                    {
                                      if (v103 > &v90 || v103 + 24 * v51 <= &v90)
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                                      }

                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    v52 = v103 + 24 * v104;
                                    v53 = v90;
                                    *(v52 + 2) = v91;
                                    *v52 = v53;
                                    v54 = ++v104;
                                    if (v102[0])
                                    {
                                      LODWORD(v90) = 3;
                                      *(&v90 + 1) = "contract";
                                      v91 = 8;
                                      if (v54 >= v105)
                                      {
                                        if (v103 > &v90 || v103 + 24 * v54 <= &v90)
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                                        }

                                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                                      }

                                      v55 = v103 + 24 * v104;
                                      v56 = v90;
                                      *(v55 + 2) = v91;
                                      *v55 = v56;
                                      v57 = ++v104;
                                      if (v102[0])
                                      {
                                        LODWORD(v90) = 3;
                                        *(&v90 + 1) = ", ";
                                        v91 = 2;
                                        if (v57 >= v105)
                                        {
                                          if (v103 > &v90 || v103 + 24 * v57 <= &v90)
                                          {
                                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                                          }

                                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                                        }

                                        v58 = v103 + 24 * v104;
                                        v59 = v90;
                                        *(v58 + 2) = v91;
                                        *v58 = v59;
                                        v60 = ++v104;
                                        if (v102[0])
                                        {
                                          LODWORD(v90) = 3;
                                          *(&v90 + 1) = "afn";
                                          v91 = 3;
                                          if (v60 >= v105)
                                          {
                                            if (v103 > &v90 || v103 + 24 * v60 <= &v90)
                                            {
                                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                                            }

                                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                                          }

                                          v61 = v103 + 24 * v104;
                                          v62 = v90;
                                          *(v61 + 2) = v91;
                                          *v61 = v62;
                                          v63 = ++v104;
                                          if (v102[0])
                                          {
                                            LODWORD(v90) = 3;
                                            *(&v90 + 1) = ", ";
                                            v91 = 2;
                                            if (v63 >= v105)
                                            {
                                              if (v103 > &v90 || v103 + 24 * v63 <= &v90)
                                              {
                                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                                              }

                                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                                            }

                                            v64 = v103 + 24 * v104;
                                            v65 = v90;
                                            *(v64 + 2) = v91;
                                            *v64 = v65;
                                            v66 = ++v104;
                                            if (v102[0])
                                            {
                                              LODWORD(v90) = 3;
                                              *(&v90 + 1) = "fast";
                                              v91 = 4;
                                              if (v66 >= v105)
                                              {
                                                if (v103 > &v90 || v103 + 24 * v66 <= &v90)
                                                {
                                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                                }

                                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                                              }

                                              v67 = v103 + 24 * v104;
                                              v68 = v90;
                                              *(v67 + 2) = v91;
                                              *v67 = v68;
                                              ++v104;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
      if (v102[0])
      {
        mlir::InFlightDiagnostic::report(v102);
      }

      if (v112)
      {
        if (v111 != &v112)
        {
          free(v111);
        }

        v69 = __p;
        if (__p)
        {
          v70 = v110;
          v71 = __p;
          if (v110 != __p)
          {
            do
            {
              v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
            }

            while (v70 != v69);
            v71 = __p;
          }

          v110 = v69;
          operator delete(v71);
        }

        v72 = v107;
        if (v107)
        {
          v73 = v108;
          v74 = v107;
          if (v108 != v107)
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
            v74 = v107;
          }

          v108 = v72;
          operator delete(v74);
        }

        if (v103 != &v106)
        {
          free(v103);
        }
      }

LABEL_69:
      v77 = (*(*a1 + 40))(a1);
      LOWORD(v104) = 259;
      (*(*a1 + 24))(v93, a1, v77, v102);
      if (v93[0])
      {
        mlir::InFlightDiagnostic::report(v93);
      }

      if (v101 == 1)
      {
        if (v100 != &v101)
        {
          free(v100);
        }

        v78 = v98;
        if (v98)
        {
          v79 = v99;
          v80 = v98;
          if (v99 != v98)
          {
            do
            {
              v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
            }

            while (v79 != v78);
            v80 = v98;
          }

          v99 = v78;
          operator delete(v80);
        }

        v81 = v96;
        if (v96)
        {
          v82 = v97;
          v83 = v96;
          if (v97 != v96)
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
            v83 = v96;
          }

          v97 = v81;
          operator delete(v83);
        }

        if (v94 != &v95)
        {
          free(v94);
        }
      }

      return 0;
    }

    v3 = v3 | v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  Context = mlir::AsmParser::getContext(a1);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  *&v90 = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  *(&v90 + 1) = Context;
  v102[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v102[1] = &v90;
  v92 = v3;
  v7 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v3 ^ 0xFF51AFD7ED558CCDLL);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ 0xFF51AFD7ED558CCDLL ^ (v7 >> 47) ^ v7);
  v88 = &v92;
  v86[0] = &v92;
  v86[1] = v102;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((v8 >> 47) ^ v8), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v88, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v86);
}

void *mlir::arith::FastMathFlagsAttr::print(mlir::arith::FastMathFlagsAttr *this, mlir::AsmPrinter *a2)
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

  mlir::arith::stringifyFastMathFlags(*(*this + 8), __p);
  v6 = (*(*a2 + 16))(a2);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  llvm::raw_ostream::write(v6, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v10 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::arith::IntegerOverflowFlagsAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::arith::IntegerOverflowFlagsAttr::parse(mlir::AsmParser *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  LODWORD(v3) = 0;
  v52 = 0;
  v53 = 0;
  do
  {
    if (!mlir::AsmParser::parseKeyword(a1, &v52))
    {
      goto LABEL_45;
    }

    v4 = mlir::arith::symbolizeIntegerOverflowFlags(v52, v53);
    if ((v4 & 0x100000000) == 0)
    {
      v51 = 257;
      (*(*a1 + 24))(v66, a1, v2, v50);
      if (v66[0])
      {
        LODWORD(v54) = 3;
        *(&v54 + 1) = "expected ";
        v55 = 9;
        if (v68 >= v69)
        {
          if (v67 > &v54 || v67 + 24 * v68 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v67 + 24 * v68;
        v11 = v54;
        *(v10 + 2) = v55;
        *v10 = v11;
        v12 = ++v68;
        if (v66[0])
        {
          LODWORD(v54) = 3;
          *(&v54 + 1) = "::mlir::arith::IntegerOverflowFlags";
          v55 = 35;
          if (v12 >= v69)
          {
            if (v67 > &v54 || v67 + 24 * v12 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v67 + 24 * v68;
          v14 = v54;
          *(v13 + 2) = v55;
          *v13 = v14;
          v15 = ++v68;
          if (v66[0])
          {
            LODWORD(v54) = 3;
            *(&v54 + 1) = " to be one of: ";
            v55 = 15;
            if (v15 >= v69)
            {
              if (v67 > &v54 || v67 + 24 * v15 <= &v54)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v67 + 24 * v68;
            v17 = v54;
            *(v16 + 2) = v55;
            *v16 = v17;
            v18 = ++v68;
            if (v66[0])
            {
              LODWORD(v54) = 3;
              *(&v54 + 1) = "none";
              v55 = 4;
              if (v18 >= v69)
              {
                if (v67 > &v54 || v67 + 24 * v18 <= &v54)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v19 = v67 + 24 * v68;
              v20 = v54;
              *(v19 + 2) = v55;
              *v19 = v20;
              v21 = ++v68;
              if (v66[0])
              {
                LODWORD(v54) = 3;
                *(&v54 + 1) = ", ";
                v55 = 2;
                if (v21 >= v69)
                {
                  if (v67 > &v54 || v67 + 24 * v21 <= &v54)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v22 = v67 + 24 * v68;
                v23 = v54;
                *(v22 + 2) = v55;
                *v22 = v23;
                v24 = ++v68;
                if (v66[0])
                {
                  LODWORD(v54) = 3;
                  *(&v54 + 1) = "nsw";
                  v55 = 3;
                  if (v24 >= v69)
                  {
                    if (v67 > &v54 || v67 + 24 * v24 <= &v54)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v25 = v67 + 24 * v68;
                  v26 = v54;
                  *(v25 + 2) = v55;
                  *v25 = v26;
                  v27 = ++v68;
                  if (v66[0])
                  {
                    LODWORD(v54) = 3;
                    *(&v54 + 1) = ", ";
                    v55 = 2;
                    if (v27 >= v69)
                    {
                      if (v67 > &v54 || v67 + 24 * v27 <= &v54)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v28 = v67 + 24 * v68;
                    v29 = v54;
                    *(v28 + 2) = v55;
                    *v28 = v29;
                    v30 = ++v68;
                    if (v66[0])
                    {
                      LODWORD(v54) = 3;
                      *(&v54 + 1) = "nuw";
                      v55 = 3;
                      if (v30 >= v69)
                      {
                        if (v67 > &v54 || v67 + 24 * v30 <= &v54)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v31 = v67 + 24 * v68;
                      v32 = v54;
                      *(v31 + 2) = v55;
                      *v31 = v32;
                      ++v68;
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v76)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v33 = __p;
        if (__p)
        {
          v34 = v74;
          v35 = __p;
          if (v74 != __p)
          {
            do
            {
              v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
            }

            while (v34 != v33);
            v35 = __p;
          }

          v74 = v33;
          operator delete(v35);
        }

        v36 = v71;
        if (v71)
        {
          v37 = v72;
          v38 = v71;
          if (v72 != v71)
          {
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
            v38 = v71;
          }

          v72 = v36;
          operator delete(v38);
        }

        if (v67 != &v70)
        {
          free(v67);
        }
      }

LABEL_45:
      v41 = (*(*a1 + 40))(a1);
      LOWORD(v68) = 259;
      (*(*a1 + 24))(v57, a1, v41, v66);
      if (v57[0])
      {
        mlir::InFlightDiagnostic::report(v57);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v42 = v62;
        if (v62)
        {
          v43 = v63;
          v44 = v62;
          if (v63 != v62)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = v62;
          }

          v63 = v42;
          operator delete(v44);
        }

        v45 = v60;
        if (v60)
        {
          v46 = v61;
          v47 = v60;
          if (v61 != v60)
          {
            do
            {
              v49 = *--v46;
              v48 = v49;
              *v46 = 0;
              if (v49)
              {
                MEMORY[0x259C63150](v48, 0x1000C8077774924);
              }
            }

            while (v46 != v45);
            v47 = v60;
          }

          v61 = v45;
          operator delete(v47);
        }

        if (v58 != &v59)
        {
          free(v58);
        }
      }

      return 0;
    }

    v3 = v3 | v4;
  }

  while (((*(*a1 + 128))(a1) & 1) != 0);
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  Context = mlir::AsmParser::getContext(a1);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  *&v54 = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  *(&v54 + 1) = Context;
  v66[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v66[1] = &v54;
  v56 = v3;
  v7 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v3 ^ 0xFF51AFD7ED558CCDLL);
  v8 = 0x9DDFEA08EB382D69 * (v3 ^ 0xFF51AFD7ED558CCDLL ^ (v7 >> 47) ^ v7);
  v52 = &v56;
  v50[0] = &v56;
  v50[1] = v66;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((v8 >> 47) ^ v8), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v52, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v50);
}

void *mlir::arith::IntegerOverflowFlagsAttr::print(mlir::arith::IntegerOverflowFlagsAttr *this, mlir::AsmPrinter *a2)
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

  mlir::arith::stringifyIntegerOverflowFlags(*(*this + 8), __p);
  v6 = (*(*a2 + 16))(a2);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  llvm::raw_ostream::write(v6, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*a2 + 16))(a2);
  v10 = result[4];
  if (result[3] == v10)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v10 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::arith::ArithDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v32 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v36) = 0;
  v34 = 0;
  v35 = 0;
  v33 = v5;
  LOBYTE(v36) = 0;
  if (((*(*a2 + 640))(a2, &v34) & 1) == 0)
  {
    v6 = 0;
    LOWORD(v36) = 256;
    if ((v36 & 0x10000) != 0)
    {
      *&v29 = "fastmath";
    }

    else
    {
      BYTE2(v36) = 1;
    }

    goto LABEL_14;
  }

  *&v29 = "fastmath";
  *(&v29 + 1) = 8;
  if ((v36 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v35;
  if (v35)
  {
    if (v35 == 8 && *v34 == 0x6874616D74736166)
    {
      v8 = mlir::arith::FastMathFlagsAttr::parse(a2);
      goto LABEL_51;
    }

    *&v29 = "overflow";
    *(&v29 + 1) = 8;
    goto LABEL_10;
  }

  (*(*v32 + 648))(v32, &v29, 1);
  *&v29 = "overflow";
  *(&v29 + 1) = 8;
  if ((v36 & 0x10000) != 0)
  {
LABEL_3:
    v6 = 0;
LABEL_14:
    v7 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v7 = v35;
  if (v35)
  {
LABEL_10:
    if (v7 == 8 && *v34 == 0x776F6C667265766FLL)
    {
      v8 = mlir::arith::IntegerOverflowFlagsAttr::parse(a2);
LABEL_51:
      v6 = v8;
      LOBYTE(v36) = v8 != 0;
      *(&v36 + 1) = 257;
      goto LABEL_14;
    }

    goto LABEL_53;
  }

  (*(*v32 + 648))(v32, &v29, 1);
  if ((v36 & 0x10000) != 0)
  {
    v7 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v7 = v35;
LABEL_53:
  v6 = 0;
  v9 = v34;
  LOWORD(v36) = 0;
  BYTE2(v36) = 1;
LABEL_15:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v32) & 0x100) == 0)
  {
    v28 = 257;
    (*(*a2 + 24))(&v32, a2, v4, v27);
    if (v32)
    {
      LODWORD(v29) = 3;
      v30 = 19;
      if (v36 >= v37)
      {
        if (v35 > &v29 || v35 + 24 * v36 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v35 + 24 * v36;
      v11 = v29;
      *(v10 + 2) = v30;
      *v10 = v11;
      ++v36;
      if (v32)
      {
        v31 = 261;
        *&v29 = v9;
        *(&v29 + 1) = v7;
        mlir::Diagnostic::operator<<(&v33, &v29);
        if (v32)
        {
          LODWORD(v29) = 3;
          v30 = 14;
          if (v36 >= v37)
          {
            if (v35 > &v29 || v35 + 24 * v36 <= &v29)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v35 + 24 * v36;
          v13 = v29;
          *(v12 + 2) = v30;
          *v12 = v13;
          ++v36;
          if (v32)
          {
            v14 = *(a1 + 8);
            v15 = *(a1 + 16);
            v31 = 261;
            *&v29 = v14;
            *(&v29 + 1) = v15;
            mlir::Diagnostic::operator<<(&v33, &v29);
            if (v32)
            {
              LODWORD(v29) = 3;
              v30 = 1;
              if (v36 >= v37)
              {
                if (v35 > &v29 || v35 + 24 * v36 <= &v29)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v16 = v35 + 24 * v36;
              v17 = v29;
              *(v16 + 2) = v30;
              *v16 = v17;
              ++v36;
              if (v32)
              {
                mlir::InFlightDiagnostic::report(&v32);
              }
            }
          }
        }
      }
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v42;
        v20 = __p;
        if (v42 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v42 = v18;
        operator delete(v20);
      }

      v21 = v39;
      if (v39)
      {
        v22 = v40;
        v23 = v39;
        if (v40 != v39)
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
          v23 = v39;
        }

        v40 = v21;
        operator delete(v23);
      }

      if (v35 != &v38)
      {
        free(v35);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::arith::ArithDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v9 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if (v5[3] - v6 > 7uLL)
    {
      *v6 = 0x6874616D74736166;
      v5[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v5, "fastmath", 8uLL);
    }

    mlir::arith::FastMathFlagsAttr::print(&v9, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v9 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if (v7[3] - v8 > 7uLL)
    {
      *v8 = 0x776F6C667265766FLL;
      v7[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v7, "overflow", 8uLL);
    }

    mlir::arith::IntegerOverflowFlagsAttr::print(&v9, a3);
  }
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::arith::ConstantOp,mlir::arith::IndexCastOp,mlir::arith::SelectOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::arith::AddIOp,mlir::arith::ConstantOp,mlir::arith::SubIOp,mlir::arith::MulIOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::arith::ArithDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    *(Slow + 8) = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::arith::AddFOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddFOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddFOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddFOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::writeProperties;
  {
    v12 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneResult<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneOperand<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CollapseShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CollapseShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CollapseShapeOp>>();
    v3 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AddFOp>::getSpeculatability;
  {
    v13 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v5 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getEffects;
  {
    v14 = v6;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v7 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v8 = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getFastMathFlagsAttr;
  v8[1] = mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getFastMathAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v9 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::getShapeForUnroll;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v10 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::inferReturnTypes;
  v10[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::refineReturnTypes;
  v10[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
  }

  v11 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v11, v10);
}

void mlir::detail::VectorUnrollOpInterfaceTrait<mlir::arith::AddFOp>::getShapeForUnroll(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = 0;
  }

  v14 = v4;
  if (v4)
  {
    Shape = mlir::VectorType::getShape(&v14);
    v6 = mlir::VectorType::getShape(&v14);
    v8 = (v6 + 8 * v7);
    __src = v17;
    v16 = 0x400000000;
    if (((v8 - Shape) >> 3) >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = 0;
    v10 = v17;
    if (v8 != Shape)
    {
      memcpy(v17, Shape, v8 - Shape);
      v9 = v16;
      v10 = __src;
    }

    v11 = (v8 - Shape) >> 3;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    v12 = v9 + v11;
    LODWORD(v16) = v9 + v11;
    if (v9 + v11 && &__src != a2)
    {
      if (v10 == v17)
      {
        if (v12 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, v10, 8 * (v9 + v11));
        v10 = __src;
        *(a2 + 8) = v12;
      }

      else
      {
        *a2 = v10;
        v13 = HIDWORD(v16);
        *(a2 + 8) = v12;
        *(a2 + 12) = v13;
        __src = v17;
        HIDWORD(v16) = 0;
        v10 = v17;
      }

      LODWORD(v16) = 0;
    }

    *(a2 + 48) = 1;
    if (v10 != v17)
    {
      free(v10);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

const char *llvm::getTypeName<mlir::VectorUnrollOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VectorUnrollOpInterface]";
  v6 = 79;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::AddFOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
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

    v22 = "arith.addf";
    v23 = 10;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::AddFOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = a1;
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v14, a1);
  v15 = a2;
  v16 = a3;
  v8 = mlir::arith::AddFOp::fold(&v13, v14);
  if (v8 >= 8 && a1 - 16 != (v8 & ((v8 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v9 = *(a4 + 8);
    if (v9 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v9) = v8;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v10 = v8;
    v11 = mlir::OpTrait::impl::foldCommutative(a1, a2, a3);
    v8 = v10;
    if (v11)
    {
      return 1;
    }
  }

  return v8 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v38;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_79;
    }
  }

  v209 = a1;
  v39 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v39;
  a1 = v209;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_80;
  }

LABEL_79:
  v192 = v2;
  v210 = a1;
  v40 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v192;
  a1 = v210;
  v1 = v40;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_81;
  }

LABEL_80:
  v193 = v2;
  v211 = a1;
  v41 = v1;
  v176 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v176;
  v2 = v193;
  v1 = v41;
  a1 = v211;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_82;
  }

LABEL_81:
  v194 = v2;
  v212 = a1;
  v42 = v1;
  v161 = v4;
  v177 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v161;
  v3 = v177;
  v2 = v194;
  a1 = v212;
  v1 = v42;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_82:
  v195 = v2;
  v213 = a1;
  v43 = v1;
  v162 = v4;
  v178 = v3;
  v147 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v147;
  v4 = v162;
  v3 = v178;
  v2 = v195;
  v1 = v43;
  a1 = v213;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  v196 = v2;
  v214 = a1;
  v44 = v1;
  v163 = v4;
  v179 = v3;
  v134 = v6;
  v148 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v134;
  v5 = v148;
  v4 = v163;
  v3 = v179;
  v2 = v196;
  a1 = v214;
  v1 = v44;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_84:
  v197 = v2;
  v215 = a1;
  v45 = v1;
  v164 = v4;
  v180 = v3;
  v135 = v6;
  v149 = v5;
  v122 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v122;
  v6 = v135;
  v5 = v149;
  v4 = v164;
  v3 = v180;
  v2 = v197;
  v1 = v45;
  a1 = v215;
  v8 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_86;
  }

LABEL_85:
  v198 = v2;
  v216 = a1;
  v46 = v1;
  v165 = v4;
  v181 = v3;
  v136 = v6;
  v150 = v5;
  v123 = v7;
  v111 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v111;
  v7 = v123;
  v6 = v136;
  v5 = v150;
  v4 = v165;
  v3 = v181;
  v2 = v198;
  v1 = v46;
  a1 = v216;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_86:
  v199 = v2;
  v217 = a1;
  v47 = v1;
  v166 = v4;
  v182 = v3;
  v137 = v6;
  v151 = v5;
  v124 = v7;
  v101 = v9;
  v112 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v9 = v101;
  v8 = v112;
  v7 = v124;
  v6 = v137;
  v5 = v151;
  v4 = v166;
  v3 = v182;
  v2 = v199;
  v1 = v47;
  a1 = v217;
  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_88;
  }

LABEL_87:
  v200 = v2;
  v218 = a1;
  v48 = v1;
  v167 = v4;
  v183 = v3;
  v138 = v6;
  v152 = v5;
  v125 = v7;
  v102 = v9;
  v113 = v8;
  v92 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v10 = v92;
  v9 = v102;
  v8 = v113;
  v7 = v125;
  v6 = v138;
  v5 = v152;
  v4 = v167;
  v3 = v183;
  v2 = v200;
  v1 = v48;
  a1 = v218;
  v11 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

LABEL_88:
  v201 = v2;
  v219 = a1;
  v49 = v1;
  v168 = v4;
  v184 = v3;
  v139 = v6;
  v153 = v5;
  v126 = v7;
  v103 = v9;
  v114 = v8;
  v84 = v11;
  v93 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v84;
  v10 = v93;
  v9 = v103;
  v8 = v114;
  v7 = v126;
  v6 = v139;
  v5 = v153;
  v4 = v168;
  v3 = v184;
  v2 = v201;
  v1 = v49;
  a1 = v219;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_90;
  }

LABEL_89:
  v202 = v2;
  v220 = a1;
  v50 = v1;
  v169 = v4;
  v185 = v3;
  v140 = v6;
  v154 = v5;
  v127 = v7;
  v104 = v9;
  v115 = v8;
  v85 = v11;
  v94 = v10;
  v77 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v77;
  v11 = v85;
  v10 = v94;
  v9 = v104;
  v8 = v115;
  v7 = v127;
  v6 = v140;
  v5 = v154;
  v4 = v169;
  v3 = v185;
  v2 = v202;
  v1 = v50;
  a1 = v220;
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_91;
  }

LABEL_90:
  v203 = v2;
  v221 = a1;
  v51 = v1;
  v170 = v4;
  v186 = v3;
  v141 = v6;
  v155 = v5;
  v128 = v7;
  v105 = v9;
  v116 = v8;
  v86 = v11;
  v95 = v10;
  v71 = v13;
  v78 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v13 = v71;
  v12 = v78;
  v11 = v86;
  v10 = v95;
  v9 = v105;
  v8 = v116;
  v7 = v128;
  v6 = v141;
  v5 = v155;
  v4 = v170;
  v3 = v186;
  v2 = v203;
  v1 = v51;
  a1 = v221;
  v14 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

    goto LABEL_92;
  }

LABEL_91:
  v204 = v2;
  v222 = a1;
  v52 = v1;
  v171 = v4;
  v187 = v3;
  v142 = v6;
  v156 = v5;
  v129 = v7;
  v106 = v9;
  v117 = v8;
  v87 = v11;
  v96 = v10;
  v72 = v13;
  v79 = v12;
  v66 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v14 = v66;
  v13 = v72;
  v12 = v79;
  v11 = v87;
  v10 = v96;
  v9 = v106;
  v8 = v117;
  v7 = v129;
  v6 = v142;
  v5 = v156;
  v4 = v171;
  v3 = v187;
  v2 = v204;
  v1 = v52;
  a1 = v222;
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_17:
    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_18;
    }

    goto LABEL_93;
  }

LABEL_92:
  v205 = v2;
  v223 = a1;
  v53 = v1;
  v172 = v4;
  v188 = v3;
  v143 = v6;
  v157 = v5;
  v130 = v7;
  v107 = v9;
  v118 = v8;
  v88 = v11;
  v97 = v10;
  v73 = v13;
  v80 = v12;
  v62 = v15;
  v67 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v62;
  v14 = v67;
  v13 = v73;
  v12 = v80;
  v11 = v88;
  v10 = v97;
  v9 = v107;
  v8 = v118;
  v7 = v130;
  v6 = v143;
  v5 = v157;
  v4 = v172;
  v3 = v188;
  v2 = v205;
  v1 = v53;
  a1 = v223;
  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_18:
    v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_19;
    }

LABEL_94:
    v207 = v2;
    v225 = a1;
    v55 = v1;
    v174 = v4;
    v190 = v3;
    v145 = v6;
    v159 = v5;
    v132 = v7;
    v109 = v9;
    v120 = v8;
    v90 = v11;
    v99 = v10;
    v75 = v13;
    v82 = v12;
    v64 = v15;
    v69 = v14;
    v57 = v17;
    v60 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v17 = v57;
    v16 = v60;
    v15 = v64;
    v14 = v69;
    v13 = v75;
    v12 = v82;
    v11 = v90;
    v10 = v99;
    v9 = v109;
    v8 = v120;
    v7 = v132;
    v6 = v145;
    v5 = v159;
    v4 = v174;
    v3 = v190;
    v2 = v207;
    v1 = v55;
    a1 = v225;
    v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_95;
  }

LABEL_93:
  v206 = v2;
  v224 = a1;
  v54 = v1;
  v173 = v4;
  v189 = v3;
  v144 = v6;
  v158 = v5;
  v131 = v7;
  v108 = v9;
  v119 = v8;
  v89 = v11;
  v98 = v10;
  v74 = v13;
  v81 = v12;
  v63 = v15;
  v68 = v14;
  v59 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v16 = v59;
  v15 = v63;
  v14 = v68;
  v13 = v74;
  v12 = v81;
  v11 = v89;
  v10 = v98;
  v9 = v108;
  v8 = v119;
  v7 = v131;
  v6 = v144;
  v5 = v158;
  v4 = v173;
  v3 = v189;
  v2 = v206;
  v1 = v54;
  a1 = v224;
  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_94;
  }

LABEL_19:
  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_95:
  v226 = a1;
  v56 = v1;
  v191 = v3;
  v208 = v2;
  v160 = v5;
  v175 = v4;
  v133 = v7;
  v146 = v6;
  v110 = v9;
  v121 = v8;
  v91 = v11;
  v100 = v10;
  v76 = v13;
  v83 = v12;
  v65 = v15;
  v70 = v14;
  v58 = v17;
  v61 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v58;
  v16 = v61;
  v15 = v65;
  v14 = v70;
  v13 = v76;
  v12 = v83;
  v11 = v91;
  v10 = v100;
  v9 = v110;
  v8 = v121;
  v7 = v133;
  v6 = v146;
  v5 = v160;
  v4 = v175;
  v3 = v191;
  v2 = v208;
  v1 = v56;
  a1 = v226;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VectorUnrollOpInterface::Trait<Empty>]";
  v6 = 93;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Scalarizable<Empty>]";
  v6 = 84;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Vectorizable<Empty>]";
  v6 = 84;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::Tensorizable<Empty>]";
  v6 = 84;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddFOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, mlir::arith::AddFOp::verifyInvariantsImpl(&v8)) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::arith::AddIOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddIOp::populateInherentAttrs(Context, v6, a3);
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::initProperties(uint64_t a1, uint64_t a2, mlir::MLIRContext **a3, mlir::MLIRContext **a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }

  return mlir::arith::AddIOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddIOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::AddIOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::writeProperties;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneResult<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneOperand<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CollapseShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CollapseShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CollapseShapeOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AddIOp>::getSpeculatability;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getEffects;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v8 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRanges;
  v8[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRangesFromOptional;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v9 = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getOverflowAttr;
  v9[1] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::hasNoUnsignedWrap;
  v9[2] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::hasNoSignedWrap;
  v9[3] = mlir::arith::detail::ArithIntegerOverflowFlagsInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getIntegerOverflowAttrName;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::getShapeForUnroll;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v10);
  v11 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v11 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferReturnTypes;
  v11[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::refineReturnTypes;
  v11[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
  }

  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, void *, void, uint64_t (*)(uint64_t *a1, uint64_t a2, llvm::APInt *a3), void **), llvm::APInt *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

const char *llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithIntegerOverflowFlagsInterface]";
  v6 = 97;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AddIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::AddIOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AddIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
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

    v22 = "arith.addi";
    v23 = 10;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::AddIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = a1;
  mlir::arith::detail::AddIOpGenericAdaptorBase::AddIOpGenericAdaptorBase(v14, a1);
  v15 = a2;
  v16 = a3;
  v8 = mlir::arith::AddIOp::fold(&v13, v14);
  if (v8 >= 8 && a1 - 16 != (v8 & ((v8 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v9 = *(a4 + 8);
    if (v9 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v9) = v8;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v10 = v8;
    v11 = mlir::OpTrait::impl::foldCommutative(a1, a2, a3);
    v8 = v10;
    if (v11)
    {
      return 1;
    }
  }

  return v8 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v40;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_83;
    }
  }

  v41 = a1;
  v42 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v42;
  a1 = v41;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_84;
  }

LABEL_83:
  v229 = a1;
  v43 = v1;
  v44 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v44;
  v1 = v43;
  a1 = v229;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_85;
  }

LABEL_84:
  v212 = v2;
  v230 = a1;
  v45 = v1;
  v46 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v46;
  v2 = v212;
  a1 = v230;
  v1 = v45;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_86;
  }

LABEL_85:
  v213 = v2;
  v231 = a1;
  v47 = v1;
  v48 = v3;
  v196 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v196;
  v2 = v213;
  v3 = v48;
  v1 = v47;
  a1 = v231;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_87;
  }

LABEL_86:
  v214 = v2;
  v232 = a1;
  v49 = v1;
  v50 = v3;
  v181 = v5;
  v197 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v181;
  v4 = v197;
  v3 = v50;
  v2 = v214;
  a1 = v232;
  v1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_88;
  }

LABEL_87:
  v215 = v2;
  v233 = a1;
  v51 = v1;
  v52 = v3;
  v182 = v5;
  v198 = v4;
  v167 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v167;
  v5 = v182;
  v4 = v198;
  v2 = v215;
  v3 = v52;
  v1 = v51;
  a1 = v233;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_89;
  }

LABEL_88:
  v216 = v2;
  v234 = a1;
  v53 = v1;
  v54 = v3;
  v183 = v5;
  v199 = v4;
  v154 = v7;
  v168 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v7 = v154;
  v6 = v168;
  v5 = v183;
  v4 = v199;
  v3 = v54;
  v2 = v216;
  a1 = v234;
  v1 = v53;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_90;
  }

LABEL_89:
  v217 = v2;
  v235 = a1;
  v55 = v1;
  v56 = v3;
  v184 = v5;
  v200 = v4;
  v155 = v7;
  v169 = v6;
  v142 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v142;
  v7 = v155;
  v6 = v169;
  v5 = v184;
  v4 = v200;
  v3 = v56;
  v2 = v217;
  a1 = v235;
  v1 = v55;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_91;
  }

LABEL_90:
  v218 = v2;
  v236 = a1;
  v57 = v1;
  v58 = v3;
  v185 = v5;
  v201 = v4;
  v156 = v7;
  v170 = v6;
  v131 = v9;
  v143 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v9 = v131;
  v8 = v143;
  v7 = v156;
  v6 = v170;
  v5 = v185;
  v4 = v201;
  v3 = v58;
  v2 = v218;
  a1 = v236;
  v1 = v57;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_92;
  }

LABEL_91:
  v219 = v2;
  v237 = a1;
  v59 = v1;
  v60 = v3;
  v186 = v5;
  v202 = v4;
  v157 = v7;
  v171 = v6;
  v132 = v9;
  v144 = v8;
  v121 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v10 = v121;
  v9 = v132;
  v8 = v144;
  v7 = v157;
  v6 = v171;
  v5 = v186;
  v4 = v202;
  v3 = v60;
  v2 = v219;
  a1 = v237;
  v1 = v59;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_93;
  }

LABEL_92:
  v220 = v2;
  v238 = a1;
  v61 = v1;
  v62 = v3;
  v187 = v5;
  v203 = v4;
  v158 = v7;
  v172 = v6;
  v133 = v9;
  v145 = v8;
  v112 = v11;
  v122 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v112;
  v10 = v122;
  v9 = v133;
  v8 = v145;
  v7 = v158;
  v6 = v172;
  v5 = v187;
  v4 = v203;
  v3 = v62;
  v2 = v220;
  a1 = v238;
  v1 = v61;
  v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_94;
  }

LABEL_93:
  v221 = v2;
  v239 = a1;
  v63 = v1;
  v64 = v3;
  v188 = v5;
  v204 = v4;
  v159 = v7;
  v173 = v6;
  v134 = v9;
  v146 = v8;
  v113 = v11;
  v123 = v10;
  v104 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v104;
  v11 = v113;
  v10 = v123;
  v9 = v134;
  v8 = v146;
  v7 = v159;
  v6 = v173;
  v5 = v188;
  v4 = v204;
  v3 = v64;
  v2 = v221;
  a1 = v239;
  v1 = v63;
  v13 = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_95;
  }

LABEL_94:
  v222 = v2;
  v240 = a1;
  v65 = v1;
  v66 = v3;
  v189 = v5;
  v205 = v4;
  v160 = v7;
  v174 = v6;
  v135 = v9;
  v147 = v8;
  v114 = v11;
  v124 = v10;
  v97 = v13;
  v105 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v13 = v97;
  v12 = v105;
  v11 = v114;
  v10 = v124;
  v9 = v135;
  v8 = v147;
  v7 = v160;
  v6 = v174;
  v5 = v189;
  v4 = v205;
  v3 = v66;
  v2 = v222;
  a1 = v240;
  v1 = v65;
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

    goto LABEL_96;
  }

LABEL_95:
  v223 = v2;
  v241 = a1;
  v67 = v1;
  v68 = v3;
  v190 = v5;
  v206 = v4;
  v161 = v7;
  v175 = v6;
  v136 = v9;
  v148 = v8;
  v115 = v11;
  v125 = v10;
  v98 = v13;
  v106 = v12;
  v91 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v14 = v91;
  v13 = v98;
  v12 = v106;
  v11 = v115;
  v10 = v125;
  v9 = v136;
  v8 = v148;
  v7 = v161;
  v6 = v175;
  v5 = v190;
  v4 = v206;
  v3 = v68;
  v2 = v223;
  a1 = v241;
  v1 = v67;
  v15 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_17:
    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_18;
    }

    goto LABEL_97;
  }

LABEL_96:
  v224 = v2;
  v242 = a1;
  v69 = v1;
  v70 = v3;
  v191 = v5;
  v207 = v4;
  v162 = v7;
  v176 = v6;
  v137 = v9;
  v149 = v8;
  v116 = v11;
  v126 = v10;
  v99 = v13;
  v107 = v12;
  v86 = v15;
  v92 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v86;
  v14 = v92;
  v13 = v99;
  v12 = v107;
  v11 = v116;
  v10 = v126;
  v9 = v137;
  v8 = v149;
  v7 = v162;
  v6 = v176;
  v5 = v191;
  v4 = v207;
  v3 = v70;
  v2 = v224;
  a1 = v242;
  v1 = v69;
  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_18:
    v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

LABEL_97:
  v225 = v2;
  v243 = a1;
  v71 = v1;
  v72 = v3;
  v192 = v5;
  v208 = v4;
  v163 = v7;
  v177 = v6;
  v138 = v9;
  v150 = v8;
  v117 = v11;
  v127 = v10;
  v100 = v13;
  v108 = v12;
  v87 = v15;
  v93 = v14;
  v82 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v16 = v82;
  v15 = v87;
  v14 = v93;
  v13 = v100;
  v12 = v108;
  v11 = v117;
  v10 = v127;
  v9 = v138;
  v8 = v150;
  v7 = v163;
  v6 = v177;
  v5 = v192;
  v4 = v208;
  v3 = v72;
  v2 = v225;
  a1 = v243;
  v1 = v71;
  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_19:
    v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_20;
    }

LABEL_99:
    v227 = v2;
    v245 = a1;
    v75 = v1;
    v77 = v3;
    v194 = v5;
    v210 = v4;
    v165 = v7;
    v179 = v6;
    v140 = v9;
    v152 = v8;
    v119 = v11;
    v129 = v10;
    v102 = v13;
    v110 = v12;
    v89 = v15;
    v95 = v14;
    v80 = v17;
    v84 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v17 = v80;
    v16 = v84;
    v15 = v89;
    v14 = v95;
    v13 = v102;
    v12 = v110;
    v11 = v119;
    v10 = v129;
    v9 = v140;
    v8 = v152;
    v7 = v165;
    v6 = v179;
    v5 = v194;
    v4 = v210;
    v3 = v77;
    v2 = v227;
    a1 = v245;
    v1 = v75;
    v19 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_100;
  }

LABEL_98:
  v226 = v2;
  v244 = a1;
  v73 = v1;
  v74 = v3;
  v193 = v5;
  v209 = v4;
  v164 = v7;
  v178 = v6;
  v139 = v9;
  v151 = v8;
  v118 = v11;
  v128 = v10;
  v101 = v13;
  v109 = v12;
  v88 = v15;
  v94 = v14;
  v79 = v17;
  v83 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v79;
  v16 = v83;
  v15 = v88;
  v14 = v94;
  v13 = v101;
  v12 = v109;
  v11 = v118;
  v10 = v128;
  v9 = v139;
  v8 = v151;
  v7 = v164;
  v6 = v178;
  v5 = v193;
  v4 = v209;
  v3 = v74;
  v2 = v226;
  a1 = v244;
  v1 = v73;
  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_99;
  }

LABEL_20:
  v19 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_100:
  v246 = a1;
  v76 = v1;
  v228 = v2;
  v78 = v3;
  v195 = v5;
  v211 = v4;
  v166 = v7;
  v180 = v6;
  v141 = v9;
  v153 = v8;
  v120 = v11;
  v130 = v10;
  v103 = v13;
  v111 = v12;
  v90 = v15;
  v96 = v14;
  v81 = v17;
  v85 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v81;
  v16 = v85;
  v15 = v90;
  v14 = v96;
  v13 = v103;
  v12 = v111;
  v11 = v120;
  v10 = v130;
  v9 = v141;
  v8 = v153;
  v7 = v166;
  v6 = v180;
  v5 = v195;
  v4 = v211;
  v1 = v76;
  v3 = v78;
  v2 = v228;
  a1 = v246;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || v19 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferIntRangeInterface::Trait<Empty>]";
  v6 = 92;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<Empty>]";
  v6 = 111;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddIOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, (mlir::arith::AddIOp::verifyInvariantsImpl(&v8) & 1) != 0) && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v5) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v6) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AddUIExtendedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddUIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddUIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddUIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddUIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::AddUIExtendedOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getShapeForUnroll;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v7 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getAsmResultNames;
  v7[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getAsmBlockArgumentNames;
  v7[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getAsmBlockNames;
  v7[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::arith::AddUIExtendedOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddUIExtendedOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddUIExtendedOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddUIExtendedOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Elementwise<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddUIExtendedOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddUIExtendedOp>,mlir::OpAsmOpInterface::Trait<mlir::arith::AddUIExtendedOp>>();
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v18 = a2;
  v19[0] = v9;
  v19[1] = v10;
  v20 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(v21, v13, v12);
  v21[2] = a3;
  v21[3] = a4;
  result = mlir::arith::AddUIExtendedOp::fold(&v18, v19, a5);
  v15 = *(a5 + 8);
  if (((result & 1) == 0 || !v15) && !v15)
  {
    v16 = result;
    v17 = mlir::OpTrait::impl::foldCommutative(a2, a3, a4);
    result = v16;
    if (v17)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v135 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v135;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  v121 = v1;
  v136 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v1 = v121;
  a1 = v136;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_65;
  }

LABEL_64:
  v122 = v1;
  v137 = a1;
  v108 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v108;
  v1 = v122;
  a1 = v137;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_66;
  }

LABEL_65:
  v123 = v1;
  v138 = a1;
  v96 = v3;
  v109 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v3 = v96;
  v2 = v109;
  v1 = v123;
  a1 = v138;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  v124 = v1;
  v139 = a1;
  v97 = v3;
  v110 = v2;
  v85 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v4 = v85;
  v3 = v97;
  v2 = v110;
  v1 = v124;
  a1 = v139;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  v125 = v1;
  v140 = a1;
  v98 = v3;
  v111 = v2;
  v75 = v5;
  v86 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v5 = v75;
  v4 = v86;
  v3 = v98;
  v2 = v111;
  v1 = v125;
  a1 = v140;
  v6 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  v126 = v1;
  v141 = a1;
  v99 = v3;
  v112 = v2;
  v76 = v5;
  v87 = v4;
  v66 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v66;
  v5 = v76;
  v4 = v87;
  v3 = v99;
  v2 = v112;
  v1 = v126;
  a1 = v141;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  v127 = v1;
  v142 = a1;
  v100 = v3;
  v113 = v2;
  v77 = v5;
  v88 = v4;
  v67 = v6;
  v58 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v7 = v58;
  v6 = v67;
  v5 = v77;
  v4 = v88;
  v3 = v100;
  v2 = v113;
  v1 = v127;
  a1 = v142;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  v128 = v1;
  v143 = a1;
  v101 = v3;
  v114 = v2;
  v78 = v5;
  v89 = v4;
  v68 = v6;
  v51 = v8;
  v59 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v8 = v51;
  v7 = v59;
  v6 = v68;
  v5 = v78;
  v4 = v89;
  v3 = v101;
  v2 = v114;
  v1 = v128;
  a1 = v143;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  v129 = v1;
  v144 = a1;
  v102 = v3;
  v115 = v2;
  v79 = v5;
  v90 = v4;
  v69 = v6;
  v52 = v8;
  v60 = v7;
  v45 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v9 = v45;
  v8 = v52;
  v7 = v60;
  v6 = v69;
  v5 = v79;
  v4 = v90;
  v3 = v102;
  v2 = v115;
  v1 = v129;
  a1 = v144;
  v10 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  v130 = v1;
  v145 = a1;
  v103 = v3;
  v116 = v2;
  v80 = v5;
  v91 = v4;
  v70 = v6;
  v53 = v8;
  v61 = v7;
  v40 = v10;
  v46 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v10 = v40;
  v9 = v46;
  v8 = v53;
  v7 = v61;
  v6 = v70;
  v5 = v80;
  v4 = v91;
  v3 = v103;
  v2 = v116;
  v1 = v130;
  a1 = v145;
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  v131 = v1;
  v146 = a1;
  v104 = v3;
  v117 = v2;
  v81 = v5;
  v92 = v4;
  v71 = v6;
  v54 = v8;
  v62 = v7;
  v41 = v10;
  v47 = v9;
  v36 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v36;
  v10 = v41;
  v9 = v47;
  v8 = v54;
  v7 = v62;
  v6 = v71;
  v5 = v81;
  v4 = v92;
  v3 = v104;
  v2 = v117;
  v1 = v131;
  a1 = v146;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

LABEL_75:
    v133 = v1;
    v148 = a1;
    v106 = v3;
    v119 = v2;
    v83 = v5;
    v94 = v4;
    v73 = v6;
    v56 = v8;
    v64 = v7;
    v43 = v10;
    v49 = v9;
    v34 = v12;
    v38 = v11;
    v31 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v13 = v31;
    v12 = v34;
    v11 = v38;
    v10 = v43;
    v9 = v49;
    v8 = v56;
    v7 = v64;
    v6 = v73;
    v5 = v83;
    v4 = v94;
    v3 = v106;
    v2 = v119;
    v1 = v133;
    a1 = v148;
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_76;
  }

LABEL_74:
  v132 = v1;
  v147 = a1;
  v105 = v3;
  v118 = v2;
  v82 = v5;
  v93 = v4;
  v72 = v6;
  v55 = v8;
  v63 = v7;
  v42 = v10;
  v48 = v9;
  v33 = v12;
  v37 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v33;
  v11 = v37;
  v10 = v42;
  v9 = v48;
  v8 = v55;
  v7 = v63;
  v6 = v72;
  v5 = v82;
  v4 = v93;
  v3 = v105;
  v2 = v118;
  v1 = v132;
  a1 = v147;
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_75;
  }

LABEL_15:
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_76:
  v134 = v1;
  v149 = a1;
  v107 = v3;
  v120 = v2;
  v84 = v5;
  v95 = v4;
  v74 = v6;
  v57 = v8;
  v65 = v7;
  v44 = v10;
  v50 = v9;
  v35 = v12;
  v39 = v11;
  v30 = v14;
  v32 = v13;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>();
  v14 = v30;
  v13 = v32;
  v12 = v35;
  v11 = v39;
  v10 = v44;
  v9 = v50;
  v8 = v57;
  v7 = v65;
  v6 = v74;
  v5 = v84;
  v4 = v95;
  v3 = v107;
  v2 = v120;
  v1 = v134;
  a1 = v149;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AddUIExtendedOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::AddUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyNResults(a1, 2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v6 = a1, mlir::arith::AddUIExtendedOp::verifyInvariantsImpl(&v6)))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::AndIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AndIOp>,mlir::OpTrait::OneResult<mlir::arith::AndIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AndIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AndIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AndIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::AndIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AndIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AndIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AndIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AndIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::Elementwise<mlir::arith::AndIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AndIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AndIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AndIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AndIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::AndIOp>::getSpeculatability;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::getEffects;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v7 = v6;
  *v6 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRanges;
  v6[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRangesFromOptional;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::getShapeForUnroll;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v9 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferReturnTypes;
  v9[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::refineReturnTypes;
  v9[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, void *, void, uint64_t (*)(uint64_t *a1, uint64_t a2, llvm::APInt *a3), void **), llvm::APInt *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::AndIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::AndIOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::AndIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
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

    v22 = "arith.andi";
    v23 = 10;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::AndIOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v20 = a1;
  v21[0] = v8;
  v21[1] = v9;
  v22 = 1;
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

  mlir::RegionRange::RegionRange(v23, v12, v11);
  v23[2] = a2;
  v23[3] = a3;
  v13 = mlir::arith::AndIOp::fold(&v20, v21);
  if (v13 >= 8 && a1 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v14) = v13;
LABEL_8:
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v16 = v13;
    if (mlir::OpTrait::impl::foldCommutative(a1, a2, a3))
    {
      return 1;
    }

    v13 = v16;
    if (!*(a4 + 8))
    {
      v18 = mlir::OpTrait::impl::foldIdempotent(a1, v17);
      v13 = v16;
      if (v18 >= 8)
      {
        if (a1 - 16 == (v18 & ((v18 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        v19 = *(a4 + 8);
        if (v19 >= *(a4 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a4 + 8 * v19) = v18;
        goto LABEL_8;
      }
    }
  }

  return v13 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v38;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_79;
    }
  }

  v209 = a1;
  v39 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v39;
  a1 = v209;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_80;
  }

LABEL_79:
  v192 = v2;
  v210 = a1;
  v40 = v1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v192;
  a1 = v210;
  v1 = v40;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_81;
  }

LABEL_80:
  v193 = v2;
  v211 = a1;
  v41 = v1;
  v176 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v176;
  v2 = v193;
  v1 = v41;
  a1 = v211;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_82;
  }

LABEL_81:
  v194 = v2;
  v212 = a1;
  v42 = v1;
  v161 = v4;
  v177 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v4 = v161;
  v3 = v177;
  v2 = v194;
  a1 = v212;
  v1 = v42;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_83;
  }

LABEL_82:
  v195 = v2;
  v213 = a1;
  v43 = v1;
  v162 = v4;
  v178 = v3;
  v147 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v147;
  v4 = v162;
  v3 = v178;
  v2 = v195;
  v1 = v43;
  a1 = v213;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  v196 = v2;
  v214 = a1;
  v44 = v1;
  v163 = v4;
  v179 = v3;
  v134 = v6;
  v148 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v6 = v134;
  v5 = v148;
  v4 = v163;
  v3 = v179;
  v2 = v196;
  a1 = v214;
  v1 = v44;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_84:
  v197 = v2;
  v215 = a1;
  v45 = v1;
  v164 = v4;
  v180 = v3;
  v135 = v6;
  v149 = v5;
  v122 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::IsIdempotent,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v122;
  v6 = v135;
  v5 = v149;
  v4 = v164;
  v3 = v180;
  v2 = v197;
  v1 = v45;
  a1 = v215;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIdempotent<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIdempotent>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_86;
  }

LABEL_85:
  v198 = v2;
  v216 = a1;
  v46 = v1;
  v165 = v4;
  v181 = v3;
  v136 = v6;
  v150 = v5;
  v123 = v7;
  v111 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v111;
  v7 = v123;
  v6 = v136;
  v5 = v150;
  v4 = v165;
  v3 = v181;
  v2 = v198;
  v1 = v46;
  a1 = v216;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_86:
  v199 = v2;
  v217 = a1;
  v47 = v1;
  v166 = v4;
  v182 = v3;
  v137 = v6;
  v151 = v5;
  v124 = v7;
  v101 = v9;
  v112 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v9 = v101;
  v8 = v112;
  v7 = v124;
  v6 = v137;
  v5 = v151;
  v4 = v166;
  v3 = v182;
  v2 = v199;
  v1 = v47;
  a1 = v217;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_88;
  }

LABEL_87:
  v200 = v2;
  v218 = a1;
  v48 = v1;
  v167 = v4;
  v183 = v3;
  v138 = v6;
  v152 = v5;
  v125 = v7;
  v102 = v9;
  v113 = v8;
  v92 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v10 = v92;
  v9 = v102;
  v8 = v113;
  v7 = v125;
  v6 = v138;
  v5 = v152;
  v4 = v167;
  v3 = v183;
  v2 = v200;
  v1 = v48;
  a1 = v218;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

LABEL_88:
  v201 = v2;
  v219 = a1;
  v49 = v1;
  v168 = v4;
  v184 = v3;
  v139 = v6;
  v153 = v5;
  v126 = v7;
  v103 = v9;
  v114 = v8;
  v84 = v11;
  v93 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v84;
  v10 = v93;
  v9 = v103;
  v8 = v114;
  v7 = v126;
  v6 = v139;
  v5 = v153;
  v4 = v168;
  v3 = v184;
  v2 = v201;
  v1 = v49;
  a1 = v219;
  v12 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_90;
  }

LABEL_89:
  v202 = v2;
  v220 = a1;
  v50 = v1;
  v169 = v4;
  v185 = v3;
  v140 = v6;
  v154 = v5;
  v127 = v7;
  v104 = v9;
  v115 = v8;
  v85 = v11;
  v94 = v10;
  v77 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v77;
  v11 = v85;
  v10 = v94;
  v9 = v104;
  v8 = v115;
  v7 = v127;
  v6 = v140;
  v5 = v154;
  v4 = v169;
  v3 = v185;
  v2 = v202;
  v1 = v50;
  a1 = v220;
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

    goto LABEL_91;
  }

LABEL_90:
  v203 = v2;
  v221 = a1;
  v51 = v1;
  v170 = v4;
  v186 = v3;
  v141 = v6;
  v155 = v5;
  v128 = v7;
  v105 = v9;
  v116 = v8;
  v86 = v11;
  v95 = v10;
  v71 = v13;
  v78 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v13 = v71;
  v12 = v78;
  v11 = v86;
  v10 = v95;
  v9 = v105;
  v8 = v116;
  v7 = v128;
  v6 = v141;
  v5 = v155;
  v4 = v170;
  v3 = v186;
  v2 = v203;
  v1 = v51;
  a1 = v221;
  v14 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_16:
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_17;
    }

    goto LABEL_92;
  }

LABEL_91:
  v204 = v2;
  v222 = a1;
  v52 = v1;
  v171 = v4;
  v187 = v3;
  v142 = v6;
  v156 = v5;
  v129 = v7;
  v106 = v9;
  v117 = v8;
  v87 = v11;
  v96 = v10;
  v72 = v13;
  v79 = v12;
  v66 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v14 = v66;
  v13 = v72;
  v12 = v79;
  v11 = v87;
  v10 = v96;
  v9 = v106;
  v8 = v117;
  v7 = v129;
  v6 = v142;
  v5 = v156;
  v4 = v171;
  v3 = v187;
  v2 = v204;
  v1 = v52;
  a1 = v222;
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_17:
    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_18;
    }

    goto LABEL_93;
  }

LABEL_92:
  v205 = v2;
  v223 = a1;
  v53 = v1;
  v172 = v4;
  v188 = v3;
  v143 = v6;
  v157 = v5;
  v130 = v7;
  v107 = v9;
  v118 = v8;
  v88 = v11;
  v97 = v10;
  v73 = v13;
  v80 = v12;
  v62 = v15;
  v67 = v14;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v62;
  v14 = v67;
  v13 = v73;
  v12 = v80;
  v11 = v88;
  v10 = v97;
  v9 = v107;
  v8 = v118;
  v7 = v130;
  v6 = v143;
  v5 = v157;
  v4 = v172;
  v3 = v188;
  v2 = v205;
  v1 = v53;
  a1 = v223;
  v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_18:
    v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_19;
    }

LABEL_94:
    v207 = v2;
    v225 = a1;
    v55 = v1;
    v174 = v4;
    v190 = v3;
    v145 = v6;
    v159 = v5;
    v132 = v7;
    v109 = v9;
    v120 = v8;
    v90 = v11;
    v99 = v10;
    v75 = v13;
    v82 = v12;
    v64 = v15;
    v69 = v14;
    v57 = v17;
    v60 = v16;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v17 = v57;
    v16 = v60;
    v15 = v64;
    v14 = v69;
    v13 = v75;
    v12 = v82;
    v11 = v90;
    v10 = v99;
    v9 = v109;
    v8 = v120;
    v7 = v132;
    v6 = v145;
    v5 = v159;
    v4 = v174;
    v3 = v190;
    v2 = v207;
    v1 = v55;
    a1 = v225;
    v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_95;
  }

LABEL_93:
  v206 = v2;
  v224 = a1;
  v54 = v1;
  v173 = v4;
  v189 = v3;
  v144 = v6;
  v158 = v5;
  v131 = v7;
  v108 = v9;
  v119 = v8;
  v89 = v11;
  v98 = v10;
  v74 = v13;
  v81 = v12;
  v63 = v15;
  v68 = v14;
  v59 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v16 = v59;
  v15 = v63;
  v14 = v68;
  v13 = v74;
  v12 = v81;
  v11 = v89;
  v10 = v98;
  v9 = v108;
  v8 = v119;
  v7 = v131;
  v6 = v144;
  v5 = v158;
  v4 = v173;
  v3 = v189;
  v2 = v206;
  v1 = v54;
  a1 = v224;
  v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_94;
  }

LABEL_19:
  v18 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_95:
  v226 = a1;
  v56 = v1;
  v191 = v3;
  v208 = v2;
  v160 = v5;
  v175 = v4;
  v133 = v7;
  v146 = v6;
  v110 = v9;
  v121 = v8;
  v91 = v11;
  v100 = v10;
  v76 = v13;
  v83 = v12;
  v65 = v15;
  v70 = v14;
  v58 = v17;
  v61 = v16;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v17 = v58;
  v16 = v61;
  v15 = v65;
  v14 = v70;
  v13 = v76;
  v12 = v83;
  v11 = v91;
  v10 = v100;
  v9 = v110;
  v8 = v121;
  v7 = v133;
  v6 = v146;
  v5 = v160;
  v4 = v175;
  v3 = v191;
  v2 = v208;
  v1 = v56;
  a1 = v226;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || v16 == a1 || v17 == a1 || v18 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::AndIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::AndIOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::AndIOp>,mlir::OpTrait::OneResult<mlir::arith::AndIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AndIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AndIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AndIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AndIOp>,mlir::OpTrait::IsIdempotent<mlir::arith::AndIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AndIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AndIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AndIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AndIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AndIOp>,mlir::OpTrait::Elementwise<mlir::arith::AndIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AndIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AndIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AndIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AndIOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v9 = a1, (mlir::arith::AndIOp::verifyInvariantsImpl(&v9) & 1) != 0) && (mlir::OpTrait::impl::verifyIsIdempotent(a1, v5) & 1) != 0 && (mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v6) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v7) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::BitcastOp>::getSpeculatability;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::getEffects;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::CastOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::areCastCompatible;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::BitcastOp>::getShapeForUnroll;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

void mlir::detail::VectorUnrollOpInterfaceTrait<mlir::arith::BitcastOp>::getShapeForUnroll(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v13 = v3;
  if (v3)
  {
    Shape = mlir::VectorType::getShape(&v13);
    v5 = mlir::VectorType::getShape(&v13);
    v7 = (v5 + 8 * v6);
    __src = v16;
    v15 = 0x400000000;
    if (((v7 - Shape) >> 3) >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = 0;
    v9 = v16;
    if (v7 != Shape)
    {
      memcpy(v16, Shape, v7 - Shape);
      v8 = v15;
      v9 = __src;
    }

    v10 = (v7 - Shape) >> 3;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    v11 = v8 + v10;
    LODWORD(v15) = v8 + v10;
    if (v8 + v10 && &__src != a2)
    {
      if (v9 == v16)
      {
        if (v11 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, v9, 8 * (v8 + v10));
        v9 = __src;
        *(a2 + 8) = v11;
      }

      else
      {
        *a2 = v9;
        v12 = HIDWORD(v15);
        *(a2 + 8) = v11;
        *(a2 + 12) = v12;
        __src = v16;
        HIDWORD(v15) = 0;
        v9 = v16;
      }

      LODWORD(v15) = 0;
    }

    *(a2 + 48) = 1;
    if (v9 != v16)
    {
      free(v9);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::foldSingleResultHook<mlir::arith::BitcastOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = a1;
  v19[0] = v8;
  v19[1] = v9;
  v20 = 1;
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

  mlir::RegionRange::RegionRange(v21, v12, v11);
  v21[2] = a2;
  v21[3] = a3;
  v13 = mlir::arith::BitcastOp::fold(&v18, v19);
  if (v13 >= 8 && a1 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v14) = v13;
    ++*(a4 + 8);
    return 1;
  }

  if (!*(a4 + 8))
  {
    v15 = v13;
    v16 = mlir::impl::foldCastInterfaceOp(a1, a2, a3, a4);
    v13 = v15;
    if (v16)
    {
      return 1;
    }
  }

  return v13 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v152;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_68;
    }
  }

  v137 = v1;
  v153 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v137;
  a1 = v153;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

LABEL_68:
  v138 = v1;
  v154 = a1;
  v123 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v2 = v123;
  v1 = v138;
  a1 = v154;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_70;
  }

LABEL_69:
  v139 = v1;
  v155 = a1;
  v110 = v3;
  v124 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v110;
  v2 = v124;
  v1 = v139;
  a1 = v155;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_70:
  v140 = v1;
  v156 = a1;
  v111 = v3;
  v125 = v2;
  v98 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v4 = v98;
  v3 = v111;
  v2 = v125;
  v1 = v140;
  a1 = v156;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_71:
  v141 = v1;
  v157 = a1;
  v112 = v3;
  v126 = v2;
  v87 = v5;
  v99 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v87;
  v4 = v99;
  v3 = v112;
  v2 = v126;
  v1 = v141;
  a1 = v157;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  v142 = v1;
  v158 = a1;
  v113 = v3;
  v127 = v2;
  v88 = v5;
  v100 = v4;
  v77 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v77;
  v5 = v88;
  v4 = v100;
  v3 = v113;
  v2 = v127;
  v1 = v142;
  a1 = v158;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  v143 = v1;
  v159 = a1;
  v114 = v3;
  v128 = v2;
  v89 = v5;
  v101 = v4;
  v78 = v6;
  v68 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v68;
  v6 = v78;
  v5 = v89;
  v4 = v101;
  v3 = v114;
  v2 = v128;
  v1 = v143;
  a1 = v159;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_75;
  }

LABEL_74:
  v144 = v1;
  v160 = a1;
  v115 = v3;
  v129 = v2;
  v90 = v5;
  v102 = v4;
  v79 = v6;
  v60 = v8;
  v69 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v8 = v60;
  v7 = v69;
  v6 = v79;
  v5 = v90;
  v4 = v102;
  v3 = v115;
  v2 = v129;
  v1 = v144;
  a1 = v160;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_76;
  }

LABEL_75:
  v145 = v1;
  v161 = a1;
  v116 = v3;
  v130 = v2;
  v91 = v5;
  v103 = v4;
  v80 = v6;
  v61 = v8;
  v70 = v7;
  v53 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v9 = v53;
  v8 = v61;
  v7 = v70;
  v6 = v80;
  v5 = v91;
  v4 = v103;
  v3 = v116;
  v2 = v130;
  v1 = v145;
  a1 = v161;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_77;
  }

LABEL_76:
  v146 = v1;
  v162 = a1;
  v117 = v3;
  v131 = v2;
  v92 = v5;
  v104 = v4;
  v81 = v6;
  v62 = v8;
  v71 = v7;
  v47 = v10;
  v54 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>();
  v10 = v47;
  v9 = v54;
  v8 = v62;
  v7 = v71;
  v6 = v81;
  v5 = v92;
  v4 = v104;
  v3 = v117;
  v2 = v131;
  v1 = v146;
  a1 = v162;
  v11 = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

    goto LABEL_78;
  }

LABEL_77:
  v147 = v1;
  v163 = a1;
  v118 = v3;
  v132 = v2;
  v93 = v5;
  v105 = v4;
  v82 = v6;
  v63 = v8;
  v72 = v7;
  v48 = v10;
  v55 = v9;
  v42 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v11 = v42;
  v10 = v48;
  v9 = v55;
  v8 = v63;
  v7 = v72;
  v6 = v82;
  v5 = v93;
  v4 = v105;
  v3 = v118;
  v2 = v132;
  v1 = v147;
  a1 = v163;
  v12 = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_14:
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_15;
    }

    goto LABEL_79;
  }

LABEL_78:
  v148 = v1;
  v164 = a1;
  v119 = v3;
  v133 = v2;
  v94 = v5;
  v106 = v4;
  v83 = v6;
  v64 = v8;
  v73 = v7;
  v49 = v10;
  v56 = v9;
  v38 = v12;
  v43 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v12 = v38;
  v11 = v43;
  v10 = v49;
  v9 = v56;
  v8 = v64;
  v7 = v73;
  v6 = v83;
  v5 = v94;
  v4 = v106;
  v3 = v119;
  v2 = v133;
  v1 = v148;
  a1 = v164;
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_15:
    v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_16;
    }

LABEL_80:
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
    v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_81;
  }

LABEL_79:
  v149 = v1;
  v165 = a1;
  v120 = v3;
  v134 = v2;
  v95 = v5;
  v107 = v4;
  v84 = v6;
  v65 = v8;
  v74 = v7;
  v50 = v10;
  v57 = v9;
  v39 = v12;
  v44 = v11;
  v35 = v13;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v13 = v35;
  v12 = v39;
  v11 = v44;
  v10 = v50;
  v9 = v57;
  v8 = v65;
  v7 = v74;
  v6 = v84;
  v5 = v95;
  v4 = v107;
  v3 = v120;
  v2 = v134;
  v1 = v149;
  a1 = v165;
  v14 = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_80;
  }

LABEL_16:
  v15 = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_81:
  v151 = v1;
  v167 = a1;
  v122 = v3;
  v136 = v2;
  v97 = v5;
  v109 = v4;
  v86 = v6;
  v67 = v8;
  v76 = v7;
  v52 = v10;
  v59 = v9;
  v41 = v12;
  v46 = v11;
  v34 = v14;
  v37 = v13;
  v32 = v15;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>();
  v15 = v32;
  v14 = v34;
  v13 = v37;
  v12 = v41;
  v11 = v46;
  v10 = v52;
  v9 = v59;
  v8 = v67;
  v7 = v76;
  v6 = v86;
  v5 = v97;
  v4 = v109;
  v3 = v122;
  v2 = v136;
  v1 = v151;
  a1 = v167;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v10 = a1, mlir::arith::BitcastOp::verifyInvariantsImpl(&v10)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && mlir::impl::verifyCastInterfaceOp(a1, v7))
  {
    return mlir::OpTrait::impl::verifyElementwise(a1, v8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OneResult<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::CeilDivSIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::CeilDivSIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::CeilDivSIOp>,mlir::OpTrait::OpInvariants<mlir::arith::CeilDivSIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::CeilDivSIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::CeilDivSIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Elementwise<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Scalarizable<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Vectorizable<mlir::arith::CeilDivSIOp>,mlir::OpTrait::Tensorizable<mlir::arith::CeilDivSIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::CeilDivSIOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getSpeculatability;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v5 = v4;
  *v4 = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRanges;
  v4[1] = mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRangesFromOptional;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddIOp>,mlir::OpTrait::OneResult<mlir::arith::AddIOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddIOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddIOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddIOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddIOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddIOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddIOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddIOp>,mlir::InferIntRangeInterface::Trait<mlir::arith::AddIOp>,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddIOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddIOp>,mlir::OpTrait::Elementwise<mlir::arith::AddIOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddIOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddIOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddIOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddIOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getShapeForUnroll;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::AddFOp>,mlir::OpTrait::OneResult<mlir::arith::AddFOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::AddFOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::arith::AddFOp>,mlir::OpTrait::OpInvariants<mlir::arith::AddFOp>,mlir::BytecodeOpInterface::Trait<mlir::arith::AddFOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::AddFOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::AddFOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::AddFOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::IsCommutative<mlir::arith::AddFOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::arith::AddFOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::AddFOp>,mlir::OpTrait::Elementwise<mlir::arith::AddFOp>,mlir::OpTrait::Scalarizable<mlir::arith::AddFOp>,mlir::OpTrait::Vectorizable<mlir::arith::AddFOp>,mlir::OpTrait::Tensorizable<mlir::arith::AddFOp>,mlir::InferTypeOpInterface::Trait<mlir::arith::AddFOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v9 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferReturnTypes;
  v9[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::refineReturnTypes;
  v9[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**a2)(void, uint64_t, void *, void, uint64_t (*)(uint64_t *a1, uint64_t a2, llvm::APInt *a3), void **), llvm::APInt *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::arith::CeilDivSIOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::arith::CeilDivSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
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

    v22 = "arith.ceildivsi";
    v23 = 15;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
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

BOOL mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::arith::CeilDivSIOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16 = a1;
  v17[0] = v8;
  v17[1] = v9;
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
  v13 = mlir::arith::CeilDivSIOp::fold(&v16, v17);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}