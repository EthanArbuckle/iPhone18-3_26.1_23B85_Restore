void mlir::affine::detail::AffineParallelOpGenericAdaptorBase::getSteps(mlir::affine::detail::AffineParallelOpGenericAdaptorBase *this@<X0>, uint64_t a2@<X8>)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v14 = *(this + 6);
  Value = mlir::ArrayAttr::getValue(&v14);
  v4 = mlir::ArrayAttr::getValue(&v14);
  v6 = (v4 + 8 * v5);
  __src = v18;
  v17 = 0x400000000;
  v7 = v6 - Value;
  if (((v6 - Value) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = 0;
  v9 = v18;
  if (v6 != Value)
  {
    v10 = v18;
    do
    {
      v11 = *Value;
      Value += 8;
      v15 = v11;
      *v10++ = mlir::IntegerAttr::getInt(&v15);
    }

    while (Value != v6);
    v8 = v17;
    v9 = __src;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x800000000;
  v12 = v8 + (v7 >> 3);
  LODWORD(v17) = v12;
  if (v12 && &__src != a2)
  {
    if (v9 == v18)
    {
      if (v12 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a2, v9, 8 * (v8 + (v7 >> 3)));
      v9 = __src;
      *(a2 + 8) = v12;
    }

    else
    {
      *a2 = v9;
      v13 = HIDWORD(v17);
      *(a2 + 8) = v12;
      *(a2 + 12) = v13;
      __src = v18;
      HIDWORD(v17) = 0;
      v9 = v18;
    }

    LODWORD(v17) = 0;
  }

  if (v9 != v18)
  {
    free(v9);
  }
}

uint64_t mlir::affine::AffineParallelOpAdaptor::verify(void *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (!v3)
  {
    v38[0] = "'affine.parallel' op requires attribute 'lowerBoundsGroups'";
    v39 = 259;
    mlir::emitError(a2, v38, &Type);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v49 != 1)
    {
      return v8;
    }

    if (v48 != &v49)
    {
      free(v48);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v47;
      v11 = __p;
      if (v47 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v47 = v9;
      operator delete(v11);
    }

    v12 = v44;
    if (v44)
    {
      v13 = v45;
      v14 = v44;
      if (v45 != v44)
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
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    goto LABEL_78;
  }

  if (!a1[4])
  {
    v38[0] = "'affine.parallel' op requires attribute 'lowerBoundsMap'";
    v39 = 259;
    mlir::emitError(a2, v38, &Type);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v49 != 1)
    {
      return v8;
    }

    if (v48 != &v49)
    {
      free(v48);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v47;
      v19 = __p;
      if (v47 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v47 = v17;
      operator delete(v19);
    }

    v12 = v44;
    if (v44)
    {
      v20 = v45;
      v14 = v44;
      if (v45 != v44)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v12);
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    goto LABEL_78;
  }

  if (!a1[5])
  {
    v38[0] = "'affine.parallel' op requires attribute 'reductions'";
    v39 = 259;
    mlir::emitError(a2, v38, &Type);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v49 != 1)
    {
      return v8;
    }

    if (v48 != &v49)
    {
      free(v48);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v47;
      v25 = __p;
      if (v47 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v47 = v23;
      operator delete(v25);
    }

    v12 = v44;
    if (v44)
    {
      v26 = v45;
      v14 = v44;
      if (v45 != v44)
      {
        do
        {
          v28 = *--v26;
          v27 = v28;
          *v26 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v26 != v12);
        goto LABEL_76;
      }

LABEL_77:
      v45 = v12;
      operator delete(v14);
    }

LABEL_78:
    if (v42 != &v43)
    {
      free(v42);
    }

    return v8;
  }

  v4 = a1[6];
  if (!v4)
  {
    v38[0] = "'affine.parallel' op requires attribute 'steps'";
    v39 = 259;
    mlir::emitError(a2, v38, &Type);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v49 != 1)
    {
      return v8;
    }

    if (v48 != &v49)
    {
      free(v48);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v47;
      v31 = __p;
      if (v47 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v47 = v29;
      operator delete(v31);
    }

    v12 = v44;
    if (v44)
    {
      v32 = v45;
      v14 = v44;
      if (v45 != v44)
      {
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

        while (v32 != v12);
LABEL_76:
        v14 = v44;
        goto LABEL_77;
      }

      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v5 = a1[7];
  if (v5)
  {
    if (a1[8])
    {
      Type = a1[5];
      if (llvm::all_of<mlir::ArrayAttr,mlir::affine::AffineParallelOpAdaptor::verify(mlir::Location)::$_0>(&Type))
      {
        v37 = v3;
        Type = mlir::DenseElementsAttr::getType(&v37);
        v41 = v6;
        v38[0] = mlir::ShapedType::getElementType(&Type);
        if (mlir::Type::isSignlessInteger(v38, 32))
        {
          v37 = v5;
          Type = mlir::DenseElementsAttr::getType(&v37);
          v41 = v7;
          v38[0] = mlir::ShapedType::getElementType(&Type);
          if (mlir::Type::isSignlessInteger(v38, 32))
          {
            Type = v4;
            if (llvm::all_of<mlir::ArrayAttr,mlir::affine::AffineParallelOpAdaptor::verify(mlir::Location)::$_1>(&Type))
            {
              return 1;
            }

            v35 = "'affine.parallel' op attribute 'steps' failed to satisfy constraint: 64-bit integer array attribute";
          }

          else
          {
            v35 = "'affine.parallel' op attribute 'upperBoundsGroups' failed to satisfy constraint: 32-bit signless integer elements attribute";
          }
        }

        else
        {
          v35 = "'affine.parallel' op attribute 'lowerBoundsGroups' failed to satisfy constraint: 32-bit signless integer elements attribute";
        }
      }

      else
      {
        v35 = "'affine.parallel' op attribute 'reductions' failed to satisfy constraint: Reduction ops";
      }
    }

    else
    {
      v35 = "'affine.parallel' op requires attribute 'upperBoundsMap'";
    }

    v38[0] = v35;
    v39 = 259;
    mlir::emitError(a2, v38, &Type);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Type);
    return v8;
  }

  v38[0] = "'affine.parallel' op requires attribute 'upperBoundsGroups'";
  v39 = 259;
  mlir::emitError(a2, v38, &Type);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v49 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v41);
  }

  return v8;
}

uint64_t llvm::all_of<mlir::ArrayAttr,mlir::affine::AffineParallelOpAdaptor::verify(mlir::Location)::$_0>(mlir::ArrayAttr *a1)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v3 = mlir::ArrayAttr::getValue(a1);
  v5 = (v3 + 8 * v4);
  if (v5 == Value)
  {
    return 1;
  }

  while (1)
  {
    result = *Value;
    if (!*Value)
    {
      break;
    }

    if ((mlir::arith::AtomicRMWKindAttr::classof(result) & 1) == 0)
    {
      return 0;
    }

    if (++Value == v5)
    {
      return 1;
    }
  }

  return result;
}

BOOL llvm::all_of<mlir::ArrayAttr,mlir::affine::AffineParallelOpAdaptor::verify(mlir::Location)::$_1>(mlir::ArrayAttr *a1)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v3 = mlir::ArrayAttr::getValue(a1);
  v5 = v3 + 8 * v4;
  if (v5 == Value)
  {
    return 1;
  }

  v6 = Value + 8;
  while (1)
  {
    v7 = *(v6 - 8);
    if (!v7 || *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      break;
    }

    v10 = *(v6 - 8);
    Type = mlir::IntegerAttr::getType(&v10);
    result = mlir::Type::isSignlessInteger(&Type, 64);
    if (result)
    {
      v9 = v6 == v5;
      v6 += 8;
      if (!v9)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t mlir::affine::AffineParallelOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v59 + 24 * v60;
      v25 = v55;
      *(v24 + 2) = v56;
      *v24 = v25;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v66;
      v28 = __p;
      if (v66 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v66 = v26;
      operator delete(v28);
    }

    v19 = v63;
    if (!v63)
    {
      goto LABEL_70;
    }

    v29 = v64;
    v21 = v63;
    if (v64 == v63)
    {
LABEL_69:
      v64 = v19;
      operator delete(v21);
LABEL_70:
      if (v59 != &v62)
      {
        free(v59);
      }

      return 0;
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
LABEL_68:
    v21 = v63;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "lowerBoundsGroups", 0x11uLL);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::DenseIntElementsAttr::classof(v8))
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      v56 = 62;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v59 + 24 * v60;
      v33 = v55;
      *(v32 + 2) = v56;
      *v32 = v33;
      ++v60;
      if (v57)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v34 = v59 + 24 * v60;
        v35 = v55;
        *(v34 + 2) = v56;
        *v34 = v35;
        ++v60;
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }
    }

    if ((v68 & 1) == 0)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v66;
      v38 = __p;
      if (v66 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v66 = v36;
      operator delete(v38);
    }

    v19 = v63;
    if (!v63)
    {
      goto LABEL_70;
    }

    v39 = v64;
    v21 = v63;
    if (v64 == v63)
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
LABEL_8:
  v10 = mlir::DictionaryAttr::get(&v54, "lowerBoundsMap", 0xEuLL);
  if (v10)
  {
    if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v11 = v10;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 59;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v59 + 24 * v60;
        v13 = v55;
        *(v12 + 2) = v56;
        *v12 = v13;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v11);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v59 + 24 * v60;
          v15 = v55;
          *(v14 + 2) = v56;
          *v14 = v15;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v66;
        v18 = __p;
        if (v66 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v66 = v16;
        operator delete(v18);
      }

      v19 = v63;
      if (!v63)
      {
        goto LABEL_70;
      }

      v20 = v64;
      v21 = v63;
      if (v64 == v63)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    a1[1] = v10;
  }

  v42 = mlir::DictionaryAttr::get(&v54, "reductions", 0xAuLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v43 = v42;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 55;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v59 + 24 * v60;
        v45 = v55;
        *(v44 + 2) = v56;
        *v44 = v45;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v43);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v59 + 24 * v60;
          v47 = v55;
          *(v46 + 2) = v56;
          *v46 = v47;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v54, "steps", 5uLL);
  *&v55 = v48;
  if (!v48)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v54, "upperBoundsGroups", 0x11uLL);
    *&v55 = v50;
    if (v50)
    {
      v51 = v50;
      if (!mlir::DenseIntElementsAttr::classof(v50))
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[4] = v51;
    }

    v52 = mlir::DictionaryAttr::get(&v54, "upperBoundsMap", 0xEuLL);
    *&v55 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[5] = v52;
    }

    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    a1[3] = v48;
    goto LABEL_88;
  }

  a3(&v57, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::affine::AffineParallelOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = v33;
  v32 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v30, "lowerBoundsGroups", 0x11, *a2);
  if (v32 >= HIDWORD(v32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v31 + 16 * v32);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v32 + 1;
  LODWORD(v32) = v32 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v30, "lowerBoundsMap", 0xE, v7);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v31 + 16 * v32);
    *v10 = v8;
    v10[1] = v9;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v30, "reductions", 0xA, v11);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v31 + 16 * v32);
    *v14 = v12;
    v14[1] = v13;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v30, "steps", 5, v15);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v31 + 16 * v32);
    *v18 = v16;
    v18[1] = v17;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v30, "upperBoundsGroups", 0x11, v19);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v31 + 16 * v32);
    *v22 = v20;
    v22[1] = v21;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v30, "upperBoundsMap", 0xE, v23);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v31 + 16 * v32);
    *v26 = v24;
    v26[1] = v25;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v27 = v31;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v31 == v33)
    {
      return DictionaryAttr;
    }

    goto LABEL_22;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v30, v31, v6);
  v27 = v31;
  if (v31 != v33)
  {
LABEL_22:
    free(v27);
  }

  return DictionaryAttr;
}

unint64_t mlir::affine::AffineParallelOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::affine::AffineParallelOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 13)
  {
    if (__n == 14)
    {
      if (!memcmp(__s1, "lowerBoundsMap", 0xEuLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "upperBoundsMap", 0xEuLL))
      {
        return a2[5];
      }
    }

    else if (__n == 17)
    {
      if (*__s1 == 0x756F427265776F6CLL && __s1[1] == 0x70756F724773646ELL && *(__s1 + 16) == 115)
      {
        return *a2;
      }

      if (!memcmp(__s1, "upperBoundsGroups", 0x11uLL))
      {
        return a2[4];
      }
    }

    return 0;
  }

  if (__n == 5)
  {
    if (!memcmp(__s1, "steps", 5uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 10 || memcmp(__s1, "reductions", 0xAuLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t *mlir::affine::AffineParallelOp::setInherentAttr(uint64_t *result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 13)
  {
    if (a3 == 14)
    {
      result = memcmp(__s1, "lowerBoundsMap", 0xEuLL);
      if (result)
      {
        result = memcmp(__s1, "upperBoundsMap", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
            {
              v11 = a4;
            }

            else
            {
              v11 = 0;
            }

            v5[5] = v11;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v5[1] = v14;
      }

      else
      {
        v5[1] = 0;
      }
    }

    else if (a3 == 17)
    {
      if (*__s1 == 0x756F427265776F6CLL && __s1[1] == 0x70756F724773646ELL && *(__s1 + 16) == 115)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          *v5 = v13;
        }

        else
        {
          *result = 0;
        }
      }

      else
      {
        result = memcmp(__s1, "upperBoundsGroups", 0x11uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[4] = v8;
          }

          else
          {
            v5[4] = 0;
          }
        }
      }
    }
  }

  else if (a3 == 5)
  {
    result = memcmp(__s1, "steps", 5uLL);
    if (!result)
    {
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

        v5[3] = v9;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  else if (a3 == 10)
  {
    result = memcmp(__s1, "reductions", 0xAuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        v5[2] = v12;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  return result;
}

void mlir::affine::AffineParallelOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "lowerBoundsGroups", 0x11uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "lowerBoundsMap", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "reductions", 0xAuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "steps", 5uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "upperBoundsGroups", 0x11uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "upperBoundsMap", 0xEuLL, v9);
  }
}

BOOL mlir::affine::AffineParallelOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, "lowerBoundsGroups", 17, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "lowerBoundsMap", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v10, "reductions", 10, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(v11, "steps", 5, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v12, "upperBoundsGroups", 17, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v13, "upperBoundsMap", 14, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v30 = a1;
    Value = mlir::ArrayAttr::getValue(&v30);
    v23 = mlir::ArrayAttr::getValue(&v30);
    v25 = (v23 + 8 * v24);
    if (v25 != Value)
    {
      while (*Value && (mlir::arith::AtomicRMWKindAttr::classof(*Value) & 1) != 0)
      {
        if (++Value == v25)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = "attribute '";
    v28 = 11;
    if (v33 >= v34)
    {
      if (v32 > &v27 || v32 + 24 * v33 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v32 + 24 * v33;
    v10 = v27;
    *(v9 + 2) = v28;
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      mlir::Diagnostic::operator<<(&v31, &v27);
      if (v30)
      {
        LODWORD(v27) = 3;
        *(&v27 + 1) = "' failed to satisfy constraint: Reduction ops";
        v28 = 45;
        if (v33 >= v34)
        {
          if (v32 > &v27 || v32 + 24 * v33 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v32 + 24 * v33;
        v12 = v27;
        *(v11 + 2) = v28;
        *v11 = v12;
        ++v33;
      }
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v39;
      v16 = __p;
      if (v39 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v39 = v14;
      operator delete(v16);
    }

    v17 = v36;
    if (v36)
    {
      v18 = v37;
      v19 = v36;
      if (v37 != v36)
      {
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
        v19 = v36;
      }

      v37 = v17;
      operator delete(v19);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v13;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v27 = a1;
    Value = mlir::ArrayAttr::getValue(&v27);
    v23 = mlir::ArrayAttr::getValue(&v27);
    v25 = v23 + 8 * v24;
    if (v25 != Value)
    {
      while (*Value)
      {
        if (*(**Value + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          break;
        }

        *&v28 = *Value;
        Type = mlir::IntegerAttr::getType(&v28);
        if (!mlir::Type::isSignlessInteger(&Type, 64))
        {
          break;
        }

        Value += 8;
        if (Value == v25)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "attribute '";
    v29 = 11;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v33 + 24 * v34;
    v10 = v28;
    *(v9 + 2) = v29;
    *v9 = v10;
    ++v34;
    if (Type)
    {
      v30 = 261;
      *&v28 = a2;
      *(&v28 + 1) = a3;
      mlir::Diagnostic::operator<<(&v32, &v28);
      if (Type)
      {
        LODWORD(v28) = 3;
        *(&v28 + 1) = "' failed to satisfy constraint: 64-bit integer array attribute";
        v29 = 62;
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v33 + 24 * v34;
        v12 = v28;
        *(v11 + 2) = v29;
        *v11 = v12;
        ++v34;
      }
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v40;
      v16 = __p;
      if (v40 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v40 = v14;
      operator delete(v16);
    }

    v17 = v37;
    if (v37)
    {
      v18 = v38;
      v19 = v37;
      if (v38 != v37)
      {
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
        v19 = v37;
      }

      v38 = v17;
      operator delete(v19);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v13;
}

uint64_t mlir::affine::AffineParallelOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, *(a2 + 256)) && (v4 = mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 1), (v4 & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 2) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::affine::AffineParallelOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::affine::AffineParallelOp::setLowerBoundsMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::affine::AffineParallelOp::setUpperBoundsMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::affine::AffineParallelOp::setSteps(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::Builder::getI64ArrayAttr(&Context, *a2, *(a2 + 8));
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

void mlir::affine::AffineParallelOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  mlir::OperationState::addOperands(a2, a11, a12);
  v17 = *(a2 + 32);
  if (v17)
  {
    *(v17 + 16) = a5;
    v18 = *(a2 + 32);
    if (v18)
    {
      *(v18 + 8) = a6;
      v19 = *(a2 + 32);
      if (v19)
      {
        *v19 = a7;
        v20 = *(a2 + 32);
        if (v20)
        {
          *(v20 + 40) = a8;
          v21 = *(a2 + 32);
          if (v21)
          {
            *(v21 + 32) = a9;
            v22 = *(a2 + 32);
            if (!v22)
            {
              operator new();
            }

            *(v22 + 24) = a10;
            mlir::OperationState::addRegion(a2);
          }

          operator new();
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void mlir::affine::AffineParallelOp::build(uint64_t **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  mlir::OperationState::addOperands(a2, a11, a12);
  v18 = *(a2 + 32);
  if (v18)
  {
    *(v18 + 16) = a5;
    v19 = mlir::AffineMapAttr::get(a6);
    v20 = *(a2 + 32);
    if (v20)
    {
      *(v20 + 8) = v19;
      v21 = *(a2 + 32);
      if (!v21)
      {
        operator new();
      }

      *v21 = a7;
      v22 = mlir::AffineMapAttr::get(a8);
      v23 = *(a2 + 32);
      if (v23)
      {
        *(v23 + 40) = v22;
        v24 = *(a2 + 32);
        if (!v24)
        {
          operator new();
        }

        *(v24 + 32) = a9;
        I64ArrayAttr = mlir::Builder::getI64ArrayAttr(a1, *a10, *(a10 + 8));
        v26 = *(a2 + 32);
        if (!v26)
        {
          operator new();
        }

        *(v26 + 24) = I64ArrayAttr;
        mlir::OperationState::addRegion(a2);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void mlir::affine::AffineParallelOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::affine::AffineParallelOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v44[0] = "requires attribute 'lowerBoundsGroups'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v53;
      v19 = __p;
      if (v53 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v53 = v17;
      operator delete(v19);
    }

    v20 = v50;
    if (v50)
    {
      v21 = v51;
      v22 = v50;
      if (v51 != v50)
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
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v5 = v2[1];
  if (!v5)
  {
    v44[0] = "requires attribute 'lowerBoundsMap'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v53;
      v27 = __p;
      if (v53 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v53 = v25;
      operator delete(v27);
    }

    v20 = v50;
    if (v50)
    {
      v28 = v51;
      v22 = v50;
      if (v51 != v50)
      {
        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v28 != v20);
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v6 = v2[2];
  if (!v6)
  {
    v44[0] = "requires attribute 'reductions'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v53;
      v33 = __p;
      if (v53 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v53 = v31;
      operator delete(v33);
    }

    v20 = v50;
    if (v50)
    {
      v34 = v51;
      v22 = v50;
      if (v51 != v50)
      {
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

        while (v34 != v20);
        goto LABEL_83;
      }

LABEL_84:
      v51 = v20;
      operator delete(v22);
    }

LABEL_85:
    if (v48 != &v49)
    {
      free(v48);
    }

    return v16;
  }

  v7 = v2[3];
  if (!v7)
  {
    v44[0] = "requires attribute 'steps'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 != 1)
    {
      return v16;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v53;
      v39 = __p;
      if (v53 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v53 = v37;
      operator delete(v39);
    }

    v20 = v50;
    if (v50)
    {
      v40 = v51;
      v22 = v50;
      if (v51 != v50)
      {
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

        while (v40 != v20);
LABEL_83:
        v22 = v50;
        goto LABEL_84;
      }

      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v8 = v2[4];
  if (v8)
  {
    v9 = v2[5];
    if (!v9)
    {
      v44[0] = "requires attribute 'upperBoundsMap'";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, &v46);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
      return v16;
    }

    v46 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v6, "reductions", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "lowerBoundsMap", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v3, "lowerBoundsGroups", 17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "upperBoundsMap", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, "upperBoundsGroups", 17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v46 = *this;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(v7, "steps", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v46) & 1) == 0)
    {
      return 0;
    }

    v11 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v12 = *(v11 + 17);
      if (v12)
      {
        v13 = this;
        v14 = 0;
        v15 = *(v11 + 9) + 24;
        while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*v13, *(*v15 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v14) & 1) != 0)
        {
          ++v14;
          v15 += 32;
          v13 = this;
          if (v12 == v14)
          {
            goto LABEL_18;
          }
        }

        return 0;
      }
    }

LABEL_18:
    mlir::affine::AffineParallelOp::verifyInvariantsImpl();
    return v46;
  }

  else
  {
    v44[0] = "requires attribute 'upperBoundsGroups'";
    v45 = 259;
    mlir::OpState::emitOpError(this, v44, &v46);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v55 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v47);
    }
  }

  return v16;
}

uint64_t mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::AffinePrefetchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "ne13AffineDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_25738B285 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_25738B285 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_25738B285 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t *mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::getLocalityHint(mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase *this)
{
  v5 = *(this + 5);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::affine::AffinePrefetchOpAdaptor::verify(void *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      v3 = a1[5];
      if (v3)
      {
        if (a1[6])
        {
          v34[0] = a1[5];
          Type = mlir::IntegerAttr::getType(v34);
          if (mlir::Type::isSignlessInteger(&Type, 32))
          {
            v33 = v3;
            if ((mlir::IntegerAttr::getInt(&v33) & 0x8000000000000000) == 0)
            {
              v32 = v3;
              if (mlir::IntegerAttr::getInt(&v32) <= 3)
              {
                return 1;
              }
            }
          }

          v34[0] = "'affine.prefetch' op attribute 'localityHint' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3";
          v35 = 259;
          mlir::emitError(a2, v34, &Type);
          v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
          if (Type)
          {
            mlir::InFlightDiagnostic::report(&Type);
          }

          if (v45 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v37);
          }

          return v4;
        }

        v34[0] = "'affine.prefetch' op requires attribute 'map'";
        v35 = 259;
        mlir::emitError(a2, v34, &Type);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v45 == 1)
        {
          if (v44 != &v45)
          {
            free(v44);
          }

          v25 = __p;
          if (__p)
          {
            v26 = v43;
            v27 = __p;
            if (v43 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v43 = v25;
            operator delete(v27);
          }

          v8 = v40;
          if (!v40)
          {
            goto LABEL_78;
          }

          v28 = v41;
          v10 = v40;
          if (v41 == v40)
          {
LABEL_77:
            v41 = v8;
            operator delete(v10);
LABEL_78:
            if (v38 != &v39)
            {
              free(v38);
            }

            return v4;
          }

          do
          {
            v30 = *--v28;
            v29 = v30;
            *v28 = 0;
            if (v30)
            {
              MEMORY[0x259C63150](v29, 0x1000C8077774924);
            }
          }

          while (v28 != v8);
LABEL_76:
          v10 = v40;
          goto LABEL_77;
        }
      }

      else
      {
        v34[0] = "'affine.prefetch' op requires attribute 'localityHint'";
        v35 = 259;
        mlir::emitError(a2, v34, &Type);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v45 == 1)
        {
          if (v44 != &v45)
          {
            free(v44);
          }

          v19 = __p;
          if (__p)
          {
            v20 = v43;
            v21 = __p;
            if (v43 != __p)
            {
              do
              {
                v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
              }

              while (v20 != v19);
              v21 = __p;
            }

            v43 = v19;
            operator delete(v21);
          }

          v8 = v40;
          if (!v40)
          {
            goto LABEL_78;
          }

          v22 = v41;
          v10 = v40;
          if (v41 == v40)
          {
            goto LABEL_77;
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

          while (v22 != v8);
          goto LABEL_76;
        }
      }
    }

    else
    {
      v34[0] = "'affine.prefetch' op requires attribute 'isWrite'";
      v35 = 259;
      mlir::emitError(a2, v34, &Type);
      v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v43;
          v15 = __p;
          if (v43 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v43 = v13;
          operator delete(v15);
        }

        v8 = v40;
        if (!v40)
        {
          goto LABEL_78;
        }

        v16 = v41;
        v10 = v40;
        if (v41 == v40)
        {
          goto LABEL_77;
        }

        do
        {
          v18 = *--v16;
          v17 = v18;
          *v16 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v16 != v8);
        goto LABEL_76;
      }
    }
  }

  else
  {
    v34[0] = "'affine.prefetch' op requires attribute 'isDataCache'";
    v35 = 259;
    mlir::emitError(a2, v34, &Type);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }

      v8 = v40;
      if (!v40)
      {
        goto LABEL_78;
      }

      v9 = v41;
      v10 = v40;
      if (v41 == v40)
      {
        goto LABEL_77;
      }

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
      goto LABEL_76;
    }
  }

  return v4;
}

uint64_t mlir::affine::AffinePrefetchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v56 + 24 * v57;
      v19 = v52;
      *(v18 + 2) = v53;
      *v18 = v19;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v63;
      v22 = __p;
      if (v63 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v63 = v20;
      operator delete(v22);
    }

    v23 = v60;
    if (!v60)
    {
      goto LABEL_81;
    }

    v24 = v61;
    v25 = v60;
    if (v61 == v60)
    {
LABEL_80:
      v61 = v23;
      operator delete(v25);
LABEL_81:
      if (v56 != &v59)
      {
        free(v56);
      }

      return 0;
    }

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
LABEL_79:
    v25 = v60;
    goto LABEL_80;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "isDataCache", 0xBuLL);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::BoolAttr::classof(v8))
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      v53 = 56;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v56 + 24 * v57;
      v29 = v52;
      *(v28 + 2) = v53;
      *v28 = v29;
      ++v57;
      if (v54)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v56 + 24 * v57;
        v31 = v52;
        *(v30 + 2) = v53;
        *v30 = v31;
        ++v57;
        if (v54)
        {
          mlir::InFlightDiagnostic::report(&v54);
        }
      }
    }

    if ((v65 & 1) == 0)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v63;
      v34 = __p;
      if (v63 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v63 = v32;
      operator delete(v34);
    }

    v23 = v60;
    if (!v60)
    {
      goto LABEL_81;
    }

    v35 = v61;
    v25 = v60;
    if (v61 == v60)
    {
      goto LABEL_80;
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

    while (v35 != v23);
    goto LABEL_79;
  }

  *a1 = v9;
LABEL_8:
  v10 = mlir::DictionaryAttr::get(&v51, "isWrite", 7uLL);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::BoolAttr::classof(v10))
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      v53 = 52;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v38 = v56 + 24 * v57;
      v39 = v52;
      *(v38 + 2) = v53;
      *v38 = v39;
      ++v57;
      if (v54)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v52, v11);
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v56 + 24 * v57;
        v41 = v52;
        *(v40 + 2) = v53;
        *v40 = v41;
        ++v57;
        if (v54)
        {
          mlir::InFlightDiagnostic::report(&v54);
        }
      }
    }

    if ((v65 & 1) == 0)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v63;
      v44 = __p;
      if (v63 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v63 = v42;
      operator delete(v44);
    }

    v23 = v60;
    if (!v60)
    {
      goto LABEL_81;
    }

    v45 = v61;
    v25 = v60;
    if (v61 == v60)
    {
      goto LABEL_80;
    }

    do
    {
      v47 = *--v45;
      v46 = v47;
      *v45 = 0;
      if (v47)
      {
        MEMORY[0x259C63150](v46, 0x1000C8077774924);
      }
    }

    while (v45 != v23);
    goto LABEL_79;
  }

  a1[1] = v11;
LABEL_11:
  v12 = mlir::DictionaryAttr::get(&v51, "localityHint", 0xCuLL);
  if (v12)
  {
    if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v13 = v12;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 57;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v56 + 24 * v57;
        v15 = v52;
        *(v14 + 2) = v53;
        *v14 = v15;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v13);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = v56 + 24 * v57;
          v17 = v52;
          *(v16 + 2) = v53;
          *v16 = v17;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v12;
  }

  v48 = mlir::DictionaryAttr::get(&v51, "map", 3uLL);
  *&v52 = v48;
  if (!v48)
  {
    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    a1[3] = v48;
    return 1;
  }

  a3(&v54, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v52);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return 0;
}

uint64_t mlir::affine::AffinePrefetchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v22, "isDataCache", 0xB, *a2);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v23 + 16 * v24);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v24 + 1;
  LODWORD(v24) = v24 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v22, "isWrite", 7, v7);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v23 + 16 * v24);
    *v10 = v8;
    v10[1] = v9;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v22, "localityHint", 0xC, v11);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v23 + 16 * v24);
    *v14 = v12;
    v14[1] = v13;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v22, "map", 3, v15);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v23 + 16 * v24);
    *v18 = v16;
    v18[1] = v17;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v19 = v23;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v6);
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return DictionaryAttr;
}

unint64_t mlir::affine::AffinePrefetchOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::affine::AffinePrefetchOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 12)
    {
      if (!memcmp(__s1, "localityHint", 0xCuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 11 && *__s1 == 0x6143617461447369 && *(__s1 + 3) == 0x6568636143617461)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 3)
  {
    if (!memcmp(__s1, "map", 3uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 7 || memcmp(__s1, "isWrite", 7uLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::affine::AffinePrefetchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 > 10)
  {
    if (a3 == 12)
    {
      result = memcmp(__s1, "localityHint", 0xCuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          v5[2] = v9;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x6143617461447369 && *(__s1 + 3) == 0x6568636143617461)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *v5 = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else if (a3 == 3)
  {
    result = memcmp(__s1, "map", 3uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[3] = v8;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  else if (a3 == 7)
  {
    result = memcmp(__s1, "isWrite", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        v5[1] = v10;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  return result;
}

void mlir::affine::AffinePrefetchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "isDataCache", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "isWrite", 7uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "localityHint", 0xCuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {

    mlir::NamedAttrList::append(a3, "map", 3uLL, v7);
  }
}

BOOL mlir::affine::AffinePrefetchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v8, "isDataCache", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v9, "isWrite", 7, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(v10, "localityHint", 12, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v11, "map", 3, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *&v26 = a1;
    Type = mlir::IntegerAttr::getType(&v26);
    if (mlir::Type::isSignlessInteger(&Type, 32))
    {
      v25 = a1;
      if ((mlir::IntegerAttr::getInt(&v25) & 0x8000000000000000) == 0)
      {
        v24 = a1;
        if (mlir::IntegerAttr::getInt(&v24) <= 3)
        {
          return 1;
        }
      }
    }
  }

  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "attribute '";
    v27 = 11;
    if (v32 >= v33)
    {
      if (v31 > &v26 || v31 + 24 * v32 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v31 + 24 * v32;
    v11 = v26;
    *(v10 + 2) = v27;
    *v10 = v11;
    ++v32;
    if (Type)
    {
      v28 = 261;
      *&v26 = a2;
      *(&v26 + 1) = a3;
      mlir::Diagnostic::operator<<(&v30, &v26);
      if (Type)
      {
        LODWORD(v26) = 3;
        *(&v26 + 1) = "' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3";
        v27 = 115;
        if (v32 >= v33)
        {
          if (v31 > &v26 || v31 + 24 * v32 <= &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v31 + 24 * v32;
        v13 = v26;
        *(v12 + 2) = v27;
        *v12 = v13;
        ++v32;
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v38;
      v17 = __p;
      if (v38 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v38 = v15;
      operator delete(v17);
    }

    v18 = v35;
    if (v35)
    {
      v19 = v36;
      v20 = v35;
      if (v36 != v35)
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
        v20 = v35;
      }

      v36 = v18;
      operator delete(v20);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v14;
}

uint64_t mlir::affine::AffinePrefetchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 2) & 1) != 0)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 3) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::BoolAttr::classof(v27))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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

    v7 = v33 + 24 * v34;
    v8 = v28;
    *(v7 + 2) = v29;
    *v7 = v8;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BoolAttr]";
  *(&v28 + 1) = 64;
  v9 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(&v28 + 1);
    }

    v11 = 18;
    if (*(&v28 + 1) - v10 < 0x12)
    {
      v11 = *(&v28 + 1) - v10;
    }

    v12 = *(&v28 + 1) - v10 - v11;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v30 = 261;
    *&v28 = v28 + v10 + v11;
    *(&v28 + 1) = v12;
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

      v13 = v33 + 24 * v34;
      v14 = v28;
      *(v13 + 2) = v29;
      *v13 = v14;
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

        v15 = v33 + 24 * v34;
        v16 = v28;
        *(v15 + 2) = v29;
        *v15 = v16;
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

uint64_t mlir::affine::AffinePrefetchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::affine::AffinePrefetchOp::setIsWrite(mlir::affine::AffinePrefetchOp *this, mlir::MLIRContext *a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getBoolAttr(&Context, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::setLocalityHint(mlir::affine::AffinePrefetchOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::setIsDataCache(mlir::affine::AffinePrefetchOp *this, mlir::MLIRContext *a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getBoolAttr(&Context, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, mlir::MLIRContext *a7, unsigned int a8, unsigned __int8 a9)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20 = a3;
  I32IntegerAttr = mlir::Builder::getI32IntegerAttr(a1, a8);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a7);
  v17 = mlir::Builder::getBoolAttr(a1, a9);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::ValueRange::ValueRange(v21, a5, a6);
  mlir::OperationState::addOperands(a2, v21[0], v21[1]);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  result = mlir::AffineMapAttr::get(a4);
  v18[2] = I32IntegerAttr;
  v18[3] = result;
  *v18 = v17;
  v18[1] = BoolAttr;
  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a9;
  return result;
}

unint64_t mlir::affine::AffinePrefetchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a5;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = a11;
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

uint64_t mlir::affine::AffinePrefetchOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, mlir::MLIRContext *a6, unsigned int a7, mlir::MLIRContext *a8, unint64_t a9)
{
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a6);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = BoolAttr;
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = IntegerAttr;
  v21 = mlir::Builder::getBoolAttr(a1, a8);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = v21;
  result = mlir::AffineMapAttr::get(a9);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = result;
  return result;
}

unint64_t mlir::affine::AffinePrefetchOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, mlir::MLIRContext *a8, unsigned int a9, unsigned __int8 a10, unint64_t a11)
{
  v30 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a8);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = BoolAttr;
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = IntegerAttr;
  v23 = mlir::Builder::getBoolAttr(a1, a10);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *v24 = v23;
  result = mlir::AffineMapAttr::get(a11);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 24) = result;
  v27 = *(a2 + 72);
  if (a4 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v28 = 0;
    v29 = *(a2 + 64) + 8 * v27;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v28);
      *(v29 + 8 * v28++) = result;
    }

    while (a4 != v28);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + a4;
  return result;
}

uint64_t mlir::affine::AffinePrefetchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::affine::AffinePrefetchOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v62 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (!v4)
  {
    v51[0] = "requires attribute 'isDataCache'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v59;
      v14 = __p;
      if (v59 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v59 = v12;
      operator delete(v14);
    }

    v15 = v56;
    if (v56)
    {
      v16 = v57;
      v17 = v56;
      if (v57 != v56)
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
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v5 = v2[1];
  if (!v5)
  {
    v51[0] = "requires attribute 'isWrite'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v59;
      v22 = __p;
      if (v59 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v59 = v20;
      operator delete(v22);
    }

    v15 = v56;
    if (v56)
    {
      v23 = v57;
      v17 = v56;
      if (v57 != v56)
      {
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
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v6 = v2[2];
  if (!v6)
  {
    v51[0] = "requires attribute 'localityHint'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v59;
      v28 = __p;
      if (v59 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v59 = v26;
      operator delete(v28);
    }

    v15 = v56;
    if (v56)
    {
      v29 = v57;
      v17 = v56;
      if (v57 != v56)
      {
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

        while (v29 != v15);
        goto LABEL_74;
      }

LABEL_75:
      v57 = v15;
      operator delete(v17);
    }

LABEL_76:
    if (v54 != &v55)
    {
      free(v54);
    }

    return v11;
  }

  v7 = v2[3];
  if (!v7)
  {
    v51[0] = "requires attribute 'map'";
    v52 = 259;
    mlir::OpState::emitOpError(this, v51, v53);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return v11;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v59;
      v34 = __p;
      if (v59 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v59 = v32;
      operator delete(v34);
    }

    v15 = v56;
    if (v56)
    {
      v35 = v57;
      v17 = v56;
      if (v57 != v56)
      {
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

        while (v35 != v15);
LABEL_74:
        v17 = v56;
        goto LABEL_75;
      }

      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v53[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v5, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  v53[0] = *this;
  if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(v6, "localityHint", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  v53[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v3, "isDataCache", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  v53[0] = *this;
  if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v7, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v53) & 1) == 0)
  {
    return 0;
  }

  ODSOperands = mlir::affine::AffinePrefetchOp::getODSOperands(this, 0, v9, v10);
  if (v40)
  {
    v43 = v40;
    v44 = 0;
    v45 = ODSOperands + 24;
    while ((mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*v45 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v44) & 1) != 0)
    {
      ++v44;
      v45 += 32;
      if (v43 == v44)
      {
        goto LABEL_85;
      }
    }

    return 0;
  }

  LODWORD(v44) = 0;
LABEL_85:
  v11 = 1;
  v46 = mlir::affine::AffinePrefetchOp::getODSOperands(this, 1u, v41, v42);
  if (v47)
  {
    v48 = v47;
    v49 = v46 + 24;
    v50 = this;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*v50, *(*v49 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v44) & 1) != 0)
    {
      LODWORD(v44) = v44 + 1;
      v49 += 32;
      v11 = 1;
      --v48;
      v50 = this;
      if (!v48)
      {
        return v11;
      }
    }

    return 0;
  }

  return v11;
}

uint64_t mlir::affine::detail::AffineStoreOpGenericAdaptorBase::AffineStoreOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::affine::detail::AffineStoreOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffineStoreOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "13AffineDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_25738B285 + v6 + 2;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_25738B285 + v23 + 2);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_25738B285 + v5 + 2))
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::affine::AffineStoreOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.store' op requires attribute 'map'";
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

uint64_t mlir::affine::AffineStoreOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineStoreOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineStoreOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineStoreOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineStoreOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineStoreOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::AffineStoreOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::affine::AffineStoreOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineStoreOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v16[0] = v2;
    if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16) & 1) != 0 && (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) == 2)
      {
        return 1;
      }

      else
      {
        mlir::affine::AffineStoreOp::verifyInvariantsImpl();
        return LOBYTE(v16[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'map'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
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
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

void mlir::affine::AffineStoreOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72) + 32;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::AffineVectorLoadOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "ne13AffineDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_25738B285 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_25738B285 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_25738B285 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::affine::AffineVectorLoadOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.vector_load' op requires attribute 'map'";
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

uint64_t mlir::affine::AffineVectorLoadOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineVectorLoadOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineVectorLoadOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineVectorLoadOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineVectorLoadOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineVectorLoadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::affine::AffineVectorLoadOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a7;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v19 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a8;
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

uint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::AffineMapAttr::get(a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v19 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a8);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
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

uint64_t mlir::affine::AffineVectorLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::affine::AffineVectorLoadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v26[0] = v2;
    if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1) == 0 || (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v6 = -1;
      v7 = 32;
LABEL_7:
      v8 = v7 + 24;
      v9 = 1;
      while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v9) & 1) != 0)
      {
        ++v9;
        v8 += 32;
        if (!--v6)
        {
          v4 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }

    v5 = *(v4 + 17);
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v7 = *(v4 + 9) + 32;
      goto LABEL_7;
    }

LABEL_11:
    v10 = *(v4 + 9);
    v11 = v4 - 16;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    return mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  else
  {
    v24 = "requires attribute 'map'";
    v25 = 259;
    mlir::OpState::emitOpError(this, &v24, v26);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v32 = v15;
        operator delete(v17);
      }

      v18 = v29;
      if (v29)
      {
        v19 = v30;
        v20 = v29;
        if (v30 != v29)
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
          v20 = v29;
        }

        v30 = v18;
        operator delete(v20);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  return v14;
}

uint64_t mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(mlir::Operation *a1, void **a2, void **a3, void **a4, unsigned int a5)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v42[0] = a2;
    v28 = a1;
    mlir::VectorType::getShape(v42);
    a1 = v28;
    if (v29 >= 1)
    {
      v30 = *a2;
      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = v30[1];
        v33 = *(v30 + 4);
        if (!v33)
        {
          goto LABEL_56;
        }
      }

      else
      {
        mlir::affine::__mlir_ods_local_type_constraint_AffineOps6();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = v30[1];
        v33 = *(v30 + 4);
        if (!v33)
        {
          goto LABEL_56;
        }
      }

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
      if (v34 != &v32[2 * v33] && *v34 == v31)
      {
        v40 = v34[1];
        goto LABEL_58;
      }

LABEL_56:
      v40 = 0;
LABEL_58:
      v46[0] = a2;
      v46[1] = v40;
      mlir::ShapedType::getElementType(v46);
      return 1;
    }
  }

  v43 = 261;
  v42[0] = a3;
  v42[1] = a4;
  mlir::Operation::emitOpError(v46, a1, v42);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    *(&v44 + 1) = " #";
    v45 = 2;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v47 + 24 * v48;
    v10 = v44;
    *(v9 + 2) = v45;
    *v9 = v10;
    v11 = ++v48;
    if (v46[0])
    {
      LODWORD(v44) = 5;
      *(&v44 + 1) = a5;
      if (v11 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v11 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v47 + 24 * v48;
      v13 = v44;
      *(v12 + 2) = v45;
      *v12 = v13;
      v14 = ++v48;
      if (v46[0])
      {
        LODWORD(v44) = 3;
        *(&v44 + 1) = " must be vector of any type values, but got ";
        v45 = 44;
        if (v14 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v14 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v47 + 24 * v48;
        v16 = v44;
        *(v15 + 2) = v45;
        *v15 = v16;
        ++v48;
        if (v46[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, a2);
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v17 = v47 + 24 * v48;
          v18 = v44;
          *(v17 + 2) = v45;
          *v17 = v18;
          ++v48;
        }
      }
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
  }

  if (v56 == 1)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v54;
      v22 = __p;
      if (v54 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v54 = v20;
      operator delete(v22);
    }

    v23 = v51;
    if (v51)
    {
      v24 = v52;
      v25 = v51;
      if (v52 != v51)
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
        v25 = v51;
      }

      v52 = v23;
      operator delete(v25);
    }

    if (v47 != &v50)
    {
      free(v47);
    }
  }

  return v19;
}

void mlir::affine::AffineVectorLoadOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72);
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::AffineVectorStoreOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "13AffineDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_25738B285 + v6 + 2;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_25738B285 + v23 + 2);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_25738B285 + v5 + 2))
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::affine::AffineVectorStoreOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'affine.vector_store' op requires attribute 'map'";
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

uint64_t mlir::affine::AffineVectorStoreOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "map", 3uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 48;
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

uint64_t mlir::affine::AffineVectorStoreOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "map", 3, *a2);
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

unint64_t mlir::affine::AffineVectorStoreOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::affine::AffineVectorStoreOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::affine::AffineVectorStoreOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 24941 && *(a2 + 2) == 112)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::affine::AffineVectorStoreOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "map", 3uLL, *a2);
  }

  return result;
}

uint64_t mlir::affine::AffineVectorStoreOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::affine::AffineVectorStoreOp::setMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::affine::AffineVectorStoreOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v16[0] = v2;
    if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16) & 1) != 0 && (mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) == 2)
      {
        return 1;
      }

      else
      {
        mlir::affine::AffineStoreOp::verifyInvariantsImpl();
        return LOBYTE(v16[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'map'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
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
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

void mlir::affine::AffineVectorStoreOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72) + 32;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::affine::AffineYieldOp::build(mlir::affine::AffineYieldOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v5, 0, 0);
  return mlir::OperationState::addOperands(a2, v5[0], v5[1]);
}

unint64_t mlir::affine::AffineYieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::affine::AffineYieldOp::parse(mlir::affine::AffineYieldOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || (v5 = (*(*this + 40))(this), ((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0))
  {
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v11, v9, v5, a2 + 16) & 1;
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

uint64_t mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::DimOp>,mlir::OpTrait::OneResult<mlir::tensor::DimOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::DimOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::OpInvariants<mlir::tensor::DimOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::DimOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::DimOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::DimOp>,mlir::ShapedDimOpInterface::Trait<mlir::tensor::DimOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::DimOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::DimOp>,mlir::OpTrait::OneResult<mlir::tensor::DimOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::DimOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::OpInvariants<mlir::tensor::DimOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::DimOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::DimOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::DimOp>,mlir::ShapedDimOpInterface::Trait<mlir::tensor::DimOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::DimOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[212];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *result, unsigned int **a2)
{
  if ((result[9] & 1) == 0)
  {
    v4 = *result;
    if (*result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      v34[7] = v2;
      v34[8] = v3;
      v6 = result;
      v7 = **a2;
      v8 = *a2[1];
      v34[0] = v4;
      v33 = *(v4 - 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::MemRefType::getShape(&v33);
      if (v9 <= v7)
      {
        isValidSymbol = 0;
      }

      else
      {
        if (*(mlir::MemRefType::getShape(&v33) + 8 * v7) == 0x8000000000000000)
        {
          Shape = mlir::MemRefType::getShape(&v33);
          if (v11 >= v7)
          {
            v12 = v7;
          }

          else
          {
            v12 = v11;
          }

          if (!v12)
          {
            v17 = 0;
LABEL_26:
            ODSOperandIndexAndLength = mlir::memref::ViewOp::getODSOperandIndexAndLength(v34, 2u);
            if ((*(v34[0] + 46) & 0x80) != 0)
            {
              v32 = *(v34[0] + 72);
            }

            else
            {
              v32 = 0;
            }

            mlir::memref::ViewOp::getODSOperandIndexAndLength(v34, 2u);
            isValidSymbol = mlir::affine::isValidSymbol(*(v32 + 32 * ODSOperandIndexAndLength + 32 * v17 + 24), v8);
            goto LABEL_29;
          }

          v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v13 >= 7)
          {
            v18 = v13 + 1;
            v19 = (v13 + 1) & 0x3FFFFFFFFFFFFFF8;
            v15 = (Shape + 8 * v19);
            v20 = (Shape + 32);
            v21 = 0uLL;
            v22 = vnegq_f64(0);
            v23 = v19;
            v24 = 0uLL;
            do
            {
              v25 = v20[-2];
              v26 = v20[-1];
              v27 = *v20;
              v28 = v20[1];
              v20 += 4;
              v21 = vsubq_s32(v21, vuzp1q_s32(vceqq_s64(v25, v22), vceqq_s64(v26, v22)));
              v24 = vsubq_s32(v24, vuzp1q_s32(vceqq_s64(v27, v22), vceqq_s64(v28, v22)));
              v23 -= 8;
            }

            while (v23);
            v14 = vaddvq_s32(vaddq_s32(v24, v21));
            if (v18 == v19)
            {
LABEL_25:
              v17 = v14;
              goto LABEL_26;
            }
          }

          else
          {
            v14 = 0;
            v15 = Shape;
          }

          v29 = (Shape + 8 * v12);
          do
          {
            v30 = *v15++;
            if (v30 == 0x8000000000000000)
            {
              ++v14;
            }
          }

          while (v15 != v29);
          goto LABEL_25;
        }

        isValidSymbol = 1;
      }

LABEL_29:
      result = v6;
      v6[8] = isValidSymbol;
      v6[9] = 1;
    }
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *result, unsigned int **a2)
{
  if ((result[9] & 1) == 0)
  {
    v4 = *result;
    if (*result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
    {
      v36[5] = v2;
      v36[6] = v3;
      v6 = result;
      v7 = **a2;
      v8 = *a2[1];
      v36[0] = v4;
      v9 = *(v4 + 36);
      v10 = v4 - 16;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v35 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::MemRefType::getShape(&v35);
      if (v12 <= v7)
      {
        isValidSymbol = 0;
      }

      else
      {
        if (*(mlir::MemRefType::getShape(&v35) + 8 * v7) == 0x8000000000000000)
        {
          Shape = mlir::MemRefType::getShape(&v35);
          if (v14 >= v7)
          {
            v15 = v7;
          }

          else
          {
            v15 = v14;
          }

          if (!v15)
          {
            v20 = 0;
LABEL_29:
            ODSOperandIndexAndLength = mlir::memref::SubViewOp::getODSOperandIndexAndLength(v36, 2u);
            isValidSymbol = mlir::affine::isValidSymbol(*(*(v36[0] + 72) + 32 * ODSOperandIndexAndLength + 32 * v20 + 24), v8);
            goto LABEL_30;
          }

          v16 = (v15 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v16 >= 7)
          {
            v21 = v16 + 1;
            v22 = (v16 + 1) & 0x3FFFFFFFFFFFFFF8;
            v18 = (Shape + 8 * v22);
            v23 = (Shape + 32);
            v24 = 0uLL;
            v25 = vnegq_f64(0);
            v26 = v22;
            v27 = 0uLL;
            do
            {
              v28 = v23[-2];
              v29 = v23[-1];
              v30 = *v23;
              v31 = v23[1];
              v23 += 4;
              v24 = vsubq_s32(v24, vuzp1q_s32(vceqq_s64(v28, v25), vceqq_s64(v29, v25)));
              v27 = vsubq_s32(v27, vuzp1q_s32(vceqq_s64(v30, v25), vceqq_s64(v31, v25)));
              v26 -= 8;
            }

            while (v26);
            v17 = vaddvq_s32(vaddq_s32(v27, v24));
            if (v21 == v22)
            {
LABEL_28:
              v20 = v17;
              goto LABEL_29;
            }
          }

          else
          {
            v17 = 0;
            v18 = Shape;
          }

          v32 = (Shape + 8 * v15);
          do
          {
            v33 = *v18++;
            if (v33 == 0x8000000000000000)
            {
              ++v17;
            }
          }

          while (v18 != v32);
          goto LABEL_28;
        }

        isValidSymbol = 1;
      }

LABEL_30:
      result = v6;
      v6[8] = isValidSymbol;
      v6[9] = 1;
    }
  }

  return result;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *result, unsigned int **a2)
{
  if ((result[9] & 1) == 0)
  {
    v4 = *result;
    if (*result && *(*(*result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
    {
      v33[5] = v2;
      v33[6] = v3;
      v6 = result;
      v7 = **a2;
      v8 = *a2[1];
      v33[0] = v4;
      v32 = *(v4 - 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::MemRefType::getShape(&v32);
      if (v9 <= v7)
      {
        isValidSymbol = 0;
      }

      else
      {
        if (*(mlir::MemRefType::getShape(&v32) + 8 * v7) == 0x8000000000000000)
        {
          Shape = mlir::MemRefType::getShape(&v32);
          if (v11 >= v7)
          {
            v12 = v7;
          }

          else
          {
            v12 = v11;
          }

          if (!v12)
          {
            v17 = 0;
LABEL_26:
            ODSOperandIndexAndLength = mlir::memref::AllocOp::getODSOperandIndexAndLength(v33, 0);
            isValidSymbol = mlir::affine::isValidSymbol(*(*(v33[0] + 72) + 32 * ODSOperandIndexAndLength + 32 * v17 + 24), v8);
            goto LABEL_27;
          }

          v13 = (v12 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v13 >= 7)
          {
            v18 = v13 + 1;
            v19 = (v13 + 1) & 0x3FFFFFFFFFFFFFF8;
            v15 = (Shape + 8 * v19);
            v20 = (Shape + 32);
            v21 = 0uLL;
            v22 = vnegq_f64(0);
            v23 = v19;
            v24 = 0uLL;
            do
            {
              v25 = v20[-2];
              v26 = v20[-1];
              v27 = *v20;
              v28 = v20[1];
              v20 += 4;
              v21 = vsubq_s32(v21, vuzp1q_s32(vceqq_s64(v25, v22), vceqq_s64(v26, v22)));
              v24 = vsubq_s32(v24, vuzp1q_s32(vceqq_s64(v27, v22), vceqq_s64(v28, v22)));
              v23 -= 8;
            }

            while (v23);
            v14 = vaddvq_s32(vaddq_s32(v24, v21));
            if (v18 == v19)
            {
LABEL_25:
              v17 = v14;
              goto LABEL_26;
            }
          }

          else
          {
            v14 = 0;
            v15 = Shape;
          }

          v29 = (Shape + 8 * v12);
          do
          {
            v30 = *v15++;
            if (v30 == 0x8000000000000000)
            {
              ++v14;
            }
          }

          while (v15 != v29);
          goto LABEL_25;
        }

        isValidSymbol = 1;
      }

LABEL_27:
      result = v6;
      v6[8] = isValidSymbol;
      v6[9] = 1;
    }
  }

  return result;
}

unsigned int *llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(unsigned int *result, _BYTE *a2, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - a2;
  v5 = result[2];
  if (v5 + ((a3 - a2) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    result = memcpy((*result + 8 * v5), a2, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

uint64_t mlir::AffineMap::shiftDims(mlir::AffineMap *this, int a2, unsigned int a3)
{
  v24[4] = *MEMORY[0x277D85DE8];
  NumDims = mlir::AffineMap::getNumDims(this);
  NumSymbols = mlir::AffineMap::getNumSymbols(this);
  Results = mlir::AffineMap::getResults(this);
  v10 = v8;
  v22 = v24;
  v23 = 0x400000000;
  if (v8 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v8)
  {
    v11 = 8 * v8;
    v12 = v24;
    do
    {
      v13 = *Results++;
      v21 = v13;
      v14 = mlir::AffineMap::getNumDims(this);
      *v12++ = mlir::AffineExpr::shiftDims(&v21, v14, a2, a3);
      v11 -= 8;
    }

    while (v11);
    v15 = v23;
    v16 = v22;
  }

  else
  {
    v15 = 0;
    v16 = v24;
  }

  v17 = (v15 + v10);
  LODWORD(v23) = v17;
  Context = mlir::AffineMap::getContext(this);
  result = mlir::AffineMap::get(NumDims + a2, NumSymbols, v16, v17, Context);
  if (v22 != v24)
  {
    v20 = result;
    free(v22);
    return v20;
  }

  return result;
}

uint64_t mlir::AffineMap::shiftSymbols(mlir::AffineMap *this, int a2, unsigned int a3)
{
  v24[4] = *MEMORY[0x277D85DE8];
  NumDims = mlir::AffineMap::getNumDims(this);
  NumSymbols = mlir::AffineMap::getNumSymbols(this);
  Results = mlir::AffineMap::getResults(this);
  v10 = v8;
  v22 = v24;
  v23 = 0x400000000;
  if (v8 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v8)
  {
    v11 = 8 * v8;
    v12 = v24;
    do
    {
      v13 = *Results++;
      v21 = v13;
      v14 = mlir::AffineMap::getNumSymbols(this);
      *v12++ = mlir::AffineExpr::shiftSymbols(&v21, v14, a2, a3);
      v11 -= 8;
    }

    while (v11);
    v15 = v23;
    v16 = v22;
  }

  else
  {
    v15 = 0;
    v16 = v24;
  }

  v17 = (v15 + v10);
  LODWORD(v23) = v17;
  Context = mlir::AffineMap::getContext(this);
  result = mlir::AffineMap::get(NumDims, NumSymbols + a2, v16, v17, Context);
  if (v22 != v24)
  {
    v20 = result;
    free(v22);
    return v20;
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::Attribute>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  v13 = v26;
  *a2 = v26;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

uint64_t foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(uint64_t **a1, int a2)
{
  v2 = a2;
  v43 = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = 0x800000000;
  v4 = **a1;
  v5 = *(v4 + 44);
  v6 = v4 + 16 * ((v5 >> 23) & 1);
  v7 = *(v6 + 88);
  if (a2)
  {
    if ((v5 & 0x800000) != 0)
    {
      v8 = *(v4 + 72);
      if (!*(v6 + 88))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      if (!*(v6 + 88))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v9 = *(v6 + 92);
    if ((v5 & 0x800000) != 0)
    {
      v8 = *(v4 + 72) + 32 * v7;
      v7 = (v9 + v7) - v7;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 32 * v7;
      v7 = (v9 + v7) - v7;
      if (!v7)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = (v8 + 24);
  do
  {
    v11 = *v10;
    v41 = 0;
    v32 = &v41;
    v35 = v11;
    DefiningOp = mlir::Value::getDefiningOp(&v35);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::Attribute>::match(&v32, DefiningOp);
    }

    if (v39 >= HIDWORD(v39))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v38 + v39) = v41;
    LODWORD(v39) = v39 + 1;
    v10 += 4;
    --v7;
  }

  while (v7);
LABEL_17:
  v13 = *a1;
  if (v2)
  {
    v14 = *(*v13 + 16 * ((*(*v13 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v14 = *(*v13 + 16 * ((*(*v13 + 44) >> 23) & 1) + 80);
  }

  v35 = v14;
  Value = mlir::AffineMapAttr::getValue(&v35);
  v35 = v37;
  v36 = 0x400000000;
  if (mlir::AffineMap::constantFold(&Value, v38, v39, &v35, 0))
  {
    v41 = *v35;
    mlir::IntegerAttr::getValue(&v41, &v32);
    if (v36 < 2)
    {
LABEL_52:
      v23 = *a1;
      if (v2)
      {
        if (v33 > 0x40)
        {
          v24 = *v32;
        }

        else if (v33)
        {
          v24 = (v32 << -v33) >> -v33;
        }

        else
        {
          v24 = 0;
        }

        mlir::ValueRange::ValueRange(&v41, 0, 0);
        Context = mlir::Attribute::getContext((*v23 + 24));
        mlir::AffineMap::getConstantMap(v24, Context, v27);
        mlir::affine::AffineForOp::setLowerBound(v23);
      }

      if (v33 > 0x40)
      {
        v25 = *v32;
      }

      else if (v33)
      {
        v25 = (v32 << -v33) >> -v33;
      }

      else
      {
        v25 = 0;
      }

      mlir::ValueRange::ValueRange(&v41, 0, 0);
      v28 = mlir::Attribute::getContext((*v23 + 24));
      mlir::AffineMap::getConstantMap(v25, v28, v29);
      mlir::affine::AffineForOp::setUpperBound(v23);
    }

    v15 = 8 * v36;
    v16 = 8;
    if ((v2 & 1) == 0)
    {
      while (1)
      {
        v31 = *(v35 + v16);
        mlir::IntegerAttr::getValue(&v31, &v41);
        v20 = llvm::APInt::compareSigned(&v32, &v41);
        if (v20 >= 0)
        {
          v21 = &v41;
        }

        else
        {
          v21 = &v32;
        }

        v22 = v33;
        if (v33 > 0x40)
        {
          goto LABEL_47;
        }

        if (v20 >= 0)
        {
          v22 = v42;
        }

        if (v22 > 0x40)
        {
LABEL_47:
          llvm::APInt::assignSlowCase(&v32, v21);
          if (v42 >= 0x41)
          {
LABEL_48:
            if (v41)
            {
              MEMORY[0x259C63150](v41, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          v32 = *v21;
          v33 = v22;
          if (v42 >= 0x41)
          {
            goto LABEL_48;
          }
        }

        v16 += 8;
        if (v15 == v16)
        {
          goto LABEL_52;
        }
      }
    }

    while (1)
    {
      v31 = *(v35 + v16);
      mlir::IntegerAttr::getValue(&v31, &v41);
      v17 = llvm::APInt::compareSigned(&v32, &v41);
      if (v17 <= 0)
      {
        v18 = &v41;
      }

      else
      {
        v18 = &v32;
      }

      v19 = v33;
      if (v33 > 0x40)
      {
        goto LABEL_34;
      }

      if (v17 <= 0)
      {
        v19 = v42;
      }

      if (v19 >= 0x41)
      {
LABEL_34:
        llvm::APInt::assignSlowCase(&v32, v18);
        if (v42 >= 0x41)
        {
LABEL_35:
          if (v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }
        }
      }

      else
      {
        v32 = *v18;
        v33 = v19;
        if (v42 >= 0x41)
        {
          goto LABEL_35;
        }
      }

      v16 += 8;
      if (v15 == v16)
      {
        goto LABEL_52;
      }
    }
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  return 0;
}

void simplifyMinOrMaxExprWithOperands(mlir::AffineMap *a1, unint64_t a2, unint64_t a3, char a4)
{
  v91[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v89 = v91;
    v90 = 0x300000000;
    v86 = v88;
    v87 = 0x300000000;
    if (a3 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = 8 * a3;
    do
    {
      v9 = *a2;
      LowerBound = getLowerBound(*a2);
      if (v90 >= HIDWORD(v90))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = &v89[16 * v90];
      *v12 = LowerBound;
      v12[1] = v11;
      LODWORD(v90) = v90 + 1;
      UpperBound = getUpperBound(v9);
      if (v87 >= HIDWORD(v87))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = &v86[16 * v87];
      *v15 = UpperBound;
      v15[1] = v14;
      LODWORD(v87) = v87 + 1;
      a2 += 8;
      v8 -= 8;
    }

    while (v8);
    v16 = v85;
    v83 = v85;
    v84 = 0x400000000;
    v80 = v82;
    v81 = 0x400000000;
    NumResults = mlir::AffineMap::getNumResults(a1);
    if (HIDWORD(v84) < NumResults)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (HIDWORD(v81) < mlir::AffineMap::getNumResults(a1))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    Results = mlir::AffineMap::getResults(a1);
    if (v19)
    {
      v20 = Results;
      for (i = 8 * v19; i; i -= 8)
      {
        v24 = *v20;
        v77 = *v20;
        if (mlir::AffineExpr::getKind(&v77) == 5)
        {
          mlir::AffineConstantExpr::AffineConstantExpr(&v77, v24);
          if (!v77)
          {
            goto LABEL_25;
          }
        }

        else
        {
          mlir::AffineConstantExpr::AffineConstantExpr(&v77, 0);
          if (!v77)
          {
LABEL_25:
            NumDims = mlir::AffineMap::getNumDims(a1);
            NumSymbols = mlir::AffineMap::getNumSymbols(a1);
            BoundForAffineExpr = mlir::getBoundForAffineExpr(v24, NumDims, NumSymbols, v89, v90, v86, v87, 0);
            if (v84 >= HIDWORD(v84))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v4 = v4 & 0xFFFFFFFFFFFFFF00 | v32;
            v33 = (v83 + 16 * v84);
            *v33 = BoundForAffineExpr;
            v33[1] = v4;
            LODWORD(v84) = v84 + 1;
            v34 = mlir::AffineMap::getNumDims(a1);
            v35 = mlir::AffineMap::getNumSymbols(a1);
            v27 = mlir::getBoundForAffineExpr(v24, v34, v35, v89, v90, v86, v87, 1);
            v28 = v81;
            if (v81 >= HIDWORD(v81))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v16 & 0xFFFFFFFFFFFFFF00 | v36;
            v22 = v16;
            goto LABEL_18;
          }
        }

        Value = mlir::AffineConstantExpr::getValue(&v77);
        if (v84 >= HIDWORD(v84))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v5 = v5 & 0xFFFFFFFFFFFFFF00 | 1;
        v26 = (v83 + 16 * v84);
        *v26 = Value;
        v26[1] = v5;
        LODWORD(v84) = v84 + 1;
        v27 = mlir::AffineConstantExpr::getValue(&v77);
        v22 = a2 & 0xFFFFFFFFFFFFFF00 | 1;
        v28 = v81;
        if (v81 >= HIDWORD(v81))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        a2 = a2 & 0xFFFFFFFFFFFFFF00 | 1;
LABEL_18:
        v23 = (v80 + 16 * v28);
        *v23 = v27;
        v23[1] = v22;
        LODWORD(v81) = v81 + 1;
        ++v20;
      }
    }

    v77 = v79;
    v78 = 0x400000000;
    v37 = mlir::AffineMap::getResults(a1);
    if (v38)
    {
      v39 = v37;
      v40 = (v37 + 8 * v38);
      if (a4)
      {
        v41 = 0;
        do
        {
          AffineConstantExpr = *v39;
          v76 = *v39;
          v43 = v80;
          if (*(v83 + 16 * v41 + 8) == 1)
          {
            v44 = (v80 + 16 * v41);
            if (*(v44 + 8) == 1)
            {
              v45 = *(v83 + 2 * v41);
              if (v45 == *v44)
              {
                Context = mlir::AffineExpr::getContext(&v76);
                AffineConstantExpr = mlir::getAffineConstantExpr(v45, Context, v47);
                v76 = AffineConstantExpr;
                v43 = v80;
              }
            }
          }

          v48 = &v43[16 * v41];
          v49 = v48[8];
          if ((v49 & 1) != 0 && v84)
          {
            v50 = 0;
            v51 = v83 + 16 * v41;
            v52 = 16 * v84;
            v53 = v83 + 8;
            v54 = v43 + 8;
            while (1)
            {
              if (v41 != v50 && (*v53 & 1) != 0)
              {
                v55 = *(v53 - 1);
                if (v55 > *v48 || v55 >= *v48 && (*v54 != 1 || v51[8] != v49 || !v51[8] || *v51 != *v48 || v50 <= v41 || v55 != *(v54 - 1)))
                {
                  break;
                }
              }

              ++v50;
              v53 += 16;
              v54 += 16;
              v52 -= 16;
              if (!v52)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
LABEL_34:
            if (v78 >= HIDWORD(v78))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v77 + v78) = AffineConstantExpr;
            LODWORD(v78) = v78 + 1;
          }

          ++v41;
          ++v39;
        }

        while (v39 != v40);
      }

      else
      {
        v56 = 0;
        do
        {
          v57 = *v39;
          v76 = *v39;
          v58 = v83;
          if (*(v83 + 16 * v56 + 8) == 1)
          {
            v59 = (v80 + 16 * v56);
            if (*(v59 + 8) == 1)
            {
              v60 = *(v83 + 2 * v56);
              if (v60 == *v59)
              {
                v61 = mlir::AffineExpr::getContext(&v76);
                v57 = mlir::getAffineConstantExpr(v60, v61, v62);
                v76 = v57;
                v58 = v83;
              }
            }
          }

          v63 = &v58[16 * v56];
          v64 = v63[8];
          if ((v64 & 1) != 0 && v81)
          {
            v65 = 0;
            v66 = v80;
            v67 = v80 + 16 * v56;
            v68 = v58 + 8;
            while (1)
            {
              if (v56 != v65)
              {
                v69 = *(v66 + 8);
                if ((v69 & 1) != 0 && (*v63 > *v66 || *v63 >= *v66 && (*v68 != 1 || v64 != v67[8] || !v67[8] || *v63 != *v67 || v69 != 1 || v65 <= v56 || *(v68 - 1) != *v66)))
                {
                  break;
                }
              }

              ++v65;
              v66 += 2;
              v68 += 16;
              if (v66 == (v80 + 16 * v81))
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
LABEL_58:
            if (v78 >= HIDWORD(v78))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v77 + v78) = v57;
            LODWORD(v78) = v78 + 1;
          }

          ++v56;
          ++v39;
        }

        while (v39 != v40);
      }
    }

    v70 = mlir::AffineMap::getNumDims(a1);
    v71 = mlir::AffineMap::getNumSymbols(a1);
    v72 = v77;
    v73 = v78;
    v74 = mlir::AffineMap::getContext(a1);
    *a1 = mlir::AffineMap::get(v70, v71, v72, v73, v74);
    if (v77 != v79)
    {
      free(v77);
    }

    if (v80 != v82)
    {
      free(v80);
    }

    if (v83 != v85)
    {
      free(v83);
    }

    if (v86 != v88)
    {
      free(v86);
    }

    if (v89 != v91)
    {
      free(v89);
    }
  }
}

uint64_t getLowerBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v1 + 64;
  Value = *(v1 + 2 * ((*(v1 + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (!mlir::AffineMap::isSingleConstant(&Value))
  {
    return 0;
  }

  Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1)];
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::getSingleConstantResult(&Value);
}

unint64_t getUpperBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (v1 && (v2 = v1, v3 = v1 + 64, Value = *(v1 + 2 * ((*(v1 + 11) >> 23) & 1) + 10), Value = mlir::AffineMapAttr::getValue(&Value), mlir::AffineMap::isSingleConstant(&Value)))
  {
    Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1)];
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (mlir::AffineMap::isSingleConstant(&Value))
    {
      Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 16];
      Value = mlir::AffineMapAttr::getValue(&Value);
      SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
      Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 16];
      Value = mlir::AffineMapAttr::getValue(&Value);
      v5 = mlir::AffineMap::getSingleConstantResult(&Value);
      Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1)];
      Value = mlir::AffineMapAttr::getValue(&Value);
      v6 = v5 + ~mlir::AffineMap::getSingleConstantResult(&Value);
      v13 = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 8];
      mlir::IntegerAttr::getValue(&v13, &Value);
      if (v12 > 0x40)
      {
        v7 = *Value;
        MEMORY[0x259C63150]();
      }

      else if (v12)
      {
        v7 = Value << -v12 >> -v12;
      }

      else
      {
        v7 = 0;
      }

      v8 = SingleConstantResult + ~(v6 % v7);
    }

    else
    {
      Value = *&v3[16 * ((*(v2 + 11) >> 23) & 1) + 16];
      Value = mlir::AffineMapAttr::getValue(&Value);
      v8 = mlir::AffineMap::getSingleConstantResult(&Value) - 1;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(v8) = 0;
    v9 = 0;
  }

  return v9 | v8;
}

void mlir::OpBuilder::create<mlir::affine::AffineForOp,long long &,long long &,long long &,std::nullopt_t const&,llvm::function_ref<void ()(mlir::OpBuilder&,mlir::Location,mlir::Value,mlir::ValueRange)> &>(mlir::MLIRContext **a1, uint64_t a2, mlir::AffineMap **a3, mlir::AffineMap **a4)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v17, a2, v9);
    v11 = *a3;
    v12 = *a4;
    mlir::ValueRange::ValueRange(&v16, 0, 0);
    mlir::AffineMap::getConstantMap(v11, *a1, v13);
    mlir::AffineMap::getConstantMap(v12, *a1, v14);
    mlir::ValueRange::ValueRange(v19, 0, 0);
    mlir::ValueRange::ValueRange(&v18, 0, 0);
    mlir::affine::AffineForOp::build();
  }

  mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(v17, v19, &v18);
}

void mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::Value &,mlir::AffineMap,mlir::Value &,mlir::AffineMap,long long &,std::nullopt_t const&,llvm::function_ref<void ()(mlir::OpBuilder&,mlir::Location,mlir::Value,mlir::ValueRange)> &>(uint64_t a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v6 = a2;
  Context = mlir::Attribute::getContext(&v6);
  v4 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, Context);
  if (v5)
  {
    mlir::OperationState::OperationState(v8, a2, v4);
    mlir::ValueRange::ValueRange(v9, 0, 0);
    mlir::affine::AffineForOp::build();
  }

  mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(v8, v9, v7);
}

uint64_t deduplicateAndResolveOperands(mlir::AsmParser *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v12, v13);
  if (!a3)
  {
    return 1;
  }

  v15 = IndexType;
  v16 = &a2[6 * a3];
  v35 = v16;
  while (1)
  {
    v36 = v38;
    v37 = 0x600000000;
    v17 = *(a2 + 2);
    if (v17)
    {
      v18 = *a2;
      v19 = 32 * v17;
      do
      {
        if (((*(*a1 + 728))(a1, v18, v15, &v36) & 1) == 0)
        {
          v32 = 1;
          v33 = v36;
          if (v36 != v38)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        v18 += 32;
        v19 -= 32;
      }

      while (v19);
      if (!v37)
      {
        goto LABEL_23;
      }

      v20 = v36;
      v21 = v36 + 8 * v37;
      do
      {
        v24 = *v20;
        v25 = *a4;
        v26 = *(a4 + 8);
        v27 = *a4;
        if (v26)
        {
          v28 = 8 * v26;
          v27 = *a4;
          while (*v27 != v24)
          {
            v27 += 8;
            v28 -= 8;
            if (!v28)
            {
              v27 = &v25[8 * v26];
              break;
            }
          }
        }

        v29 = ((v27 - v25) >> 3);
        if (v26 == v29)
        {
          if (v26 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *&v25[8 * v26] = v24;
          ++*(a4 + 8);
        }

        Context = mlir::AsmParser::getContext(a1);
        if (a6 == 6)
        {
          AffineDimExpr = mlir::getAffineDimExpr(v29, Context, v31);
          v23 = *(a5 + 8);
          if (v23 >= *(a5 + 12))
          {
LABEL_21:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineSymbolExpr(v29, Context, v31);
          v23 = *(a5 + 8);
          if (v23 >= *(a5 + 12))
          {
            goto LABEL_21;
          }
        }

        *(*a5 + 8 * v23) = AffineDimExpr;
        ++*(a5 + 8);
        v20 += 8;
      }

      while (v20 != v21);
      v32 = 0;
      v16 = v35;
      v33 = v36;
      if (v36 != v38)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_23:
      v32 = 0;
      v33 = v36;
      if (v36 != v38)
      {
LABEL_24:
        free(v33);
      }
    }

LABEL_25:
    if (v32)
    {
      return 0;
    }

    a2 += 6;
    if (a2 == v16)
    {
      return 1;
    }
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseAffineMapWithMinMax(mlir::OpAsmParser &,mlir::OperationState &,anonymous namespace::MinMaxKind)::$_0>(uint64_t *a1)
{
  v50[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1[1])
  {
    v3 = "max";
  }

  else
  {
    v3 = "min";
  }

  if ((*(*v2 + 408))(v2, v3, 3))
  {
    *(a1[2] + 8) = 0;
    v44 = 0;
    if ((*(**a1 + 736))())
    {
      mlir::NamedAttrList::erase(a1[4] + 112, *a1[3], *(a1[3] + 8));
      v4 = a1[5];
      Value = mlir::AffineMapAttr::getValue(&v44);
      Results = mlir::AffineMap::getResults(&Value);
      llvm::SmallVectorImpl<long long>::insert<long long const*,void>(v4, *v4 + 8 * *(v4 + 8), Results, &Results[8 * v6]);
      v7 = a1[2];
      v8 = *v7;
      v9 = *(v7 + 2);
      Value = mlir::AffineMapAttr::getValue(&v44);
      NumDims = mlir::AffineMap::getNumDims(&Value);
      if (v9 >= NumDims)
      {
        v11 = NumDims;
      }

      else
      {
        v11 = v9;
      }

      Value = v50;
      v49 = 0x100000000;
      if (v11 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v11)
      {
        memcpy(v50, v8, 32 * v11);
        v28 = v49;
      }

      else
      {
        v28 = 0;
      }

      LODWORD(v49) = v28 + v11;
      v45 = mlir::AffineMapAttr::getValue(&v44);
      v29 = mlir::AffineMap::getNumDims(&v45);
      v45 = v47;
      v46 = 0x100000000;
      v30 = v9 - v29;
      if (v30 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = 0;
      if (v9 != v29)
      {
        memcpy(v45, &v8[32 * v29], 32 * v30);
        v31 = v46;
      }

      LODWORD(v46) = v31 + v30;
      v32 = a1[6];
      v43 = mlir::AffineMapAttr::getValue(&v44);
      NumResults = mlir::AffineMap::getNumResults(&v43);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(v32, NumResults, &Value);
      v34 = a1[7];
      v43 = mlir::AffineMapAttr::getValue(&v44);
      v35 = mlir::AffineMap::getNumResults(&v43);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(v34, v35, &v45);
      v36 = a1[8];
      v43 = mlir::AffineMapAttr::getValue(&v44);
      v37 = mlir::AffineMap::getNumResults(&v43);
      v38 = *(v36 + 8);
      if (v38 >= *(v36 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*v36 + 4 * v38) = v37;
      ++*(v36 + 8);
      if (v45 != v47)
      {
        free(v45);
      }

      if (Value != v50)
      {
        free(Value);
      }

      return 1;
    }

    return 0;
  }

  v12 = *a1;
  v13 = a1[6];
  v14 = *(v13 + 8);
  if (v14 >= *(v13 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>();
  }

  v15 = (*v13 + 48 * v14);
  *v15 = v15 + 2;
  v15[1] = 0x100000000;
  LODWORD(v15) = *(v13 + 8) + 1;
  *(v13 + 8) = v15;
  v16 = *v13 + 48 * v15 - 48;
  v17 = a1[7];
  v18 = *(v17 + 8);
  if (v18 >= *(v17 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>();
  }

  v19 = (*v17 + 48 * v18);
  *v19 = v19 + 2;
  v19[1] = 0x100000000;
  LODWORD(v19) = *(v17 + 8) + 1;
  *(v17 + 8) = v19;
  v20 = *v17 + 48 * v19 - 48;
  v21 = a1[5];
  v22 = *(v21 + 8);
  if (v22 >= *(v21 + 12))
  {
    v39 = v12;
    v40 = v16;
    v41 = v20;
    v42 = llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(v21);
    if (((*(*v39 + 744))(v39, v40, v41, v42) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *v21;
    *(*v21 + 8 * v22) = 0;
    v24 = v22 + 1;
    *(v21 + 8) = v24;
    if (((*(*v12 + 744))(v12, v16, v20, v23 + 8 * v24 - 8) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = a1[8];
  v26 = *(v25 + 8);
  if (v26 >= *(v25 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = 1;
  *(*v25 + 4 * v26) = 1;
  ++*(v25 + 8);
  return result;
}

unsigned int *llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(unsigned int *result, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[2];
  if (v6 + a2 > result[3])
  {
    v11 = *result + 48 * v6;
    if (*result > a3 || v11 <= a3)
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow();
  }

  v7 = result[2];
  if (a2)
  {
    v8 = (*result + 48 * v7);
    v9 = a2;
    do
    {
      *v8 = v8 + 2;
      v8[1] = 0x100000000;
      if (v8 != a3)
      {
        v10 = *(a3 + 8);
        if (v10)
        {
          if (v10 >= 2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          result = memcpy(v8 + 2, *a3, 0x20uLL);
          *(v8 + 2) = v10;
        }
      }

      v8 += 6;
      --v9;
    }

    while (v9);
    v7 = v5[2];
  }

  v5[2] = v7 + v4;
  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_16;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = result;
        memmove(*result, *a2, 32 * v7 - 4);
        result = v9;
      }

      *(result + 8) = v7;
      goto LABEL_16;
    }

    if (*(result + 12) < v7)
    {
      *(result + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v10 = result;
      v11 = a2;
      memmove(*result, *a2, 32 * v8 - 4);
      a2 = v11;
      v12 = *v6 - v8;
      if (!v12)
      {
LABEL_15:
        result = v10;
        *(v10 + 8) = v7;
LABEL_16:
        *v6 = 0;
        return result;
      }
    }

    else
    {
      v10 = result;
      v8 = 0;
      v12 = *v6;
      if (!*v6)
      {
        goto LABEL_15;
      }
    }

    memcpy((*v10 + 32 * v8), *a2 + 32 * v8, 32 * v12);
    goto LABEL_15;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 8 * v1) = 0;
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 8 * v2 - 8;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *a4;
  *&v12 = *a2;
  *(&v12 + 1) = v5;
  *&v13 = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v13 + 1) = 0;
  LODWORD(v14) = 0;
  BYTE4(v14) = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6 >= *(a1 + 12))
  {
    if (v7 > &v12 || v7 + 40 * v6 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = v7 + 40 * *(a1 + 8);
  v9 = v12;
  v10 = v13;
  *(v8 + 32) = v14;
  *v8 = v9;
  *(v8 + 16) = v10;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 40 * v8 - 40;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model(void *a1, uint64_t a2)
{
  v12[6] = *MEMORY[0x277D85DE8];
  {
    mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model();
  }

  v4 = mlir::detail::TypeIDResolver<mlir::affine::AffineDmaStartOp,void>::resolveTypeID(void)::id;
  mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>(&v10);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_start", 0x10, a2, v4, &v10);
  v5 = v10;
  if (v11)
  {
    v6 = 16 * v11;
    v7 = (v10 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v10;
  }

  if (v5 != v12)
  {
    free(v5);
  }

  *a1 = &unk_28688C588;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::foldHook()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  if (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = v5[0];
      if ((v6 & 2) != 0)
      {
        v4 = v5;
      }

      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v4, v0, v1, v2, v3);
    }

    if (((llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2) & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

const char *llvm::getTypeName<mlir::affine::AffineDmaStartOp>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineDmaStartOp]";
  v6 = 80;
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getAffineMapAttrForMemRef;
  {
    v6 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::ZeroResults<mlir::affine::AffineDmaStartOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDmaStartOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineDmaStartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDmaStartOp>>();
    v3 = v6;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v5, v4);
}

uint64_t mlir::affine::AffineDmaStartOp::getAffineMapAttrForMemRef(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*(v3 + 72) + 24) == a2)
  {
    Context = mlir::Attribute::getContext((v3 + 24));
    v13 = 261;
    v8 = "src_map";
  }

  else
  {
    v12[0] = mlir::Operation::getInherentAttr(v3, "src_map", 7);
    v12[0] = mlir::AffineMapAttr::getValue(v12);
    v5 = *(*(*a1 + 72) + 32 * (mlir::AffineMap::getNumInputs(v12) + 1) + 24);
    Context = mlir::Attribute::getContext((*a1 + 24));
    v13 = 261;
    if (v5 == a2)
    {
      v8 = "dst_map";
    }

    else
    {
      v8 = "tag_map";
    }
  }

  v12[0] = v8;
  v12[1] = 7;
  v9 = mlir::StringAttr::get(Context, v12, v7);
  InherentAttr = mlir::Operation::getInherentAttr(*a1, v8, 7);
  mlir::NamedAttribute::NamedAttribute(&v14, v9, InherentAttr);
  return v14;
}

const char *llvm::getTypeName<mlir::affine::AffineMapAccessInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::AffineMapAccessInterface]";
  v6 = 88;
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