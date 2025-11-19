uint64_t mlir::mps::NonMaximumSuppressionOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    return 1;
  }

  v13[0] = *(a1 + 32);
  v15[0] = mlir::IntegerAttr::getType(v13);
  if (mlir::Type::isUnsignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.non_maximum_suppression' op attribute 'max_boxes' failed to satisfy constraint: 32-bit unsigned integer attribute";
  v14 = 259;
  mlir::emitError(a2, v13, v15);
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

uint64_t mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::IntegerType::get(**a1, 32, 1u);
  v5 = mlir::IntegerType::get(**a1, 32, 2u);
  v6 = *a2;
  v14[0] = **a2;
  v7 = *(a1 + 8);
  v8 = mlir::RankedTensorType::get(v6, *(a2 + 8), v4, 0);
  v9 = *(v7 + 8);
  if (v9 >= *(v7 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v7 + 8 * v9) = v8;
  ++*(v7 + 8);
  v10 = *(a1 + 8);
  v11 = mlir::RankedTensorType::get(v14, 1, v5, 0);
  v12 = *(v10 + 8);
  if (v12 >= *(v10 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v10 + 8 * v12) = v11;
  ++*(v10 + 8);
  return 1;
}

uint64_t mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase::getMaxBoxes(mlir::mps::detail::NonMaximumSuppressionOpGenericAdaptorBase *this)
{
  v7 = *(this + 4);
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

uint64_t mlir::mps::NonMaximumSuppressionOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::mps::NonMaximumSuppressionOp::verify(mlir::Operation **this)
{
  v96 = *MEMORY[0x277D85DE8];
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
  v86[0] = v2;
  v86[1] = v13;
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
    v45 = v19[1];
    v84 = v14;
    v85 = v45;
    if (mlir::ShapedType::hasRank(v86))
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_29:
  v84 = v14;
  v85 = 0;
  if (mlir::ShapedType::hasRank(v86))
  {
LABEL_30:
    Shape = mlir::ShapedType::getShape(v86);
    mlir::ShapedType::getShape(v86);
    if (v26 != 3 || (v27 = Shape[2], v27 != 0x8000000000000000) && v27 != 4)
    {
      v82[0] = "boxes tensor must have shape [N, B, 4]";
      v83 = 259;
      mlir::OpState::emitOpError(this, v82, v87);
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
      if (v87[0])
      {
        mlir::InFlightDiagnostic::report(v87);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v93;
          v39 = __p;
          if (v93 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v93 = v37;
          operator delete(v39);
        }

        v40 = v90;
        if (!v90)
        {
          goto LABEL_130;
        }

        v41 = v91;
        v42 = v90;
        if (v91 == v90)
        {
          goto LABEL_129;
        }

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
        goto LABEL_128;
      }

      return v36;
    }

    v28 = Shape[1];
    v29 = *Shape != 0x8000000000000000;
    if (*Shape == 0x8000000000000000)
    {
      v30 = 0;
    }

    else
    {
      v30 = *Shape;
    }

    v31 = v28 != 0x8000000000000000;
    if (v28 == 0x8000000000000000)
    {
      v32 = 0;
    }

    else
    {
      v32 = Shape[1];
    }

    if (!mlir::ShapedType::hasRank(&v84))
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  if (!mlir::ShapedType::hasRank(&v84))
  {
LABEL_40:
    v33 = 0;
    v34 = 1;
    v35 = *this;
    if (*(*this + 17) == 4)
    {
      return 1;
    }

LABEL_88:
    v57 = *(*(v35 + 9) + 88);
    if (!v57)
    {
      return 1;
    }

    v79 = v34;
    v58 = (*(v57 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v58)
    {
      goto LABEL_102;
    }

    v59 = *v58;
    {
      v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      if (!v62)
      {
        goto LABEL_102;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      if (!v62)
      {
        goto LABEL_102;
      }
    }

    v63 = v61;
    v64 = v62;
    do
    {
      v65 = v64 >> 1;
      v66 = &v63[2 * (v64 >> 1)];
      v68 = *v66;
      v67 = v66 + 2;
      v64 += ~(v64 >> 1);
      if (v68 < v60)
      {
        v63 = v67;
      }

      else
      {
        v64 = v65;
      }
    }

    while (v64);
    if (v63 != &v61[2 * v62] && *v63 == v60)
    {
      v77 = v63[1];
      v80 = v58;
      v81 = v77;
      if (!mlir::ShapedType::hasRank(&v80))
      {
        return 1;
      }

      goto LABEL_103;
    }

LABEL_102:
    v80 = v58;
    v81 = 0;
    if (!mlir::ShapedType::hasRank(&v80))
    {
      return 1;
    }

LABEL_103:
    v69 = mlir::ShapedType::getShape(&v80);
    mlir::ShapedType::getShape(&v80);
    if (v70 == 2 && ((v29 & 1) == 0 || *v69 == 0x8000000000000000 || *v69 == v30) && ((v31 & 1) == 0 || *v69 == 0x8000000000000000 || v69[1] == v32))
    {
      if (!v33 && !v79)
      {
        v82[0] = "when class_indices tensor is provided, scores tensor must have shape [N, B, 1]";
        v83 = 259;
        mlir::OpState::emitOpError(this, v82, v87);
        v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v87);
        return v36;
      }

      return 1;
    }

    v82[0] = "class_indices tensor must have shape [N, B]";
    v83 = 259;
    mlir::OpState::emitOpError(this, v82, v87);
    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
    if (v87[0])
    {
      mlir::InFlightDiagnostic::report(v87);
    }

    if (v95 == 1)
    {
      if (v94 != &v95)
      {
        free(v94);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v93;
        v73 = __p;
        if (v93 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v93 = v71;
        operator delete(v73);
      }

      v40 = v90;
      if (!v90)
      {
        goto LABEL_130;
      }

      v74 = v91;
      v42 = v90;
      if (v91 == v90)
      {
LABEL_129:
        v91 = v40;
        operator delete(v42);
LABEL_130:
        if (v88 != &v89)
        {
          free(v88);
        }

        return v36;
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

      while (v74 != v40);
LABEL_128:
      v42 = v90;
      goto LABEL_129;
    }

    return v36;
  }

LABEL_60:
  v46 = mlir::ShapedType::getShape(&v84);
  mlir::ShapedType::getShape(&v84);
  if (v47 == 3 && (!v29 || *v46 == 0x8000000000000000 || *v46 == v30))
  {
    v48 = v46[1];
    if (!v31 || v48 == 0x8000000000000000 || v48 == v32)
    {
      if (*v46 != 0x8000000000000000)
      {
        v30 = *v46;
      }

      v55 = v48 != 0x8000000000000000;
      if (v48 != 0x8000000000000000)
      {
        v32 = v46[1];
      }

      v56 = v46[2];
      v34 = v56 == 0x8000000000000000;
      LOBYTE(v31) = v55 | v31;
      LOBYTE(v29) = (*v46 != 0x8000000000000000) | v29;
      v33 = v56 == 1;
      v35 = *this;
      if (*(*this + 17) == 4)
      {
        return 1;
      }

      goto LABEL_88;
    }
  }

  v82[0] = "scores tensor must have shape [N, B, K]";
  v83 = 259;
  mlir::OpState::emitOpError(this, v82, v87);
  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
  if (v87[0])
  {
    mlir::InFlightDiagnostic::report(v87);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v49 = __p;
    if (__p)
    {
      v50 = v93;
      v51 = __p;
      if (v93 != __p)
      {
        do
        {
          v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
        }

        while (v50 != v49);
        v51 = __p;
      }

      v93 = v49;
      operator delete(v51);
    }

    v40 = v90;
    if (!v90)
    {
      goto LABEL_130;
    }

    v52 = v91;
    v42 = v90;
    if (v91 == v90)
    {
      goto LABEL_129;
    }

    do
    {
      v54 = *--v52;
      v53 = v54;
      *v52 = 0;
      if (v54)
      {
        MEMORY[0x259C63150](v53, 0x1000C8077774924);
      }
    }

    while (v52 != v40);
    goto LABEL_128;
  }

  return v36;
}

uint64_t mlir::mps::ACosOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ACoshOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ASinOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ASinhOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATan2Op::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATanOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATanhOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AbsoluteOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AbsoluteSquareOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AddOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AndOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AssignVariableOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BandPartOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BatchToSpaceOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddGradOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseAndOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseLeftShiftOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseNotOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseOrOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwisePopcountOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseRightShiftOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseXorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BroadcastGradientArgsOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BroadcastToOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CallOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CastOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CeilOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ClampOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ColToImOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConcatOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConjugateOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConstantOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DDataGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DDataGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CosOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CoshOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CostVolumeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CreateComplexOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CreateTextureTensorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CropOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CropResizeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeMaximumOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeMinimumOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeProductOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeSumOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DegammaOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthToSpace2DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeLUTOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DimensionSizeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DiracOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DivideOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DynamicShapeCastOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::EluOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::EqualToOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ErfOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExpandDimsOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentBase10Op::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentBase2Op::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FastFourierTransformOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Flatten2DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FloorDivideOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FloorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GRUGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GRUOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherAlongAxisOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherNDOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GeluOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GetCoordOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GreaterThanOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GreaterThanOrEqualToOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::HammingDistanceOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IdentityOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ImToColOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ImaginaryPartOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::InitRandomPhiloxStateOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::InstanceNormOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsFiniteOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsInfiniteOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsNaNOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LPNormOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LSTMGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LSTMOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LeakyReluOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LessThanOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LessThanOrEqualToOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionWeightGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmBase10Op::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmBase2Op::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatMulOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixDecompositionLUOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixInverseOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixSolverLUOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MaximumOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MinimumOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ModuloOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MultiplyOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NReluOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NandOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NegativeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NonZeroOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NormalizationOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NotEqualToOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NotOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::OneHotOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::OrOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PReluOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PadGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PadOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PermuteOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PlaceholderOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolAvgGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolAvgOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolL2NormGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolL2NormOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolMaxGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolMaxOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PowerOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PruningGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PruningOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::QuantizeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RandomNormalOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RandomUniformOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RankOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReadDataFromFileOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReadVariableOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RealPartOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RealToHermiteanFFTOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReciprocalOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReciprocalSquareRootOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionAndOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionArgMaxOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionArgMinOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionLogSumExpOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionMaxOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionMeanOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionMinOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionOrOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionProdOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionSumOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionVarianceOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReinterpretCastOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Relu6Op::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReluGradOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReluOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReshapeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ResizeGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ResizeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReverseOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RintOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RoundOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SampleGridDataGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SampleGridOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ScatterAlongAxisOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ScatterNDOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ScatterOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SelectOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ShapeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SigmoidGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SigmoidGradientWithSigmoidOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SigmoidHardOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SigmoidOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SignOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SignbitOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SinOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SingleGateRNNOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SinhOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SizeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SliceOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SoftmaxOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SoftplusOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SoftplusParametricOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SoftsignOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SortOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SpaceToBatchOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SpaceToDepth2DOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SplitOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SquareOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SquareRootOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SqueezeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::StencilOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::StridedSliceGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::StridedSliceOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::StridedSliceUpdateOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SubtractOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::SwishOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TanOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TanhOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TileGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TileOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TopKGradientOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TopKOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TransposeOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TruncateOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::TypeConstraintOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::UnrealizedFoldOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::UpdateRandomStateOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::VariableFromTensorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::XnorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::XorOp::canonicalize(uint64_t a1, mlir::PatternRewriter *a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::ExternalCanonicalizeInterface::externalCanonicalize(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ACosOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ACoshOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ASinOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ASinhOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATan2Op::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATanOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATanhOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AbsoluteOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AbsoluteSquareOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AddOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AndOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AssignVariableOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 40), *(a2 + 48), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BandPartOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BatchToSpaceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddGradOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseAndOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseLeftShiftOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseNotOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseOrOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwisePopcountOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseRightShiftOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseXorOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BroadcastGradientArgsOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BroadcastToOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CallOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 56), *(a2 + 64), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CastOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CeilOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ClampOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ColToImOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 80), *(a2 + 88));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConcatOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConjugateOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DDataGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DDataGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CosOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CoshOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CostVolumeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CreateComplexOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CreateTextureTensorOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CropOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CropResizeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeMaximumOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeMinimumOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeProductOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeSumOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DegammaOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthToSpace2DOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 88), *(a2 + 96));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 88), *(a2 + 96));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 88), *(a2 + 96));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 80), *(a2 + 88));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 80), *(a2 + 88));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 80), *(a2 + 88));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeLUTOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DimensionSizeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DiracOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DivideOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DynamicShapeCastOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::EluOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::EqualToOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ErfOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExpandDimsOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentBase10Op::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentBase2Op::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FastFourierTransformOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Flatten2DOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FloorDivideOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FloorOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GRUGradientOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 120), *(a2 + 128), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GRUOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 120), *(a2 + 128), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherAlongAxisOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherNDOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GeluOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GetCoordOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GreaterThanOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GreaterThanOrEqualToOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::HammingDistanceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IdentityOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ImToColOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 80), *(a2 + 88));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ImaginaryPartOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::InitRandomPhiloxStateOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::InstanceNormOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsFiniteOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsInfiniteOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsNaNOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LPNormOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LSTMGradientOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 128), *(a2 + 136), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LSTMOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 128), *(a2 + 136), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LeakyReluOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LessThanOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LessThanOrEqualToOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionWeightGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmBase10Op::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmBase2Op::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatMulOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixDecompositionLUOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 40), *(a2 + 48), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixInverseOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixSolverLUOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MaximumOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MinimumOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ModuloOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MultiplyOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NReluOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NandOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NegativeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 64), *(a2 + 72), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NonZeroOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NorOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NormalizationOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NotEqualToOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NotOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::OneHotOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::OrOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PReluOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PadGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PadOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PermuteOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PlaceholderOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolAvgGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolAvgOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolL2NormGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolL2NormOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 96), *(a2 + 104));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolMaxGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 128), *(a2 + 136));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PoolMaxOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v5)
    {
      v7 = v5;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v5);
      return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v7, *(a2 + 112), *(a2 + 120), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PowerOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PruningGradientOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::PruningOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::QuantizeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RandomNormalOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 72), *(a2 + 80));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 88), *(a2 + 96));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RandomUniformOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RankOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReadDataFromFileOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 64), *(a2 + 72));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReadVariableOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RealPartOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::RealToHermiteanFFTOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReciprocalOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReciprocalSquareRootOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 40), *(a2 + 48));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionAndOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionArgMaxOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionArgMinOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionLogSumExpOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionMaxOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionMeanOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionMinOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 56), *(a2 + 64));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ReductionOrOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(*a1))
  {
    if (v3)
    {
      v5 = v3;
      InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(v3);
      return mlir::ExternalFoldInterface::externalFold(&v5, *(a2 + 48), *(a2 + 56));
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}