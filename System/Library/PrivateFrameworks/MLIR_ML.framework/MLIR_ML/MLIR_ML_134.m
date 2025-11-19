uint64_t mlir::tensor::PackOp::verifyInvariants(mlir::tensor::PackOp *this)
{
  if (mlir::tensor::PackOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::PackOp::verify(this);
  }

  return 0;
}

BOOL mlir::tensor::PackOp::parse(mlir::tensor::PackOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v57[16] = *MEMORY[0x277D85DE8];
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v44[0] = v45;
  v44[1] = 1;
  v55 = v57;
  v56 = 0x400000000;
  v53[0] = &v54;
  v53[1] = 0x100000000;
  v42 = 0;
  v43 = 0;
  v50 = v52;
  v51 = 0x400000000;
  v41 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v38[0] = v39;
  v38[1] = 1;
  v36[1] = 1;
  v37 = 0;
  v35 = 0;
  v36[0] = &v37;
  v34[0] = &v35;
  v34[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v45, 1) & 1) == 0)
  {
    goto LABEL_50;
  }

  if ((*(*this + 408))(this, "padding_value", 13))
  {
    if (((*(*this + 280))(this) & 1) == 0)
    {
      goto LABEL_50;
    }

    v6 = (*(*this + 40))(this);
    v47 = 0uLL;
    *&v48 = 0;
    v7 = (*(*this + 712))(this, &v47, 1);
    if ((v7 & 0x100) != 0)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v56 >= HIDWORD(v56))
      {
        if (v55 > &v47 || &v55[32 * v56] <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = &v55[32 * v56];
      v9 = v48;
      *v8 = v47;
      *(v8 + 1) = v9;
      LODWORD(v56) = v56 + 1;
    }

    if (((*(*this + 104))(this) & 1) == 0)
    {
      goto LABEL_50;
    }

    *&v47 = 0;
    v10 = (*(*this + 552))(this, &v47);
    if ((v10 & 0x100) != 0)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_50;
      }

      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v53, v47);
    }

    if (((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*(*this + 408))(this, "outer_dims_perm", 15))
  {
    if (((*(*this + 136))(this) & 1) == 0 || (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(this, &v43, 0) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (v43)
    {
      v11 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
      *(v11 + 8) = v43;
    }
  }

  v49 = 257;
  if (((*(*this + 400))(this, "inner_dims_pos", 14, &v47) & 1) == 0 || ((*(*this + 136))(this) & 1) == 0 || (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(this, &v42, 0) & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v42)
  {
    v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
    *v12 = v42;
  }

  v49 = 257;
  if (((*(*this + 400))(this, "inner_tiles", 11, &v47) & 1) == 0)
  {
    goto LABEL_50;
  }

  if (((*(*this + 136))(this) & 1) == 0)
  {
    goto LABEL_50;
  }

  (*(*this + 40))(this);
  *&v47 = 0;
  if (!mlir::parseDynamicIndexList(this, &v50, &v41, &v47, 0))
  {
    goto LABEL_50;
  }

  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v13 + 16) = v41;
  v49 = 257;
  if (((*(*this + 400))(this, "into", 4, &v47) & 1) == 0)
  {
    goto LABEL_50;
  }

  v14 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v39, 1) & 1) == 0)
  {
    goto LABEL_50;
  }

  v31[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_50;
  }

  v15 = *(a2 + 1);
  *&v47 = this;
  *(&v47 + 1) = v31;
  *&v48 = a2;
  if (!mlir::tensor::PackOp::verifyInherentAttrs(v15, a2 + 112))
  {
    goto LABEL_50;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_50;
  }

  *&v47 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v47))
  {
    goto LABEL_50;
  }

  v37 = v47;
  if (((*(*this + 56))(this) & 1) == 0)
  {
    goto LABEL_50;
  }

  *&v47 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v47))
  {
    goto LABEL_50;
  }

  v35 = v47;
  v16 = v56;
  v17 = v51;
  v18 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v18 + 24) = 0x100000001;
  *(v18 + 32) = v16;
  *(v18 + 36) = v17;
  v33 = v35;
  if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = (*(*this + 16))(this);
    v32 = 257;
    (*(*this + 24))(&v47, this, v19, v31);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v47, "'dest' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v20, &v33);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
    v23 = v50;
    if (v50 == v52)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  *&v47 = llvm::cast<mlir::ShapedType,mlir::Type>(&v33);
  *(&v47 + 1) = v24;
  mlir::ShapedType::getElementType(&v47);
  v25 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v25, v26);
  mlir::OperationState::addTypes(a2, &v35, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v44, v36, v5, a2 + 16) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v38, v34, v14, a2 + 16) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v55, v53, v6, a2 + 16) & 1) == 0)
  {
    goto LABEL_50;
  }

  if (!v51)
  {
    v22 = 1;
    v23 = v50;
    if (v50 == v52)
    {
      goto LABEL_53;
    }

LABEL_52:
    free(v23);
    goto LABEL_53;
  }

  v28 = v50;
  v29 = 32 * v51;
  while (((*(*this + 728))(this, v28, IndexType, a2 + 16) & 1) != 0)
  {
    v28 += 32;
    v22 = 1;
    v29 -= 32;
    if (!v29)
    {
      goto LABEL_51;
    }
  }

LABEL_50:
  v22 = 0;
LABEL_51:
  v23 = v50;
  if (v50 != v52)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (v53[0] != &v54)
  {
    free(v53[0]);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  return v22;
}

uint64_t mlir::tensor::detail::PadOpGenericAdaptorBase::PadOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::PadOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::PadOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
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

  v10 = (this + 4 * v3 + 48);
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

uint64_t mlir::tensor::PadOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      return 1;
    }

    v18[0] = "'tensor.pad' op requires attribute 'static_low'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v14 = v24;
      v8 = v23;
      if (v24 == v23)
      {
LABEL_37:
        v24 = v6;
        operator delete(v8);
LABEL_38:
        if (v21 != &v22)
        {
          free(v21);
        }

        return v2;
      }

      do
      {
        v16 = *--v14;
        v15 = v16;
        *v14 = 0;
        if (v16)
        {
          MEMORY[0x259C63150](v15, 0x1000C8077774924);
        }
      }

      while (v14 != v6);
LABEL_36:
      v8 = v23;
      goto LABEL_37;
    }
  }

  else
  {
    v18[0] = "'tensor.pad' op requires attribute 'static_high'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v3 = __p;
      if (__p)
      {
        v4 = v26;
        v5 = __p;
        if (v26 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v26 = v3;
        operator delete(v5);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v7 = v24;
      v8 = v23;
      if (v24 == v23)
      {
        goto LABEL_37;
      }

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
      goto LABEL_36;
    }
  }

  return v2;
}

unint64_t mlir::tensor::PadOp::getODSOperandIndexAndLength(mlir::tensor::PadOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
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

  v12 = (16 * v2 + 4 * v5 + *this + 88);
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

uint64_t mlir::tensor::PadOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_56;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_55;
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
    goto LABEL_54;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "nofold", 6uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v34, a4);
      if (v34[0])
      {
        LODWORD(v32) = 3;
        v33 = 51;
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

      if ((v44 & 1) == 0)
      {
        return 0;
      }

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
LABEL_56:
        if (v35 != &v38)
        {
          free(v35);
        }

        return 0;
      }

      v18 = v40;
      v19 = v39;
      if (v40 == v39)
      {
LABEL_55:
        v40 = v17;
        operator delete(v19);
        goto LABEL_56;
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
LABEL_54:
      v19 = v39;
      goto LABEL_55;
    }

    *a1 = v8;
  }

  if (mlir::DictionaryAttr::get(&v31, "static_high", 0xBuLL))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  if (mlir::DictionaryAttr::get(&v31, "static_low", 0xAuLL))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  if (mlir::DictionaryAttr::get(&v31, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v31, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::tensor::PadOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "nofold", 6, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "static_high", 0xB, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_low", 0xA, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::tensor::PadOp::computePropertiesHash(void *a1)
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
  v9 = *(a1 + 28);
  v10 = __ROR8__(v9 + 12, 12);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::tensor::PadOp::getInherentAttr(int a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "static_high", 0xBuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        goto LABEL_14;
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
LABEL_14:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  if (__n != 6)
  {
    if (__n == 10 && !memcmp(__s1, "static_low", 0xAuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (*__s1 != 1868984174 || *(__s1 + 2) != 25708)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::PadOp::setInherentAttr(uint64_t result, _WORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 10)
  {
    if (a3 == 6)
    {
      if (*__s1 == 1868984174 && __s1[2] == 25708)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v7 = a4;
          }

          else
          {
            v7 = 0;
          }

          *result = v7;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 10)
    {
      result = memcmp(__s1, "static_low", 0xAuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 16) = 0;
      }
    }
  }

  else
  {
    if (a3 != 11)
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (a3 != 21)
        {
          return result;
        }

        result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
        if (result)
        {
          return result;
        }
      }

      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::classof();
      }

      return result;
    }

    result = memcmp(__s1, "static_high", 0xBuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  return result;
}

void mlir::tensor::PadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "nofold", 6uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "static_high", 0xBuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_low", 0xAuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::tensor::PadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "nofold", 6, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v9) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v10) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::PadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 3uLL)))
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
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::PadOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 16))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 3);
  }

  return result;
}

uint64_t mlir::tensor::PadOp::setNofold(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

void mlir::tensor::PadOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  v16 = *(a2 + 32);
  if (v16)
  {
    v16[6] = 1;
    v16[7] = a7;
    v16[8] = a10;
    v17 = *(a2 + 32);
    if (v17)
    {
      *(v17 + 16) = a11;
      v18 = *(a2 + 32);
      if (v18)
      {
        *(v18 + 8) = a12;
        if (!a13)
        {
          mlir::OperationState::addRegion(a2);
        }

        v19 = *(a2 + 32);
        if (!v19)
        {
          operator new();
        }

        *v19 = a13;
        mlir::OperationState::addRegion(a2);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void mlir::tensor::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  v13[6] = 1;
  v13[7] = a6;
  v13[8] = a8;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  v12[6] = 1;
  v12[7] = a7;
  v12[8] = a10;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::PadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = v1 + 64;
  if (v4)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v28[0] = *this;
      if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
      {
        return 0;
      }

      v28[0] = *this;
      if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) == 0)
      {
        return 0;
      }

      v28[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v3, "nofold", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v28) & 1) == 0)
      {
        return 0;
      }

      mlir::tensor::PadOp::verifyInvariantsImpl();
      return LOBYTE(v28[0]);
    }

    v26[0] = "requires attribute 'static_low'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
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

      v19 = v31;
      if (v31)
      {
        v20 = v32;
        v21 = v31;
        if (v32 != v31)
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
          v21 = v31;
        }

        v32 = v19;
        operator delete(v21);
      }

      v24 = v29;
      if (v29 != v30)
      {
LABEL_46:
        free(v24);
      }
    }
  }

  else
  {
    v26[0] = "requires attribute 'static_high'";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
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
      if (v31)
      {
        v12 = v32;
        v13 = v31;
        if (v32 != v31)
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
          v13 = v31;
        }

        v32 = v11;
        operator delete(v13);
      }

      v24 = v29;
      if (v29 != v30)
      {
        goto LABEL_46;
      }
    }
  }

  return v7;
}

uint64_t mlir::tensor::PadOp::verifyInvariants(mlir::tensor::PadOp *this)
{
  if (mlir::tensor::PadOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::PadOp::verify(this);
  }

  return 0;
}

void mlir::tensor::PadOp::parse(mlir::tensor::PadOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v12[16] = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v5 = v7;
  v6 = 1;
  v11[16] = v12;
  v11[17] = 0x400000000;
  v3 = 0;
  v4 = 0;
  v9 = v11;
  v10 = 0x400000000;
  operator new();
}

uint64_t mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::ParallelInsertSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
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

  v10 = (this + 4 * v3 + 48);
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

uint64_t mlir::tensor::ParallelInsertSliceOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      if (a1[5])
      {
        return 1;
      }

      v24[0] = "'tensor.parallel_insert_slice' op requires attribute 'static_strides'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
        }

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

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'tensor.parallel_insert_slice' op requires attribute 'static_sizes'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'tensor.parallel_insert_slice' op requires attribute 'static_offsets'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
      }

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
      goto LABEL_53;
    }
  }

  return v2;
}

unint64_t mlir::tensor::ParallelInsertSliceOp::getODSOperandIndexAndLength(mlir::tensor::ParallelInsertSliceOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
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

  v12 = (16 * v2 + 4 * v5 + *this + 88);
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

uint64_t mlir::tensor::ParallelInsertSliceOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
    if (mlir::DictionaryAttr::get(&v16, "static_offsets", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_sizes", 0xCuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_strides", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

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

void mlir::tensor::ParallelInsertSliceOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "static_offsets", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "static_sizes", 0xC, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_strides", 0xE, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::tensor::ParallelInsertSliceOp::computePropertiesHash(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = 0xB492B66FBE98F273 * a1[3];
  v11 = a1[4];
  v12 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v13 = __ROR8__(v10 - v11, 43) - 0x3C5A37A36834CED9 * *(a1 + 28) + __ROR8__(v12 ^ 0xFF51AFD7ED558CCDLL, 30);
  v14 = v10 + __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v12 + 20;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v24 = 0;
  v25 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) >> 47));
  v21[0] = v3;
  v21[1] = v6;
  v19 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v21, &v19, v22, v23, v9);
  v20 = v19;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v21, &v20, v16, v23, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v21, v20, v17, v23);
}

uint64_t mlir::tensor::ParallelInsertSliceOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *result = 0;
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 16) = 0;
      }
    }
  }

  return result;
}

void mlir::tensor::ParallelInsertSliceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 0xEuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::tensor::ParallelInsertSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 5uLL)))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 6)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 5);
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v23 = a4;
  v24 = a3;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = 0x100000001;
  *(v19 + 32) = a6;
  *(v19 + 36) = a8;
  *(v19 + 40) = a10;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a11;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = a13;
  return result;
}

void mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = a6;
  *(v15 + 36) = a8;
  *(v15 + 40) = a10;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = a8;
  *(v15 + 36) = a10;
  *(v15 + 40) = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
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
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v2) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) == 0)
    {
      return 0;
    }

    mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl();
    return LOBYTE(v35[0]);
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::parse(mlir::tensor::ParallelInsertSliceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v51[16] = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v38[0] = v39;
  v38[1] = 1;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  v49 = v51;
  v50 = 0x400000000;
  v33 = 0;
  v34 = 0;
  v46 = v48;
  v47 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v31 = 0;
  v32 = 0;
  v30[0] = &v31;
  v30[1] = 1;
  v28[1] = 1;
  v29 = 0;
  v28[0] = &v29;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v39, 1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = 257;
  if (((*(*this + 400))(this, "into", 4, v41) & 1) == 0)
  {
    goto LABEL_32;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v36, 1) & 1) == 0)
  {
    goto LABEL_32;
  }

  (*(*this + 40))(this);
  v41[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v49, &v34, v41, 0))
  {
    goto LABEL_32;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *v7 = v34;
  (*(*this + 40))(this);
  v41[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v46, &v33, v41, 0))
  {
    goto LABEL_32;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 8) = v33;
  (*(*this + 40))(this);
  v41[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v43, &v32, v41, 0))
  {
    goto LABEL_32;
  }

  v9 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v9 + 16) = v32;
  v27 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_32;
  }

  v10 = *(a2 + 1);
  v41[0] = this;
  v41[1] = &v27;
  v41[2] = a2;
  if (!mlir::tensor::ParallelInsertSliceOp::verifyInherentAttrs(v10, a2 + 112))
  {
    goto LABEL_32;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_32;
  }

  v41[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v41))
  {
    goto LABEL_32;
  }

  v31 = v41[0];
  v42 = 257;
  if (((*(*this + 400))(this, "into", 4, v41) & 1) == 0)
  {
    goto LABEL_32;
  }

  v41[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v41))
  {
    goto LABEL_32;
  }

  v29 = v41[0];
  v11 = v50;
  v12 = v47;
  v13 = v44;
  v14 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v14 + 24) = 0x100000001;
  *(v14 + 32) = v11;
  *(v14 + 36) = v12;
  *(v14 + 40) = v13;
  v15 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v15, v16);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v38, v30, v5, a2 + 16) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v35, v28, v6, a2 + 16) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (v50)
  {
    v18 = v49;
    v19 = 32 * v50;
    while (((*(*this + 728))(this, v18, IndexType, a2 + 16) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_23;
      }
    }

LABEL_32:
    v24 = 0;
LABEL_33:
    v25 = v43;
    if (v43 != v45)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_23:
  if (v47)
  {
    v20 = v46;
    v21 = 32 * v47;
    while (((*(*this + 728))(this, v20, IndexType, a2 + 16) & 1) != 0)
    {
      v20 += 32;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_32;
  }

LABEL_27:
  if (v44)
  {
    v22 = v43;
    v23 = 32 * v44;
    while (((*(*this + 728))(this, v22, IndexType, a2 + 16) & 1) != 0)
    {
      v22 += 32;
      v24 = 1;
      v23 -= 32;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  v24 = 1;
  v25 = v43;
  if (v43 != v45)
  {
LABEL_34:
    free(v25);
  }

LABEL_35:
  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  return v24;
}

uint64_t mlir::tensor::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::tensor::RankOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v14, *(a2 + 224), *(a2 + 232));
  if (v17 != 1)
  {
    if (!v17)
    {
      if (!HIDWORD(v17))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v17) = 1;
  }

  v13 = v5;
  IndexType = mlir::Builder::getIndexType(&v13, v7);
  v9 = __src;
  *__src = IndexType;
  v10 = v17;
  v11 = *(a2 + 72);
  if (v11 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v11), v9, 8 * v17);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v18)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::RankOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v14 = a1;
  **a11 = mlir::Builder::getIndexType(&v14, a2);
  return 1;
}

unint64_t mlir::tensor::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::tensor::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::tensor::RankOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v10 = *(a2 + 120);
  if (a6 + v10 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v10), a5, 16 * a6);
    LODWORD(v10) = *(a2 + 120);
  }

  *(a2 + 120) = v10 + a6;
  __src = v22;
  v21 = 0x200000000;
  v11 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (!HIDWORD(v21))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v21) = 1;
  }

  v18 = v11;
  IndexType = mlir::Builder::getIndexType(&v18, v13);
  v15 = __src;
  *__src = IndexType;
  v16 = v21;
  v17 = *(a2 + 72);
  if (v17 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v21);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::RankOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::RankOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::RankOp::parse(mlir::tensor::RankOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v15, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v11))
  {
    return 0;
  }

  v13 = v11;
  v6 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v6, v7);
  v9 = *(a2 + 18);
  if (v9 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v9) = IndexType;
  ++*(a2 + 18);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v14, v12, v5, a2 + 16) & 1;
}

void mlir::tensor::RankOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
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
  v15 = v17;
  v16 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v15, v16);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t mlir::tensor::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::tensor::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::tensor::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v82 = *MEMORY[0x277D85DE8];
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    v66 = 261;
    v64 = "operand";
    v65 = 7;
    mlir::Operation::emitOpError(&v70, v2, &v64);
    if (v70)
    {
      LODWORD(v68) = 3;
      *(&v68 + 1) = " #";
      v69 = 2;
      if (v73 >= v74)
      {
        if (v72 > &v68 || v72 + 24 * v73 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v72 + 24 * v73;
      v6 = v68;
      *(v5 + 2) = v69;
      *v5 = v6;
      v7 = ++v73;
      if (v70)
      {
        LODWORD(v68) = 5;
        *(&v68 + 1) = 1;
        if (v7 >= v74)
        {
          if (v72 > &v68 || v72 + 24 * v7 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v72 + 24 * v73;
        v9 = v68;
        *(v8 + 2) = v69;
        *v8 = v9;
        v10 = ++v73;
        if (v70)
        {
          LODWORD(v68) = 3;
          *(&v68 + 1) = " must be 1D tensor of signless integer or index values, but got ";
          v69 = 64;
          if (v10 >= v74)
          {
            if (v72 > &v68 || v72 + 24 * v10 <= &v68)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v72 + 24 * v73;
          v12 = v68;
          *(v11 + 2) = v69;
          *v11 = v12;
          ++v73;
          if (v70)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v3);
            if (v73 >= v74)
            {
              if (v72 > &v68 || v72 + 24 * v73 <= &v68)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v13 = v72 + 24 * v73;
            v14 = v68;
            *(v13 + 2) = v69;
            *v13 = v14;
            ++v73;
          }
        }
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v70);
    if (v70)
    {
      mlir::InFlightDiagnostic::report(&v70);
    }

    if (v81 == 1)
    {
      if (v80 != &v81)
      {
        free(v80);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v79;
        v18 = __p;
        if (v79 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v79 = v16;
        operator delete(v18);
      }

      v19 = v76;
      if (v76)
      {
        v20 = v77;
        v21 = v76;
        if (v77 != v76)
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
          v21 = v76;
        }

        v77 = v19;
        operator delete(v21);
      }

      if (v72 != &v75)
      {
        free(v72);
      }
    }

    if (v15)
    {
      goto LABEL_42;
    }

    return 0;
  }

  {
    v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v25 = v4[1];
    v26 = *(v4 + 4);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v36 = v4;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v25 = v36[1];
    v26 = *(v36 + 4);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  v27 = v25;
  v28 = v26;
  do
  {
    v29 = v28 >> 1;
    v30 = &v27[2 * (v28 >> 1)];
    v32 = *v30;
    v31 = v30 + 2;
    v28 += ~(v28 >> 1);
    if (v32 < v24)
    {
      v27 = v31;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  if (v27 == &v25[2 * v26] || *v27 != v24)
  {
LABEL_62:
    v70 = v3;
    v71 = 0;
    if (!mlir::ShapedType::hasRank(&v70))
    {
      goto LABEL_3;
    }

    goto LABEL_65;
  }

  v37 = v27[1];
  v70 = v3;
  v71 = v37;
  if (!mlir::ShapedType::hasRank(&v70))
  {
    goto LABEL_3;
  }

LABEL_65:
  v38 = *v3;
  {
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v38[1];
    v41 = *(v38 + 4);
    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v63 = v38;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v63[1];
    v41 = *(v63 + 4);
    if (!v41)
    {
      goto LABEL_77;
    }
  }

  v42 = v40;
  v43 = v41;
  do
  {
    v44 = v43 >> 1;
    v45 = &v42[2 * (v43 >> 1)];
    v47 = *v45;
    v46 = v45 + 2;
    v43 += ~(v43 >> 1);
    if (v47 < v39)
    {
      v42 = v46;
    }

    else
    {
      v43 = v44;
    }
  }

  while (v43);
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
LABEL_77:
    v64 = v3;
    v65 = 0;
    mlir::ShapedType::getShape(&v64);
    if (v48 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_80;
  }

  v49 = v42[1];
  v64 = v3;
  v65 = v49;
  mlir::ShapedType::getShape(&v64);
  if (v50 != 1)
  {
    goto LABEL_3;
  }

LABEL_80:
  v51 = *v3;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v61 = v51;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v61[1];
    v54 = *(v61 + 4);
    if (!v54)
    {
      goto LABEL_94;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    goto LABEL_96;
  }

LABEL_94:
  v62 = 0;
LABEL_96:
  *&v68 = v3;
  *(&v68 + 1) = v62;
  ElementType = mlir::ShapedType::getElementType(&v68);
  if (!mlir::Type::isSignlessInteger(&ElementType) && *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_3;
  }

LABEL_42:
  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::tensor::ReshapeOp::parse(mlir::tensor::ReshapeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, &v11))
  {
    return 0;
  }

  v12[0] = mlir::FunctionType::getInputs(&v11);
  v12[1] = v5;
  Results = mlir::FunctionType::getResults(&v11);
  mlir::OperationState::addTypes(a2, Results, v7);
  v10[0] = v16;
  v10[1] = v13;
  v8 = (*(*this + 16))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(this, v10, v12, v8, a2 + 16) & 1;
}

uint64_t mlir::tensor::detail::ScatterOpGenericAdaptorBase::ScatterOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::tensor::ScatterOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'tensor.scatter' op requires attribute 'scatter_dims'";
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

uint64_t mlir::tensor::ScatterOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  if (mlir::DictionaryAttr::get(&v31, "scatter_dims", 0xCuLL))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  v8 = mlir::DictionaryAttr::get(&v31, "unique", 6uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *(a1 + 8) = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 51;
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

  if ((v44 & 1) == 0)
  {
    return 0;
  }

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
  if (v39)
  {
    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
      goto LABEL_49;
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

LABEL_49:
  if (v35 != &v38)
  {
    free(v35);
  }

  return 0;
}

uint64_t mlir::tensor::ScatterOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "scatter_dims", 0xC, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "unique", 6, v7);
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

unint64_t mlir::tensor::ScatterOp::computePropertiesHash(void *a1)
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

unint64_t mlir::tensor::ScatterOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 6)
  {
    if (a4 == 12 && *a3 == 0x5F72657474616373 && *(a3 + 8) == 1936550244)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1902734965 || *(a3 + 4) != 25973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::tensor::ScatterOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 12 && *a2 == 0x5F72657474616373 && *(a2 + 8) == 1936550244)
  {
    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    *result = 0;
  }

  return result;
}

void mlir::tensor::ScatterOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "scatter_dims", 0xCuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "unique", 6uLL, v5);
  }
}

BOOL mlir::tensor::ScatterOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v8) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "unique", 6, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::ScatterOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::ScatterOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::tensor::ScatterOp::setUnique(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::tensor::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a5;
  v18 = a4;
  v16 = a6;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a7;
  if (a8)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = a8;
  }

  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a6;
  v21 = a5;
  v19 = a7;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a8;
  if (a9)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a9;
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

void mlir::tensor::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  v9 = a4;
  v7 = a6;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  v10 = a5;
  v8 = a7;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::tensor::ScatterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v22[0] = v2;
    if (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0 && (v22[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'scatter_dims'";
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

uint64_t mlir::tensor::ScatterOp::verifyInvariants(mlir::tensor::ScatterOp *this)
{
  if (mlir::tensor::ScatterOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::ScatterOp::verify(this);
  }

  return 0;
}

uint64_t mlir::tensor::ScatterOp::parse(void **this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
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
  v17 = 0;
  v18 = 0;
  Inputs = 0;
  (*(*this + 5))(this, a2, a3);
  if (((*(*this + 88))(this, v26, 1) & 1) == 0)
  {
    return 0;
  }

  v31 = 257;
  if (((*(*this + 50))(this, "into", 4, &v28) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 5))(this);
  if (((*(*this + 88))(this, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 39))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 5))(this);
  if (((*(*this + 88))(this, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 41))(this) & 1) == 0)
  {
    return 0;
  }

  v31 = 257;
  if (((*(*this + 50))(this, "scatter_dims", 12, &v28) & 1) == 0 || ((*(*this + 35))(this) & 1) == 0 || (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(this, &v18, 0) & 1) == 0)
  {
    return 0;
  }

  if (v18)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2);
    *v5 = v18;
  }

  if (((*(*this + 37))(this) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 51))(this, "unique", 6))
  {
    v6 = (*(*this + 4))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2) + 8) = UnitAttr;
  }

  v15 = (*(*this + 5))(this);
  if (((*(*this + 61))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 1);
  v28 = this;
  v29 = &v15;
  v30 = a2;
  if (!mlir::tensor::ScatterOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28))
  {
    return 0;
  }

  if (((*(*this + 13))(this) & 1) == 0)
  {
    return 0;
  }

  v15 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, &v15))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(&v15);
  v17 = v10;
  Results = mlir::FunctionType::getResults(&v15);
  mlir::OperationState::addTypes(a2, Results, v12);
  v28 = v25;
  v29 = v22;
  v30 = v19;
  v13 = (*(*this + 2))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(this, &v28, &Inputs, v13, a2 + 16) & 1;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, void ***a2, void *a3, uint64_t a4, uint64_t a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  v8 = a2[2];
  v9 = **a2;
  v10 = (*a2)[1];
  v11 = &v9[32 * v10];
  v12 = *v7;
  v13 = v7[1];
  v14 = *v7 + 32 * v13;
  v15 = *v8;
  v16 = v8[1];
  v17 = &v15[32 * v16];
  if (v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13 == 0;
  }

  v19 = 0;
  if (!v18 || v16 != 0)
  {
    v21 = **a2;
    v22 = v12;
    v23 = v15;
    do
    {
      v24 = v23 + 32;
      v25 = v22 + 32;
      if (v22 == v14)
      {
        v25 = v14;
      }

      else
      {
        v24 = v23;
      }

      if (v21 == v11)
      {
        v23 = v24;
        v22 = v25;
        v21 = v11;
      }

      else
      {
        v21 += 32;
      }

      ++v19;
    }

    while (v21 != v11 || v22 != v14 || v23 != v17);
  }

  v26 = a3[1];
  if (v19 == v26)
  {
    v27 = *a3;
    v54 = **a2;
    v55 = v12;
    v56 = v15;
    v57 = v11;
    v58 = v14;
    v59 = v17;
    v60 = v27;
    v28 = v11;
    while (v9 != v11 || v12 != v14 || v15 != v17 || v28 != v11 || v58 != v14 || v59 != v17)
    {
      v29 = 0;
      v69 = 0;
      v67[3] = 0;
      v67[1] = 0;
      v67[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>;
      v67[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>;
      v68 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>;
      do
      {
        while (1)
        {
          v31 = v67[v29];
          v32 = v67[v29 + 1];
          v33 = (&v54 + (v32 >> 1));
          if (v32)
          {
            break;
          }

          v30 = v31(v33);
          v29 += 2;
          if (v30)
          {
            goto LABEL_32;
          }
        }

        v30 = (*(*v33 + v31))();
        v29 += 2;
      }

      while (!v30);
LABEL_32:
      if (((*(*a1 + 728))(a1, v30, *v60, a5) & 1) == 0)
      {
        return 0;
      }

      v9 = v54;
      v28 = v57;
      if (v54 == v57)
      {
        v12 = v55;
        if (v55 == v58)
        {
          if (v56 != v59)
          {
            v56 += 32;
          }
        }

        else
        {
          v12 = v55 + 32;
          v55 += 32;
        }
      }

      else
      {
        v9 = v54 + 32;
        v54 += 32;
        v12 = v55;
      }

      v15 = v56;
      ++v60;
    }

    return 1;
  }

  else
  {
    LOWORD(v68) = 257;
    (*(*a1 + 24))(&v54, a1, a4, v67);
    if (v54)
    {
      LODWORD(v52) = 5;
      *(&v52 + 1) = v19;
      if (v58 >= HIDWORD(v58))
      {
        if (v57 > &v52 || v57 + 24 * v58 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = v57 + 24 * v58;
      v35 = v52;
      *(v34 + 2) = v53;
      *v34 = v35;
      v36 = v58 + 1;
      LODWORD(v58) = v58 + 1;
      if (v54)
      {
        LODWORD(v52) = 3;
        *(&v52 + 1) = " operands present, but expected ";
        v53 = 32;
        if (v36 >= HIDWORD(v58))
        {
          if (v57 > &v52 || v57 + 24 * v36 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v37 = v57 + 24 * v58;
        v38 = v52;
        *(v37 + 2) = v53;
        *v37 = v38;
        v39 = v58 + 1;
        LODWORD(v58) = v58 + 1;
        if (v54)
        {
          LODWORD(v52) = 5;
          *(&v52 + 1) = v26;
          if (v39 >= HIDWORD(v58))
          {
            if (v57 > &v52 || v57 + 24 * v39 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v40 = v57 + 24 * v58;
          v41 = v52;
          *(v40 + 2) = v53;
          *v40 = v41;
          LODWORD(v58) = v58 + 1;
        }
      }
    }

    v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v54);
    if (v54)
    {
      mlir::InFlightDiagnostic::report(&v54);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v64;
        v45 = __p;
        if (v64 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v64 = v43;
        operator delete(v45);
      }

      v46 = v61;
      if (v61)
      {
        v47 = v62;
        v48 = v61;
        if (v62 != v61)
        {
          do
          {
            v50 = *--v47;
            v49 = v50;
            *v47 = 0;
            if (v50)
            {
              MEMORY[0x259C63150](v49, 0x1000C8077774924);
            }
          }

          while (v47 != v46);
          v48 = v61;
        }

        v62 = v46;
        operator delete(v48);
      }

      if (v57 != &v59)
      {
        free(v57);
      }
    }
  }

  return v42;
}

unint64_t mlir::tensor::detail::SplatOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::SplatOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_N_120ChainedTensorBitcastE";
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
      v28 = &dword_257389F05 + v6;
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
  v25 = (&dword_257389F05 + v23);
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
  if (*(&dword_257389F05 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

unint64_t mlir::tensor::SplatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
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

unint64_t mlir::tensor::SplatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::tensor::SplatOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v63 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::Type::isSignlessInteger(&v63))
  {
    v3 = *(*v63 + 136);
    v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
    v5 = v4 || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v6 = v5 || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v7 = v6 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v8 = v7 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v9 = v8 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v10 = v9 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v11 = v10 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v12 = v11 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v13 = v12 || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v14 = v13 || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v15 = v14 || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v16 = v15 || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v17 = v16 || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    v18 = v17 || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
    v19 = v18 || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
    if (!v19 && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v62 = 261;
      v61[0] = "operand";
      v61[1] = 7;
      mlir::Operation::emitOpError(v66, v2, v61);
      if (v66[0])
      {
        LODWORD(v64) = 3;
        *(&v64 + 1) = " #";
        v65 = 2;
        if (v68 >= v69)
        {
          if (v67 > &v64 || v67 + 24 * v68 <= &v64)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v42 = v67 + 24 * v68;
        v43 = v64;
        *(v42 + 2) = v65;
        *v42 = v43;
        v44 = ++v68;
        if (v66[0])
        {
          LODWORD(v64) = 5;
          *(&v64 + 1) = 0;
          if (v44 >= v69)
          {
            if (v67 > &v64 || v67 + 24 * v44 <= &v64)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v45 = v67 + 24 * v68;
          v46 = v64;
          *(v45 + 2) = v65;
          *v45 = v46;
          v47 = ++v68;
          if (v66[0])
          {
            LODWORD(v64) = 3;
            *(&v64 + 1) = " must be integer/index/float type, but got ";
            v65 = 43;
            if (v47 >= v69)
            {
              if (v67 > &v64 || v67 + 24 * v47 <= &v64)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v48 = v67 + 24 * v68;
            v49 = v64;
            *(v48 + 2) = v65;
            *v48 = v49;
            ++v68;
            if (v66[0])
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v64, v63);
              if (v68 >= v69)
              {
                if (v67 > &v64 || v67 + 24 * v68 <= &v64)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v50 = v67 + 24 * v68;
              v51 = v64;
              *(v50 + 2) = v65;
              *v50 = v51;
              ++v68;
            }
          }
        }
      }

      v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
      if (v66[0])
      {
        mlir::InFlightDiagnostic::report(v66);
      }

      if (v76 == 1)
      {
        if (v75 != &v76)
        {
          free(v75);
        }

        v53 = __p;
        if (__p)
        {
          v54 = v74;
          v55 = __p;
          if (v74 != __p)
          {
            do
            {
              v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
            }

            while (v54 != v53);
            v55 = __p;
          }

          v74 = v53;
          operator delete(v55);
        }

        v56 = v71;
        if (v71)
        {
          v57 = v72;
          v58 = v71;
          if (v72 != v71)
          {
            do
            {
              v60 = *--v57;
              v59 = v60;
              *v57 = 0;
              if (v60)
              {
                MEMORY[0x259C63150](v59, 0x1000C8077774924);
              }
            }

            while (v57 != v56);
            v58 = v71;
          }

          v72 = v56;
          operator delete(v58);
        }

        if (v67 != v70)
        {
          free(v67);
        }
      }

      if (!v52)
      {
        return 0;
      }
    }
  }

  v21 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v23 = -1;
    v24 = 32;
LABEL_58:
    v25 = v24 + 24;
    v26 = 1;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v26) & 1) != 0)
    {
      ++v26;
      v25 += 32;
      if (!--v23)
      {
        v21 = *this;
        goto LABEL_62;
      }
    }

    return 0;
  }

  v22 = *(v21 + 17);
  v23 = v22 - 1;
  if (v22 != 1)
  {
    v24 = *(v21 + 9) + 32;
    goto LABEL_58;
  }

LABEL_62:
  v27 = *(v21 + 9);
  v28 = v21 - 16;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v31 = *this - 16;
  }

  else
  {
    v31 = 0;
  }

  v66[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::getElementType(v66) == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v61[0] = "failed to verify that operand type matches element type of result";
  v62 = 259;
  mlir::OpState::emitOpError(this, v61, v66);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v66);
  v33 = result;
  if (v66[0])
  {
    mlir::InFlightDiagnostic::report(v66);
    result = v33;
  }

  if (v76 == 1)
  {
    if (v75 != &v76)
    {
      free(v75);
      result = v33;
    }

    v34 = __p;
    if (__p)
    {
      v35 = v74;
      v36 = __p;
      if (v74 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v74 = v34;
      operator delete(v36);
      result = v33;
    }

    v37 = v71;
    if (v71)
    {
      v38 = v72;
      v39 = v71;
      if (v72 != v71)
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
        v39 = v71;
      }

      v72 = v37;
      operator delete(v39);
      result = v33;
    }

    if (v67 != v70)
    {
      free(v67);
      return v33;
    }
  }

  return result;
}

BOOL mlir::tensor::SplatOp::parse(mlir::tensor::SplatOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v38[16] = *MEMORY[0x277D85DE8];
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v36 = v38;
  v37 = 0x400000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v33, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((*(*this + 320))(this))
  {
    (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v36, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 328))(this) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_33;
  }

  v35[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v35))
  {
    goto LABEL_33;
  }

  v5 = v35[0];
  v32 = v35[0];
  v6 = *v35[0];
  if (*(*v35[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = (*(*this + 16))(this);
    v31 = 257;
    (*(*this + 24))(v35, this, v7, v30);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v35, "'aggregate' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v8, &v32);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
    v11 = v36;
    if (v36 == v38)
    {
      return v10;
    }

    goto LABEL_35;
  }

  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v6 + 8);
    v14 = *(v6 + 16);
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_20:
    v14 = 0;
    v15 = v13;
    goto LABEL_21;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_13:
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
LABEL_21:
  if (v15 != &v13[2 * v14] && *v15 == v12)
  {
    v21 = v15[1];
  }

  else
  {
    v21 = 0;
  }

  v35[0] = v5;
  v35[1] = v21;
  mlir::ShapedType::getElementType(v35);
  v22 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v22, v23);
  v25 = *(a2 + 18);
  if (v25 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v25) = v5;
  ++*(a2 + 18);
  v35[0] = v5;
  ElementType = mlir::TensorType::getElementType(v35);
  if ((*(*this + 728))(this, v33, ElementType, a2 + 16))
  {
    if (!v37)
    {
      v10 = 1;
      v11 = v36;
      if (v36 == v38)
      {
        return v10;
      }

      goto LABEL_35;
    }

    v27 = v36;
    v28 = 32 * v37;
    while (((*(*this + 728))(this, v27, IndexType, a2 + 16) & 1) != 0)
    {
      v27 += 4;
      v10 = 1;
      v28 -= 32;
      if (!v28)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v10 = 0;
LABEL_34:
  v11 = v36;
  if (v36 != v38)
  {
LABEL_35:
    free(v11);
  }

  return v10;
}

void mlir::tensor::SplatOp::print(mlir::tensor::SplatOp *this, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  if ((*(*this + 46) & 0x80) == 0 || *(*this + 68) != 1)
  {
    mlir::tensor::SplatOp::print(a2, a2 & 0xFFFFFFFFFFFFLL | 0x5510000000000000, this);
  }

  v17 = v19;
  v18 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v17, v18);
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

  if (*(*this + 36))
  {
    v14 = *this - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::tensor::detail::UnPackOpGenericAdaptorBase::UnPackOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::UnPackOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::UnPackOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_120ChainedTensorBitcastE";
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
      v28 = &dword_257389F05 + v6 + 2;
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
  v25 = (&dword_257389F05 + v23 + 2);
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
  if (*(&dword_257389F05 + v5 + 2))
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::tensor::detail::UnPackOpGenericAdaptorBase::getOuterDimsPermAttr(mlir::tensor::detail::UnPackOpGenericAdaptorBase *this)
{
  result = *(this + 4);
  if (!result)
  {
    mlir::Attribute::getContext(this);
    mlir::Builder::getDenseI64ArrayAttr();
  }

  return result;
}

void mlir::tensor::detail::UnPackOpGenericAdaptorBase::getOuterDimsPerm(mlir::tensor::detail::UnPackOpGenericAdaptorBase *this)
{
  if (*(this + 4))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  mlir::Attribute::getContext(this);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::UnPackOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 40))
    {
      return 1;
    }

    v18[0] = "'tensor.unpack' op requires attribute 'static_inner_tiles'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v14 = v24;
      v8 = v23;
      if (v24 == v23)
      {
LABEL_37:
        v24 = v6;
        operator delete(v8);
LABEL_38:
        if (v21 != &v22)
        {
          free(v21);
        }

        return v2;
      }

      do
      {
        v16 = *--v14;
        v15 = v16;
        *v14 = 0;
        if (v16)
        {
          MEMORY[0x259C63150](v15, 0x1000C8077774924);
        }
      }

      while (v14 != v6);
LABEL_36:
      v8 = v23;
      goto LABEL_37;
    }
  }

  else
  {
    v18[0] = "'tensor.unpack' op requires attribute 'inner_dims_pos'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

      v3 = __p;
      if (__p)
      {
        v4 = v26;
        v5 = __p;
        if (v26 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v26 = v3;
        operator delete(v5);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v7 = v24;
      v8 = v23;
      if (v24 == v23)
      {
        goto LABEL_37;
      }

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
      goto LABEL_36;
    }
  }

  return v2;
}

uint64_t mlir::tensor::UnPackOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
    if (mlir::DictionaryAttr::get(&v16, "inner_dims_pos", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "outer_dims_perm", 0xFuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_inner_tiles", 0x12uLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
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

      v5 = v20 + 24 * v21;
      v6 = v17;
      *(v5 + 2) = v18;
      *v5 = v6;
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

      v7 = __p;
      if (__p)
      {
        v8 = v27;
        v9 = __p;
        if (v27 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v27 = v7;
        operator delete(v9);
      }

      v10 = v24;
      if (v24)
      {
        v11 = v25;
        v12 = v24;
        if (v25 != v24)
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
          v12 = v24;
        }

        v25 = v10;
        operator delete(v12);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

uint64_t mlir::tensor::UnPackOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "inner_dims_pos", 0xE, *a2);
  if (v20 >= HIDWORD(v20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v19 + 16 * v20);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v20 + 1;
  LODWORD(v20) = v20 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v18, "outer_dims_perm", 0xF, v7);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v19 + 16 * v20);
    *v10 = v8;
    v10[1] = v9;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v18, "static_inner_tiles", 0x12, v11);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v19 + 16 * v20);
    *v14 = v12;
    v14[1] = v13;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

  v15 = v19;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v19 == v21)
    {
      return DictionaryAttr;
    }

    goto LABEL_13;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v18, v19, v6);
  v15 = v19;
  if (v19 != v21)
  {
LABEL_13:
    free(v15);
  }

  return DictionaryAttr;
}

unint64_t mlir::tensor::UnPackOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

uint64_t mlir::tensor::UnPackOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 18)
  {
    if (!memcmp(__s1, "static_inner_tiles", 0x12uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 15)
  {
    if (!memcmp(__s1, "outer_dims_perm", 0xFuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x69645F72656E6E69 || *(__s1 + 6) != 0x736F705F736D6964)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::UnPackOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 18)
  {
    result = memcmp(__s1, "static_inner_tiles", 0x12uLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 16) = 0;
    }
  }

  else if (a3 == 15)
  {
    result = memcmp(__s1, "outer_dims_perm", 0xFuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  else if (a3 == 14 && *__s1 == 0x69645F72656E6E69 && *(__s1 + 6) == 0x736F705F736D6964)
  {
    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    *result = 0;
  }

  return result;
}

void mlir::tensor::UnPackOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inner_dims_pos", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "outer_dims_perm", 0xFuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "static_inner_tiles", 0x12uLL, v6);
  }
}

BOOL mlir::tensor::UnPackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::readProperties(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 256))
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (v3 = mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1), (v3))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::tensor::UnPackOp::setOuterDimsPerm(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    mlir::Attribute::getContext((*result + 24));
    mlir::Builder::getDenseI64ArrayAttr();
  }

  *(*result + 16 * ((*(*result + 44) >> 23) & 1) + 72) = 0;
  return result;
}

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = a4;
  v23 = a3;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  if (a5)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = a5;
  }

  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a9;
  __src = v28;
  v27 = 0x200000000;
  mlir::ValueRange::ValueRange(&v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  v29 = v25;
  if (v27 != 1)
  {
    if (!v27)
    {
      if (!HIDWORD(v27))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v27) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(&v29, 1);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v27;
  v21 = *(a2 + 72);
  if (v21 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v27);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::UnPackOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v23 = a6;
  v24 = a5;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  if (a7)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 8) = a7;
  }

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

  *(v19 + 16) = a11;
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

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a11, a12);
  mlir::Builder::getDenseI64ArrayAttr();
}

{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a11, a12);
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v12[12] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12[0] = a3;
  mlir::OperationState::addOperands(a2, v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
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
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 1);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::tensor::UnPackOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v45[0] = "requires attribute 'inner_dims_pos'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 != 1)
    {
      return v11;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v53;
      v14 = __p;
      if (v53 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v53 = v12;
      operator delete(v14);
    }

    v15 = v50;
    if (v50)
    {
      v16 = v51;
      v17 = v50;
      if (v51 != v50)
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
        goto LABEL_40;
      }

LABEL_41:
      v51 = v15;
      operator delete(v17);
    }

LABEL_42:
    if (v48 != &v49)
    {
      free(v48);
    }

    return v11;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v45[0] = "requires attribute 'static_inner_tiles'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 != 1)
    {
      return v11;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v53;
      v22 = __p;
      if (v53 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v53 = v20;
      operator delete(v22);
    }

    v15 = v50;
    if (v50)
    {
      v23 = v51;
      v17 = v50;
      if (v51 != v50)
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
LABEL_40:
        v17 = v50;
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v8 = *(v4 + 8);
  v47[0] = v2;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v8) & 1) == 0)
  {
    return 0;
  }

  v47[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
  {
    return 0;
  }

  v47[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v7) & 1) == 0 || (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v27 = 1;
  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(this, 1u, v9, v10);
  if (v29)
  {
    v32 = v29;
    v33 = ODSOperands + 24;
    while ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*v33 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v27) & 1) != 0)
    {
      ++v27;
      v33 += 32;
      if (!--v32)
      {
        goto LABEL_49;
      }
    }

    return 0;
  }

LABEL_49:
  v34 = mlir::tensor::UnPackOp::getODSOperands(this, 2u, v30, v31);
  if (v35)
  {
    v36 = v35;
    v37 = v34 + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v37 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v27) & 1) != 0)
    {
      ++v27;
      v37 += 32;
      if (!--v36)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

LABEL_53:
  v38 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v38, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v42 = this;
  v11 = 1;
  v43 = *(*(mlir::tensor::UnPackOp::getODSOperands(v42, 1u, v40, v41) + 24) + 8);
  if (*(*v42 + 36))
  {
    v44 = *v42 - 16;
  }

  else
  {
    v44 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0) + 8) ^ v43) >= 8)
  {
    v45[0] = "failed to verify that result type matches type of dest";
    v46 = 259;
    mlir::OpState::emitOpError(v42, v45, v47);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v47);
  }

  return v11;
}

uint64_t mlir::tensor::UnPackOp::verifyInvariants(mlir::tensor::UnPackOp *this)
{
  if (mlir::tensor::UnPackOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::UnPackOp::verify(this);
  }

  return 0;
}

BOOL mlir::tensor::UnPackOp::parse(mlir::tensor::UnPackOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v48[16] = *MEMORY[0x277D85DE8];
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v39[0] = v40;
  v39[1] = 1;
  v37 = 0;
  v38 = 0;
  v46 = v48;
  v47 = 0x400000000;
  v36 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v31[1] = 1;
  v32 = 0;
  v30 = 0;
  v31[0] = &v32;
  v28 = &v30;
  v29 = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v40, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*this + 408))(this, "outer_dims_perm", 15) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (((*(*this + 136))(this) & 1) == 0 || (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(this, &v38, 0) & 1) == 0)
  {
LABEL_36:
    v20 = 0;
    goto LABEL_37;
  }

  if (v38)
  {
    v6 = *(a2 + 32);
    if (!v6)
    {
      operator new();
    }

    *(v6 + 8) = v38;
  }

LABEL_9:
  v45 = 257;
  if (((*(*this + 400))(this, "inner_dims_pos", 14, &v42) & 1) == 0 || ((*(*this + 136))(this) & 1) == 0 || (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(this, &v37, 0) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v37)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
    *v7 = v37;
  }

  v45 = 257;
  if (((*(*this + 400))(this, "inner_tiles", 11, &v42) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*this + 136))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*this + 40))(this);
  v42 = 0;
  if (!mlir::parseDynamicIndexList(this, &v46, &v36, &v42, 0))
  {
    goto LABEL_36;
  }

  v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
  *(v8 + 16) = v36;
  v45 = 257;
  if (((*(*this + 400))(this, "into", 4, &v42) & 1) == 0)
  {
    goto LABEL_36;
  }

  v9 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v34, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v25[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_36;
  }

  v10 = *(a2 + 1);
  v42 = this;
  v43 = v25;
  v44 = a2;
  if (!mlir::tensor::UnPackOp::verifyInherentAttrs(v10, a2 + 112))
  {
    goto LABEL_36;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  v42 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v42))
  {
    goto LABEL_36;
  }

  v32 = v42;
  if (((*(*this + 56))(this) & 1) == 0)
  {
    goto LABEL_40;
  }

  v42 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v42))
  {
    goto LABEL_40;
  }

  v30 = v42;
  v11 = v28;
  if (!v29)
  {
LABEL_29:
    v15 = (*(*this + 32))(this);
    IndexType = mlir::Builder::getIndexType(v15, v16);
    mlir::OperationState::addTypes(a2, v11, 1);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v39, v31, v5, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v33, &v28, v9, a2 + 16))
    {
      if (!v47)
      {
        v20 = 1;
        goto LABEL_37;
      }

      v18 = v46;
      v19 = 32 * v47;
      while (((*(*this + 728))(this, v18, IndexType, a2 + 16) & 1) != 0)
      {
        v18 += 32;
        v20 = 1;
        v19 -= 32;
        if (!v19)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_40:
    v20 = 0;
    goto LABEL_37;
  }

  v12 = 8 * v29;
  v13 = v28;
  while (1)
  {
    v27 = *v13;
    if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      break;
    }

    v42 = llvm::cast<mlir::ShapedType,mlir::Type>(&v27);
    v43 = v14;
    mlir::ShapedType::getElementType(&v42);
    ++v13;
    v12 -= 8;
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  v22 = (*(*this + 16))(this);
  v26 = 257;
  (*(*this + 24))(&v42, this, v22, v25);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v42, "'dest' must be ranked tensor of any type values, but got ");
  mlir::InFlightDiagnostic::append<mlir::Type const&>(v23, &v27);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
LABEL_37:
  if (v46 != v48)
  {
    free(v46);
  }

  return v20;
}

unint64_t mlir::tensor::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::tensor::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::tensor::YieldOp::parse(mlir::tensor::YieldOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (((*(*this + 536))(this, &v7) & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::tensor::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
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
  v15 = v17;
  v16 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v15, v16);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 32 * v7;
        v9 = v6 + v8 - 16;
        v10 = -v8;
        do
        {
          v11 = *(v9 - 16);
          if (v9 != v11)
          {
            free(v11);
          }

          v9 -= 32;
          v10 += 32;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_12:
      *v12 = 0;
      return a1;
    }

    v12 = (a2 + 8);
    v14 = *(a2 + 8);
    v15 = *(a1 + 8);
    if (v15 < v14)
    {
      if (*(a1 + 12) < v14)
      {
        if (v15)
        {
          v16 = 32 * v15 + *a1 - 16;
          v17 = -32 * v15;
          do
          {
            v18 = *(v16 - 16);
            if (v16 != v18)
            {
              free(v18);
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v17);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
      }

      if (v15)
      {
        v22 = *a1;
        v23 = 32 * v15;
        do
        {
          llvm::SmallVectorImpl<long long>::operator=(v22, v5);
          v5 += 4;
          v22 += 32;
          v23 -= 32;
        }

        while (v23);
        v24 = *a2;
        v25 = *(a2 + 8);
        if (v15 != v25)
        {
LABEL_32:
          v26 = *a1;
          v27 = 32 * v15;
          v28 = 32 * v25;
          do
          {
            v29 = (v26 + v27);
            *v29 = v26 + v27 + 16;
            v29[1] = 0x200000000;
            if (LODWORD(v24[v27 / 8 + 1]))
            {
              llvm::SmallVectorImpl<long long>::operator=(v29, &v24[v27 / 8]);
            }

            v26 += 32;
            v28 -= 32;
            v24 += 4;
          }

          while (v27 != v28);
          v24 = *a2;
        }
      }

      else
      {
        v15 = 0;
        v24 = *a2;
        v25 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_32;
        }
      }

      *(a1 + 8) = v14;
      v30 = *v12;
      if (v30)
      {
        v31 = 4 * v30;
        v32 = &v24[v31 - 2];
        v33 = -(v31 * 8);
        do
        {
          v34 = *(v32 - 16);
          if (v32 != v34)
          {
            free(v34);
          }

          v32 -= 32;
          v33 += 32;
        }

        while (v33);
      }

      goto LABEL_12;
    }

    v19 = *a1;
    if (v14)
    {
      v20 = 32 * v14;
      do
      {
        llvm::SmallVectorImpl<long long>::operator=(v19, v5);
        v5 += 4;
        v19 += 32;
        v20 -= 32;
      }

      while (v20);
      v21 = *a1 + 32 * *(a1 + 8);
      if (v21 == v19)
      {
LABEL_47:
        *(a1 + 8) = v14;
        v38 = *(a2 + 8);
        if (v38)
        {
          v39 = 32 * v38;
          v40 = v39 + *a2 - 16;
          v41 = -v39;
          do
          {
            v42 = *(v40 - 16);
            if (v40 != v42)
            {
              free(v42);
            }

            v40 -= 32;
            v41 += 32;
          }

          while (v41);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v21 = v19 + 32 * v15;
      if (v21 == v19)
      {
        goto LABEL_47;
      }
    }

    v35 = (v21 - 16);
    do
    {
      v37 = *(v35 - 2);
      if (v35 != v37)
      {
        free(v37);
      }

      v36 = v35 - 16;
      v35 -= 32;
    }

    while (v36 != v19);
    goto LABEL_47;
  }

  return a1;
}

uint64_t *mlir::tensor::PadOp::getMixedPadImpl@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v9) = a3;
  v17[2] = *MEMORY[0x277D85DE8];
  v17[0] = a4;
  v17[1] = a5;
  result = mlir::Attribute::getContext((*a1 + 24));
  v16 = result;
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v9 = v9;
  if (v9)
  {
    v10 = 0;
    do
    {
      v12 = *a2++;
      v11 = v12;
      if (v12 == 0x8000000000000000)
      {
        v13 = mlir::ValueRange::dereference_iterator(v17, v10);
        result = mlir::getAsOpFoldResult(v13);
        v14 = *(a6 + 8);
        v15 = *(a6 + 12);
        ++v10;
      }

      else
      {
        result = (mlir::Builder::getI64IntegerAttr(&v16, v11) & 0xFFFFFFFFFFFFFFFBLL);
        v14 = *(a6 + 8);
        v15 = *(a6 + 12);
      }

      if (v14 >= v15)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a6 + 8 * v14) = result;
      ++*(a6 + 8);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroResults<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroOperands<mlir::scf::InParallelOp>,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>,mlir::OpTrait::NoTerminator<mlir::scf::InParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::InParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::InParallelOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::IsTerminator<mlir::scf::InParallelOp>,mlir::ParallelCombiningOpInterface::Trait<mlir::scf::InParallelOp>,mlir::RegionKindInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::scf::InParallelOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroResults<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::InParallelOp>,mlir::OpTrait::ZeroOperands<mlir::scf::InParallelOp>,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::scf::InParallelOp>,mlir::OpTrait::NoTerminator<mlir::scf::InParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::InParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::InParallelOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::InParallelOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::IsTerminator<mlir::scf::InParallelOp>,mlir::ParallelCombiningOpInterface::Trait<mlir::scf::InParallelOp>,mlir::RegionKindInterface::Trait<mlir::scf::InParallelOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::scf::InParallelOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[164];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v15);
    if (v15[16] == 1)
    {
      v4 = *a2;
      v5 = *(a1 + 32);
      if (v5 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a1 + 24) + 8 * v5) = v4;
      ++*(a1 + 32);
      return 1;
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    v10 = *a2;
    v11 = 8 * v8;
    v9 = *(a1 + 24);
    while (*v9 != v10)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 != &v7[v8])
  {
    return 0;
  }

  v10 = *a2;
LABEL_13:
  if (v8 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7[v8] = v10;
  v12 = *(a1 + 32) + 1;
  *(a1 + 32) = v12;
  if (v12 >= 5)
  {
    v13 = *(a1 + 24);
    v14 = 8 * v12;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v13++, v15);
      v14 -= 8;
    }

    while (v14);
  }

  return 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::OperationState **a5)
{
  v29[38] = *MEMORY[0x277D85DE8];
  v26 = a3;
  Context = mlir::Attribute::getContext(&v26);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v29, v28, v27);
  }

  mlir::OperationState::OperationState(v29, a3, v11);
  v13 = *a4;
  v28[0] = *a5;
  v14 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v29[0], v28);
  mlir::tensor::DimOp::build(a1, v29, v13, v14 - 16);
  v16 = mlir::Operation::create(v29, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v17 + 32, v16);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v16);
    v20 = *v18;
    *NodePtr = *v18;
    NodePtr[1] = v18;
    *(v20 + 8) = NodePtr;
    *v18 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v16);
  }

  if ((mlir::OpBuilder::tryFold(a1, v16, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v16);
    goto LABEL_18;
  }

  v21 = v16[9];
  if (v21)
  {
    v22 = (v16 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    v23 = 0;
    v24 = *a2;
    do
    {
      *(v24 + 8 * v23) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v23);
      ++v23;
    }

    while (v21 != v23);
    *(a2 + 8) += v21;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    (*(*v25 + 16))(v25, v16, 0, 0);
  }

LABEL_18:
  mlir::OperationState::~OperationState(v29);
}

void anonymous namespace::ChainedTensorBitcast::~ChainedTensorBitcast(_anonymous_namespace_::ChainedTensorBitcast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ChainedTensorBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
    {
      v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v8 = *(*(result + 72) + 24);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>((a3 + 8), *(a2 + 24), &v9, &v8);
      (*(*a3 + 8))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::BitcastOp,mlir::TensorType &,mlir::Value>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

void anonymous namespace::ChainedTensorCast::~ChainedTensorCast(_anonymous_namespace_::ChainedTensorCast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ChainedTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v6 = *(*(*(result + 72) + 24) + 8);
      v7 = result;
      v8 = *(result - 8);
      v13 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v9 = v13;
      v10 = joinShapes(v6 & 0xFFFFFFFFFFFFFFF8, v8 & 0xFFFFFFFFFFFFFFF8);
      result = joinShapes(v10, v9);
      if (result)
      {
        if (result == joinShapes(v6 & 0xFFFFFFFFFFFFFFF8, v9))
        {
          v12 = *(*(v7 + 72) + 24);
          v11 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), *(a2 + 24), &v13, &v12);
          (*(*a3 + 8))(a3, a2, v11);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t joinShapes(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23[4] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v20 = a1;
  if (!mlir::TensorType::hasRank(&v20))
  {
    return v2;
  }

  if (!mlir::TensorType::hasRank(&v19))
  {
    return v20;
  }

  mlir::TensorType::getShape(&v20);
  v4 = v3;
  mlir::TensorType::getShape(&v19);
  if (v4 != v5)
  {
    return 0;
  }

  v21 = v23;
  v22 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4 < 1)
  {
    v13 = v22;
LABEL_21:
    v14 = v21;
    v15 = v13;
    ElementType = mlir::TensorType::getElementType(&v20);
    v2 = mlir::RankedTensorType::get(v14, v15, ElementType, 0);
    v17 = v21;
    if (v21 != v23)
    {
      goto LABEL_22;
    }

    return v2;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(mlir::TensorType::getShape(&v20) + 8 * v6);
    v8 = *(mlir::TensorType::getShape(&v19) + 8 * v6);
    if (v7 == 0x8000000000000000)
    {
      goto LABEL_13;
    }

    Shape = mlir::TensorType::getShape(&v20);
    if (v8 != 0x8000000000000000)
    {
      break;
    }

    v11 = v22;
    v12 = HIDWORD(v22);
    v8 = *(Shape + 8 * v6);
LABEL_14:
    if (v11 >= v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v21 + v11) = v8;
    v13 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    if (v4 == ++v6)
    {
      goto LABEL_21;
    }
  }

  v10 = *(Shape + 8 * v6);
  if (v10 == *(mlir::TensorType::getShape(&v19) + 8 * v6))
  {
    v8 = *(mlir::TensorType::getShape(&v20) + 8 * v6);
LABEL_13:
    v11 = v22;
    v12 = HIDWORD(v22);
    goto LABEL_14;
  }

  v2 = 0;
  v17 = v21;
  if (v21 == v23)
  {
    return v2;
  }

LABEL_22:
  free(v17);
  return v2;
}

void anonymous namespace::TensorCastExtractSlice::~TensorCastExtractSlice(_anonymous_namespace_::TensorCastExtractSlice *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::TensorCastExtractSlice::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v15[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v15);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v4 = DefiningOp;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v5 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  if (!v6 || !a2 || !v4 || !mlir::tensor::preservesStaticInformation(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v5))
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v13);
  v9 = v8;
  v15[0] = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::RankedTensorType::getShape(v15);
  if (v9 != v11 || (result = memcmp(Shape, v10, 8 * v9), result))
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v14);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(int a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v20, a2, v15);
    mlir::tensor::ExtractSliceOp::build(a1, v20, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v20, v19, v18);
}

unsigned int *llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(unsigned int *result, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = result[2];
  if (v6 + a2 > result[3])
  {
    v11 = *result + (v6 << 6);
    if (*result > a3 || v11 <= a3)
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow();
  }

  v7 = result[2];
  if (a2)
  {
    v8 = (*result + (v7 << 6));
    v9 = a2;
    do
    {
      *v8 = v8 + 2;
      v8[1] = 0x600000000;
      if (v8 != a3)
      {
        v10 = *(a3 + 8);
        if (*(a3 + 8))
        {
          if (v10 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          result = memcpy(v8 + 2, *a3, 8 * *(a3 + 8));
          *(v8 + 2) = v10;
        }
      }

      v8 += 8;
      --v9;
    }

    while (v9);
    LODWORD(v7) = v5[2];
  }

  v5[2] = v7 + v4;
  return result;
}

void anonymous namespace::SingleInputConcatOp::~SingleInputConcatOp(_anonymous_namespace_::SingleInputConcatOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::DimOfCastOp::~DimOfCastOp(_anonymous_namespace_::DimOfCastOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::DimOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v9 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v6 = *(*(result + 72) + 24);
      v8 = *(*(a2 + 72) + 56);
      v9 = v6;
      v7 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>>(a3 + 1, *(a2 + 24), &v9, &v8);
      (*(*a3 + 1))(a3, a2, v7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::tensor::DimOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
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

void anonymous namespace::DimOfDestStyleOp::~DimOfDestStyleOp(_anonymous_namespace_::DimOfDestStyleOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::DimOfDestStyleOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  v6 = DefiningOp;
  if (DefiningOp)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp))
    {
      v15 = 0;
      v16 = 0;
      return 0;
    }

    DefiningOp = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
  }

  v15 = v6;
  v16 = DefiningOp;
  if (!v6)
  {
    return 0;
  }

  if (v17 && (*(v17 + 8) & 7) == 6)
  {
    v7 = *(v17 + 16) + 6;
  }

  else
  {
    v7 = *(v17 + 8) & 7;
  }

  mlir::DestinationStyleOpInterface::getDpsInitsMutable(v18, &v15);
  v8 = mlir::MutableOperandRange::operator[](v18, v7);
  if (v19 != v20)
  {
    free(v19);
  }

  (*(*a3 + 40))(a3, a2);
  v9 = *(a2 + 72);
  v10 = *(v8 + 24);
  v11 = v9[1];
  if (v11)
  {
    v12 = *v9;
    *v11 = *v9;
    if (v12)
    {
      *(v12 + 8) = v11;
    }
  }

  v9[3] = v10;
  v13 = *v10;
  *v9 = *v10;
  v9[1] = v10;
  if (v13)
  {
    *(v13 + 8) = v9;
  }

  *v10 = v9;
  (*(*a3 + 48))(a3, a2);
  return 1;
}

void anonymous namespace::DimOfReshapeOp::~DimOfReshapeOp(_anonymous_namespace_::DimOfReshapeOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::DimOfReshapeOp::matchAndRewrite(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *(a2[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v16);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
  {
    return 0;
  }

  v7 = a2[2];
  v8 = DefiningOp;
  v9 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2) + 8);
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  v10 = a2[3];
  v11 = *(*(v8 + 72) + 56);
  v14 = *(a2[9] + 56);
  v15 = v11;
  v12 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>((a3 + 8), v10, &v15, &v14);
  v16 = v12 - 16;
  v13 = *(a2 - 1);
  if ((v13 ^ *(v12 - 8)) >= 8)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFF8;
    v16 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v10, &v15, &v16) - 16;
  }

  (**a3)(a3, a2, &v16, 1);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::RankedTensorType>,mlir::detail::TypedValue<mlir::IndexType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::tensor::ExtractOp::build(v11, v18, *a3, a4, 1uLL);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::IndexCastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

void anonymous namespace::FoldEmptyTensorWithCastOp::~FoldEmptyTensorWithCastOp(_anonymous_namespace_::FoldEmptyTensorWithCastOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldEmptyTensorWithCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[6] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  result = mlir::tensor::preservesStaticInformation(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v31 = *(*(a2 + 72) + 24);
    result = mlir::Value::getDefiningOp(&v31);
    if (result)
    {
      v6 = *(*(result + 48) + 16);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
      {
        v7 = result;
      }

      else
      {
        v7 = 0;
      }

      v24 = v7;
      if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
      {
        v23 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
        Shape = mlir::RankedTensorType::getShape(&v23);
        v10 = v9;
        mlir::tensor::EmptyOp::getMixedSizes(&v24, &v31);
        v28 = v30;
        v29 = 0x600000000;
        if (v32 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v10 && v32)
        {
          v11 = v31;
          v12 = 8 * v32 - 8;
          v13 = 8 * v10 - 8;
          while (1)
          {
            v14 = *Shape;
            if ((*v11 & 4) != 0)
            {
              v15 = 0;
            }

            else
            {
              v15 = *v11 & 0xFFFFFFFFFFFFFFF8;
            }

            if (v15)
            {
              if (v14 == 0x8000000000000000 || (v25[0] = v15, v14 != mlir::IntegerAttr::getInt(v25)))
              {
                v25[0] = "mismatch in static value of shape of empty tensor result and cast result";
                v26 = 259;
                v27 = v25;
                v22 = *(a3 + 16);
                if (v22 && mlir::RewriterBase::Listener::classof(v22))
                {
                  (*(*v22 + 88))(v22, *(v7 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::EmptyOp &>(mlir::tensor::EmptyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v27);
                }

                result = 0;
                v19 = v28;
                if (v28 == v30)
                {
LABEL_32:
                  if (v31 != v33)
                  {
                    v21 = result;
                    free(v31);
                    return v21;
                  }

                  return result;
                }

LABEL_31:
                v20 = result;
                free(v19);
                result = v20;
                goto LABEL_32;
              }

              v16 = v29;
              if (v29 >= HIDWORD(v29))
              {
                goto LABEL_27;
              }
            }

            else if (v14 == 0x8000000000000000)
            {
              v16 = v29;
              v15 = *v11;
              if (v29 >= HIDWORD(v29))
              {
                goto LABEL_27;
              }
            }

            else
            {
              v15 = mlir::Builder::getIndexAttr((a3 + 8), *Shape) & 0xFFFFFFFFFFFFFFFBLL;
              v16 = v29;
              if (v29 >= HIDWORD(v29))
              {
LABEL_27:
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }
            }

            *(v28 + v16) = v15;
            LODWORD(v29) = v29 + 1;
            if (v13)
            {
              ++Shape;
              ++v11;
              v17 = v12;
              v12 -= 8;
              v13 -= 8;
              if (v17)
              {
                continue;
              }
            }

            break;
          }
        }

        v25[0] = mlir::RankedTensorType::getElementType(&v23);
        v18 = mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>((a3 + 8), *(a2 + 24), &v28, v25);
        (*(*a3 + 8))(a3, a2, v18);
        result = 1;
        v19 = v28;
        if (v28 == v30)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      return 0;
    }
  }

  return result;
}

void anonymous namespace::FoldEmptyTensorWithDimOp::~FoldEmptyTensorWithDimOp(_anonymous_namespace_::FoldEmptyTensorWithDimOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldEmptyTensorWithDimOp::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t *, uint64_t))
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  v7 = v6;
  v19 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v19);
  v9 = DefiningOp;
  if (DefiningOp)
  {
    v10 = *(*(DefiningOp + 48) + 16);
    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
    {
      v11 = DefiningOp;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id && (v7 & 1) != 0 && (*(DefiningOp + 36) ? (v12 = DefiningOp - 16) : (v12 = 0), v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8, *(mlir::RankedTensorType::getShape(&v19) + 8 * ConstantIntValue) == 0x8000000000000000))
    {
      v13 = ConstantIntValue;
      if (ConstantIntValue)
      {
        v14 = 0;
        LODWORD(v15) = 0;
        v16 = 8 * v13;
        do
        {
          if (*(v9 + 36))
          {
            v17 = v9 - 16;
          }

          else
          {
            v17 = 0;
          }

          v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::RankedTensorType::getShape(&v19) + v14) == 0x8000000000000000)
          {
            v15 = (v15 + 1);
          }

          else
          {
            v15 = v15;
          }

          v14 += 8;
        }

        while (v16 != v14);
      }

      else
      {
        v15 = 0;
      }

      v19 = *(*(v11 + 72) + 32 * v15 + 24);
      v9 = 1;
      (**a3)(a3, a2, &v19, 1);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void anonymous namespace::ReplaceEmptyTensorStaticShapeDims::~ReplaceEmptyTensorStaticShapeDims(_anonymous_namespace_::ReplaceEmptyTensorStaticShapeDims *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t foldDynamicToStaticDimSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v24 = a1;
  v28[0] = a2;
  v28[1] = a3;
  Shape = mlir::RankedTensorType::getShape(&v24);
  v25 = v27;
  v26 = 0x600000000;
  if (((8 * v5) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = 0;
  v8 = 8 * v5;
  if (v5)
  {
    memcpy(v25, Shape, v8);
    v7 = v26;
  }

  LODWORD(v26) = v7 + (v8 >> 3);
  mlir::RankedTensorType::getShape(&v24);
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      if (*(mlir::RankedTensorType::getShape(&v24) + 8 * i) == 0x8000000000000000)
      {
        v13 = (v11 + 1);
        v14 = mlir::ValueRange::dereference_iterator(v28, v11);
        ConstantIntValue = mlir::getConstantIntValue(v14 | 4);
        if ((v16 & 1) == 0 || (ConstantIntValue & 0x8000000000000000) != 0)
        {
          v17 = *(a4 + 8);
          if (v17 >= *(a4 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a4 + 8 * v17) = v14;
          ++*(a4 + 8);
        }

        else
        {
          *(v25 + i) = ConstantIntValue;
        }
      }

      else
      {
        v13 = v11;
      }

      v11 = v13;
    }
  }

  v18 = v25;
  v19 = v26;
  ElementType = mlir::RankedTensorType::getElementType(&v24);
  Encoding = mlir::RankedTensorType::getEncoding(&v24);
  result = mlir::RankedTensorType::get(v18, v19, ElementType, Encoding);
  if (v25 != v27)
  {
    v23 = result;
    free(v25);
    return v23;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::EmptyOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(v17, v20, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v20, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v17, v20[0], v20[1]);
  if (v18 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v17[8] + 8 * v18++) = v11;
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4 - 16;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

void anonymous namespace::ExtractFromTensorCast::~ExtractFromTensorCast(_anonymous_namespace_::ExtractFromTensorCast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ExtractFromTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v9);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      if (*(*(*(*(*(result + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v10 = *(*(result + 72) + 24);
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v6 = *(a2 + 72);
          v7 = *(a2 + 68) - 1;
        }

        else
        {
          v6 = 0;
          v7 = -1;
        }

        v9[0] = v6 + 32;
        v9[1] = v7;
        v8 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v10, v9);
        (*(*a3 + 8))(a3, a2, v8);
        return 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(v18, v19, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v12 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::tensor::ExtractOp::build(v12, v18, v11, v19[0], v19[1]);
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

void anonymous namespace::ExtractElementFromIndexCast::~ExtractElementFromIndexCast(_anonymous_namespace_::ExtractElementFromIndexCast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ExtractElementFromIndexCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v11[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
    {
      v7 = result;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(result + 72) + 24));
      v12 = *(*(v7 + 72) + 24);
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v8 = *(a2 + 72);
        v9 = *(a2 + 68) - 1;
      }

      else
      {
        v8 = 0;
        v9 = -1;
      }

      v11[0] = v8 + 32;
      v11[1] = v9;
      v13 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type &,mlir::Value,mlir::OperandRange>((a3 + 8), v5, &ElementTypeOrSelf, &v12, v11);
      v11[0] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v10 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::Type,mlir::tensor::ExtractOp &>((a3 + 8), *(a2 + 24), v11, &v13);
      (*(*a3 + 8))(a3, a2, v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type &,mlir::Value,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(v22, v25, v21);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a4;
  mlir::ValueRange::ValueRange(v25, *a5, *(a5 + 8));
  v15 = v25[0];
  v16 = v25[1];
  v21[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v15, v16);
  if (v23 >= v24)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v22[8] + 8 * v23++) = v13;
  v17 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v18;
}