uint64_t mlir::pdl::OperationOp::getOpName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

BOOL mlir::pdl::OperationOp::mightHaveTypeInference(mlir::pdl::OperationOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (!v7)
  {
    return 0;
  }

  Value = mlir::StringAttr::getValue(&v7);
  v4 = v3;
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::OperationName::OperationName(&v7, Value, v4, Context);
  return mlir::OperationName::mightHaveInterface<mlir::InferTypeOpInterface>(&v7);
}

BOOL mlir::pdl::OperationOp::hasTypeInference(mlir::pdl::OperationOp *this)
{
  v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (!v16)
  {
    return 0;
  }

  Value = mlir::StringAttr::getValue(&v16);
  v4 = v3;
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::OperationName::OperationName(&v16, Value, v4, Context);
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
    v7 = *(v16 + 32);
    v8 = *(v16 + 40);
    if (v8)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
  v7 = *(v16 + 32);
  v8 = *(v16 + 40);
  if (!v8)
  {
    return 0;
  }

LABEL_4:
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
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    return 0;
  }

  return v9[1] != 0;
}

BOOL mlir::OperationName::mightHaveInterface<mlir::InferTypeOpInterface>(uint64_t *a1)
{
  {
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v1 = *a1;
    if (*(*a1 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v1 = *a1;
  if (*(*a1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    return 1;
  }

LABEL_3:
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 32);
  v5 = v3;
  do
  {
    v6 = v5 >> 1;
    v7 = &v4[2 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v5 += ~(v5 >> 1);
    if (v9 < mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v4 == (v2 + 16 * v3))
  {
    return 0;
  }

  if (*v4 == mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v4[1] != 0;
  }

  return 0;
}

BOOL mlir::pdl::PatternOp::verifyRegions(mlir::Operation **this)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  Terminator = mlir::Block::getTerminator(v4);
  if (Terminator)
  {
    v6 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    LOWORD(v56) = 259;
    mlir::OpState::emitOpError(this, v55, &v58);
    mlir::Diagnostic::attachNote();
  }

  *&v58 = this;
  v7 = *(v2 + 8);
  if (v7 != v2)
  {
    do
    {
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 40);
      v10 = v8 + 32;
      while (v9 != v10)
      {
        v11 = *(v9 + 8);
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
        v13 = mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>, &v58, 1);
        v9 = v11;
        if (!v13)
        {
          return 0;
        }
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v2);
    v7 = *(v2 + 8);
  }

  v14 = v7 - 8;
  if (!v7)
  {
    v14 = 0;
  }

  v15 = v14 + 32;
  v16 = *(v14 + 40);
  if (v16 != v14 + 32)
  {
    while (*(*(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
    {
      v16 = *(v16 + 8);
      if (v16 == v15)
      {
        goto LABEL_30;
      }
    }

    if (v16 != v15)
    {
      v54 = 0;
      v53[0] = 0;
      v53[1] = 0;
      v18 = *(v2 + 8);
      if (v18)
      {
        v19 = v18 - 8;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 + 32;
      v21 = *(v19 + 40);
      if (v21 == v19 + 32)
      {
        goto LABEL_89;
      }

      v22 = 1;
LABEL_54:
      v32 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v21);
      v33 = *(*(v32 + 48) + 16);
      if (v33 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id && v33 != &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id && v33 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id && v33 != &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id && v33 != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        goto LABEL_53;
      }

      v38 = v32;
      v39 = *(v32 + 36);
      v40 = v32 - 16;
      if (v39)
      {
        v41 = v32 - 16;
      }

      else
      {
        v41 = 0;
      }

      v57.n128_u64[0] = v41;
      v57.n128_u64[1] = v39;
      mlir::ResultRange::use_begin(&v57, v55);
      v42 = *(v38 + 36);
      if (v42)
      {
        v43 = v40;
      }

      else
      {
        v43 = 0;
      }

      v57.n128_u64[0] = v43;
      v57.n128_u64[1] = v42;
      mlir::ResultRange::use_end(&v57, v61);
      v44 = v56;
      v60 = v56;
      v58 = v55[0];
      v59 = v55[1];
      v45 = v62;
      while (1)
      {
        if (v44 == v45)
        {
          goto LABEL_53;
        }

        v46 = *(v44 + 16);
        v47 = *(v46 + 16);
        if (v47)
        {
          Parent = mlir::Block::getParent(v47);
          if (*(*(v46 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id || Parent && *(*(*(Parent + 16) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
          {
LABEL_82:
            if (v22)
            {
              visit(v38, v53);
            }

            else
            {
              if (!v54)
              {
                goto LABEL_90;
              }

              v49 = (v54 - 1) & ((v38 >> 4) ^ (v38 >> 9));
              v50 = *(v53[0] + v49);
              if (v50 != v38)
              {
                v51 = 1;
                while (v50 != -4096)
                {
                  v22 = 0;
                  v52 = v49 + v51++;
                  v49 = v52 & (v54 - 1);
                  v50 = *(v53[0] + v49);
                  if (v50 == v38)
                  {
                    goto LABEL_53;
                  }
                }

LABEL_90:
                *&v55[0] = "the operations must form a connected component";
                LOWORD(v56) = 259;
                mlir::OpState::emitOpError(this, v55, &v58);
                mlir::Diagnostic::attachNote();
              }
            }

            v22 = 0;
LABEL_53:
            v21 = *(v21 + 8);
            if (v21 != v20)
            {
              goto LABEL_54;
            }

LABEL_89:
            llvm::deallocate_buffer(v53[0], (8 * v54));
          }
        }

        else if (*(*(v46 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
        {
          goto LABEL_82;
        }

        mlir::ResultRange::UseIterator::operator++(v55);
        v44 = v56;
      }
    }
  }

LABEL_30:
  LOWORD(v56) = 259;
  mlir::OpState::emitOpError(this, v55, &v58);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v58);
  if (v58)
  {
    mlir::InFlightDiagnostic::report(&v58);
  }

  if (v68 == 1)
  {
    if (v67 != &v68)
    {
      free(v67);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v66;
      v25 = __p;
      if (v66 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v66 = v23;
      operator delete(v25);
    }

    v26 = v63;
    if (v63)
    {
      v27 = v64;
      v28 = v63;
      if (v64 != v63)
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
        v28 = v63;
      }

      v64 = v26;
      operator delete(v28);
    }

    if (*(&v59 + 1) != v61)
    {
      free(*(&v59 + 1));
    }
  }

  return v17;
}

void visit(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  if (*(*(mlir::Block::getParentOp(*(a1 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id && *(*(a1 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, &v19, &v14);
    if (v15 == 1)
    {
      v4 = *(*(v19 + 48) + 16);
      if (v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        visit(v19, a2);
      }

      else if (v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id || v19 && v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
      {
        *&v14 = *(*(v19 + 72) + 24);
        DefiningOp = mlir::Value::getDefiningOp(&v14);
        visit(DefiningOp, a2);
      }

      v6 = v19;
      v7 = *(v19 + 36);
      v8 = v19 - 16;
      if (v7)
      {
        v9 = v19 - 16;
      }

      else
      {
        v9 = 0;
      }

      *&v14 = v9;
      *(&v14 + 1) = v7;
      mlir::ResultRange::use_begin(&v14, v20);
      v10 = *(v6 + 36);
      if (v10)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      v22.n128_u64[0] = v11;
      v22.n128_u64[1] = v10;
      mlir::ResultRange::use_end(&v22, v17);
      v12 = v21;
      v16 = v21;
      v14 = v20[0];
      v15 = v20[1];
      for (i = v18; v21 != i; v12 = v21)
      {
        visit(*(v12 + 16), a2);
        mlir::ResultRange::UseIterator::operator++(v20);
      }
    }
  }
}

void mlir::pdl::PatternOp::build(uint64_t **a1, mlir::OperationState *a2, int a3, uint64_t a4)
{
  if ((*&a3 & 0x10000) != 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  I16IntegerAttr = mlir::Builder::getI16IntegerAttr(a1, v7);
  v10 = I16IntegerAttr;
  if (*(a4 + 16) == 1)
  {
    v14 = 261;
    v11 = *(a4 + 8);
    v13[0] = *a4;
    v13[1] = v11;
    I16IntegerAttr = mlir::Builder::getStringAttr(a1, v13, v9);
    v12 = I16IntegerAttr;
  }

  else
  {
    v12 = 0;
  }

  mlir::pdl::PatternOp::build(I16IntegerAttr, a2, v10, v12);
}

void mlir::pdl::PatternOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  *v4 = a3;
  if (a4)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 8) = a4;
  }

  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::pdl::PatternOp::getRewriter(mlir::pdl::PatternOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    return mlir::Block::getTerminator((v1 - 8));
  }

  else
  {
    return mlir::Block::getTerminator(0);
  }
}

BOOL mlir::pdl::ResultsOp::verify(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v18[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v18[0])
  {
    mlir::IntegerAttr::getValue(v18, &v22);
    if (v23 >= 0x41 && v22 != 0)
    {
      MEMORY[0x259C63150]();
    }

    return 1;
  }

  if (*(*(*(v1 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  v19 = 257;
  mlir::OpState::emitOpError(this, v18, &v22);
  if (v22)
  {
    LODWORD(v20) = 3;
    v21 = 77;
    if (v25 >= v26)
    {
      if (v24 > &v20 || v24 + 24 * v25 <= &v20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v24 + 24 * v25;
    v6 = v20;
    *(v5 + 2) = v21;
    *v5 = v6;
    ++v25;
    if (v22)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v20, *(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= v26)
      {
        if (v24 > &v20 || v24 + 24 * v25 <= &v20)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v24 + 24 * v25;
      v8 = v20;
      *(v7 + 2) = v21;
      *v7 = v8;
      ++v25;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  v9 = result;
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
    result = v9;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v24 != &v27)
    {
      free(v24);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::pdl::ResultsOp::getIndex(mlir::pdl::ResultsOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &v5);
  if (v6 >= 0x41)
  {
    v1 = v5;
  }

  else
  {
    v1 = &v5;
  }

  v2 = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    MEMORY[0x259C63150]();
  }

  return v2 | 0x100000000;
}

BOOL mlir::pdl::RewriteOp::verifyRegions(mlir::Operation **this)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 11);
  v2 = *this + 16 * ((v1 >> 23) & 1) + 64;
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v37[0] = *v2;
  if (v37[0])
  {
    mlir::StringAttr::getValue(v37);
    if (*v3 != v3)
    {
      v34 = 257;
      mlir::OpState::emitOpError(this, v33, v37);
      if (v37[0])
      {
        LODWORD(v35) = 3;
        *(&v35 + 1) = "expected rewrite region to be empty when rewrite is external";
        v36 = 60;
        if (v39 >= v40)
        {
          if (v38 > &v35 || v38 + 24 * v39 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v5 = v38 + 24 * v39;
        v6 = v35;
        *(v5 + 2) = v36;
        *v5 = v6;
        ++v39;
      }

      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v47 == 1)
      {
        if (v46 != &v47)
        {
          free(v46);
        }

        v8 = __p;
        if (__p)
        {
          v9 = v45;
          v10 = __p;
          if (v45 != __p)
          {
            do
            {
              v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
            }

            while (v9 != v8);
            v10 = __p;
          }

          v45 = v8;
          operator delete(v10);
        }

        v11 = v42;
        if (!v42)
        {
          goto LABEL_65;
        }

        v12 = v43;
        v13 = v42;
        if (v43 == v42)
        {
LABEL_64:
          v43 = v11;
          operator delete(v13);
LABEL_65:
          if (v38 != &v41)
          {
            free(v38);
          }

          return v7;
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
LABEL_63:
        v13 = v42;
        goto LABEL_64;
      }

      return v7;
    }

    return 1;
  }

  if (*v3 == v3)
  {
    v34 = 257;
    mlir::OpState::emitOpError(this, v33, v37);
    if (v37[0])
    {
      LODWORD(v35) = 3;
      *(&v35 + 1) = "expected rewrite region to be non-empty if external name is not specified";
      v36 = 73;
      if (v39 >= v40)
      {
        if (v38 > &v35 || v38 + 24 * v39 <= &v35)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v38 + 24 * v39;
      v25 = v35;
      *(v24 + 2) = v36;
      *v24 = v25;
      ++v39;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v45;
        v28 = __p;
        if (v45 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v45 = v26;
        operator delete(v28);
      }

      v11 = v42;
      if (!v42)
      {
        goto LABEL_65;
      }

      v29 = v43;
      v13 = v42;
      if (v43 == v42)
      {
        goto LABEL_64;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          MEMORY[0x259C63150](v30, 0x1000C8077774924);
        }
      }

      while (v29 != v11);
      goto LABEL_63;
    }

    return v7;
  }

  if (!*(v2 + 12))
  {
    return 1;
  }

  v34 = 257;
  mlir::OpState::emitOpError(this, v33, v37);
  if (v37[0])
  {
    LODWORD(v35) = 3;
    *(&v35 + 1) = "expected no external arguments when the rewrite is specified inline";
    v36 = 67;
    if (v39 >= v40)
    {
      if (v38 > &v35 || v38 + 24 * v39 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v38 + 24 * v39;
    v17 = v35;
    *(v16 + 2) = v36;
    *v16 = v17;
    ++v39;
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v45;
      v20 = __p;
      if (v45 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v45 = v18;
      operator delete(v20);
    }

    v11 = v42;
    if (!v42)
    {
      goto LABEL_65;
    }

    v21 = v43;
    v13 = v42;
    if (v43 == v42)
    {
      goto LABEL_64;
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

    while (v21 != v11);
    goto LABEL_63;
  }

  return v7;
}

uint64_t mlir::pdl::RewriteOp::getName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::ApplyNativeConstraintOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl::ApplyNativeConstraintOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    return 1;
  }

  v12 = "'pdl.apply_native_constraint' op requires attribute 'name'";
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

uint64_t mlir::pdl::ApplyNativeConstraintOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

      v24 = v47 + 24 * v48;
      v25 = v44;
      *(v24 + 2) = v45;
      *v24 = v25;
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

    v26 = __p;
    if (__p)
    {
      v27 = v54;
      v28 = __p;
      if (v54 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v54 = v26;
      operator delete(v28);
    }

    v19 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v29 = v52;
    v21 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
    }

    do
    {
      v31 = *--v29;
      v30 = v31;
      *v29 = 0;
      if (v31)
      {
        MEMORY[0x259C63150](v30, 0x1000C8077774924);
      }
    }

    while (v29 != v19);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "isNegated", 9uLL);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 54;
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
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
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

      if ((v56 & 1) == 0)
      {
        return 0;
      }

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

      v19 = v51;
      if (!v51)
      {
        goto LABEL_70;
      }

      v39 = v52;
      v21 = v51;
      if (v52 == v51)
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

      while (v39 != v19);
      goto LABEL_68;
    }

    *a1 = v9;
  }

  v10 = mlir::DictionaryAttr::get(&v43, "name", 4uLL);
  if (!v10)
  {
    return 1;
  }

  if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v10;
    return 1;
  }

  v11 = v10;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 49;
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
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v11);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v47 + 24 * v48;
      v15 = v44;
      *(v14 + 2) = v45;
      *v14 = v15;
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

  v16 = __p;
  if (__p)
  {
    v17 = v54;
    v18 = __p;
    if (v54 != __p)
    {
      do
      {
        v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    v54 = v16;
    operator delete(v18);
  }

  v19 = v51;
  if (v51)
  {
    v20 = v52;
    v21 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v19;
      operator delete(v21);
      goto LABEL_70;
    }

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
LABEL_68:
    v21 = v51;
    goto LABEL_69;
  }

LABEL_70:
  if (v47 != &v50)
  {
    free(v47);
  }

  return 0;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "isNegated", 9, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "name", 4, v7);
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

unint64_t mlir::pdl::ApplyNativeConstraintOp::computePropertiesHash(void *a1)
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

unint64_t mlir::pdl::ApplyNativeConstraintOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 4)
  {
    if (a4 == 9 && *a3 == 0x65746167654E7369 && *(a3 + 8) == 100)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1701667182)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::pdl::ApplyNativeConstraintOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 4)
  {
    if (*a2 == 1701667182)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 9 && *a2 == 0x65746167654E7369 && *(a2 + 8) == 100)
  {
    if (a4)
    {
      v6 = result;
      v8 = mlir::BoolAttr::classof(a4);
      result = v6;
      if (v8)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *v6 = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::pdl::ApplyNativeConstraintOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "isNegated", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "name", 4uLL, v5);
  }
}

BOOL mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v8, "isNegated", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "name", 4, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::setName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::setIsNegated(mlir::pdl::ApplyNativeConstraintOp *this, mlir::MLIRContext *a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getBoolAttr(&Context, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

unint64_t mlir::pdl::ApplyNativeConstraintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a5;
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

unint64_t mlir::pdl::ApplyNativeConstraintOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  v24 = 261;
  v23[0] = a5;
  v23[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v23, v15);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = StringAttr;
  result = mlir::Builder::getBoolAttr(a1, a9);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = result;
  v20 = *(a2 + 72);
  if (a4 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v21 = 0;
    v22 = *(a2 + 64) + 8 * v20;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v21);
      *(v22 + 8 * v21++) = result;
    }

    while (a4 != v21);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + a4;
  return result;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

mlir::BoolAttr *mlir::pdl::ApplyNativeConstraintOp::populateDefaultProperties(uint64_t a1, mlir::BoolAttr **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  v4 = result;
  if (!*a2)
  {
    result = mlir::Builder::getBoolAttr(&v4, 0);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v22[0] = v2;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v4, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }

    v22[0] = *this;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v5, "isNegated", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v7 = *(v6 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = *(v6 + 9) + 24;
        while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8) & 1) != 0)
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_9;
          }
        }

        return 0;
      }
    }

LABEL_9:
    mlir::pdl_interp::ApplyConstraintOp::verifyInvariantsImpl();
    return LOBYTE(v22[0]);
  }

  else
  {
    v20 = "requires attribute 'name'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
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
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::parse(mlir::pdl::ApplyNativeConstraintOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21[0] = v22;
  v21[1] = 0x400000000;
  v19[0] = &v20;
  v19[1] = 0x100000000;
  v15 = 0;
  v16 = &v18;
  v17 = 0x100000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v15, v7))
  {
    goto LABEL_16;
  }

  if (v15)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 8) = v15;
  }

  if ((*(*this + 280))(this) & 1) != 0 && (v9 = (*(*this + 40))(this), ((*(*this + 720))(this, v21, 0, 1, 0xFFFFFFFFLL)) && ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, v19) & 1) != 0 && ((*(*this + 296))(this) & 1) != 0 && (((*(*this + 112))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, &v16)) && (v14 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (v10 = *(a2 + 1), v13[0] = this, v13[1] = &v14, v13[2] = a2, mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)))
  {
    mlir::OperationState::addTypes(a2, v16, v17);
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v21, v19, v9, a2 + 16) & 1;
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (v16 != &v18)
  {
    free(v16);
  }

  if (v19[0] != &v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  return v11;
}

uint64_t mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::ApplyNativeRewriteOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl::ApplyNativeRewriteOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'pdl.apply_native_rewrite' op requires attribute 'name'";
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

uint64_t mlir::pdl::ApplyNativeRewriteOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "name", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 49;
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

uint64_t mlir::pdl::ApplyNativeRewriteOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "name", 4, *a2);
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

unint64_t mlir::pdl::ApplyNativeRewriteOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl::ApplyNativeRewriteOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl::ApplyNativeRewriteOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::pdl::ApplyNativeRewriteOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "name", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2) & 1;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::setName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

unint64_t mlir::pdl::ApplyNativeRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::pdl::ApplyNativeRewriteOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  v21 = 261;
  v20[0] = a5;
  v20[1] = a6;
  result = mlir::Builder::getStringAttr(a1, v20, v14);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  v17 = *(a2 + 72);
  if (a4 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v18 = 0;
    v19 = *(a2 + 64) + 8 * v17;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v18);
      *(v19 + 8 * v18++) = result;
    }

    while (a4 != v18);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + a4;
  return result;
}

uint64_t mlir::pdl::ApplyNativeRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl::ApplyNativeRewriteOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v20[0] = v2;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v5 = *(v4 + 17);
      if (v5)
      {
        v6 = 0;
        v7 = *(v4 + 9) + 24;
        while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6) & 1) != 0)
        {
          ++v6;
          v7 += 32;
          if (v5 == v6)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }
    }

LABEL_8:
    mlir::pdl_interp::ApplyConstraintOp::verifyInvariantsImpl();
    return LOBYTE(v20[0]);
  }

  else
  {
    v18 = "requires attribute 'name'";
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

uint64_t mlir::pdl::ApplyNativeRewriteOp::parse(mlir::pdl::ApplyNativeRewriteOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  v19 = 0;
  __src = &v22;
  v21 = 0x100000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v19, v7))
  {
    goto LABEL_24;
  }

  if (v19)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v19;
  }

  if ((*(*this + 288))(this))
  {
    v9 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v23) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
  }

  if (((*(*this + 112))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &__src) & 1) == 0 || (v18 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0) || (v10 = *(a2 + 1), v17[0] = this, v17[1] = &v18, v17[2] = a2, (v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96))) != 0) && (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v11, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17) & 1) == 0)
  {
LABEL_24:
    v14 = 0;
    v15 = __src;
    if (__src == &v22)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = v21;
  v13 = *(a2 + 18);
  if (v13 + v21 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 8) + 8 * v13), __src, 8 * v21);
    LODWORD(v13) = *(a2 + 18);
  }

  *(a2 + 18) = v13 + v12;
  v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v25, v23, v9, a2 + 16) & 1;
  v15 = __src;
  if (__src != &v22)
  {
LABEL_25:
    free(v15);
  }

LABEL_26:
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  return v14;
}

uint64_t mlir::pdl::detail::AttributeOpGenericAdaptorBase::AttributeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl::AttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (v4)
  {
    v6 = mlir::DictionaryAttr::get(&v18, "value", 5uLL);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v21, a4);
    if (v21[0])
    {
      LODWORD(v19) = 3;
      *(&v19 + 1) = "expected DictionaryAttr to set properties";
      v20 = 41;
      if (v23 >= v24)
      {
        if (v22 > &v19 || v22 + 24 * v23 <= &v19)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v22 + 24 * v23;
      v9 = v19;
      *(v8 + 2) = v20;
      *v8 = v9;
      ++v23;
      if (v21[0])
      {
        mlir::InFlightDiagnostic::report(v21);
      }
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v29;
        v12 = __p;
        if (v29 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v29 = v10;
        operator delete(v12);
      }

      v13 = v26;
      if (v26)
      {
        v14 = v27;
        v15 = v26;
        if (v27 != v26)
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
          v15 = v26;
        }

        v27 = v13;
        operator delete(v15);
      }

      if (v22 != &v25)
      {
        free(v22);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl::AttributeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "value", 5, *a2);
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

unint64_t mlir::pdl::AttributeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl::AttributeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl::AttributeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    *result = a4;
  }

  return result;
}

uint64_t mlir::pdl::AttributeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "value", 5uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl::AttributeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return (*(*a1 + 56))(a1, v2) & 1;
}

void mlir::pdl::AttributeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);

  mlir::pdl::AttributeOp::build(SingletonImpl, a2, SingletonImpl, a3, 0);
}

{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);

  mlir::pdl::AttributeOp::build(SingletonImpl, a2, SingletonImpl, 0, a3);
}

void mlir::pdl::AttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v10, 1uLL);
  }

  if (a5)
  {
    v8 = *(a2 + 256);
    if (!v8)
    {
      operator new();
    }

    *v8 = a5;
  }

  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

void mlir::pdl::AttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v14, 1uLL);
  }

  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

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
      *(v13 + 8 * v12) = mlir::TypeRange::dereference_iterator(a3, v12);
      ++v12;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
}

uint64_t mlir::pdl::AttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl::AttributeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    v21 = this;
    goto LABEL_29;
  }

  v3 = *(v2 + 17);
  if (v3 < 2)
  {
    v21 = this;
    if (v3)
    {
      if ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(v2, *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
      {
        return 0;
      }

      v2 = *v21;
    }

LABEL_29:
    if (*(v2 + 9))
    {
      v22 = v2 - 16;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
    {
      return 1;
    }

    v24 = *v21;
    v46 = 261;
    v45[0] = "result";
    v45[1] = 6;
    mlir::Operation::emitOpError(v49, v24, v45);
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
        *(&v47 + 1) = 0;
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
          v48 = 53;
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
            mlir::DiagnosticArgument::DiagnosticArgument(&v47, v23);
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

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

      v36 = __p;
      if (__p)
      {
        v37 = v57;
        v38 = __p;
        if (v57 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
      }

      v39 = v54;
      if (v54)
      {
        v40 = v55;
        v41 = v54;
        if (v55 != v54)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              MEMORY[0x259C63150](v42, 0x1000C8077774924);
            }
          }

          while (v40 != v39);
          v41 = v54;
        }

        v55 = v39;
        operator delete(v41);
      }

      if (v50 != v53)
      {
        free(v50);
      }
    }

    return v35;
  }

  v45[0] = "operand group starting at #";
  v46 = 259;
  mlir::OpState::emitOpError(this, v45, v49);
  if (v49[0])
  {
    LODWORD(v47) = 5;
    *(&v47 + 1) = 0;
    if (v51 >= v52)
    {
      if (v50 > &v47 || v50 + 24 * v51 <= &v47)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v50 + 24 * v51;
    v5 = v47;
    *(v4 + 2) = v48;
    *v4 = v5;
    v6 = ++v51;
    if (v49[0])
    {
      LODWORD(v47) = 3;
      *(&v47 + 1) = " requires 0 or 1 element, but found ";
      v48 = 36;
      if (v6 >= v52)
      {
        if (v50 > &v47 || v50 + 24 * v6 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v50 + 24 * v51;
      v8 = v47;
      *(v7 + 2) = v48;
      *v7 = v8;
      v9 = ++v51;
      if (v49[0])
      {
        LODWORD(v47) = 5;
        *(&v47 + 1) = v3;
        if (v9 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v9 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v50 + 24 * v51;
        v11 = v47;
        *(v10 + 2) = v48;
        *v10 = v11;
        ++v51;
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

    v13 = __p;
    if (__p)
    {
      v14 = v57;
      v15 = __p;
      if (v57 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v57 = v13;
      operator delete(v15);
    }

    v16 = v54;
    if (v54)
    {
      v17 = v55;
      v18 = v54;
      if (v55 != v54)
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
        v18 = v54;
      }

      v55 = v16;
      operator delete(v18);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v12;
}

uint64_t mlir::pdl::AttributeOp::parse(mlir::pdl::AttributeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = v26;
  v25 = 0x400000000;
  if ((*(*this + 112))(this, a2, a3))
  {
    (*(*this + 40))(this);
    v21 = 0uLL;
    *&v22 = 0;
    v5 = (*(*this + 712))(this, &v21, 1);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (v25 >= HIDWORD(v25))
      {
        if (v24 > &v21 || v24 + 32 * v25 <= &v21)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v24 + 32 * v25;
      v7 = v22;
      *v6 = v21;
      v6[1] = v7;
      LODWORD(v25) = v25 + 1;
    }
  }

  if ((*(*this + 144))(this))
  {
    if (((*(*this + 440))(this, &v23, 0) & 1) == 0)
    {
      goto LABEL_21;
    }

    if (v23)
    {
      v8 = *(a2 + 32);
      if (!v8)
      {
        operator new();
      }

      *v8 = v23;
    }
  }

  (*(*this + 40))(this);
  if ((*(*this + 496))(this, a2 + 112))
  {
    mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 1) + 96));
    v9 = (*(*this + 32))(this);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v9);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
    v12 = (*(*this + 32))(this);
    v13 = mlir::MLIRContext::getTypeUniquer(*v12);
    v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v15 = *(a2 + 18);
    if (v15 >= *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 8) + 8 * v15) = SingletonImpl;
    ++*(a2 + 18);
    if (!v25)
    {
LABEL_19:
      v18 = 1;
      v19 = v24;
      if (v24 == v26)
      {
        return v18;
      }

      goto LABEL_22;
    }

    v16 = v24;
    v17 = 32 * v25;
    while (((*(*this + 728))(this, v16, v14, a2 + 16) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
LABEL_22:
    free(v19);
  }

  return v18;
}

unint64_t mlir::pdl::EraseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::pdl::EraseOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl::EraseOp::parse(mlir::pdl::EraseOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v9, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*this + 32))(this);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v5);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  return (*(*this + 728))(this, v9, SingletonImpl, a2 + 16) & 1;
}

void mlir::pdl::EraseOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
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
  v9 = v11;
  v10 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl::OperandOp::build(mlir::MLIRContext **this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*this);
  result = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v6 = *(a2 + 18);
  if (v6 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v6) = result;
  ++*(a2 + 18);
  return result;
}

uint64_t mlir::pdl::OperandOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (a4)
  {
    result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  }

  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::pdl::OperandOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v11, 1uLL);
  }

  v8 = *(a2 + 72);
  if (a4 + v8 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v9 = 0;
    v10 = *(a2 + 64) + 8 * v8;
    do
    {
      *(v10 + 8 * v9) = mlir::TypeRange::dereference_iterator(a3, v9);
      ++v9;
    }

    while (a4 != v9);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + a4;
}

unint64_t mlir::pdl::OperandOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl::OperandOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(v2 + 17);
  if (v3 < 2)
  {
    if (v3)
    {
      v12 = 0;
      if ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(v2, *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
      {
        return v12;
      }

      v2 = *this;
    }

LABEL_29:
    mlir::pdl::OperandOp::verifyInvariantsImpl(v2, this, v26);
    return LOBYTE(v26[0]);
  }

  v22 = "operand group starting at #";
  v23 = 259;
  mlir::OpState::emitOpError(this, &v22, v26);
  if (v26[0])
  {
    LODWORD(v24) = 5;
    *(&v24 + 1) = 0;
    if (v28 >= v29)
    {
      if (v27 > &v24 || v27 + 24 * v28 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v27 + 24 * v28;
    v5 = v24;
    *(v4 + 2) = v25;
    *v4 = v5;
    v6 = ++v28;
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " requires 0 or 1 element, but found ";
      v25 = 36;
      if (v6 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v6 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v27 + 24 * v28;
      v8 = v24;
      *(v7 + 2) = v25;
      *v7 = v8;
      v9 = ++v28;
      if (v26[0])
      {
        LODWORD(v24) = 5;
        *(&v24 + 1) = v3;
        if (v9 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v9 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v27 + 24 * v28;
        v11 = v24;
        *(v10 + 2) = v25;
        *v10 = v11;
        ++v28;
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
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
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return v12;
}

uint64_t mlir::pdl::OperandOp::parse(mlir::pdl::OperandOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x400000000;
  if ((*(*this + 112))(this, a2, a3))
  {
    (*(*this + 40))(this);
    v20 = 0uLL;
    *&v21 = 0;
    v5 = (*(*this + 712))(this, &v20, 1);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v23 >= HIDWORD(v23))
      {
        if (v22 > &v20 || v22 + 32 * v23 <= &v20)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v22 + 32 * v23;
      v7 = v21;
      *v6 = v20;
      v6[1] = v7;
      LODWORD(v23) = v23 + 1;
    }
  }

  (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v8 = (*(*this + 32))(this);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v8);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v11 = (*(*this + 32))(this);
    v12 = mlir::MLIRContext::getTypeUniquer(*v11);
    v13 = mlir::StorageUniquer::getSingletonImpl(v12, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v14 = *(a2 + 18);
    if (v14 >= *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 8) + 8 * v14) = SingletonImpl;
    ++*(a2 + 18);
    if (!v23)
    {
LABEL_13:
      v17 = 1;
      v18 = v22;
      if (v22 == v24)
      {
        return v17;
      }

      goto LABEL_16;
    }

    v15 = v22;
    v16 = 32 * v23;
    while (((*(*this + 728))(this, v15, v13, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v17 = 0;
  v18 = v22;
  if (v22 != v24)
  {
LABEL_16:
    free(v18);
  }

  return v17;
}

uint64_t mlir::pdl::OperandsOp::build(mlir::MLIRContext **this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*this);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  result = mlir::pdl::RangeType::get(SingletonImpl);
  v7 = *(a2 + 18);
  if (v7 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v7) = result;
  ++*(a2 + 18);
  return result;
}

uint64_t mlir::pdl::OperandsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  if (a4)
  {
    result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  }

  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::pdl::OperandsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v11, 1uLL);
  }

  v8 = *(a2 + 72);
  if (a4 + v8 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v9 = 0;
    v10 = *(a2 + 64) + 8 * v8;
    do
    {
      *(v10 + 8 * v9) = mlir::TypeRange::dereference_iterator(a3, v9);
      ++v9;
    }

    while (a4 != v9);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + a4;
}

unint64_t mlir::pdl::OperandsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl::OperandsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
    goto LABEL_29;
  }

  v3 = *(v2 + 17);
  if (v3 < 2)
  {
    if (v3)
    {
      if ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(v2, *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
      {
        return 0;
      }

      v2 = *this;
    }

LABEL_29:
    if (*(v2 + 9))
    {
      v21 = v2 - 16;
    }

    else
    {
      v21 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
    v23 = *this;
    v24 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v49[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::pdl::RangeType::getElementType(v49) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return 1;
      }
    }

    v46 = 261;
    v45[0] = "result";
    v45[1] = 6;
    mlir::Operation::emitOpError(v49, v23, v45);
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
        *(&v47 + 1) = 0;
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
          v48 = 66;
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
            mlir::DiagnosticArgument::DiagnosticArgument(&v47, v24);
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

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

      v36 = __p;
      if (__p)
      {
        v37 = v57;
        v38 = __p;
        if (v57 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
      }

      v39 = v54;
      if (v54)
      {
        v40 = v55;
        v41 = v54;
        if (v55 != v54)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              MEMORY[0x259C63150](v42, 0x1000C8077774924);
            }
          }

          while (v40 != v39);
          v41 = v54;
        }

        v55 = v39;
        operator delete(v41);
      }

      if (v50 != v53)
      {
        free(v50);
      }
    }

    return v35;
  }

  v45[0] = "operand group starting at #";
  v46 = 259;
  mlir::OpState::emitOpError(this, v45, v49);
  if (v49[0])
  {
    LODWORD(v47) = 5;
    *(&v47 + 1) = 0;
    if (v51 >= v52)
    {
      if (v50 > &v47 || v50 + 24 * v51 <= &v47)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v50 + 24 * v51;
    v5 = v47;
    *(v4 + 2) = v48;
    *v4 = v5;
    v6 = ++v51;
    if (v49[0])
    {
      LODWORD(v47) = 3;
      *(&v47 + 1) = " requires 0 or 1 element, but found ";
      v48 = 36;
      if (v6 >= v52)
      {
        if (v50 > &v47 || v50 + 24 * v6 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v50 + 24 * v51;
      v8 = v47;
      *(v7 + 2) = v48;
      *v7 = v8;
      v9 = ++v51;
      if (v49[0])
      {
        LODWORD(v47) = 5;
        *(&v47 + 1) = v3;
        if (v9 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v9 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v50 + 24 * v51;
        v11 = v47;
        *(v10 + 2) = v48;
        *v10 = v11;
        ++v51;
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
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

    v13 = __p;
    if (__p)
    {
      v14 = v57;
      v15 = __p;
      if (v57 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v57 = v13;
      operator delete(v15);
    }

    v16 = v54;
    if (v54)
    {
      v17 = v55;
      v18 = v54;
      if (v55 != v54)
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
        v18 = v54;
      }

      v55 = v16;
      operator delete(v18);
    }

    if (v50 != v53)
    {
      free(v50);
    }
  }

  return v12;
}

uint64_t mlir::pdl::OperandsOp::parse(mlir::pdl::OperandsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  if ((*(*this + 112))(this, a2, a3))
  {
    (*(*this + 40))(this);
    v22 = 0uLL;
    *&v23 = 0;
    v5 = (*(*this + 712))(this, &v22, 1);
    if ((v5 & 0x100) != 0)
    {
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v25 >= HIDWORD(v25))
      {
        if (v24 > &v22 || v24 + 32 * v25 <= &v22)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v24 + 32 * v25;
      v7 = v23;
      *v6 = v22;
      v6[1] = v7;
      LODWORD(v25) = v25 + 1;
    }
  }

  (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v8 = (*(*this + 32))(this);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v8);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v11 = mlir::pdl::RangeType::get(SingletonImpl);
    v12 = (*(*this + 32))(this);
    v13 = mlir::MLIRContext::getTypeUniquer(*v12);
    v14 = mlir::StorageUniquer::getSingletonImpl(v13, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    v15 = mlir::pdl::RangeType::get(v14);
    v16 = *(a2 + 18);
    if (v16 >= *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 8) + 8 * v16) = v11;
    ++*(a2 + 18);
    if (!v25)
    {
LABEL_13:
      v19 = 1;
      v20 = v24;
      if (v24 == v26)
      {
        return v19;
      }

      goto LABEL_16;
    }

    v17 = v24;
    v18 = 32 * v25;
    while (((*(*this + 728))(this, v17, v15, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v19 = 0;
  v20 = v24;
  if (v24 != v26)
  {
LABEL_16:
    free(v20);
  }

  return v19;
}

uint64_t mlir::pdl::detail::OperationOpGenericAdaptorBase::OperationOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

unint64_t mlir::pdl::detail::OperationOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::pdl::detail::OperationOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 40);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 56);
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

  v10 = (this + 4 * v3 + 40);
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

uint64_t mlir::pdl::detail::OperationOpGenericAdaptorBase::getOpName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 32);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl::OperationOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v25[0] = *(a1 + 24);
    Value = mlir::ArrayAttr::getValue(v25);
    v4 = mlir::ArrayAttr::getValue(v25);
    v6 = v4 + 8 * v5;
    if (v6 == Value)
    {
      return 1;
    }

    while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      Value += 8;
      if (Value == v6)
      {
        return 1;
      }
    }

    v23[0] = "'pdl.operation' op attribute 'attributeValueNames' failed to satisfy constraint: string array attribute";
    v24 = 259;
    mlir::emitError(a2, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_40:
        v29 = v11;
        operator delete(v13);
LABEL_41:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v7;
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
LABEL_39:
      v13 = v28;
      goto LABEL_40;
    }
  }

  else
  {
    v23[0] = "'pdl.operation' op requires attribute 'attributeValueNames'";
    v24 = 259;
    mlir::emitError(a2, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }
  }

  return v7;
}

unint64_t mlir::pdl::OperationOp::getODSOperandIndexAndLength(mlir::pdl::OperationOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 80);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 96);
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

  v12 = (16 * v2 + 4 * v5 + *this + 80);
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

uint64_t mlir::pdl::OperationOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "attributeValueNames", 0x13uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 64;
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
LABEL_70:
        if (v47 != &v50)
        {
          free(v47);
        }

        return 0;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
LABEL_69:
        v52 = v17;
        operator delete(v19);
        goto LABEL_70;
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
LABEL_68:
      v19 = v51;
      goto LABEL_69;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v43, "opName", 6uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v31 = v30;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 51;
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

      if ((v56 & 1) == 0)
      {
        return 0;
      }

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

  if (mlir::DictionaryAttr::get(&v43, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v43, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::pdl::OperationOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v10, "attributeValueNames", 0x13, *a2);
    if (v12 >= HIDWORD(v12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v11 + 16 * v12);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v12) = v12 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v10, "opName", 6, v6);
    if (v12 >= HIDWORD(v12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v11 + 16 * v12);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v12) = v12 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::pdl::OperationOp::computePropertiesHash(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = *(a1 + 20);
  v8 = __ROR8__(v7 + 12, 12);
  v9 = 0x9DDFEA08EB382D69 * (a1[2] ^ 0xFF51AFD7ED558CCDLL ^ v8);
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v13[0] = v3;
  v13[1] = v6;
  v12 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v13, &v12, v14, v15, (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47))) ^ v7);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v13, v12, v10, v15);
}

uint64_t mlir::pdl::OperationOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 6)
  {
    if (!memcmp(__s1, "opName", 6uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 21)
  {
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (__n != 19)
  {
    return 0;
  }

  if (*__s1 != 0x7475626972747461 || *(__s1 + 1) != 0x614E65756C615665 || *(__s1 + 11) != 0x73656D614E65756CLL)
  {
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
LABEL_14:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::pdl::OperationOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  switch(a3)
  {
    case 6:
      result = memcmp(__s1, "opName", 6uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          *(v5 + 8) = v8;
        }

        else
        {
          *(v5 + 8) = 0;
        }
      }

      break;
    case 21:
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    case 19:
      if (*__s1 != 0x7475626972747461 || *(__s1 + 1) != 0x614E65756C615665 || *(__s1 + 11) != 0x73656D614E65756CLL)
      {
        result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
        if (result)
        {
          return result;
        }

LABEL_14:
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<int>::classof();
        }

        return result;
      }

      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

      break;
    default:
      return result;
  }

  return result;
}

void mlir::pdl::OperationOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "attributeValueNames", 0x13uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "opName", 6uLL, v5);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::pdl::OperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v8, "attributeValueNames", 19, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "opName", 6, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::pdl::OperationOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 16), 3uLL))
      {
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 4)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5 = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(&v8, a1, &v5);
        if (v8)
        {
          mlir::InFlightDiagnostic::report(&v8);
        }

        if (v9[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v9);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::pdl::OperationOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 3);
  }

  return result;
}

uint64_t mlir::pdl::OperationOp::setOpName(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 72) = result;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return result;
}

uint64_t mlir::pdl::OperationOp::build(mlir::StringAttr **this, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, size_t *a6, const llvm::Twine *a7, int a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  if (*(a3 + 16) == 1)
  {
    v25 = 261;
    v16 = *(a3 + 8);
    v24[0] = *a3;
    v24[1] = v16;
    StringAttr = mlir::Builder::getStringAttr(this, v24, a3);
  }

  else
  {
    StringAttr = 0;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*this);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  StrArrayAttr = mlir::Builder::getStrArrayAttr(this, a6, a7);
  return mlir::pdl::OperationOp::build(StrArrayAttr, a2, SingletonImpl, StringAttr, a4, a5, a9, a10, StrArrayAttr, a11, a12);
}

uint64_t mlir::pdl::OperationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v13 = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::OperationState::addOperands(a2, a10, a11);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  v18[4] = v13;
  v18[5] = a8;
  v18[6] = a11;
  if (a4)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a4;
  }

  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a9;
  v21 = *(a2 + 72);
  if (v21 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::pdl::OperationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = a7;
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a12, a13);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  v19[4] = v13;
  v19[5] = a10;
  v19[6] = a13;
  if (a5)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a5;
  }

  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a11;
  v22 = *(a2 + 72);
  if (a4 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v22;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v23);
      *(v24 + 8 * v23++) = result;
    }

    while (a4 != v23);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + a4;
  return result;
}

uint64_t mlir::pdl::OperationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl::OperationOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v104 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v88 = "requires attribute 'attributeValueNames'";
    v90 = 259;
    mlir::OpState::emitOpError(this, &v88, v93);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v101;
        v47 = __p;
        if (v101 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v101 = v45;
        operator delete(v47);
      }

      v48 = v98;
      if (v98)
      {
        v49 = v99;
        v50 = v98;
        if (v99 != v98)
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
          v50 = v98;
        }

        v99 = v48;
        operator delete(v50);
      }

      if (v94 != v97)
      {
        free(v94);
      }
    }

    return v44;
  }

  v7 = *(v4 + 8);
  v93[0] = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v7, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v93) & 1) == 0)
  {
    return 0;
  }

  v93[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v5, "attributeValueNames", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v93) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  v9 = *(*this + 11);
  v10 = (v9 >> 23) & 1;
  v11 = *(*this + 4 * v10 + 20);
  if ((v9 & 0x800000) != 0)
  {
    v12 = *(v8 + 9);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_6:
      v13 = 0;
      v14 = v12 + 24;
      while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(*this, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) != 0)
      {
        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          v8 = *this;
          v9 = *(*this + 11);
          v10 = (v9 >> 23) & 1;
          goto LABEL_10;
        }
      }

      return 0;
    }
  }

LABEL_10:
  v15 = v9 & 0x800000;
  v16 = v8 + 16 * v10;
  v17 = *(v16 + 21);
  if (v15)
  {
    v18 = *(v8 + 9);
    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    if (v17)
    {
LABEL_12:
      v19 = 0;
      v20 = *(v16 + 20);
      v21 = v18 + 32 * v20;
      v22 = (v17 + v20) - v20;
      do
      {
        v23 = *(*(v21 + 32 * v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
        {
          v24 = *this;
          v90 = 261;
          v88 = "operand";
          v89 = 7;
          mlir::Operation::emitOpError(v93, v24, &v88);
          if (v93[0])
          {
            LODWORD(v91) = 3;
            *(&v91 + 1) = " #";
            v92 = 2;
            if (v95 >= v96)
            {
              if (v94 > &v91 || v94 + 24 * v95 <= &v91)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v25 = v94 + 24 * v95;
            v26 = v91;
            *(v25 + 2) = v92;
            *v25 = v26;
            v27 = ++v95;
            if (v93[0])
            {
              LODWORD(v91) = 5;
              *(&v91 + 1) = v11;
              if (v27 >= v96)
              {
                if (v94 > &v91 || v94 + 24 * v27 <= &v91)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v28 = v94 + 24 * v95;
              v29 = v91;
              *(v28 + 2) = v92;
              *v28 = v29;
              v30 = ++v95;
              if (v93[0])
              {
                LODWORD(v91) = 3;
                v92 = 65;
                if (v30 >= v96)
                {
                  if (v94 > &v91 || v94 + 24 * v30 <= &v91)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v31 = v94 + 24 * v95;
                v32 = v91;
                *(v31 + 2) = v92;
                *v31 = v32;
                ++v95;
                if (v93[0])
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v91, v23);
                  if (v95 >= v96)
                  {
                    if (v94 > &v91 || v94 + 24 * v95 <= &v91)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v33 = v94 + 24 * v95;
                  v34 = v91;
                  *(v33 + 2) = v92;
                  *v33 = v34;
                  ++v95;
                }
              }
            }
          }

          v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
          if (v93[0])
          {
            mlir::InFlightDiagnostic::report(v93);
          }

          if (v103 == 1)
          {
            if (v102 != &v103)
            {
              free(v102);
            }

            v36 = __p;
            if (__p)
            {
              v37 = v101;
              v38 = __p;
              if (v101 != __p)
              {
                do
                {
                  v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
                }

                while (v37 != v36);
                v38 = __p;
              }

              v101 = v36;
              operator delete(v38);
            }

            v39 = v98;
            if (v98)
            {
              v40 = v99;
              v41 = v98;
              if (v99 != v98)
              {
                do
                {
                  v43 = *--v40;
                  v42 = v43;
                  *v40 = 0;
                  if (v43)
                  {
                    MEMORY[0x259C63150](v42, 0x1000C8077774924);
                  }
                }

                while (v40 != v39);
                v41 = v98;
              }

              v99 = v39;
              operator delete(v41);
            }

            if (v94 != v97)
            {
              free(v94);
            }

            if (!v35)
            {
              return 0;
            }
          }

          else if (!v35)
          {
            return 0;
          }
        }

        LODWORD(v11) = v11 + 1;
        ++v19;
      }

      while (v19 != v22);
      v8 = *this;
      v53 = *(*this + 11);
      v10 = (v53 >> 23) & 1;
      v15 = v53 & 0x800000;
    }
  }

  v54 = (v8 + 16 * v10);
  v55 = v54[22];
  if (v15)
  {
    v56 = *(v8 + 9);
    if (v55)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v56 = 0;
    if (v55)
    {
LABEL_86:
      v57 = 0;
      v58 = (v54[21] + v54[20]);
      v59 = v56 + 32 * v58;
      v60 = (v55 + v58) - v58;
      while (1)
      {
        v61 = *(*(v59 + 32 * v57 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v62 = *(*v61 + 136);
        if (v62 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v63 = *this;
          if (v62 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v93[0] = *(*(v59 + 32 * v57 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::pdl::RangeType::getElementType(v93) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
          {
            v90 = 261;
            v88 = "operand";
            v89 = 7;
            mlir::Operation::emitOpError(v93, v63, &v88);
            if (v93[0])
            {
              LODWORD(v91) = 3;
              *(&v91 + 1) = " #";
              v92 = 2;
              if (v95 >= v96)
              {
                if (v94 > &v91 || v94 + 24 * v95 <= &v91)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v64 = v94 + 24 * v95;
              v65 = v91;
              *(v64 + 2) = v92;
              *v64 = v65;
              v66 = ++v95;
              if (v93[0])
              {
                LODWORD(v91) = 5;
                *(&v91 + 1) = v11;
                if (v66 >= v96)
                {
                  if (v94 > &v91 || v94 + 24 * v66 <= &v91)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v67 = v94 + 24 * v95;
                v68 = v91;
                *(v67 + 2) = v92;
                *v67 = v68;
                v69 = ++v95;
                if (v93[0])
                {
                  LODWORD(v91) = 3;
                  v92 = 87;
                  if (v69 >= v96)
                  {
                    if (v94 > &v91 || v94 + 24 * v69 <= &v91)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v70 = v94 + 24 * v95;
                  v71 = v91;
                  *(v70 + 2) = v92;
                  *v70 = v71;
                  ++v95;
                  if (v93[0])
                  {
                    mlir::DiagnosticArgument::DiagnosticArgument(&v91, v61);
                    if (v95 >= v96)
                    {
                      if (v94 > &v91 || v94 + 24 * v95 <= &v91)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v72 = v94 + 24 * v95;
                    v73 = v91;
                    *(v72 + 2) = v92;
                    *v72 = v73;
                    ++v95;
                  }
                }
              }
            }

            v74 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
            if (v93[0])
            {
              mlir::InFlightDiagnostic::report(v93);
            }

            if (v103 == 1)
            {
              if (v102 != &v103)
              {
                free(v102);
              }

              v75 = __p;
              if (__p)
              {
                v76 = v101;
                v77 = __p;
                if (v101 != __p)
                {
                  do
                  {
                    v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
                  }

                  while (v76 != v75);
                  v77 = __p;
                }

                v101 = v75;
                operator delete(v77);
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
                    v82 = *--v79;
                    v81 = v82;
                    *v79 = 0;
                    if (v82)
                    {
                      MEMORY[0x259C63150](v81, 0x1000C8077774924);
                    }
                  }

                  while (v79 != v78);
                  v80 = v98;
                }

                v99 = v78;
                operator delete(v80);
              }

              if (v94 != v97)
              {
                free(v94);
              }
            }

            if (!v74)
            {
              return 0;
            }
          }
        }

        LODWORD(v11) = v11 + 1;
        if (++v57 == v60)
        {
          v8 = *this;
          break;
        }
      }
    }
  }

  v84 = *(v8 + 9);
  v85 = v8 - 16;
  if (v84)
  {
    v86 = v85;
  }

  else
  {
    v86 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v86, 0);
  return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::pdl::OperationOp::parse(mlir::pdl::OperationOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v36 = 0;
  v48 = v50;
  v49 = 0x400000000;
  v46[0] = &v47;
  v46[1] = 0x100000000;
  v43 = v45;
  v44 = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  v38[0] = &v39;
  v38[1] = 0x100000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  v8 = (*(*this + 472))(this, &v36, v7);
  if ((v8 & 0x100) != 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (v36)
    {
      v9 = *(a2 + 32);
      if (!v9)
      {
        operator new();
      }

      *(v9 + 8) = v36;
    }
  }

  if ((*(*this + 288))(this))
  {
    v10 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v48, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v46) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v10 = 0;
  }

  v35 = v10;
  (*(*this + 40))(this);
  v11 = (*(*this + 32))(this);
  v51 = v53;
  v52 = 0x400000000;
  if ((*(*this + 80))(this) & 1) == 0 || (v37[0] = this, v37[1] = &v51, v37[2] = &v43, ((*(*this + 392))(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, v37, 0, 0)) && ((*(*this + 88))(this))
  {
    ArrayAttr = mlir::Builder::getArrayAttr(v11, v51, v52);
    v13 = 0;
    v14 = v51;
    if (v51 == v53)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ArrayAttr = 0;
  v13 = 1;
  v14 = v51;
  if (v51 != v53)
  {
LABEL_18:
    free(v14);
  }

LABEL_19:
  if ((v13 & 1) == 0)
  {
    v15 = *(a2 + 32);
    if (!v15)
    {
      operator new();
    }

    *v15 = ArrayAttr;
    if ((*(*this + 64))(this))
    {
      if (((*(*this + 280))(this) & 1) == 0)
      {
        goto LABEL_47;
      }

      v16 = (*(*this + 40))(this);
      if (((*(*this + 720))(this, &v40, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v38) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v16 = 0;
    }

    v37[0] = (*(*this + 40))(this);
    if ((*(*this + 488))(this, a2 + 112))
    {
      v17 = *(a2 + 1);
      v51 = this;
      v52 = v37;
      v53[0] = a2;
      v18 = mlir::NamedAttrList::get(a2 + 112, **(v17 + 96));
      if (!v18 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v18, "attributeValueNames", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v51) & 1) != 0)
      {
        v19 = mlir::NamedAttrList::get(a2 + 112, *(*(v17 + 96) + 8));
        if (!v19 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v19, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v51) & 1) != 0)
        {
          v20 = v44;
          v21 = v41;
          v22 = *(a2 + 32);
          if (!v22)
          {
            operator new();
          }

          v34 = v16;
          v22[4] = v49;
          v22[5] = v20;
          v22[6] = v21;
          v23 = (*(*this + 32))(this);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v23);
          SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
          v26 = (*(*this + 32))(this);
          v27 = mlir::MLIRContext::getTypeUniquer(*v26);
          v28 = mlir::StorageUniquer::getSingletonImpl(v27, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
          v29 = *(a2 + 18);
          if (v29 >= *(a2 + 19))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*(a2 + 8) + 8 * v29) = SingletonImpl;
          ++*(a2 + 18);
          if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v48, v46, v35, a2 + 16))
          {
            if (!v44)
            {
LABEL_46:
              v32 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v40, v38, v34, a2 + 16) & 1;
              goto LABEL_48;
            }

            v30 = v43;
            v31 = 32 * v44;
            while (((*(*this + 728))(this, v30, v28, a2 + 16) & 1) != 0)
            {
              v30 += 32;
              v31 -= 32;
              if (!v31)
              {
                goto LABEL_46;
              }
            }
          }
        }
      }
    }
  }

LABEL_47:
  v32 = 0;
LABEL_48:
  if (v38[0] != &v39)
  {
    free(v38[0]);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46[0] != &v47)
  {
    free(v46[0]);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v32;
}

uint64_t mlir::pdl::detail::PatternOpGenericAdaptorBase::PatternOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl::detail::PatternOpGenericAdaptorBase::getBenefit(mlir::pdl::detail::PatternOpGenericAdaptorBase *this)
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

uint64_t mlir::pdl::detail::PatternOpGenericAdaptorBase::getSymName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 32);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl::PatternOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  if (v3)
  {
    v24 = *(a1 + 24);
    v25[0] = mlir::IntegerAttr::getType(&v24);
    if (mlir::Type::isSignlessInteger(v25, 16))
    {
      v23 = v3;
      mlir::IntegerAttr::getValue(&v23, &v27);
      v4 = v28 - 1;
      if (v28 >= 0x41)
      {
        v5 = (v27 + 8 * (v4 >> 6));
      }

      else
      {
        v5 = &v27;
      }

      v6 = (1 << v4) & *v5;
      if (v28 >= 0x41 && v27)
      {
        MEMORY[0x259C63150]();
      }

      if (!v6)
      {
        return 1;
      }
    }

    v25[0] = "'pdl.pattern' op attribute 'benefit' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v12 = v32;
      v13 = v31;
      if (v32 == v31)
      {
LABEL_43:
        v32 = v11;
        operator delete(v13);
LABEL_44:
        if (v29 != &v30)
        {
          free(v29);
        }

        return v7;
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
LABEL_42:
      v13 = v31;
      goto LABEL_43;
    }
  }

  else
  {
    v25[0] = "'pdl.pattern' op requires attribute 'benefit'";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v34;
        v18 = __p;
        if (v34 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v34 = v16;
        operator delete(v18);
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v19 = v32;
      v13 = v31;
      if (v32 == v31)
      {
        goto LABEL_43;
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
      goto LABEL_42;
    }
  }

  return v7;
}

uint64_t mlir::pdl::PatternOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "benefit", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  v30 = mlir::DictionaryAttr::get(&v43, "sym_name", 8uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 53;
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

uint64_t mlir::pdl::PatternOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "benefit", 7, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "sym_name", 8, v7);
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

unint64_t mlir::pdl::PatternOp::computePropertiesHash(void *a1)
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

unint64_t mlir::pdl::PatternOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 7 && *a3 == 1701733730 && *(a3 + 3) == 1953064549)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::pdl::PatternOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 7 && *a2 == 1701733730 && *(a2 + 3) == 1953064549)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::pdl::PatternOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "benefit", 7uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v5);
  }
}

BOOL mlir::pdl::PatternOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(v8, "benefit", 7, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl::PatternOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 8));
}

uint64_t mlir::pdl::PatternOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::pdl::PatternOp::getBenefit(mlir::pdl::PatternOp *this)
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

uint64_t mlir::pdl::PatternOp::getSymName@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl::PatternOp::setBenefit(mlir::pdl::PatternOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 16);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::pdl::PatternOp::setSymName(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 72) = result;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return result;
}

void mlir::pdl::PatternOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 32);
  if (!v6)
  {
    operator new();
  }

  *v6 = a5;
  if (a6)
  {
    v7 = *(a2 + 32);
    if (!v7)
    {
      operator new();
    }

    *(v7 + 8) = a6;
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::pdl::PatternOp::build(uint64_t **a1, mlir::OperationState *a2, unsigned int a3, uint64_t a4)
{
  IntegerType = mlir::Builder::getIntegerType(a1, 16);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a3);
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *v10 = IntegerAttr;
  if (a4)
  {
    v11 = *(a2 + 32);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 8) = a4;
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::pdl::PatternOp::build(uint64_t **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  IntegerType = mlir::Builder::getIntegerType(a1, 16);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a5);
  v12 = *(a2 + 32);
  if (!v12)
  {
    operator new();
  }

  *v12 = IntegerAttr;
  if (a6)
  {
    v13 = *(a2 + 32);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = a6;
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::pdl::PatternOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::pdl::PatternOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v44 = v2;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(v4, "benefit", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v44) & 1) == 0)
    {
      return 0;
    }

    v44 = *this;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v44) & 1) == 0)
    {
      return 0;
    }

    v8 = *this;
    v9 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    v10 = *(v9 + 8);
    if (v10 != v9 && *(v10 + 8) == v9)
    {
      return 1;
    }

    v40[0] = "region #";
    v41 = 259;
    mlir::Operation::emitOpError(&v44, v8, v40);
    if (v44)
    {
      LODWORD(v37) = 5;
      *(&v37 + 1) = 0;
      if (v47 >= v48)
      {
        if (v46 > &v37 || v46 + 24 * v47 <= &v37)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v46 + 24 * v47;
      v12 = v37;
      *(v11 + 2) = v38;
      *v11 = v12;
      ++v47;
      v13 = v44 == 0;
    }

    else
    {
      v13 = 1;
    }

    v36 = 1283;
    v35[0] = " ('";
    v35[2] = "bodyRegion";
    v35[3] = 10;
    *&v37 = v35;
    v38 = "') ";
    v39 = 770;
    if (!v13)
    {
      mlir::Diagnostic::operator<<(&v45, &v37);
      if (v44)
      {
        LODWORD(v42) = 3;
        *(&v42 + 1) = "failed to verify constraint: region with 1 blocks";
        v43 = 49;
        if (v47 >= v48)
        {
          if (v46 > &v42 || v46 + 24 * v47 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v46 + 24 * v47;
        v24 = v42;
        *(v23 + 2) = v43;
        *v23 = v24;
        ++v47;
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
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
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
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
            v33 = *--v30;
            v32 = v33;
            *v30 = 0;
            if (v33)
            {
              MEMORY[0x259C63150](v32, 0x1000C8077774924);
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

    return v25;
  }

  else
  {
    v40[0] = "requires attribute 'benefit'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v44);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v53;
        v17 = __p;
        if (v53 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v53 = v15;
        operator delete(v17);
      }

      v18 = v50;
      if (v50)
      {
        v19 = v51;
        v20 = v50;
        if (v51 != v50)
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
          v20 = v50;
        }

        v51 = v18;
        operator delete(v20);
      }

      if (v46 != v49)
      {
        free(v46);
      }
    }
  }

  return v14;
}

void mlir::pdl::PatternOp::parse(mlir::pdl::PatternOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v3 = 0;
  v4 = 0;
  operator new();
}

void mlir::pdl::PatternOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
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

    v25 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
    Value = mlir::StringAttr::getValue(&v25);
    (*(*a2 + 88))(a2, Value, v7);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 6uLL)
  {
    *(v15 + 3) = 1953064549;
    *v15 = 1701733730;
    v14[4] += 7;
  }

  else
  {
    llvm::raw_ostream::write(v14, "benefit", 7uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ")", 1uLL);
  }

  else
  {
    *v19 = 41;
    ++v18[4];
  }

  v25 = v27;
  v27[0] = "sym_name";
  v27[1] = 8;
  v27[2] = "benefit";
  v27[3] = 7;
  v26 = 0x200000002;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v20 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, v20, v21, v25, v26);
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, 1, 0);
  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::pdl::RangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::pdl::RangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl::RangeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0)
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v6 = *(v2 + 9);
    v7 = v2 - 16;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    v10 = *this;
    v11 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v11 + 17) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v36[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::pdl::RangeType::getElementType(v36) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        return 1;
      }

      v32[0] = v11;
      if (*(*mlir::pdl::RangeType::getElementType(v32) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return 1;
      }
    }

    v33 = 261;
    v32[0] = "result";
    v32[1] = 6;
    mlir::Operation::emitOpError(v36, v10, v32);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = " #";
      v35 = 2;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v37 + 24 * v38;
      v13 = v34;
      *(v12 + 2) = v35;
      *v12 = v13;
      v14 = ++v38;
      if (v36[0])
      {
        LODWORD(v34) = 5;
        *(&v34 + 1) = 0;
        if (v14 >= v39)
        {
          if (v37 > &v34 || v37 + 24 * v14 <= &v34)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v37 + 24 * v38;
        v16 = v34;
        *(v15 + 2) = v35;
        *v15 = v16;
        v17 = ++v38;
        if (v36[0])
        {
          LODWORD(v34) = 3;
          v35 = 99;
          if (v17 >= v39)
          {
            if (v37 > &v34 || v37 + 24 * v17 <= &v34)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v37 + 24 * v38;
          v19 = v34;
          *(v18 + 2) = v35;
          *v18 = v19;
          ++v38;
          if (v36[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v34, v11);
            if (v38 >= v39)
            {
              if (v37 > &v34 || v37 + 24 * v38 <= &v34)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v20 = v37 + 24 * v38;
            v21 = v34;
            *(v20 + 2) = v35;
            *v20 = v21;
            ++v38;
          }
        }
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v44;
        v25 = __p;
        if (v44 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v44 = v23;
        operator delete(v25);
      }

      v26 = v41;
      if (v41)
      {
        v27 = v42;
        v28 = v41;
        if (v42 != v41)
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
          v28 = v41;
        }

        v42 = v26;
        operator delete(v28);
      }

      if (v37 != &v40)
      {
        free(v37);
      }
    }

    if (v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::pdl::RangeOp::parse(mlir::pdl::RangeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  v14 = &v16;
  v15 = 0x100000000;
  v12 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, &v17, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v18 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, &v14) & 1) == 0))
  {
    goto LABEL_13;
  }

  mlir::TypeRange::TypeRange(v13, v14, v15);
  if (v13[1])
  {
    v6 = mlir::TypeRange::dereference_iterator(v13[0], 0);
    RangeElementTypeOrSelf = mlir::pdl::getRangeElementTypeOrSelf(v6);
    v12 = mlir::pdl::RangeType::get(RangeElementTypeOrSelf);
  }

  else if (((*(*this + 576))(this, &v12) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
LABEL_13:
    v9 = 0;
    v10 = v14;
    if (v14 == &v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = *(a2 + 18);
  if (v8 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v8) = v12;
  ++*(a2 + 18);
  v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v17, &v14, v5, a2 + 16) & 1;
  v10 = v14;
  if (v14 != &v16)
  {
LABEL_14:
    free(v10);
  }

LABEL_15:
  if (v17 != v19)
  {
    free(v17);
  }

  return v9;
}

uint64_t mlir::pdl::detail::ReplaceOpGenericAdaptorBase::ReplaceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
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
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

unint64_t mlir::pdl::detail::ReplaceOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::pdl::detail::ReplaceOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 24);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 40);
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

  v10 = (this + 4 * v3 + 24);
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

unint64_t mlir::pdl::ReplaceOp::getODSOperandIndexAndLength(mlir::pdl::ReplaceOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 64);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 80);
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

  v12 = (16 * v2 + 4 * v5 + *this + 64);
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

uint64_t mlir::pdl::ReplaceOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
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
}

void mlir::pdl::ReplaceOp::getPropertiesAsAttr(uint64_t a1)
{
  v4[6] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v4;
  v3 = 0x300000000;
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::pdl::ReplaceOp::computePropertiesHash(void *a1)
{
  v1 = *(a1 + 4);
  v2 = __ROR8__(v1 + 12, 12);
  v3 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)))) >> 47))) ^ v1) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (8 * ((-348639895 * ((-348639895 * (v2 ^ (((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 32) >> 15) ^ (-348639895 * (*a1 ^ 0xED558CCD ^ v2)))) ^ (((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ 0xFF51AFD7ED558CCDLL ^ v2)))) >> 32) >> 15))) ^ v1) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
}

uint64_t mlir::pdl::ReplaceOp::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 != 19)
  {
    if (a4 != 21)
    {
      return 0;
    }

    v4 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    if (!v4 || *(a3 + 13) != 0x73657A69735F746ELL)
    {
      return 0;
    }

LABEL_19:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (*a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765 && *(a3 + 11) == 0x73657A6953746E65)
  {
    goto LABEL_19;
  }

  return 0;
}

void mlir::pdl::ReplaceOp::setInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 19)
  {
    if (a3 != 21)
    {
      return;
    }

    v6 = *a2 == 0x5F646E617265706FLL && a2[1] == 0x5F746E656D676573;
    if (!v6 || *(a2 + 13) != 0x73657A69735F746ELL)
    {
      return;
    }

LABEL_19:
    v10 = v4;
    v11 = v5;
    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }

    return;
  }

  if (*a2 == 0x53646E617265706FLL && a2[1] == 0x6953746E656D6765 && *(a2 + 11) == 0x73657A6953746E65)
  {
    goto LABEL_19;
  }
}

uint64_t mlir::pdl::ReplaceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3uLL))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v13 = "size mismatch for operand/result_segment_size";
      v14 = 259;
      (*(*a1 + 16))(v16, a1, &v13);
      if (v16[0])
      {
        mlir::InFlightDiagnostic::report(v16);
      }

      if (v24 == 1)
      {
        if (v23 != &v24)
        {
          free(v23);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v22;
          v6 = __p;
          if (v22 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v22 = v4;
          operator delete(v6);
        }

        v7 = v19;
        if (v19)
        {
          v8 = v20;
          v9 = v19;
          if (v20 != v19)
          {
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
            v9 = v19;
          }

          v20 = v7;
          operator delete(v9);
        }

        if (v17 != &v18)
        {
          free(v17);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::pdl::ReplaceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 64), 3);
  }

  return result;
}

uint64_t mlir::pdl::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  if (a4)
  {
    mlir::OperationState::addOperands(a2, &v13, 1uLL);
  }

  result = mlir::OperationState::addOperands(a2, a5, a6);
  v11 = v13;
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = 1;
  v12[1] = v11 != 0;
  v12[2] = a6;
  return result;
}

unint64_t mlir::pdl::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v20 = a6;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v20, 1uLL);
  }

  result = mlir::OperationState::addOperands(a2, a7, a8);
  v15 = v20 != 0;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = 1;
  v16[1] = v15;
  v16[2] = a8;
  v17 = *(a2 + 72);
  if (a4 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v18 = 0;
    v19 = *(a2 + 64) + 8 * v17;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v18);
      *(v19 + 8 * v18++) = result;
    }

    while (a4 != v18);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + a4;
  return result;
}

uint64_t mlir::pdl::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl::ReplaceOp::parse(mlir::pdl::ReplaceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v31[16] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v29 = v31;
  v30 = 0x400000000;
  v27[0] = &v28;
  v27[1] = 0x100000000;
  v24 = v26;
  v25 = 0x400000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v23 = 257;
  if (((*(*this + 400))(this, "with", 4, &v21) & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((*(*this + 288))(this))
  {
    v5 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v29, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v27) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v5 = 0;
  }

  (*(*this + 40))(this);
  v21 = 0uLL;
  *&v22 = 0;
  v6 = (*(*this + 712))(this, &v21, 1);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v25 >= HIDWORD(v25))
    {
      if (v24 > &v21 || v24 + 32 * v25 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v24 + 32 * v25;
    v8 = v22;
    *v7 = v21;
    v7[1] = v8;
    LODWORD(v25) = v25 + 1;
  }

  (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v9 = v25;
    v10 = v30;
    v11 = *(a2 + 32);
    if (!v11)
    {
      operator new();
    }

    *v11 = 1;
    v11[1] = v9;
    v11[2] = v10;
    v12 = (*(*this + 32))(this);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v12);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
    if ((*(*this + 728))(this, v19, SingletonImpl, a2 + 16))
    {
      if (!v25)
      {
LABEL_22:
        v17 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v29, v27, v5, a2 + 16) & 1;
        goto LABEL_24;
      }

      v15 = v24;
      v16 = 32 * v25;
      while (((*(*this + 728))(this, v15, SingletonImpl, a2 + 16) & 1) != 0)
      {
        v15 += 32;
        v16 -= 32;
        if (!v16)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_23:
  v17 = 0;
LABEL_24:
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27[0] != &v28)
  {
    free(v27[0]);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  return v17;
}

uint64_t mlir::pdl::detail::ResultOpGenericAdaptorBase::ResultOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t *mlir::pdl::detail::ResultOpGenericAdaptorBase::getIndex(mlir::pdl::detail::ResultOpGenericAdaptorBase *this)
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

uint64_t mlir::pdl::ResultOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v19[0] = *(a1 + 24);
    v21[0] = mlir::IntegerAttr::getType(v19);
    if (mlir::Type::isSignlessInteger(v21, 32))
    {
      return 1;
    }

    v19[0] = "'pdl.result' op attribute 'index' failed to satisfy constraint: 32-bit signless integer attribute";
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
    v19[0] = "'pdl.result' op requires attribute 'index'";
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

uint64_t mlir::pdl::ResultOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "index", 5uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 50;
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

uint64_t mlir::pdl::ResultOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "index", 5, *a2);
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

unint64_t mlir::pdl::ResultOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl::ResultOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl::ResultOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1701080681 && *(a2 + 4) == 120)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::pdl::ResultOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "index", 5uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *&v24 = a1;
    v7 = a4;
    v8 = a5;
    Type = mlir::IntegerAttr::getType(&v24);
    isSignlessInteger = mlir::Type::isSignlessInteger(&Type, 32);
    a5 = v8;
    a4 = v7;
    if (isSignlessInteger)
    {
      return 1;
    }
  }

  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v24) = 3;
    *(&v24 + 1) = "attribute '";
    v25 = 11;
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v29 + 24 * v30;
    v12 = v24;
    *(v11 + 2) = v25;
    *v11 = v12;
    ++v30;
    if (Type)
    {
      v26 = 261;
      *&v24 = a2;
      *(&v24 + 1) = a3;
      mlir::Diagnostic::operator<<(&v28, &v24);
      if (Type)
      {
        LODWORD(v24) = 3;
        *(&v24 + 1) = "' failed to satisfy constraint: 32-bit signless integer attribute";
        v25 = 65;
        if (v30 >= v31)
        {
          if (v29 > &v24 || v29 + 24 * v30 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v29 + 24 * v30;
        v14 = v24;
        *(v13 + 2) = v25;
        *v13 = v14;
        ++v30;
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
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

  return v10;
}