void mlir::memref::DeallocOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::memref::DeallocOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72);
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Free>(void)::instance;
  v12 = 0;
  v11 = 1;
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

uint64_t mlir::memref::DimOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t mlir::memref::DimOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::memref::DimOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::memref::DimOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::memref::DimOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::memref::DimOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(*v3 + 17);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    {
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = v4[1];
      v27 = *(v4 + 4);
      if (!v27)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v43 = v4;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = v43[1];
      v27 = *(v43 + 4);
      if (!v27)
      {
        goto LABEL_67;
      }
    }

    v28 = v26;
    v29 = v27;
    do
    {
      v30 = v29 >> 1;
      v31 = &v28[2 * (v29 >> 1)];
      v33 = *v31;
      v32 = v31 + 2;
      v29 += ~(v29 >> 1);
      if (v33 < v25)
      {
        v28 = v32;
      }

      else
      {
        v29 = v30;
      }
    }

    while (v29);
    if (v28 != &v26[2 * v27] && *v28 == v25)
    {
      v44 = v28[1];
      goto LABEL_69;
    }

LABEL_67:
    v44 = 0;
LABEL_69:
    v81[0] = v3;
    v81[1] = v44;
    mlir::ShapedType::getElementType(v81);
    goto LABEL_70;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = v4[1];
    v36 = *(v4 + 4);
    if (!v36)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v48 = v4;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = v48[1];
    v36 = *(v48 + 4);
    if (!v36)
    {
      goto LABEL_80;
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
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
LABEL_80:
    v74 = v3;
    v75 = 0;
    mlir::ShapedType::getElementType(&v74);
    v49 = *v3;
    {
      goto LABEL_81;
    }

LABEL_90:
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = v49[1];
    v52 = *(v49 + 4);
    if (!v52)
    {
      goto LABEL_93;
    }

    goto LABEL_82;
  }

  v59 = v37[1];
  v74 = v3;
  v75 = v59;
  mlir::ShapedType::getElementType(&v74);
  v49 = *v3;
  {
    goto LABEL_90;
  }

LABEL_81:
  v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v51 = v49[1];
  v52 = *(v49 + 4);
  if (!v52)
  {
    goto LABEL_93;
  }

LABEL_82:
  v53 = v51;
  v54 = v52;
  do
  {
    v55 = v54 >> 1;
    v56 = &v53[2 * (v54 >> 1)];
    v58 = *v56;
    v57 = v56 + 2;
    v54 += ~(v54 >> 1);
    if (v58 < v50)
    {
      v53 = v57;
    }

    else
    {
      v54 = v55;
    }
  }

  while (v54);
  if (v53 != &v51[2 * v52] && *v53 == v50)
  {
    v60 = v53[1];
    *&v79 = v3;
    *(&v79 + 1) = v60;
    if (mlir::ShapedType::hasRank(&v79))
    {
      goto LABEL_96;
    }

    goto LABEL_3;
  }

LABEL_93:
  v79 = v3;
  if (mlir::ShapedType::hasRank(&v79))
  {
LABEL_96:
    v61 = *v3;
    {
      v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v63 = v61[1];
      v64 = *(v61 + 4);
      if (v64)
      {
LABEL_98:
        v65 = v63;
        v66 = v64;
        do
        {
          v67 = v66 >> 1;
          v68 = &v65[2 * (v66 >> 1)];
          v70 = *v68;
          v69 = v68 + 2;
          v66 += ~(v66 >> 1);
          if (v70 < v62)
          {
            v65 = v69;
          }

          else
          {
            v66 = v67;
          }
        }

        while (v66);
        if (v65 != &v63[2 * v64] && *v65 == v62)
        {
          v72 = v65[1];
          v77 = v3;
          v78 = v72;
          mlir::ShapedType::getShape(&v77);
          if (v73 >= 1)
          {
            goto LABEL_70;
          }

          goto LABEL_3;
        }
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v63 = v61[1];
      v64 = *(v61 + 4);
      if (v64)
      {
        goto LABEL_98;
      }
    }

    v77 = v3;
    v78 = 0;
    mlir::ShapedType::getShape(&v77);
    if (v71 >= 1)
    {
      goto LABEL_70;
    }
  }

LABEL_3:
  v76 = 261;
  v74 = "operand";
  v75 = 7;
  mlir::Operation::emitOpError(v81, v2, &v74);
  if (v81[0])
  {
    LODWORD(v79) = 3;
    *(&v79 + 1) = " #";
    v80 = 2;
    if (v83 >= v84)
    {
      if (v82 > &v79 || v82 + 24 * v83 <= &v79)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v82 + 24 * v83;
    v7 = v79;
    *(v6 + 2) = v80;
    *v6 = v7;
    v8 = ++v83;
    if (v81[0])
    {
      LODWORD(v79) = 5;
      *(&v79 + 1) = 0;
      if (v8 >= v84)
      {
        if (v82 > &v79 || v82 + 24 * v8 <= &v79)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v82 + 24 * v83;
      v10 = v79;
      *(v9 + 2) = v80;
      *v9 = v10;
      v11 = ++v83;
      if (v81[0])
      {
        LODWORD(v79) = 3;
        *(&v79 + 1) = " must be unranked.memref of any type values or non-0-ranked.memref of any type values, but got ";
        v80 = 95;
        if (v11 >= v84)
        {
          if (v82 > &v79 || v82 + 24 * v11 <= &v79)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v82 + 24 * v83;
        v13 = v79;
        *(v12 + 2) = v80;
        *v12 = v13;
        ++v83;
        if (v81[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v79, v3);
          if (v83 >= v84)
          {
            if (v82 > &v79 || v82 + 24 * v83 <= &v79)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v82 + 24 * v83;
          v15 = v79;
          *(v14 + 2) = v80;
          *v14 = v15;
          ++v83;
        }
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
  if (v81[0])
  {
    mlir::InFlightDiagnostic::report(v81);
  }

  if (v91 == 1)
  {
    if (v90 != &v91)
    {
      free(v90);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v89;
      v19 = __p;
      if (v89 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v89 = v17;
      operator delete(v19);
    }

    v20 = v86;
    if (v86)
    {
      v21 = v87;
      v22 = v86;
      if (v87 != v86)
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
        v22 = v86;
      }

      v87 = v20;
      operator delete(v22);
    }

    if (v82 != &v85)
    {
      free(v82);
    }
  }

  if (!v16)
  {
    return 0;
  }

LABEL_70:
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v45 = *this - 16;
  }

  else
  {
    v45 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v45, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::memref::DimOp::parse(mlir::memref::DimOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && (v5 = (*(*this + 40))(this), ((*(*this + 704))(this, v15, 1)) && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v12, 1)) && ((*(*this + 104))(this) & 1) != 0 && (IndexType = 0, ((*(*this + 536))(this, &IndexType)) && (v11 = IndexType, v6 = (*(*this + 32))(this), IndexType = mlir::Builder::getIndexType(v6, v7), mlir::OperationState::addTypes(a2, &IndexType, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v14, v10, v5, a2 + 16)))
  {
    return (*(*this + 728))(this, v12, IndexType, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::memref::DimOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v5, v19, v20);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ",", 1uLL);
  }

  else
  {
    *v9 = 44;
    ++v8[4];
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

unint64_t mlir::memref::DmaStartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

unint64_t mlir::memref::detail::DmaWaitOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::DmaWaitOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "AL__N_118SimplifyAllocConstIN4mlir6memref7AllocOpEEE";
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
      v28 = &dword_25738CB7F + v6;
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
  v25 = (&dword_25738CB7F + v23);
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
  if (*(&dword_25738CB7F + v5))
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::memref::DmaWaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v10 = a6;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  return mlir::OperationState::addOperands(a2, &v10, 1uLL);
}

unint64_t mlir::memref::DmaWaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v17 = a8;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
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

unint64_t mlir::memref::DmaWaitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::DmaWaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *this;
    if ((*(*this + 46) & 0x80) == 0)
    {
      v4 = 4294967294;
      v5 = 32;
LABEL_5:
      v6 = v5 + 24;
      v7 = 1;
      while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0)
      {
        ++v7;
        v6 += 32;
        if (!--v4)
        {
          v2 = *this;
          if ((*(*this + 46) & 0x80) != 0)
          {
            goto LABEL_11;
          }

          v8 = 0;
          v9 = 0xFFFFFFFFLL;
          goto LABEL_12;
        }
      }

      return 0;
    }

    v3 = (*(v2 + 17) - 1);
    v4 = v3 - 1;
    if (v3 != 1)
    {
      v5 = *(v2 + 9) + 32;
      goto LABEL_5;
    }

    v7 = 1;
LABEL_11:
    v10 = *(v2 + 17);
    v8 = *(v2 + 9);
    v9 = (v10 - 1);
LABEL_12:
    v11 = (v9 + 1);
    v12 = v11 - v9;
    if (v11 == v9)
    {
      return 1;
    }

    for (i = v8 + 32 * v9 + 24; (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0; i += 32)
    {
      ++v7;
      if (!--v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::memref::DmaWaitOp::parse(mlir::memref::DmaWaitOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v23[16] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v21 = v23;
  v22 = 0x400000000;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v19, 1) & 1) != 0 && ((*(*this + 312))(this))
  {
    (*(*this + 40))(this);
    if ((*(*this + 720))(this, &v21, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 328))(this) & 1) != 0 && ((*(*this + 120))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 704))(this, v16, 1))
      {
        (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
        {
          v13 = 0;
          if (mlir::AsmParser::parseType<mlir::MemRefType>(this, &v13))
          {
            v15 = v13;
            v6 = (*(*this + 32))(this);
            IndexType = mlir::Builder::getIndexType(v6, v7);
            if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v18, v14, v5, a2 + 16))
            {
              if (!v22)
              {
LABEL_15:
                v11 = (*(*this + 728))(this, v16, IndexType, a2 + 16) & 1;
                goto LABEL_17;
              }

              v9 = v21;
              v10 = 32 * v22;
              while (((*(*this + 728))(this, v9, IndexType, a2 + 16) & 1) != 0)
              {
                v9 += 32;
                v10 -= 32;
                if (!v10)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_17:
  if (v21 != v23)
  {
    free(v21);
  }

  return v11;
}

uint64_t mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::ExpandShapeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::ExpandShapeOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_N_118SimplifyAllocConstIN4mlir6memref7AllocOpEEE";
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
      v28 = &dword_25738CB7F + v6 + 3;
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
  v25 = (&dword_25738CB7F + v23 + 3);
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
  if (*(&dword_25738CB7F + v5 + 3))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::memref::ExpandShapeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      v33 = *(a1 + 24);
      Value = mlir::ArrayAttr::getValue(&v33);
      v4 = mlir::ArrayAttr::getValue(&v33);
      v6 = v4 + 8 * v5;
      if (v6 == Value)
      {
        return 1;
      }

      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v36 = *Value;
        v7 = mlir::ArrayAttr::getValue(&v36);
        v8 = mlir::ArrayAttr::getValue(&v36);
        v10 = v8 + 8 * v9;
        if (v10 != v7)
        {
          while (*v7)
          {
            if (*(**v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              break;
            }

            v34[0] = *v7;
            v37[0] = mlir::IntegerAttr::getType(v34);
            if (!mlir::Type::isSignlessInteger(v37, 64))
            {
              break;
            }

            v7 += 8;
            if (v7 == v10)
            {
              goto LABEL_11;
            }
          }

          break;
        }

LABEL_11:
        Value += 8;
        if (Value == v6)
        {
          return 1;
        }
      }

      v34[0] = "'memref.expand_shape' op attribute 'reassociation' failed to satisfy constraint: Array of 64-bit integer array attributes";
      v35 = 259;
      mlir::emitError(a2, v34, v37);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v43;
          v22 = __p;
          if (v43 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v43 = v20;
          operator delete(v22);
        }

        v15 = v40;
        if (!v40)
        {
          goto LABEL_63;
        }

        v23 = v41;
        v17 = v40;
        if (v41 == v40)
        {
LABEL_62:
          v41 = v15;
          operator delete(v17);
LABEL_63:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v11;
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
LABEL_61:
        v17 = v40;
        goto LABEL_62;
      }
    }

    else
    {
      v34[0] = "'memref.expand_shape' op requires attribute 'static_output_shape'";
      v35 = 259;
      mlir::emitError(a2, v34, v37);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v43;
          v28 = __p;
          if (v43 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v43 = v26;
          operator delete(v28);
        }

        v15 = v40;
        if (!v40)
        {
          goto LABEL_63;
        }

        v29 = v41;
        v17 = v40;
        if (v41 == v40)
        {
          goto LABEL_62;
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

        while (v29 != v15);
        goto LABEL_61;
      }
    }
  }

  else
  {
    v34[0] = "'memref.expand_shape' op requires attribute 'reassociation'";
    v35 = 259;
    mlir::emitError(a2, v34, v37);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v43;
        v14 = __p;
        if (v43 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v43 = v12;
        operator delete(v14);
      }

      v15 = v40;
      if (!v40)
      {
        goto LABEL_63;
      }

      v16 = v41;
      v17 = v40;
      if (v41 == v40)
      {
        goto LABEL_62;
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
      goto LABEL_61;
    }
  }

  return v11;
}

uint64_t mlir::memref::ExpandShapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_51;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_50;
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
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "reassociation", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v34, a4);
      if (v34[0])
      {
        LODWORD(v32) = 3;
        v33 = 58;
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
LABEL_51:
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
LABEL_50:
        v40 = v17;
        operator delete(v19);
        goto LABEL_51;
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
LABEL_49:
      v19 = v39;
      goto LABEL_50;
    }

    *a1 = v8;
  }

  if (mlir::DictionaryAttr::get(&v31, "static_output_shape", 0x13uLL))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  return 1;
}

uint64_t mlir::memref::ExpandShapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "reassociation", 0xD, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "static_output_shape", 0x13, v7);
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

unint64_t mlir::memref::ExpandShapeOp::computePropertiesHash(void *a1)
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

unint64_t mlir::memref::ExpandShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 19)
  {
    if (a4 == 13 && *a3 == 0x69636F7373616572 && *(a3 + 5) == 0x6E6F69746169636FLL)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x6F5F636974617473 || a3[1] != 0x68735F7475707475 || *(a3 + 11) != 0x65706168735F7475)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::memref::ExpandShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 19)
  {
    if (*a2 == 0x6F5F636974617473 && a2[1] == 0x68735F7475707475 && *(a2 + 11) == 0x65706168735F7475)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      result[1] = 0;
    }
  }

  else if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

  return result;
}

void mlir::memref::ExpandShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "reassociation", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "static_output_shape", 0x13uLL, v5);
  }
}

BOOL mlir::memref::ExpandShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v8, "reassociation", 13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v9) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::memref::ExpandShapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 256))
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::memref::ExpandShapeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::memref::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a5;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a8;
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a9;
  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

void mlir::memref::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a6;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::memref::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::memref::ExpandShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v37[0] = "requires attribute 'reassociation'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

LABEL_57:
    free(v35);
    return v18;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v37[0] = "requires attribute 'static_output_shape'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v45;
      v29 = __p;
      if (v45 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v45 = v27;
      operator delete(v29);
    }

    v30 = v42;
    if (v42)
    {
      v31 = v43;
      v32 = v42;
      if (v43 != v42)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
        v32 = v42;
      }

      v43 = v30;
      operator delete(v32);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

    goto LABEL_57;
  }

  v39[0] = v2;
  if ((mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v4, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39) & 1) == 0)
  {
    return 0;
  }

  v39[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v7) & 1) == 0 || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v10 = -1;
    v11 = 32;
LABEL_9:
    v12 = v11 + 24;
    v13 = 1;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) != 0)
    {
      ++v13;
      v12 += 32;
      if (!--v10)
      {
        v8 = *this;
        goto LABEL_13;
      }
    }

    return 0;
  }

  v9 = *(v8 + 17);
  v10 = v9 - 1;
  if (v9 != 1)
  {
    v11 = *(v8 + 9) + 32;
    goto LABEL_9;
  }

LABEL_13:
  v14 = *(v8 + 9);
  v15 = v8 - 16;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::memref::ExpandShapeOp::parse(mlir::memref::ExpandShapeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v35[16] = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v26 = 0;
  v27 = 0;
  v33 = v35;
  v34 = 0x400000000;
  v24[1] = 1;
  v25 = 0;
  v23 = 0;
  v24[0] = &v25;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v29, 1))
  {
    v6 = (*(*this + 32))(this);
    v8 = mlir::NoneType::get(*v6, v7);
    if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v27, v8))
    {
      if (v27)
      {
        v9 = *(a2 + 32);
        if (!v9)
        {
          operator new();
        }

        *v9 = v27;
      }

      v32 = 257;
      if ((*(*this + 400))(this, "output_shape", 12, v31))
      {
        (*(*this + 40))(this);
        v31[0] = 0;
        if (mlir::parseDynamicIndexList(this, &v33, &v26, v31, 0))
        {
          v10 = *(a2 + 32);
          if (!v10)
          {
            operator new();
          }

          *(v10 + 8) = v26;
          v22 = (*(*this + 40))(this);
          if ((*(*this + 488))(this, a2 + 112))
          {
            v11 = *(a2 + 1);
            v31[0] = this;
            v31[1] = &v22;
            v31[2] = a2;
            v12 = mlir::NamedAttrList::get(a2 + 112, **(v11 + 96));
            if (!v12 || (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v12, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v31) & 1) != 0)
            {
              v13 = mlir::NamedAttrList::get(a2 + 112, *(*(v11 + 96) + 8));
              if (!v13 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v13)) && ((*(*this + 104))(this))
              {
                v31[0] = 0;
                if (mlir::AsmParser::parseType<mlir::MemRefType>(this, v31))
                {
                  v25 = v31[0];
                  v32 = 257;
                  if ((*(*this + 400))(this, "into", 4, v31))
                  {
                    v31[0] = 0;
                    if (mlir::AsmParser::parseType<mlir::MemRefType>(this, v31))
                    {
                      v23 = v31[0];
                      v14 = (*(*this + 32))(this);
                      IndexType = mlir::Builder::getIndexType(v14, v15);
                      mlir::OperationState::addTypes(a2, &v23, 1);
                      if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v28, v24, v5, a2 + 16))
                      {
                        if (!v34)
                        {
                          v19 = 1;
                          v20 = v33;
                          if (v33 == v35)
                          {
                            return v19;
                          }

                          goto LABEL_28;
                        }

                        v17 = v33;
                        v18 = 32 * v34;
                        while (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) != 0)
                        {
                          v17 += 32;
                          v19 = 1;
                          v18 -= 32;
                          if (!v18)
                          {
                            goto LABEL_27;
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

  v19 = 0;
LABEL_27:
  v20 = v33;
  if (v33 != v35)
  {
LABEL_28:
    free(v20);
  }

  return v19;
}

uint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::memref::ExtractAlignedPointerAsIndexOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::memref::ExtractAlignedPointerAsIndexOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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

uint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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

uint64_t mlir::memref::ExtractAlignedPointerAsIndexOp::parse(mlir::memref::ExtractAlignedPointerAsIndexOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v15 = v17;
  v16 = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v13, 1) & 1) != 0 && ((*(*this + 104))(this))
  {
    v9 = 0;
    if (mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, &v9))
    {
      v11 = v9;
      if ((*(*this + 56))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &v15))
      {
        (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          mlir::OperationState::addTypes(a2, v15, v16);
          v6 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v12, v10, v5, a2 + 16) & 1;
          v7 = v15;
          if (v15 == v17)
          {
            return v6;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  v7 = v15;
  if (v15 != v17)
  {
LABEL_10:
    free(v7);
  }

  return v6;
}

void mlir::memref::ExtractAlignedPointerAsIndexOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v35 = *MEMORY[0x277D85DE8];
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
  v15 = v14[4];
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 15917;
    v14[4] += 2;
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

  v18 = *(*this + 9);
  v19 = *this - 16;
  if (!v18)
  {
    v19 = 0;
  }

  v30[0] = v19;
  v30[1] = v18;
  mlir::ResultRange::getTypes(v30, &v31);
  v20 = v32;
  v21 = v34;
  if (v32 != v34)
  {
    v22 = v31;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, v32);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v20 + 1; v21 != i; ++i)
    {
      v28 = (*(*a2 + 16))(a2);
      v29 = v28[4];
      if (v28[3] - v29 > 1uLL)
      {
        *v29 = 8236;
        v28[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v28, ", ", 2uLL);
      }

      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, i);
      (*(*a2 + 32))(a2, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v31 = &v33;
  v32 = 0x200000000;
  v30[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v30);
  (*(*a2 + 192))(a2, Value, v26, v31, v32);
  if (v31 != &v33)
  {
    free(v31);
  }
}

uint64_t mlir::memref::ExtractStridedMetadataOp::getODSResultIndexAndLength(mlir::memref::ExtractStridedMetadataOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "lectRegistry12addExtensionIJNS_6memref13MemRefDialectEEEEbPFvPNS_11MLIRContextEDpPT_EE9Extension";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_25738D644 + v5;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_25738D644 + v22);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = (*(*this + 36) - 2) >> 1;
  v31 = v30 - 1;
  v32 = v30 << 32;
  v33 = 0x100000000;
  if (*(&dword_25738D644 + v4))
  {
    v33 = v32;
  }

  return v33 | (a2 + v31 * v6);
}

unint64_t mlir::memref::ExtractStridedMetadataOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a9;
  result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  v18 = *(a2 + 76);
  v19 = *(a2 + 72) + 1;
  *(a2 + 72) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v19) = a4;
  v20 = *(a2 + 76);
  v21 = (*(a2 + 72) + 1);
  *(a2 + 72) = v21;
  if (a6 + v21 > v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    v22 = 0;
    v23 = *(a2 + 64) + 8 * v21;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a5, v22);
      *(v23 + 8 * v22++) = result;
    }

    while (a6 != v22);
    LODWORD(v21) = *(a2 + 72);
  }

  v24 = (v21 + a6);
  *(a2 + 72) = v24;
  if (a8 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v24;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a7, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a8 != v25);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + a8;
  return result;
}

void mlir::memref::ExtractStridedMetadataOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  v10 = v17;
  *&v23 = Dictionary;
  BYTE8(v23) = 0;
  v24[0] = 0;
  *&v24[8] = v16;
  if (Dictionary)
  {
    v14 = v17;
    v11 = mlir::Attribute::getContext(&v23);
    if (v24[0] == 1)
    {
      v24[0] = 0;
    }

    mlir::OperationName::OperationName(&v23 + 8, "memref.extract_strided_metadata", 31, v11);
    v24[0] = 1;
    v10 = v14;
  }

  *&v24[24] = v10;
  v21[0] = v23;
  v21[1] = *v24;
  v21[2] = *&v24[16];
  v22 = *(&v10 + 1);
  if ((mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(v5, v8, v9, v21, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v19;
  v13 = *(a2 + 72);
  if (v13 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v13), __src, 8 * v19);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(mlir::IndexType *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = *MEMORY[0x277D85DE8];
  *&v18 = a6;
  BYTE8(v18) = 0;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = a9;
  *&v20 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v18);
    if (v19 == 1)
    {
      LOBYTE(v19) = 0;
    }

    mlir::OperationName::OperationName(&v18 + 8, "memref.extract_strided_metadata", 31, Context);
    LOBYTE(v19) = 1;
    a1 = v13;
  }

  *(&v20 + 1) = a4;
  v21 = a5;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  v17 = a5;
  return mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(a1, a2, a3, v16, a11);
}

unint64_t mlir::memref::ExtractStridedMetadataOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::ExtractStridedMetadataOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::memref::ExtractStridedMetadataOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v24;
  v23 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  *&v27 = Dictionary;
  BYTE8(v27) = 0;
  v28[0] = 0;
  *&v28[8] = v21;
  if (Dictionary)
  {
    v18 = mlir::Attribute::getContext(&v27);
    if (v28[0] == 1)
    {
      v28[0] = 0;
    }

    mlir::OperationName::OperationName(&v27 + 8, "memref.extract_strided_metadata", 31, v18);
    v28[0] = 1;
  }

  *&v28[24] = a3;
  v29 = a4;
  v25[0] = v27;
  v25[1] = *v28;
  v25[2] = *&v28[16];
  v26 = a4;
  if ((mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(v13, v16, v17, v25, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v23;
  v20 = *(a2 + 72);
  if (v20 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v23);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::memref::ExtractStridedMetadataOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v111 = *MEMORY[0x277D85DE8];
  if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
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
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_6;
  }

  {
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v27 = v6[1];
    v28 = *(v6 + 4);
    if (!v28)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v56 = v6;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v27 = v56[1];
    v28 = *(v56 + 4);
    if (!v28)
    {
      goto LABEL_82;
    }
  }

  v29 = v27;
  v30 = v28;
  do
  {
    v31 = v30 >> 1;
    v32 = &v29[2 * (v30 >> 1)];
    v34 = *v32;
    v33 = v32 + 2;
    v30 += ~(v30 >> 1);
    if (v34 < v26)
    {
      v29 = v33;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30);
  if (v29 == &v27[2 * v28] || *v29 != v26)
  {
LABEL_82:
    v99 = v5;
    v100 = 0;
    mlir::ShapedType::getElementType(&v99);
    if (!mlir::isStrided(v5))
    {
      goto LABEL_6;
    }

    goto LABEL_85;
  }

  v57 = v29[1];
  v99 = v5;
  v100 = v57;
  mlir::ShapedType::getElementType(&v99);
  if (!mlir::isStrided(v5))
  {
    goto LABEL_6;
  }

LABEL_85:
  v58 = *v5;
  if (*(*v5 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_6;
  }

  {
    v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v60 = v58[1];
    v61 = *(v58 + 4);
    if (v61)
    {
      goto LABEL_88;
    }

LABEL_97:
    v61 = 0;
    v62 = v60;
    goto LABEL_98;
  }

  v68 = v58;
  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v59 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v60 = v68[1];
  v61 = *(v68 + 4);
  if (!v61)
  {
    goto LABEL_97;
  }

LABEL_88:
  v62 = v60;
  v63 = v61;
  do
  {
    v64 = v63 >> 1;
    v65 = &v62[2 * (v63 >> 1)];
    v67 = *v65;
    v66 = v65 + 2;
    v63 += ~(v63 >> 1);
    if (v67 < v59)
    {
      v62 = v66;
    }

    else
    {
      v63 = v64;
    }
  }

  while (v63);
LABEL_98:
  if (v62 != &v60[2 * v61] && *v62 == v59)
  {
    v69 = v62[1];
  }

  else
  {
    v69 = 0;
  }

  v93 = v5;
  v94 = v69;
  mlir::ShapedType::getElementType(&v93);
  v70 = *v5;
  {
    v71 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v72 = v70[1];
    v73 = *(v70 + 4);
    if (v73)
    {
      goto LABEL_104;
    }

LABEL_111:
    v73 = 0;
    v74 = v72;
    goto LABEL_112;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v71 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v72 = v70[1];
  v73 = *(v70 + 4);
  if (!v73)
  {
    goto LABEL_111;
  }

LABEL_104:
  v74 = v72;
  v75 = v73;
  do
  {
    v76 = v75 >> 1;
    v77 = &v74[2 * (v75 >> 1)];
    v79 = *v77;
    v78 = v77 + 2;
    v75 += ~(v75 >> 1);
    if (v79 < v71)
    {
      v74 = v78;
    }

    else
    {
      v75 = v76;
    }
  }

  while (v75);
LABEL_112:
  if (v74 != &v72[2 * v73] && *v74 == v71)
  {
    v80 = v74[1];
    *&v97 = v5;
    *(&v97 + 1) = v80;
    if (!mlir::ShapedType::hasRank(&v97))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v97 = v5;
    if (!mlir::ShapedType::hasRank(&v97))
    {
      goto LABEL_6;
    }
  }

  v81 = *v5;
  {
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = v81[1];
    v84 = *(v81 + 4);
    if (v84)
    {
      goto LABEL_119;
    }

LABEL_128:
    v84 = 0;
    v85 = v83;
    goto LABEL_129;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v83 = v81[1];
  v84 = *(v81 + 4);
  if (!v84)
  {
    goto LABEL_128;
  }

LABEL_119:
  v85 = v83;
  v86 = v84;
  do
  {
    v87 = v86 >> 1;
    v88 = &v85[2 * (v86 >> 1)];
    v90 = *v88;
    v89 = v88 + 2;
    v86 += ~(v86 >> 1);
    if (v90 < v82)
    {
      v85 = v89;
    }

    else
    {
      v86 = v87;
    }
  }

  while (v86);
LABEL_129:
  if (v85 != &v83[2 * v84] && *v85 == v82)
  {
    v91 = v85[1];
  }

  else
  {
    v91 = 0;
  }

  v96[0] = v5;
  v96[1] = v91;
  mlir::ShapedType::getShape(v96);
  if (v92)
  {
LABEL_6:
    v95 = 261;
    v93 = "result";
    v94 = 6;
    mlir::Operation::emitOpError(&v99, v4, &v93);
    if (v99)
    {
      LODWORD(v97) = 3;
      *(&v97 + 1) = " #";
      v98 = 2;
      if (v102 >= v103)
      {
        if (v101 > &v97 || v101 + 24 * v102 <= &v97)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v101 + 24 * v102;
      v8 = v97;
      *(v7 + 2) = v98;
      *v7 = v8;
      v9 = ++v102;
      if (v99)
      {
        LODWORD(v97) = 5;
        *(&v97 + 1) = 0;
        if (v9 >= v103)
        {
          if (v101 > &v97 || v101 + 24 * v9 <= &v97)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v101 + 24 * v102;
        v11 = v97;
        *(v10 + 2) = v98;
        *v10 = v11;
        v12 = ++v102;
        if (v99)
        {
          LODWORD(v97) = 3;
          *(&v97 + 1) = " must be strided memref of any type values of rank 0, but got ";
          v98 = 62;
          if (v12 >= v103)
          {
            if (v101 > &v97 || v101 + 24 * v12 <= &v97)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v101 + 24 * v102;
          v14 = v97;
          *(v13 + 2) = v98;
          *v13 = v14;
          ++v102;
          if (v99)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v97, v5);
            if (v102 >= v103)
            {
              if (v101 > &v97 || v101 + 24 * v102 <= &v97)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v15 = v101 + 24 * v102;
            v16 = v97;
            *(v15 + 2) = v98;
            *v15 = v16;
            ++v102;
          }
        }
      }
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v99);
    if (v99)
    {
      mlir::InFlightDiagnostic::report(&v99);
    }

    if (v110 == 1)
    {
      if (v109 != &v110)
      {
        free(v109);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v108;
        v20 = __p;
        if (v108 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v108 = v18;
        operator delete(v20);
      }

      v21 = v105;
      if (v105)
      {
        v22 = v106;
        v23 = v105;
        if (v106 != v105)
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
          v23 = v105;
        }

        v106 = v21;
        operator delete(v23);
      }

      if (v101 != &v104)
      {
        free(v101);
      }
    }

    if (!v17)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v35 = *this - 16;
  }

  else
  {
    v35 = 0;
  }

  v36 = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 1);
  v37 = mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0);
  if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(v37 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u))
  {
    v38 = *(*this + 9);
    v39 = v38 - 2;
    if (v38)
    {
      v40 = *this - 16;
    }

    else
    {
      v40 = 0;
    }

    v41 = 2;
    v42 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 2);
    if (v39 < 2)
    {
LABEL_57:
      v46 = *(*this + 9);
      v47 = v46 - 2;
      v48 = (v46 - 2) >> 1;
      if (v46)
      {
        v49 = *this - 16;
      }

      else
      {
        v49 = 0;
      }

      v50 = mlir::detail::OpResultImpl::getNextResultAtOffset(v49, v48 + 2);
      if (v47 < 2)
      {
        return 1;
      }

      v52 = v50;
      v53 = 0;
      v54 = v48 + 2 + v48 - (v48 + 2);
      while (1)
      {
        v55 = mlir::detail::OpResultImpl::getNextResultAtOffset(v52, v53);
        if ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(v55 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v41) & 1) == 0)
        {
          break;
        }

        ++v41;
        ++v53;
        result = 1;
        if (v54 == v53)
        {
          return result;
        }
      }
    }

    else
    {
      v43 = v42;
      v44 = 0;
      while (1)
      {
        v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, v44);
        if ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(v45 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v44 + 2) & 1) == 0)
        {
          break;
        }

        if (v39 >> 1 == ++v44)
        {
          v41 = v44 + 2;
          goto LABEL_57;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::parse(mlir::memref::ExtractStridedMetadataOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v15 = v17;
  v16 = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v13, 1) & 1) != 0 && ((*(*this + 104))(this))
  {
    v9 = 0;
    if (mlir::AsmParser::parseType<mlir::MemRefType>(this, &v9))
    {
      v11 = v9;
      if ((*(*this + 56))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &v15))
      {
        (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          mlir::OperationState::addTypes(a2, v15, v16);
          v6 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v12, v10, v5, a2 + 16) & 1;
          v7 = v15;
          if (v15 == v17)
          {
            return v6;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  v7 = v15;
  if (v15 != v17)
  {
LABEL_10:
    free(v7);
  }

  return v6;
}

void mlir::memref::ExtractStridedMetadataOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v35 = *MEMORY[0x277D85DE8];
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
  v15 = v14[4];
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 15917;
    v14[4] += 2;
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

  v18 = *(*this + 9);
  v19 = *this - 16;
  if (!v18)
  {
    v19 = 0;
  }

  v30[0] = v19;
  v30[1] = v18;
  mlir::ResultRange::getTypes(v30, &v31);
  v20 = v32;
  v21 = v34;
  if (v32 != v34)
  {
    v22 = v31;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, v32);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v20 + 1; v21 != i; ++i)
    {
      v28 = (*(*a2 + 16))(a2);
      v29 = v28[4];
      if (v28[3] - v29 > 1uLL)
      {
        *v29 = 8236;
        v28[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v28, ", ", 2uLL);
      }

      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, i);
      (*(*a2 + 32))(a2, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v31 = &v33;
  v32 = 0x200000000;
  v30[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v30);
  (*(*a2 + 192))(a2, Value, v26, v31, v32);
  if (v31 != &v33)
  {
    free(v31);
  }
}

uint64_t mlir::memref::detail::GetGlobalOpGenericAdaptorBase::GetGlobalOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::memref::detail::GetGlobalOpGenericAdaptorBase::getName(mlir::memref::detail::GetGlobalOpGenericAdaptorBase *this)
{
  v2 = *(this + 3);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::memref::GetGlobalOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'memref.get_global' op requires attribute 'name'";
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

uint64_t mlir::memref::GetGlobalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

      v24 = v37 + 24 * v38;
      v25 = v34;
      *(v24 + 2) = v35;
      *v24 = v25;
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

    v26 = __p;
    if (__p)
    {
      v27 = v44;
      v28 = __p;
      if (v44 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v44 = v26;
      operator delete(v28);
    }

    v19 = v41;
    if (!v41)
    {
      goto LABEL_51;
    }

    v29 = v42;
    v21 = v41;
    if (v42 == v41)
    {
      goto LABEL_50;
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
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "name", 4uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v36[0] = v10;
  if (v10)
  {
    mlir::SymbolRefAttr::getNestedReferences(v36);
    if (!v11)
    {
      *a1 = v9;
      return 1;
    }
  }

  a3(v36, a4);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    v35 = 49;
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

      v14 = v37 + 24 * v38;
      v15 = v34;
      *(v14 + 2) = v35;
      *v14 = v15;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if ((v46 & 1) == 0)
  {
    return 0;
  }

  if (v45 != &v46)
  {
    free(v45);
  }

  v16 = __p;
  if (__p)
  {
    v17 = v44;
    v18 = __p;
    if (v44 != __p)
    {
      do
      {
        v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    v44 = v16;
    operator delete(v18);
  }

  v19 = v41;
  if (v41)
  {
    v20 = v42;
    v21 = v41;
    if (v42 == v41)
    {
LABEL_50:
      v42 = v19;
      operator delete(v21);
      goto LABEL_51;
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
LABEL_49:
    v21 = v41;
    goto LABEL_50;
  }

LABEL_51:
  if (v37 != &v40)
  {
    free(v37);
  }

  return 0;
}

uint64_t mlir::memref::GetGlobalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

unint64_t mlir::memref::GetGlobalOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::GetGlobalOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
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

void *mlir::memref::GetGlobalOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    v10[3] = v4;
    v10[4] = v5;
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      v10[0] = v6;
      if (v6)
      {
        v7 = result;
        mlir::SymbolRefAttr::getNestedReferences(v10);
        result = v7;
        if (v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = a4;
        }
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

uint64_t mlir::memref::GetGlobalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "name", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::memref::GetGlobalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v2) & 1;
}

uint64_t mlir::memref::GetGlobalOp::setName(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::SymbolRefAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::memref::GetGlobalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 256);
  if (!v4)
  {
    operator new();
  }

  *v4 = a4;
  v5 = *(a2 + 72);
  if (v5 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v5) = a3;
  ++*(a2 + 72);
}

void mlir::memref::GetGlobalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a5;
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
      *(v11 + 8 * v10) = mlir::TypeRange::dereference_iterator(a3, v10);
      ++v10;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
}

uint64_t mlir::memref::GetGlobalOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, const llvm::Twine *a5)
{
  result = mlir::SymbolRefAttr::get(*a1, a4, a5);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = result;
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::GetGlobalOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, const llvm::Twine *a6)
{
  result = mlir::SymbolRefAttr::get(*a1, a5, a6);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = result;
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

uint64_t mlir::memref::GetGlobalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::memref::GetGlobalOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v69 = v2;
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v69) & 1) == 0)
    {
      return 0;
    }

    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    v6 = *this;
    v7 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    if (*(*v7 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
LABEL_7:
      v66 = 261;
      v64 = "result";
      v65 = 6;
      mlir::Operation::emitOpError(&v69, v6, &v64);
      if (v69)
      {
        LODWORD(v67) = 3;
        *(&v67 + 1) = " #";
        v68 = 2;
        if (v72 >= v73)
        {
          if (v71 > &v67 || v71 + 24 * v72 <= &v67)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v71 + 24 * v72;
        v10 = v67;
        *(v9 + 2) = v68;
        *v9 = v10;
        v11 = ++v72;
        if (v69)
        {
          LODWORD(v67) = 5;
          *(&v67 + 1) = 0;
          if (v11 >= v73)
          {
            if (v71 > &v67 || v71 + 24 * v11 <= &v67)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v71 + 24 * v72;
          v13 = v67;
          *(v12 + 2) = v68;
          *v12 = v13;
          v14 = ++v72;
          if (v69)
          {
            LODWORD(v67) = 3;
            *(&v67 + 1) = " must be statically shaped memref of any type values, but got ";
            v68 = 62;
            if (v14 >= v73)
            {
              if (v71 > &v67 || v71 + 24 * v14 <= &v67)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v15 = v71 + 24 * v72;
            v16 = v67;
            *(v15 + 2) = v68;
            *v15 = v16;
            ++v72;
            if (v69)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v67, v7);
              if (v72 >= v73)
              {
                if (v71 > &v67 || v71 + 24 * v72 <= &v67)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v17 = v71 + 24 * v72;
              v18 = v67;
              *(v17 + 2) = v68;
              *v17 = v18;
              ++v72;
            }
          }
        }
      }

      v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
      if (v69)
      {
        mlir::InFlightDiagnostic::report(&v69);
      }

      if (v80 == 1)
      {
        if (v79 != &v80)
        {
          free(v79);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v78;
          v22 = __p;
          if (v78 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v78 = v20;
          operator delete(v22);
        }

        v23 = v75;
        if (v75)
        {
          v24 = v76;
          v25 = v75;
          if (v76 != v75)
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
            v25 = v75;
          }

          v76 = v23;
          operator delete(v25);
        }

        if (v71 != v74)
        {
          free(v71);
        }
      }

      return v19;
    }

    {
      v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v38 = v8[1];
      v39 = *(v8 + 4);
      if (!v39)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v47 = v8;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v38 = v47[1];
      v39 = *(v47 + 4);
      if (!v39)
      {
        goto LABEL_84;
      }
    }

    v40 = v38;
    v41 = v39;
    do
    {
      v42 = v41 >> 1;
      v43 = &v40[2 * (v41 >> 1)];
      v45 = *v43;
      v44 = v43 + 2;
      v41 += ~(v41 >> 1);
      if (v45 < v37)
      {
        v40 = v44;
      }

      else
      {
        v41 = v42;
      }
    }

    while (v41);
    if (v40 != &v38[2 * v39] && *v40 == v37)
    {
      v58 = v40[1];
      v69 = v7;
      v70 = v58;
      mlir::ShapedType::getElementType(&v69);
      v48 = *v7;
      {
LABEL_85:
        v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v50 = v48[1];
        v51 = *(v48 + 4);
        if (!v51)
        {
          goto LABEL_97;
        }

LABEL_86:
        v52 = v50;
        v53 = v51;
        do
        {
          v54 = v53 >> 1;
          v55 = &v52[2 * (v53 >> 1)];
          v57 = *v55;
          v56 = v55 + 2;
          v53 += ~(v53 >> 1);
          if (v57 < v49)
          {
            v52 = v56;
          }

          else
          {
            v53 = v54;
          }
        }

        while (v53);
        if (v52 != &v50[2 * v51] && *v52 == v49)
        {
          v60 = v52[1];
          v64 = v7;
          v65 = v60;
          if (!mlir::ShapedType::hasRank(&v64))
          {
            goto LABEL_7;
          }

LABEL_100:
          Shape = mlir::ShapedType::getShape(&v64);
          if (!v62)
          {
            return 1;
          }

          v63 = 8 * v62;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v63 -= 8;
            if (!v63)
            {
              return 1;
            }
          }

          goto LABEL_7;
        }

LABEL_97:
        v64 = v7;
        v65 = 0;
        if (!mlir::ShapedType::hasRank(&v64))
        {
          goto LABEL_7;
        }

        goto LABEL_100;
      }

LABEL_94:
      v59 = v48;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v50 = v59[1];
      v51 = *(v59 + 4);
      if (!v51)
      {
        goto LABEL_97;
      }

      goto LABEL_86;
    }

LABEL_84:
    v69 = v7;
    v70 = 0;
    mlir::ShapedType::getElementType(&v69);
    v48 = *v7;
    {
      goto LABEL_85;
    }

    goto LABEL_94;
  }

  v64 = "requires attribute 'name'";
  v66 = 259;
  mlir::OpState::emitOpError(this, &v64, &v69);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
  if (v69)
  {
    mlir::InFlightDiagnostic::report(&v69);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v78;
      v31 = __p;
      if (v78 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v78 = v29;
      operator delete(v31);
    }

    v32 = v75;
    if (v75)
    {
      v33 = v76;
      v34 = v75;
      if (v76 != v75)
      {
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
        v34 = v75;
      }

      v76 = v32;
      operator delete(v34);
    }

    if (v71 != v74)
    {
      free(v71);
    }
  }

  return v28;
}

uint64_t mlir::memref::GetGlobalOp::parse(mlir::memref::GetGlobalOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v16 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if ((mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(this, &v16, v7) & 1) == 0)
  {
    return 0;
  }

  if (v16)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v16;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v14[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v14))
  {
    return 0;
  }

  v9 = v14[0];
  v15 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 1);
  v14[0] = this;
  v14[1] = &v15;
  v14[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v11, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GetGlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a2 + 18);
  if (v12 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v12) = v9;
  ++*(a2 + 18);
  return 1;
}

void mlir::memref::GetGlobalOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  if (*(*this + 9))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = v19;
  v19[0] = "name";
  v19[1] = 4;
  v18 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v15, v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }
}

uint64_t mlir::memref::detail::GlobalOpGenericAdaptorBase::GlobalOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::memref::detail::GlobalOpGenericAdaptorBase::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 56);
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

uint64_t mlir::memref::detail::GlobalOpGenericAdaptorBase::getAlignment(mlir::memref::detail::GlobalOpGenericAdaptorBase *this)
{
  v7 = *(this + 3);
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

  result = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    v4 = *v1;
    MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    return v4;
  }

  return result;
}

uint64_t mlir::memref::GlobalOpAdaptor::verify(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1[6])
  {
    if (a1[8])
    {
      v3 = a1[3];
      Type = a1[8];
      if (*(*mlir::TypeAttr::getValue(&Type) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        if (v3 && (v26[0] = v3, Type = mlir::IntegerAttr::getType(v26), !mlir::Type::isSignlessInteger(&Type, 64)))
        {
          v26[0] = "'memref.global' op attribute 'alignment' failed to satisfy constraint: 64-bit signless integer attribute";
          v27 = 259;
          mlir::emitError(a2, v26, &Type);
          v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
          if (Type)
          {
            mlir::InFlightDiagnostic::report(&Type);
          }

          if (v37 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v29);
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        v26[0] = "'memref.global' op attribute 'type' failed to satisfy constraint: memref type attribute";
        v27 = 259;
        mlir::emitError(a2, v26, &Type);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v37 == 1)
        {
          if (v36 != &v37)
          {
            free(v36);
          }

          v5 = __p;
          if (__p)
          {
            v6 = v35;
            v7 = __p;
            if (v35 != __p)
            {
              do
              {
                v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
              }

              while (v6 != v5);
              v7 = __p;
            }

            v35 = v5;
            operator delete(v7);
          }

          v8 = v32;
          if (!v32)
          {
            goto LABEL_54;
          }

          v9 = v33;
          v10 = v32;
          if (v33 == v32)
          {
LABEL_53:
            v33 = v8;
            operator delete(v10);
LABEL_54:
            if (v30 != &v31)
            {
              free(v30);
            }

            return v4;
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
LABEL_52:
          v10 = v32;
          goto LABEL_53;
        }
      }
    }

    else
    {
      v26[0] = "'memref.global' op requires attribute 'type'";
      v27 = 259;
      mlir::emitError(a2, v26, &Type);
      v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v35;
          v21 = __p;
          if (v35 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v35 = v19;
          operator delete(v21);
        }

        v8 = v32;
        if (!v32)
        {
          goto LABEL_54;
        }

        v22 = v33;
        v10 = v32;
        if (v33 == v32)
        {
          goto LABEL_53;
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
        goto LABEL_52;
      }
    }
  }

  else
  {
    v26[0] = "'memref.global' op requires attribute 'sym_name'";
    v27 = 259;
    mlir::emitError(a2, v26, &Type);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v35;
        v15 = __p;
        if (v35 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v35 = v13;
        operator delete(v15);
      }

      v8 = v32;
      if (!v32)
      {
        goto LABEL_54;
      }

      v16 = v33;
      v10 = v32;
      if (v33 == v32)
      {
        goto LABEL_53;
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
      goto LABEL_52;
    }
  }

  return v4;
}

uint64_t mlir::memref::GlobalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v62 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v48 = v6;
  if (!v6)
  {
    a3(v51, a4);
    if (v51[0])
    {
      LODWORD(v49) = 3;
      *(&v49 + 1) = "expected DictionaryAttr to set properties";
      v50 = 41;
      if (v53 >= v54)
      {
        if (v52 > &v49 || v52 + 24 * v53 <= &v49)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v52 + 24 * v53;
      v23 = v49;
      *(v22 + 2) = v50;
      *v22 = v23;
      ++v53;
      if (v51[0])
      {
        mlir::InFlightDiagnostic::report(v51);
      }
    }

    if (v61 != 1)
    {
      return 0;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v59;
      v26 = __p;
      if (v59 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v59 = v24;
      operator delete(v26);
    }

    v17 = v56;
    if (!v56)
    {
      goto LABEL_70;
    }

    v27 = v57;
    v19 = v56;
    if (v57 == v56)
    {
LABEL_69:
      v57 = v17;
      operator delete(v19);
LABEL_70:
      if (v52 != &v55)
      {
        free(v52);
      }

      return 0;
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
LABEL_68:
    v19 = v56;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v48, "alignment", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v51, a4);
      if (v51[0])
      {
        LODWORD(v49) = 3;
        v50 = 54;
        if (v53 >= v54)
        {
          if (v52 > &v49 || v52 + 24 * v53 <= &v49)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v52 + 24 * v53;
        v11 = v49;
        *(v10 + 2) = v50;
        *v10 = v11;
        ++v53;
        if (v51[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v49, v9);
          if (v53 >= v54)
          {
            if (v52 > &v49 || v52 + 24 * v53 <= &v49)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v52 + 24 * v53;
          v13 = v49;
          *(v12 + 2) = v50;
          *v12 = v13;
          ++v53;
          if (v51[0])
          {
            mlir::InFlightDiagnostic::report(v51);
          }
        }
      }

      if ((v61 & 1) == 0)
      {
        return 0;
      }

      if (v60 != &v61)
      {
        free(v60);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v59;
        v16 = __p;
        if (v59 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v59 = v14;
        operator delete(v16);
      }

      v17 = v56;
      if (!v56)
      {
        goto LABEL_70;
      }

      v18 = v57;
      v19 = v56;
      if (v57 == v56)
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

  v30 = mlir::DictionaryAttr::get(&v48, "constant", 8uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(v51, a4);
      if (v51[0])
      {
        LODWORD(v49) = 3;
        v50 = 53;
        if (v53 >= v54)
        {
          if (v52 > &v49 || v52 + 24 * v53 <= &v49)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v52 + 24 * v53;
        v33 = v49;
        *(v32 + 2) = v50;
        *v32 = v33;
        ++v53;
        if (v51[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v49, v31);
          if (v53 >= v54)
          {
            if (v52 > &v49 || v52 + 24 * v53 <= &v49)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v52 + 24 * v53;
          v35 = v49;
          *(v34 + 2) = v50;
          *v34 = v35;
          ++v53;
          if (v51[0])
          {
            mlir::InFlightDiagnostic::report(v51);
          }
        }
      }

      if ((v61 & 1) == 0)
      {
        return 0;
      }

      if (v60 != &v61)
      {
        free(v60);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v59;
        v38 = __p;
        if (v59 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v59 = v36;
        operator delete(v38);
      }

      v17 = v56;
      if (!v56)
      {
        goto LABEL_70;
      }

      v39 = v57;
      v19 = v56;
      if (v57 == v56)
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

  v42 = mlir::DictionaryAttr::get(&v48, "initial_value", 0xDuLL);
  if (v42)
  {
    a1[2] = v42;
  }

  v43 = mlir::DictionaryAttr::get(&v48, "sym_name", 8uLL);
  *&v49 = v43;
  if (!v43)
  {
LABEL_79:
    v45 = mlir::DictionaryAttr::get(&v48, "sym_visibility", 0xEuLL);
    *&v49 = v45;
    if (v45)
    {
      if (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(v51, a4);
        goto LABEL_86;
      }

      a1[4] = v45;
    }

    v46 = mlir::DictionaryAttr::get(&v48, "type", 4uLL);
    *&v49 = v46;
    if (v46)
    {
      if (*(*v46 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(v51, a4);
        goto LABEL_86;
      }

      a1[5] = v46;
    }

    return 1;
  }

  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v43;
    goto LABEL_79;
  }

  a3(v51, a4);
LABEL_86:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v44, &v49);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v51);
  return 0;
}

uint64_t mlir::memref::GlobalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v30, "alignment", 9, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v30, "constant", 8, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v30, "initial_value", 0xD, v11);
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
    v16 = mlir::Builder::getNamedAttr(&v30, "sym_name", 8, v15);
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
    v20 = mlir::Builder::getNamedAttr(&v30, "sym_visibility", 0xE, v19);
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
    v24 = mlir::Builder::getNamedAttr(&v30, "type", 4, v23);
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

unint64_t mlir::memref::GlobalOp::computePropertiesHash(void *a1)
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

uint64_t mlir::memref::GlobalOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 8)
  {
    if (__n == 4)
    {
      if (!memcmp(__s1, "type", 4uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 8)
    {
      if (!memcmp(__s1, "constant", 8uLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "sym_name", 8uLL))
      {
        return a2[3];
      }
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "sym_visibility", 0xEuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "initial_value", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 != 0x6E656D6E67696C61 || *(__s1 + 8) != 116)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::GlobalOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      result = memcmp(__s1, "type", 4uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[5] = v10;
        }

        else
        {
          v5[5] = 0;
        }
      }
    }

    else if (a3 == 8)
    {
      result = memcmp(__s1, "constant", 8uLL);
      if (result)
      {
        result = memcmp(__s1, "sym_name", 8uLL);
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

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        v5[1] = v12;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 14)
  {
    result = memcmp(__s1, "sym_visibility", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[4] = v9;
      }

      else
      {
        v5[4] = 0;
      }
    }
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "initial_value", 0xDuLL);
    if (!result)
    {
      v5[2] = a4;
    }
  }

  else if (a3 == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *result = v11;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::GlobalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "constant", 8uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "initial_value", 0xDuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "type", 4uLL, v9);
  }
}

BOOL mlir::memref::GlobalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v8, "alignment", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "constant", 8, a3, a4) & 1) != 0)
    {
      mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v10, "sym_name", 8, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v11, "sym_visibility", 14, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
          if (!v12 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(v12, "type", 4, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v27 = a1;
    v7 = a4;
    v8 = a5;
    Value = mlir::TypeAttr::getValue(&v27);
    a5 = v8;
    a4 = v7;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      return 1;
    }
  }

  a4(&v27, a5);
  if (v27)
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

    v10 = v29 + 24 * v30;
    v11 = v24;
    *(v10 + 2) = v25;
    *v10 = v11;
    ++v30;
    if (v27)
    {
      v26 = 261;
      *&v24 = a2;
      *(&v24 + 1) = a3;
      mlir::Diagnostic::operator<<(&v28, &v24);
      if (v27)
      {
        LODWORD(v24) = 3;
        *(&v24 + 1) = "' failed to satisfy constraint: memref type attribute";
        v25 = 53;
        if (v30 >= v31)
        {
          if (v29 > &v24 || v29 + 24 * v30 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v29 + 24 * v30;
        v13 = v24;
        *(v12 + 2) = v25;
        *v12 = v13;
        ++v30;
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
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

  return v14;
}

uint64_t mlir::memref::GlobalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1) && ((*(*a1 + 56))(a1, v3 + 2) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::memref::GlobalOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::memref::GlobalOp::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
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

uint64_t mlir::memref::GlobalOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::memref::GlobalOp::setSymVisibility(uint64_t result, uint64_t a2)
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
    *(v2 + 96) = result;
  }

  else
  {
    *(v2 + 96) = 0;
  }

  return result;
}

uint64_t mlir::memref::GlobalOp::setType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::memref::GlobalOp::setConstant(uint64_t this, int a2)
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

uint64_t mlir::memref::GlobalOp::setAlignment(uint64_t result, unint64_t a2, char a3)
{
  v3 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (a3)
  {
    v5 = result;
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = mlir::Attribute::getContext((*v5 + 24));
    IntegerType = mlir::Builder::getIntegerType(&v7, 64);
    result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
    *(v3 + 64) = result;
  }

  else
  {
    *(v3 + 64) = 0;
  }

  return result;
}

void mlir::memref::GlobalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 24) = a3;
  if (a4)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 32) = a4;
  }

  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 40) = a5;
  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 16) = a6;
  }

  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 8) = a7;
  }

  if (a8)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a8;
  }
}

void mlir::memref::GlobalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 24) = a5;
  if (a6)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 32) = a6;
  }

  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 40) = a7;
  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 16) = a8;
  }

  if (a9)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 8) = a9;
  }

  if (a10)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *v18 = a10;
  }

  v19 = *(a2 + 72);
  if (a4 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v20 = 0;
    v21 = *(a2 + 64) + 8 * v19;
    do
    {
      *(v21 + 8 * v20) = mlir::TypeRange::dereference_iterator(a3, v20);
      ++v20;
    }

    while (a4 != v20);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + a4;
}

uint64_t mlir::memref::GlobalOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v25 = 261;
  v24[0] = a3;
  v24[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v24, a3);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = StringAttr;
  if (a5)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 32) = a5;
  }

  result = mlir::TypeAttr::get(a6);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 40) = result;
  if (a7)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 16) = a7;
  }

  if (a8)
  {
    result = mlir::Builder::getUnitAttr(a1, v19);
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = result;
  }

  if (a9)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = a9;
  }

  return result;
}

unint64_t mlir::memref::GlobalOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v30 = 261;
  v29[0] = a5;
  v29[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v29, a3);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = StringAttr;
  if (a7)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 32) = a7;
  }

  result = mlir::TypeAttr::get(a8);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 40) = result;
  if (a9)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a9;
  }

  if (a10)
  {
    result = mlir::Builder::getUnitAttr(a1, v21);
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 8) = result;
  }

  if (a11)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *v25 = a11;
  }

  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v27 = 0;
    v28 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v27);
      *(v28 + 8 * v27++) = result;
    }

    while (a4 != v27);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::memref::GlobalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::memref::GlobalOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[3];
  if (v5)
  {
    v6 = v2[5];
    if (v6)
    {
      v8 = v2[1];
      v9 = v2[4];
      v31[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_visibility", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(v6, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "constant", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0)
      {
        return 0;
      }

      v31[0] = *this;
      return mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v3, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1;
    }

    v29[0] = "requires attribute 'type'";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, v31);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v37;
        v21 = __p;
        if (v37 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v37 = v19;
        operator delete(v21);
      }

      v22 = v34;
      if (v34)
      {
        v23 = v35;
        v24 = v34;
        if (v35 != v34)
        {
          do
          {
            v26 = *--v23;
            v25 = v26;
            *v23 = 0;
            if (v26)
            {
              MEMORY[0x259C63150](v25, 0x1000C8077774924);
            }
          }

          while (v23 != v22);
          v24 = v34;
        }

        v35 = v22;
        operator delete(v24);
      }

      v27 = v32;
      if (v32 != v33)
      {
LABEL_48:
        free(v27);
      }
    }
  }

  else
  {
    v29[0] = "requires attribute 'sym_name'";
    v30 = 259;
    mlir::OpState::emitOpError(this, v29, v31);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v37;
        v13 = __p;
        if (v37 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v37 = v11;
        operator delete(v13);
      }

      v14 = v34;
      if (v34)
      {
        v15 = v35;
        v16 = v34;
        if (v35 != v34)
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
          v16 = v34;
        }

        v35 = v14;
        operator delete(v16);
      }

      v27 = v32;
      if (v32 != v33)
      {
        goto LABEL_48;
      }
    }
  }

  return v10;
}

uint64_t mlir::memref::GlobalOp::parse(mlir::memref::GlobalOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  v8 = (*(*this + 472))(this, &v46, v7);
  if ((v8 & 0x100) != 0)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (v46)
    {
      v9 = *(a2 + 32);
      if (!v9)
      {
        operator new();
      }

      *(v9 + 32) = v46;
    }
  }

  if ((*(*this + 408))(this, "constant", 8))
  {
    v10 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v10, v11);
    v13 = *(a2 + 32);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = UnitAttr;
  }

  if (!mlir::AsmParser::parseSymbolName(this, &v45))
  {
    return 0;
  }

  if (v45)
  {
    v14 = *(a2 + 32);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 24) = v45;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v50 = 0;
  if (((*(*this + 536))(this, &v50) & 1) == 0)
  {
    return 0;
  }

  v15 = v50;
  if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v15 = 0;
  }

  v49 = v15;
  if (v15 && mlir::BaseMemRefType::hasRank(&v49))
  {
    Shape = mlir::MemRefType::getShape(&v49);
    if (!v17)
    {
LABEL_26:
      v19 = mlir::TypeAttr::get(v50);
      if ((*(*this + 144))(this))
      {
        if ((*(*this + 408))(this, "uninitialized", 13))
        {
          Context = mlir::AsmParser::getContext(this);
          v44 = mlir::UnitAttr::get(Context, v21);
        }

        else
        {
          TensorTypeFromMemRefType = mlir::memref::getTensorTypeFromMemRefType(v49);
          if (((*(*this + 440))(this, &v44, TensorTypeFromMemRefType) & 1) == 0)
          {
            return 0;
          }

          if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(&v44))
          {
            v41 = (*(*this + 16))(this);
            v48 = 257;
            (*(*this + 24))(v53, this, v41, v47);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v53, "initial value should be a unit or elements attribute");
            v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v53);
            if (!v43)
            {
              return 0;
            }
          }
        }
      }

      goto LABEL_56;
    }

    v18 = 8 * v17;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_26;
      }
    }
  }

  v22 = (*(*this + 16))(this);
  v48 = 257;
  (*(*this + 24))(v53, this, v22, v47);
  if (v53[0])
  {
    LODWORD(v51) = 3;
    *(&v51 + 1) = "type should be static shaped memref, but got ";
    v52 = 45;
    if (v55 >= v56)
    {
      if (v54 > &v51 || v54 + 24 * v55 <= &v51)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v54 + 24 * v55;
    v24 = v51;
    *(v23 + 2) = v52;
    *v23 = v24;
    ++v55;
    if (v53[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v51, v50);
      if (v55 >= v56)
      {
        if (v54 > &v51 || v54 + 24 * v55 <= &v51)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v54 + 24 * v55;
      v26 = v51;
      *(v25 + 2) = v52;
      *v25 = v26;
      ++v55;
    }
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
  if (v53[0])
  {
    mlir::InFlightDiagnostic::report(v53);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v61;
      v30 = __p;
      if (v61 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v61 = v28;
      operator delete(v30);
    }

    v31 = v58;
    if (v58)
    {
      v32 = v59;
      v33 = v58;
      if (v59 != v58)
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
        v33 = v58;
      }

      v59 = v31;
      operator delete(v33);
    }

    if (v54 != &v57)
    {
      free(v54);
    }
  }

  if (!v27)
  {
    return 0;
  }

  v19 = 0;
LABEL_56:
  v36 = *(a2 + 32);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 40) = v19;
  if (v44)
  {
    v37 = *(a2 + 32);
    if (!v37)
    {
      operator new();
    }

    *(v37 + 16) = v44;
  }

  v47[0] = (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v38 = *(a2 + 1);
    v53[0] = this;
    v53[1] = v47;
    v53[2] = a2;
    if (mlir::memref::GlobalOp::verifyInherentAttrs(v38, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v53))
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::AsmParser::parseSymbolName(mlir::AsmParser *this, mlir::StringAttr *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if ((*(*this + 528))(this, a2))
  {
    return 1;
  }

  v4 = (*(*this + 40))(this);
  v17 = 257;
  (*(*this + 24))(v20, this, v4, v16);
  if (v20[0])
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "expected valid '@'-identifier for symbol name";
    v19 = 45;
    if (v22 >= v23)
    {
      if (v21 > &v18 || v21 + 24 * v22 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v21 + 24 * v22;
    v6 = v18;
    *(v5 + 2) = v19;
    *v5 = v6;
    ++v22;
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v28;
      v9 = __p;
      if (v28 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v28 = v7;
      operator delete(v9);
    }

    v10 = v25;
    if (v25)
    {
      v11 = v26;
      v12 = v25;
      if (v26 != v25)
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
        v12 = v25;
      }

      v26 = v10;
      operator delete(v12);
    }

    if (v21 != &v24)
    {
      free(v21);
    }
  }

  return v3;
}

void mlir::memref::GlobalOp::print(mlir::memref::GlobalOp *this, mlir::OpAsmPrinter *a2)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = (*(*this + 44) >> 23) & 1;
  if (*(*this + 16 * v5 + 96))
  {
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

    (*(*a2 + 48))(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96));
    v4 = *this;
    v5 = (*(*this + 44) >> 23) & 1;
  }

  if (*(v4 + 16 * v5 + 72))
  {
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
    if (v10[3] - v11 > 7uLL)
    {
      *v11 = 0x746E6174736E6F63;
      v10[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "constant", 8uLL);
    }
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

  v31[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  Value = mlir::StringAttr::getValue(v31);
  (*(*a2 + 88))(a2, Value, v15);
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

  v22 = *this;
  v23 = *this + 64;
  v24 = v23 + 16 * ((*(*this + 44) >> 23) & 1);
  v25 = *(v24 + 16);
  (*(*a2 + 40))(a2, *(v24 + 40));
  if (*(v23 + 16 * ((*(v22 + 44) >> 23) & 1) + 16))
  {
    v26 = (*(*a2 + 16))(a2);
    v27 = v26[4];
    if ((v26[3] - v27) > 2)
    {
      *(v27 + 2) = 32;
      *v27 = 15648;
      v26[4] += 3;
      v28 = *(v23 + 16 * ((*(v22 + 44) >> 23) & 1) + 16);
      if (!v28)
      {
LABEL_31:
        (*(*a2 + 48))(a2, v25);
        goto LABEL_32;
      }
    }

    else
    {
      llvm::raw_ostream::write(v26, " = ", 3uLL);
      v28 = *(v23 + 16 * ((*(v22 + 44) >> 23) & 1) + 16);
      if (!v28)
      {
        goto LABEL_31;
      }
    }

    if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_31;
    }

    v29 = (*(*a2 + 16))(a2);
    v30 = v29[4];
    if (v29[3] - v30 > 0xCuLL)
    {
      qmemcpy(v30, "uninitialized", 13);
      v29[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v29, "uninitialized", 0xDuLL);
    }
  }

LABEL_32:
  v31[0] = v32;
  v32[0] = "sym_visibility";
  v32[1] = 14;
  v32[2] = "constant";
  v32[3] = 8;
  v31[1] = 0x200000002;
  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::memref::MemorySpaceCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::memref::MemorySpaceCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::MemorySpaceCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::MemorySpaceCastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::memref::MemorySpaceCastOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::memref::MemorySpaceCastOp::parse(mlir::memref::MemorySpaceCastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, v13))
  {
    return 0;
  }

  v9 = v13[0];
  v14 = 257;
  if (((*(*this + 400))(this, "to", 2, v13) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, &v7))
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::memref::MemorySpaceCastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
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
  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v23, v24);
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
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 28532;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "to", 2uLL);
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

  if (*(*this + 9))
  {
    v20 = *this - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::memref::detail::PrefetchOpGenericAdaptorBase::PrefetchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::memref::detail::PrefetchOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::PrefetchOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_N_118SimplifyAllocConstIN4mlir6memref7AllocOpEEE";
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
      v28 = &dword_25738CB7F + v6 + 3;
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
  v25 = (&dword_25738CB7F + v23 + 3);
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
  if (*(&dword_25738CB7F + v5 + 3))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t *mlir::memref::detail::PrefetchOpGenericAdaptorBase::getLocalityHint(mlir::memref::detail::PrefetchOpGenericAdaptorBase *this)
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

uint64_t mlir::memref::PrefetchOpAdaptor::verify(void *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      v3 = a1[5];
      if (v3)
      {
        v34[0] = a1[5];
        v36[0] = mlir::IntegerAttr::getType(v34);
        if (mlir::Type::isSignlessInteger(v36, 32))
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

        v34[0] = "'memref.prefetch' op attribute 'localityHint' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3";
        v35 = 259;
        mlir::emitError(a2, v34, v36);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
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

          v5 = __p;
          if (__p)
          {
            v6 = v42;
            v7 = __p;
            if (v42 != __p)
            {
              do
              {
                v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
              }

              while (v6 != v5);
              v7 = __p;
            }

            v42 = v5;
            operator delete(v7);
          }

          v8 = v39;
          if (!v39)
          {
            goto LABEL_73;
          }

          v9 = v40;
          v10 = v39;
          if (v40 == v39)
          {
LABEL_72:
            v40 = v8;
            operator delete(v10);
LABEL_73:
            if (v37 != &v38)
            {
              free(v37);
            }

            return v4;
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
LABEL_71:
          v10 = v39;
          goto LABEL_72;
        }
      }

      else
      {
        v34[0] = "'memref.prefetch' op requires attribute 'localityHint'";
        v35 = 259;
        mlir::emitError(a2, v34, v36);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
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

          v25 = __p;
          if (__p)
          {
            v26 = v42;
            v27 = __p;
            if (v42 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v42 = v25;
            operator delete(v27);
          }

          v8 = v39;
          if (!v39)
          {
            goto LABEL_73;
          }

          v28 = v40;
          v10 = v39;
          if (v40 == v39)
          {
            goto LABEL_72;
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
          goto LABEL_71;
        }
      }
    }

    else
    {
      v34[0] = "'memref.prefetch' op requires attribute 'isWrite'";
      v35 = 259;
      mlir::emitError(a2, v34, v36);
      v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
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

        v19 = __p;
        if (__p)
        {
          v20 = v42;
          v21 = __p;
          if (v42 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v42 = v19;
          operator delete(v21);
        }

        v8 = v39;
        if (!v39)
        {
          goto LABEL_73;
        }

        v22 = v40;
        v10 = v39;
        if (v40 == v39)
        {
          goto LABEL_72;
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
        goto LABEL_71;
      }
    }
  }

  else
  {
    v34[0] = "'memref.prefetch' op requires attribute 'isDataCache'";
    v35 = 259;
    mlir::emitError(a2, v34, v36);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
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

      v13 = __p;
      if (__p)
      {
        v14 = v42;
        v15 = __p;
        if (v42 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v42 = v13;
        operator delete(v15);
      }

      v8 = v39;
      if (!v39)
      {
        goto LABEL_73;
      }

      v16 = v40;
      v10 = v39;
      if (v40 == v39)
      {
        goto LABEL_72;
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
      goto LABEL_71;
    }
  }

  return v4;
}

uint64_t mlir::memref::PrefetchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v49 = v6;
  if (!v6)
  {
    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      *(&v50 + 1) = "expected DictionaryAttr to set properties";
      v51 = 41;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v54 + 24 * v55;
      v19 = v50;
      *(v18 + 2) = v51;
      *v18 = v19;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 != 1)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v61;
      v22 = __p;
      if (v61 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v61 = v20;
      operator delete(v22);
    }

    v23 = v58;
    if (!v58)
    {
      goto LABEL_81;
    }

    v24 = v59;
    v25 = v58;
    if (v59 == v58)
    {
      goto LABEL_80;
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
    goto LABEL_79;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "isDataCache", 0xBuLL);
  if (v8)
  {
    v9 = v8;
    if (!mlir::BoolAttr::classof(v8))
    {
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 56;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = v54 + 24 * v55;
        v29 = v50;
        *(v28 + 2) = v51;
        *v28 = v29;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v9);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30 = v54 + 24 * v55;
          v31 = v50;
          *(v30 + 2) = v51;
          *v30 = v31;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v61;
        v34 = __p;
        if (v61 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v61 = v32;
        operator delete(v34);
      }

      v23 = v58;
      if (!v58)
      {
        goto LABEL_81;
      }

      v35 = v59;
      v25 = v58;
      if (v59 == v58)
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
  }

  v10 = mlir::DictionaryAttr::get(&v49, "isWrite", 7uLL);
  if (v10)
  {
    v11 = v10;
    if (mlir::BoolAttr::classof(v10))
    {
      a1[1] = v11;
      goto LABEL_11;
    }

    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      v51 = 52;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v38 = v54 + 24 * v55;
      v39 = v50;
      *(v38 + 2) = v51;
      *v38 = v39;
      ++v55;
      if (v52)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v50, v11);
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v54 + 24 * v55;
        v41 = v50;
        *(v40 + 2) = v51;
        *v40 = v41;
        ++v55;
        if (v52)
        {
          mlir::InFlightDiagnostic::report(&v52);
        }
      }
    }

    if ((v63 & 1) == 0)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v61;
      v44 = __p;
      if (v61 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v61 = v42;
      operator delete(v44);
    }

    v23 = v58;
    if (!v58)
    {
LABEL_81:
      if (v54 != &v57)
      {
        free(v54);
      }

      return 0;
    }

    v45 = v59;
    v25 = v58;
    if (v59 == v58)
    {
LABEL_80:
      v59 = v23;
      operator delete(v25);
      goto LABEL_81;
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
LABEL_79:
    v25 = v58;
    goto LABEL_80;
  }

LABEL_11:
  v12 = mlir::DictionaryAttr::get(&v49, "localityHint", 0xCuLL);
  if (!v12)
  {
    return 1;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[2] = v12;
    return 1;
  }

  v13 = v12;
  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 57;
    if (v55 >= v56)
    {
      if (v54 > &v50 || v54 + 24 * v55 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v54 + 24 * v55;
    v15 = v50;
    *(v14 + 2) = v51;
    *v14 = v15;
    ++v55;
    if (v52)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v13);
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v54 + 24 * v55;
      v17 = v50;
      *(v16 + 2) = v51;
      *v16 = v17;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }
  }

  if (v63 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v53);
  }

  return 0;
}

uint64_t mlir::memref::PrefetchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "isDataCache", 0xB, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v18, "isWrite", 7, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v18, "localityHint", 0xC, v11);
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

unint64_t mlir::memref::PrefetchOp::computePropertiesHash(void *a1)
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

uint64_t mlir::memref::PrefetchOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 7)
  {
    if (!memcmp(__s1, "isWrite", 7uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "localityHint", 0xCuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 11)
  {
    return 0;
  }

  if (*__s1 != 0x6143617461447369 || *(__s1 + 3) != 0x6568636143617461)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::PrefetchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 7)
  {
    result = memcmp(__s1, "isWrite", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::BoolAttr::classof(a4);
        if (result)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[1] = v8;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "localityHint", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[2] = v7;
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
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *v5 = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::PrefetchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
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
}

BOOL mlir::memref::PrefetchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::memref::PrefetchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(a1, (v3 + 8)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::memref::PrefetchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::memref::PrefetchOp::setIsWrite(mlir::memref::PrefetchOp *this, mlir::MLIRContext *a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getBoolAttr(&Context, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::memref::PrefetchOp::setLocalityHint(mlir::memref::PrefetchOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::memref::PrefetchOp::setIsDataCache(mlir::memref::PrefetchOp *this, mlir::MLIRContext *a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getBoolAttr(&Context, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::memref::PrefetchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = a6;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a7;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = a8;
  return result;
}

unint64_t mlir::memref::PrefetchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a5;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a8;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a9;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = a10;
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

uint64_t mlir::memref::PrefetchOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, mlir::MLIRContext *a6, unsigned int a7, mlir::MLIRContext *a8)
{
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a6);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = BoolAttr;
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = IntegerAttr;
  result = mlir::Builder::getBoolAttr(a1, a8);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = result;
  return result;
}

unint64_t mlir::memref::PrefetchOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, mlir::MLIRContext *a8, unsigned int a9, unsigned __int8 a10)
{
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a8);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = BoolAttr;
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = IntegerAttr;
  result = mlir::Builder::getBoolAttr(a1, a10);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *v23 = result;
  v24 = *(a2 + 72);
  if (a4 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v24;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a4 != v25);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + a4;
  return result;
}

uint64_t mlir::memref::PrefetchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::memref::PrefetchOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (!v4)
  {
    v43[0] = "requires attribute 'isDataCache'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v51;
      v13 = __p;
      if (v51 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v51 = v11;
      operator delete(v13);
    }

    v14 = v48;
    if (v48)
    {
      v15 = v49;
      v16 = v48;
      if (v49 != v48)
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
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v5 = *(v2 + 8);
  if (!v5)
  {
    v43[0] = "requires attribute 'isWrite'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v51;
      v21 = __p;
      if (v51 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v51 = v19;
      operator delete(v21);
    }

    v14 = v48;
    if (v48)
    {
      v22 = v49;
      v16 = v48;
      if (v49 != v48)
      {
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

        while (v22 != v14);
        goto LABEL_56;
      }

LABEL_57:
      v49 = v14;
      operator delete(v16);
    }

LABEL_58:
    if (v46 != &v47)
    {
      free(v46);
    }

    return v10;
  }

  v6 = *(v2 + 16);
  if (!v6)
  {
    v43[0] = "requires attribute 'localityHint'";
    v44 = 259;
    mlir::OpState::emitOpError(this, v43, v45);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return v10;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
    }

    v14 = v48;
    if (v48)
    {
      v28 = v49;
      v16 = v48;
      if (v49 != v48)
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

        while (v28 != v14);
LABEL_56:
        v16 = v48;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v45[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v5, "isWrite", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0)
  {
    return 0;
  }

  v45[0] = *this;
  if ((mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(v6, "localityHint", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0)
  {
    return 0;
  }

  v45[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v3, "isDataCache", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v45) & 1) == 0)
  {
    return 0;
  }

  ODSOperands = mlir::memref::PrefetchOp::getODSOperands(this, 0, v8, v9);
  if (v33)
  {
    v36 = v33;
    v37 = 0;
    v38 = ODSOperands + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*v38 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) != 0)
    {
      ++v37;
      v38 += 32;
      if (v36 == v37)
      {
        goto LABEL_67;
      }
    }

    return 0;
  }

  LODWORD(v37) = 0;
LABEL_67:
  v10 = 1;
  v39 = mlir::memref::PrefetchOp::getODSOperands(this, 1u, v34, v35);
  if (v40)
  {
    v41 = v40;
    for (i = v39 + 24; (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) != 0; i += 32)
    {
      LODWORD(v37) = v37 + 1;
      v10 = 1;
      if (!--v41)
      {
        return v10;
      }
    }

    return 0;
  }

  return v10;
}