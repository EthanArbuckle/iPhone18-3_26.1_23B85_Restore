uint64_t mlir::arith::XOrIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::XOrIOp::parse(mlir::arith::XOrIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v8, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    return (*(*this + 728))(this, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::XOrIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::arith::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

void mlir::arith::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a3;
  v11 = a5;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v14, *(a2 + 224), *(a2 + 232));
  v19 = v15;
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

  v7 = mlir::ValueRange::dereference_iterator(&v19, 2);
  v8 = __src;
  *__src = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = v17;
  v10 = *(a2 + 72);
  if (v10 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v10), v8, 8 * v17);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + v9;
  if (__src != v18)
  {
    free(__src);
  }
}

uint64_t mlir::arith::SelectOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::arith::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::arith::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

  v13 = mlir::ValueRange::dereference_iterator(v21, 2);
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

BOOL mlir::arith::SelectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v110 = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return v2;
  }

  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v4 = *this;
  v5 = *(*this + 9);
  v6 = *(*(v5 + 88) + 8);
  if ((v6 ^ *(*(v5 + 56) + 8)) > 7 || ((v7 = *(v4 + 9), v8 = v4 - 16, v7) ? (v9 = v8) : (v9 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) ^ v6) > 7 || (*(*this + 9) ? (v10 = *this - 16) : (v10 = 0), NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0), v12 = *(*this + 9), (*(*(v12 + 56) + 8) ^ *(NextResultAtOffset + 8)) >= 8)))
  {
    v98 = "failed to verify that all of {true_value, false_value, result} have same type";
    v100 = 259;
    mlir::OpState::emitOpError(this, &v98, v101);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
    if (v101[0])
    {
      mlir::InFlightDiagnostic::report(v101);
    }

    if (v109 == 1)
    {
      if (v108 != &v109)
      {
        free(v108);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v107;
        v15 = __p;
        if (v107 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v107 = v13;
        operator delete(v15);
      }

      v16 = v104;
      if (!v104)
      {
        goto LABEL_118;
      }

      v17 = v105;
      v18 = v104;
      if (v105 == v104)
      {
LABEL_117:
        v105 = v16;
        operator delete(v18);
LABEL_118:
        if (v102 != &v103)
        {
          free(v102);
        }

        return v2;
      }

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
LABEL_116:
      v18 = v104;
      goto LABEL_117;
    }

    return v2;
  }

  v97 = *(*(v12 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::Type::isSignlessInteger(&v97, 1))
  {
    return 1;
  }

  v21 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v21)
  {
    goto LABEL_45;
  }

  v22 = *v21;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_42:
    v25 = 0;
    v26 = v24;
    goto LABEL_43;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  if (!v25)
  {
    goto LABEL_42;
  }

LABEL_35:
  v26 = v24;
  v27 = v25;
  do
  {
    v28 = v27 >> 1;
    v29 = &v26[2 * (v27 >> 1)];
    v31 = *v29;
    v30 = v29 + 2;
    v27 += ~(v27 >> 1);
    if (v31 < v23)
    {
      v26 = v30;
    }

    else
    {
      v27 = v28;
    }
  }

  while (v27);
LABEL_43:
  if (v26 == &v24[2 * v25] || *v26 != v23)
  {
LABEL_45:
    v32 = 0;
    goto LABEL_46;
  }

  v32 = v26[1];
LABEL_46:
  v101[0] = v21;
  v101[1] = v32;
  Shape = mlir::ShapedType::getShape(v101);
  v35 = v34;
  if (*(*this + 9))
  {
    v36 = *this - 16;
  }

  else
  {
    v36 = 0;
  }

  v37 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v37)
  {
LABEL_63:
    v98 = v37;
    v99 = 0;
    v48 = mlir::ShapedType::getShape(&v98);
    if (v35 != v49)
    {
      goto LABEL_100;
    }

    goto LABEL_64;
  }

  v38 = *v37;
  {
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v38[1];
    v41 = *(v38 + 4);
    if (v41)
    {
      goto LABEL_52;
    }

LABEL_60:
    v41 = 0;
    v42 = v40;
    goto LABEL_61;
  }

  v91 = v38;
  v92 = v37;
  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v37 = v92;
  v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v40 = v91[1];
  v41 = *(v91 + 4);
  if (!v41)
  {
    goto LABEL_60;
  }

LABEL_52:
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
LABEL_61:
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
    goto LABEL_63;
  }

  v62 = v42[1];
  v98 = v37;
  v99 = v62;
  v48 = mlir::ShapedType::getShape(&v98);
  if (v35 != v63)
  {
    goto LABEL_100;
  }

LABEL_64:
  if (memcmp(Shape, v48, 8 * v35))
  {
    goto LABEL_100;
  }

  if (*(*this + 9))
  {
    v50 = *this - 16;
  }

  else
  {
    v50 = 0;
  }

  v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v51)
  {
    goto LABEL_83;
  }

  v52 = *v51;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (v55)
    {
      goto LABEL_71;
    }

LABEL_80:
    v55 = 0;
    v56 = v54;
    goto LABEL_81;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v54 = *(v52 + 8);
  v55 = *(v52 + 16);
  if (!v55)
  {
    goto LABEL_80;
  }

LABEL_71:
  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
LABEL_81:
  if (v56 == &v54[2 * v55] || *v56 != v53)
  {
LABEL_83:
    v64 = 0;
    goto LABEL_84;
  }

  v64 = v56[1];
LABEL_84:
  v96[0] = v51;
  v96[1] = v64;
  v65 = mlir::ShapedType::getShape(v96);
  v67 = v66;
  v68 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v68)
  {
    goto LABEL_98;
  }

  v69 = *v68;
  {
    v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (v72)
    {
      goto LABEL_87;
    }

LABEL_95:
    v72 = 0;
    v73 = v71;
    goto LABEL_96;
  }

  v93 = v68;
  v79 = v69;
  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v68 = v93;
  v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v71 = *(v79 + 8);
  v72 = *(v79 + 16);
  if (!v72)
  {
    goto LABEL_95;
  }

LABEL_87:
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
LABEL_96:
  if (v73 != &v71[2 * v72] && *v73 == v70)
  {
    v89 = v73[1];
    v94 = v68;
    v95 = v89;
    v80 = mlir::ShapedType::getShape(&v94);
    if (v67 != v90)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_98:
  v94 = v68;
  v95 = 0;
  v80 = mlir::ShapedType::getShape(&v94);
  if (v67 != v81)
  {
    goto LABEL_100;
  }

LABEL_99:
  if (!memcmp(v65, v80, 8 * v67))
  {
    return 1;
  }

LABEL_100:
  v98 = "failed to verify that condition is signless i1 or has matching shape";
  v100 = 259;
  mlir::OpState::emitOpError(this, &v98, v101);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
  if (v101[0])
  {
    mlir::InFlightDiagnostic::report(v101);
  }

  if (v109 == 1)
  {
    if (v108 != &v109)
    {
      free(v108);
    }

    v82 = __p;
    if (__p)
    {
      v83 = v107;
      v84 = __p;
      if (v107 != __p)
      {
        do
        {
          v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
        }

        while (v83 != v82);
        v84 = __p;
      }

      v107 = v82;
      operator delete(v84);
    }

    v16 = v104;
    if (!v104)
    {
      goto LABEL_118;
    }

    v85 = v105;
    v18 = v104;
    if (v105 == v104)
    {
      goto LABEL_117;
    }

    do
    {
      v87 = *--v85;
      v86 = v87;
      *v85 = 0;
      if (v87)
      {
        MEMORY[0x259C63150](v86, 0x1000C8077774924);
      }
    }

    while (v85 != v16);
    goto LABEL_116;
  }

  return v2;
}

unint64_t mlir::arith::symbolizeCmpFPredicate(unint64_t this)
{
  if (this >= 0x10)
  {
    return 0;
  }

  return this;
}

uint64_t mlir::arith::CmpFPredicateAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v19 = a1;
  Type = mlir::IntegerAttr::getType(&v19);
  result = mlir::Type::isSignlessInteger(&Type, 64);
  if (result)
  {
    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18))
    {
      v17 = a1;
      result = mlir::IntegerAttr::getInt(&v17);
      if (result == 1)
      {
        return result;
      }

      v16 = a1;
      if (mlir::IntegerAttr::getInt(&v16) != 2)
      {
        v15 = a1;
        if (mlir::IntegerAttr::getInt(&v15) != 3)
        {
          v14 = a1;
          if (mlir::IntegerAttr::getInt(&v14) != 4)
          {
            v13 = a1;
            if (mlir::IntegerAttr::getInt(&v13) != 5)
            {
              v12 = a1;
              if (mlir::IntegerAttr::getInt(&v12) != 6)
              {
                v11 = a1;
                if (mlir::IntegerAttr::getInt(&v11) != 7)
                {
                  v10 = a1;
                  if (mlir::IntegerAttr::getInt(&v10) != 8)
                  {
                    v9 = a1;
                    if (mlir::IntegerAttr::getInt(&v9) != 9)
                    {
                      v8 = a1;
                      if (mlir::IntegerAttr::getInt(&v8) != 10)
                      {
                        v7 = a1;
                        if (mlir::IntegerAttr::getInt(&v7) != 11)
                        {
                          v6 = a1;
                          if (mlir::IntegerAttr::getInt(&v6) != 12)
                          {
                            v5 = a1;
                            if (mlir::IntegerAttr::getInt(&v5) != 13)
                            {
                              v4 = a1;
                              if (mlir::IntegerAttr::getInt(&v4) != 14)
                              {
                                v3 = a1;
                                return mlir::IntegerAttr::getInt(&v3) == 15;
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

    return 1;
  }

  return result;
}

unint64_t mlir::arith::symbolizeCmpIPredicate(unint64_t this)
{
  if (this >= 0xA)
  {
    return 0;
  }

  return this;
}

uint64_t mlir::arith::CmpIPredicateAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v13 = a1;
  Type = mlir::IntegerAttr::getType(&v13);
  result = mlir::Type::isSignlessInteger(&Type, 64);
  if (result)
  {
    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12))
    {
      v11 = a1;
      result = mlir::IntegerAttr::getInt(&v11);
      if (result == 1)
      {
        return result;
      }

      v10 = a1;
      if (mlir::IntegerAttr::getInt(&v10) != 2)
      {
        v9 = a1;
        if (mlir::IntegerAttr::getInt(&v9) != 3)
        {
          v8 = a1;
          if (mlir::IntegerAttr::getInt(&v8) != 4)
          {
            v7 = a1;
            if (mlir::IntegerAttr::getInt(&v7) != 5)
            {
              v6 = a1;
              if (mlir::IntegerAttr::getInt(&v6) != 6)
              {
                v5 = a1;
                if (mlir::IntegerAttr::getInt(&v5) != 7)
                {
                  v4 = a1;
                  if (mlir::IntegerAttr::getInt(&v4) != 8)
                  {
                    v3 = a1;
                    return mlir::IntegerAttr::getInt(&v3) == 9;
                  }
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

void mlir::arith::stringifyIntegerOverflowFlags(int a1@<W0>, uint64_t a2@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *(a2 + 23) = 4;
    strcpy(a2, "none");
    return;
  }

  v3 = (a1 & 1) == 0;
  if ((a1 & 1) == 0)
  {
    v4 = 0;
    if ((a1 & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if ((a1 & 1) == 0)
    {
      return;
    }

    v3 = 1;
    v7 = 16 * v4;
    v8 = 2 * v4 - 2;
    v9 = v7 - 16;
    if (v7 - 16 <= 0x3F)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v22 = "nsw";
  v23 = 3;
  v4 = 1;
  if ((a1 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = &(&v22)[2 * v4];
  *v5 = "nuw";
  v5[1] = 3;
  v6 = v4 + 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = 16 * v6;
  v8 = 2 * v6 - 2;
  v9 = v7 - 16;
  if (v7 - 16 <= 0x3F)
  {
LABEL_5:
    v10 = &v22;
    goto LABEL_13;
  }

LABEL_10:
  v11 = (v9 >> 4) - 3;
  v10 = &(&v22)[2 * v11];
  v12 = 0uLL;
  v13 = v8;
  v14 = &v25;
  do
  {
    v15 = v14 - 4;
    v16 = vld2q_f64(v15);
    v17 = vld2q_f64(v14);
    v13 = vaddq_s64(v16, v13);
    v12 = vaddq_s64(v17, v12);
    v14 += 8;
    v11 -= 4;
  }

  while (v11);
  v8 = vaddvq_s64(vaddq_s64(v12, v13));
LABEL_13:
  v18 = &(&v22)[v7 / 8];
  do
  {
    v8 += v10[1];
    v10 += 2;
  }

  while (v10 != v18);
  std::string::reserve(a2, v8);
  std::string::append(a2, v22, v23);
  if (!v3)
  {
    v19 = v24;
    do
    {
      std::string::append(a2, ", ", 2uLL);
      v20 = *v19;
      v21 = v19[1];
      v19 += 2;
      std::string::append(a2, v20, v21);
    }

    while (v19 != v18);
  }
}

uint64_t mlir::arith::symbolizeIntegerOverflowFlags(_DWORD *a1, uint64_t a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  *&v18 = a1;
  *(&v18 + 1) = a2;
  if (a2 != 4 || *a1 != 1701736302)
  {
    v21 = v23;
    v22 = 0x200000000;
    llvm::StringRef::split(&v18, &v21, ",", 1uLL, -1, 1);
    if (v22)
    {
      v2 = 0;
      v3 = v21;
      v4 = 16 * v22;
      while (1)
      {
        v17 = *v3;
        first_not_of = llvm::StringRef::find_first_not_of(&v17, " \t\n\v\f\r", 6, 0);
        if (first_not_of >= *(&v17 + 1))
        {
          v6 = *(&v17 + 1);
        }

        else
        {
          v6 = first_not_of;
        }

        v7 = *(&v17 + 1) - v6;
        v19 = v17 + v6;
        v20 = *(&v17 + 1) - v6;
        last_not_of = llvm::StringRef::find_last_not_of(&v19, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
        if (last_not_of + 1 < v20)
        {
          v9 = last_not_of + 1;
        }

        else
        {
          v9 = v20;
        }

        v10 = v20 - v7 + v9;
        if (v20 < v10)
        {
          v10 = v20;
        }

        if (v10 != 3)
        {
          break;
        }

        if (*v19 == 29550 && *(v19 + 2) == 119)
        {
          v2 |= 1u;
          ++v3;
          v4 -= 16;
          if (!v4)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v19 != 30062 || *(v19 + 2) != 119)
          {
            break;
          }

          v2 |= 2u;
          ++v3;
          v4 -= 16;
          if (!v4)
          {
LABEL_25:
            v13 = v2;
            goto LABEL_29;
          }
        }
      }

      v14 = 0;
      v13 = 0;
      v15 = v21;
      if (v21 == v23)
      {
        return v14 | v13;
      }
    }

    else
    {
      v13 = 0;
LABEL_29:
      v14 = 0x100000000;
      v15 = v21;
      if (v21 == v23)
      {
        return v14 | v13;
      }
    }

    free(v15);
    return v14 | v13;
  }

  return 0x100000000;
}

unint64_t mlir::arith::symbolizeIntegerOverflowFlags(mlir::arith *this)
{
  if (this >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = this;
  }

  return v1 | ((this < 4) << 32);
}

unint64_t mlir::arith::symbolizeRoundingMode(mlir::arith *this)
{
  if (this >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = this;
  }

  return v1 | ((this < 5) << 32);
}

uint64_t mlir::arith::RoundingModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v8 = a1;
  Type = mlir::IntegerAttr::getType(&v8);
  result = mlir::Type::isSignlessInteger(&Type, 32);
  if (result)
  {
    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7))
    {
      v6 = a1;
      result = mlir::IntegerAttr::getInt(&v6);
      if (result == 1)
      {
        return result;
      }

      v5 = a1;
      if (mlir::IntegerAttr::getInt(&v5) != 2)
      {
        v4 = a1;
        if (mlir::IntegerAttr::getInt(&v4) != 3)
        {
          v3 = a1;
          return mlir::IntegerAttr::getInt(&v3) == 4;
        }
      }
    }

    return 1;
  }

  return result;
}

const char *mlir::arith::stringifyAtomicRMWKind(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return "";
  }

  else
  {
    return (&off_27983B570)[a1];
  }
}

uint64_t mlir::arith::symbolizeAtomicRMWKind(uint64_t a1, uint64_t a2)
{
  if (a2 <= 5)
  {
    if (a2 == 3)
    {
      if (*a1 == 29295 && *(a1 + 2) == 105)
      {
        return 11;
      }
    }

    else if (a2 == 4)
    {
      switch(*a1)
      {
        case 0x66646461:
          return 0;
        case 0x69646461:
          return 1;
        case 0x7378616D:
          return 4;
        case 0x7578616D:
          return 5;
        case 0x736E696D:
          return 7;
        case 0x756E696D:
          return 8;
        case 0x666C756D:
          return 9;
      }

      if (*a1 != 1768715629)
      {
        if (*a1 == 1768189537)
        {
          return 12;
        }

        return 0;
      }

      return 10;
    }

    return 0;
  }

  if (a2 == 6)
  {
    if (*a1 == 1769173857 && *(a1 + 4) == 28263)
    {
      return 2;
    }

    return 0;
  }

  if (a2 == 7)
  {
    if (*a1 == 1853383021 && *(a1 + 3) == 1718449518)
    {
      return 13;
    }

    if (*a1 ^ 0x6E6E696D | *(a1 + 3) ^ 0x666D756E)
    {
      return 0;
    }

    return 14;
  }

  if (a2 != 8)
  {
    return 0;
  }

  if (*a1 != 0x666D756D6978616DLL)
  {
    if (*a1 == 0x666D756D696E696DLL)
    {
      return 6;
    }

    return 0;
  }

  return 3;
}

unint64_t mlir::arith::symbolizeAtomicRMWKind(unint64_t this)
{
  if (this >= 0xF)
  {
    return 0;
  }

  return this;
}

uint64_t mlir::arith::AtomicRMWKindAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v18 = a1;
  Type = mlir::IntegerAttr::getType(&v18);
  result = mlir::Type::isSignlessInteger(&Type, 64);
  if (result)
  {
    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17))
    {
      v16 = a1;
      result = mlir::IntegerAttr::getInt(&v16);
      if (result == 1)
      {
        return result;
      }

      v15 = a1;
      if (mlir::IntegerAttr::getInt(&v15) != 2)
      {
        v14 = a1;
        if (mlir::IntegerAttr::getInt(&v14) != 3)
        {
          v13 = a1;
          if (mlir::IntegerAttr::getInt(&v13) != 4)
          {
            v12 = a1;
            if (mlir::IntegerAttr::getInt(&v12) != 5)
            {
              v11 = a1;
              if (mlir::IntegerAttr::getInt(&v11) != 6)
              {
                v10 = a1;
                if (mlir::IntegerAttr::getInt(&v10) != 7)
                {
                  v9 = a1;
                  if (mlir::IntegerAttr::getInt(&v9) != 8)
                  {
                    v8 = a1;
                    if (mlir::IntegerAttr::getInt(&v8) != 9)
                    {
                      v7 = a1;
                      if (mlir::IntegerAttr::getInt(&v7) != 10)
                      {
                        v6 = a1;
                        if (mlir::IntegerAttr::getInt(&v6) != 11)
                        {
                          v5 = a1;
                          if (mlir::IntegerAttr::getInt(&v5) != 12)
                          {
                            v4 = a1;
                            if (mlir::IntegerAttr::getInt(&v4) != 13)
                            {
                              v3 = a1;
                              return mlir::IntegerAttr::getInt(&v3) == 14;
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

    return 1;
  }

  return result;
}

uint64_t mlir::arith::AtomicRMWKindAttr::get(uint64_t *a1, unint64_t a2)
{
  v3 = mlir::IntegerType::get(a1, 64, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

void mlir::arith::stringifyFastMathFlags(int a1@<W0>, uint64_t a2@<X8>)
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *(a2 + 23) = 4;
    strcpy(a2, "none");
    return;
  }

  v26 = 0;
  if ((~a1 & 0x7F) == 0)
  {
    v27 = "fast";
    v28 = 4;
    v3 = v29;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v4 = 1;
    v5 = 0;
    v6 = &v27;
    do
    {
LABEL_33:
      v5 += v6[1];
      v6 += 2;
    }

    while (v6 != v3);
    std::string::reserve(a2, v5);
    std::string::append(a2, v27, v28);
    if (v4 != 1)
    {
      v23 = v29;
      do
      {
        std::string::append(a2, ",", 1uLL);
        v24 = *v23;
        v25 = v23[1];
        v23 += 2;
        std::string::append(a2, v24, v25);
      }

      while (v23 != v3);
    }

    return;
  }

  if (a1)
  {
    v27 = "reassoc";
    v28 = 7;
    v4 = 1;
    v26 = 1;
    if ((a1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 0;
  if ((a1 & 2) != 0)
  {
LABEL_9:
    v7 = &(&v27)[2 * v4];
    *v7 = "nnan";
    v7[1] = 4;
    v4 = ++v26;
  }

LABEL_10:
  if ((a1 & 4) != 0)
  {
    if (v4 >= 2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = &(&v27)[2 * v4];
    *v8 = "ninf";
    v8[1] = 4;
    v4 = ++v26;
    if ((a1 & 8) == 0)
    {
LABEL_12:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_12;
  }

  if (v4 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = &(&v27)[2 * v4];
  *v9 = "nsz";
  v9[1] = 3;
  v4 = ++v26;
  if ((a1 & 0x10) == 0)
  {
LABEL_13:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_21:
  if (v4 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = &(&v27)[2 * v4];
  *v10 = "arcp";
  v10[1] = 4;
  v4 = ++v26;
  if ((a1 & 0x20) == 0)
  {
LABEL_14:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_23:
  if (v4 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = &(&v27)[2 * v4];
  *v11 = "contract";
  v11[1] = 8;
  v4 = ++v26;
  if ((a1 & 0x40) == 0)
  {
LABEL_15:
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  if (v4 >= 2)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = &(&v27)[2 * v4];
  *v12 = "afn";
  v12[1] = 3;
  v4 = v26 + 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v26 != -1)
  {
LABEL_27:
    v3 = &(&v27)[2 * v4];
    v5 = v4 - 1;
    v13 = 16 * v4 - 16;
    v6 = &v27;
    if (v13 > 0x3F)
    {
      v14 = (v13 >> 4) + 1;
      v15 = v14 & 3;
      if ((v14 & 3) == 0)
      {
        v15 = 4;
      }

      v16 = v14 - v15;
      v6 = &(&v27)[2 * v16];
      v17 = 0uLL;
      v18 = (v4 - 1);
      v19 = &v30;
      do
      {
        v20 = v19 - 4;
        v21 = vld2q_f64(v20);
        v22 = vld2q_f64(v19);
        v18 = vaddq_s64(v21, v18);
        v17 = vaddq_s64(v22, v17);
        v19 += 8;
        v16 -= 4;
      }

      while (v16);
      v5 = vaddvq_s64(vaddq_s64(v17, v18));
    }

    goto LABEL_33;
  }
}

uint64_t mlir::arith::symbolizeFastMathFlags(_DWORD *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  *&v20 = a1;
  *(&v20 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    return 0x100000000;
  }

  v23 = v25;
  v24 = 0x200000000;
  llvm::StringRef::split(&v20, &v23, ",", 1uLL, -1, 1);
  if (v24)
  {
    v2 = 0;
    v3 = 16 * v24;
    v4 = v23;
    while (1)
    {
      v19 = *v4;
      first_not_of = llvm::StringRef::find_first_not_of(&v19, " \t\n\v\f\r", 6, 0);
      if (first_not_of >= *(&v19 + 1))
      {
        v7 = *(&v19 + 1);
      }

      else
      {
        v7 = first_not_of;
      }

      v8 = *(&v19 + 1) - v7;
      v21 = v19 + v7;
      v22 = *(&v19 + 1) - v7;
      last_not_of = llvm::StringRef::find_last_not_of(&v21, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      if (last_not_of + 1 < v22)
      {
        v10 = last_not_of + 1;
      }

      else
      {
        v10 = v22;
      }

      v11 = v22 - v8 + v10;
      if (v22 < v11)
      {
        v11 = v22;
      }

      if (v11 > 6)
      {
        if (v11 == 8)
        {
          if (*v21 != 0x74636172746E6F63)
          {
            goto LABEL_52;
          }

          v5 = 32;
        }

        else
        {
          if (v11 != 7 || (*v21 == 1935762802 ? (v12 = *(v21 + 3) == 1668248435) : (v12 = 0), !v12))
          {
LABEL_52:
            v16 = 0;
            v15 = 0;
            v17 = v23;
            if (v23 != v25)
            {
              goto LABEL_49;
            }

            return v16 | v15;
          }

          v5 = 1;
        }
      }

      else if (v11 == 3)
      {
        if (*v21 == 29550 && *(v21 + 2) == 122)
        {
          v5 = 8;
        }

        else
        {
          if (*v21 != 26209 || *(v21 + 2) != 110)
          {
            goto LABEL_52;
          }

          v5 = 64;
        }
      }

      else
      {
        if (v11 != 4)
        {
          goto LABEL_52;
        }

        switch(*v21)
        {
          case 0x6E616E6E:
            v5 = 2;
            break;
          case 0x666E696E:
            v5 = 4;
            break;
          case 0x70637261:
            v5 = 16;
            break;
          case 0x74736166:
            v5 = 127;
            break;
          default:
            goto LABEL_52;
        }
      }

      v2 |= v5;
      ++v4;
      v3 -= 16;
      if (!v3)
      {
        v15 = v2;
        v16 = 0x100000000;
        v17 = v23;
        if (v23 == v25)
        {
          return v16 | v15;
        }

        goto LABEL_49;
      }
    }
  }

  v15 = 0;
  v16 = 0x100000000;
  v17 = v23;
  if (v23 != v25)
  {
LABEL_49:
    free(v17);
  }

  return v16 | v15;
}

unint64_t mlir::arith::symbolizeFastMathFlags(mlir::arith *this)
{
  if (this >= 0x80)
  {
    v1 = 0;
  }

  else
  {
    v1 = this;
  }

  return v1 | ((this < 0x80) << 32);
}

uint64_t mlir::detail::constant_int_range_predicate_matcher::match(uint64_t (**this)(uint64_t *), mlir::Operation *a2)
{
  v23 = 1;
  v21 = &v22;
  v22 = 0;
  v12 = 0;
  v24 = &v12;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v24, a2))
  {
    v4 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v6 = v5 || v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    v7 = v6 || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (v7 && mlir::detail::constant_int_value_binder::match(&v21, v12))
    {
      v8 = *this;
      mlir::ConstantIntRanges::constant(&v22, &v12);
      v9 = v8(&v12);
      if (v19 < 0x41)
      {
LABEL_22:
        if (v17 >= 0x41 && v16)
        {
          MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        }

        if (v15 >= 0x41 && v14)
        {
          MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        }

        if (v13 >= 0x41 && v12)
        {
          MEMORY[0x259C63150](v12, 0x1000C8000313F17);
        }

        goto LABEL_31;
      }

LABEL_20:
      if (v18)
      {
        MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }

      goto LABEL_22;
    }
  }

  LOBYTE(v12) = 0;
  v20 = 0;
  v24 = &v12;
  v10 = mlir::detail::infer_int_range_op_binder::match(&v24, a2);
  v9 = 0;
  if (v10)
  {
    v9 = (*this)(&v12);
  }

  if (v20 == 1)
  {
    if (v19 < 0x41)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_31:
  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  return v9;
}

uint64_t mlir::detail::infer_int_range_op_binder::match(mlir::detail::infer_int_range_op_binder *this, mlir::Operation *a2)
{
  v25[9] = *MEMORY[0x277D85DE8];
  v22 = a2;
  if (!mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v20 = 0;
    v21 = 0;
    return 0;
  }

  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v20 = a2;
  v21 = InterfaceFor;
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 9);
    v7 = *(a2 + 17);
    v23 = v25;
    v24 = 0x100000000;
    if (v7 >= 2)
    {
      llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow();
    }

    if (v7)
    {
      v7 = 1;
      v8 = v25;
      v9 = (v6 + 24);
      v10 = 1;
      do
      {
        v11 = *v9;
        v9 += 4;
        mlir::IntegerValueRange::getMaxRange(v11, v8);
        v8 += 9;
        --v10;
      }

      while (v10);
      v12 = v24;
      v13 = v23;
    }

    else
    {
      v12 = 0;
      v13 = v25;
    }
  }

  else
  {
    v7 = 0;
    v12 = 0;
    v13 = v25;
    v23 = v25;
    HIDWORD(v24) = 1;
  }

  LODWORD(v24) = v12 + v7;
  v19 = 0;
  v18[0] = &v22;
  v18[1] = this;
  v18[2] = &v19;
  mlir::InferIntRangeInterface::inferResultRangesFromOptional(&v20, v13, v12 + v7, llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::detail::infer_int_range_op_binder::match(mlir::Operation *)::{lambda(mlir::Value,mlir::IntegerValueRange const&)#1}>, v18);
  v5 = v19;
  v14 = v23;
  if (v24)
  {
    v15 = -72 * v24;
    v16 = v23 + 72 * v24 - 72;
    do
    {
      v16 = (std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](v16) - 72);
      v15 += 72;
    }

    while (v15);
    v14 = v23;
  }

  if (v14 != v25)
  {
    free(v14);
  }

  return v5;
}

unsigned int *llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::detail::infer_int_range_op_binder::match(mlir::Operation *)::{lambda(mlir::Value,mlir::IntegerValueRange const&)#1}>(unsigned int *result, uint64_t a2, llvm::APInt *a3)
{
  if (*(a3 + 64) == 1 && **result - 16 == a2)
  {
    v3 = result;
    result = std::__optional_storage_base<mlir::ConstantIntRanges,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<mlir::ConstantIntRanges,false> const&>(**(result + 1), a3);
    **(v3 + 2) = 1;
  }

  return result;
}

BOOL mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(mlir::ConstantIntRanges *a1)
{
  v1 = mlir::ConstantIntRanges::umin(a1);
  v2 = v1;
  v3 = v1[2];
  if (v3 >= 0x41)
  {
    if (v3 - llvm::APInt::countLeadingZerosSlowCase(v1) > 0x40)
    {
      return 1;
    }

    v2 = *v2;
  }

  return *v2 != 0;
}

BOOL mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::operator()(int a1, mlir::ConstantIntRanges *this)
{
  v3 = mlir::ConstantIntRanges::smin(this);
  v4 = *(v3 + 2);
  if (v4 >= 0x41)
  {
    v5 = *v3;
    v6 = v4 + 1;
    if ((*(*v3 + 8 * ((v4 - 1) >> 6)) >> (v4 - 1)))
    {
      if (v6 - llvm::APInt::countLeadingOnesSlowCase(v3) > 0x40)
      {
        goto LABEL_12;
      }
    }

    else if (v6 - llvm::APInt::countLeadingZerosSlowCase(v3) > 0x40)
    {
      return 1;
    }

    if (*v5 <= 0)
    {
      goto LABEL_12;
    }

    return 1;
  }

  if (v4 && (*v3 << -v4) >> -v4 > 0)
  {
    return 1;
  }

LABEL_12:
  v8 = mlir::ConstantIntRanges::smax(this);
  v9 = *(v8 + 2);
  if (v9 >= 0x41)
  {
    v11 = *v8;
    v12 = *(*v8 + 8 * ((v9 - 1) >> 6)) & (1 << (v9 - 1));
    if (v12)
    {
      if (v9 - llvm::APInt::countLeadingOnesSlowCase(v8) + 1 >= 0x41)
      {
        return v12 != 0;
      }
    }

    else if (v9 - llvm::APInt::countLeadingZerosSlowCase(v8) + 1 >= 0x41)
    {
      return v12 != 0;
    }

    return *v11 >> 63;
  }

  v10 = (*v8 << -v9) >> -v9;
  if (!v9)
  {
    v10 = 0;
  }

  return v10 >> 63;
}

BOOL mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::operator()(int a1, mlir::ConstantIntRanges *this)
{
  v3 = mlir::ConstantIntRanges::smin(this);
  v4 = *(v3 + 2);
  if (v4 >= 0x41)
  {
    v5 = *v3;
    v6 = v4 + 1;
    if ((*(*v3 + 8 * ((v4 - 1) >> 6)) >> (v4 - 1)))
    {
      if (v6 - llvm::APInt::countLeadingOnesSlowCase(v3) > 0x40)
      {
        goto LABEL_11;
      }
    }

    else if (v6 - llvm::APInt::countLeadingZerosSlowCase(v3) > 0x40)
    {
      return 1;
    }

    if ((*v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (!v4 || (((*v3 << -v4) >> -v4) & 0x8000000000000000) == 0)
  {
    return 1;
  }

LABEL_11:
  v8 = mlir::ConstantIntRanges::smax(this);
  v9 = *(v8 + 2);
  if (v9 >= 0x41)
  {
    v11 = *v8;
    v12 = *(*v8 + 8 * ((v9 - 1) >> 6)) & (1 << (v9 - 1));
    if (v12)
    {
      if (v9 - llvm::APInt::countLeadingOnesSlowCase(v8) + 1 >= 0x41)
      {
        return v12 != 0;
      }
    }

    else if (v9 - llvm::APInt::countLeadingZerosSlowCase(v8) + 1 >= 0x41)
    {
      return v12 != 0;
    }

    return *v11 < -1;
  }

  v10 = (*v8 << -v9) >> -v9;
  if (!v9)
  {
    v10 = 0;
  }

  return v10 < -1;
}

uint64_t mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 >> 3) & 1;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 >> 3) & 1;
    }
  }

  return 0;
}

BOOL mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 & 8) == 0;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 & 8) == 0;
    }
  }

  return 0;
}

BOOL mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 8) == 0)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 8) == 0)
    {
      return 0;
    }
  }

  return (v3 & 7) == 0;
}

BOOL mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 8) == 0)
    {
      return (v3 & 7) == 0;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 8) == 0)
    {
      return (v3 & 7) == 0;
    }
  }

  return 0;
}

BOOL mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(void *a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v1 = (a1 + 1);
  v2 = a1[1];
  v3 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v3 == v2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, v2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v6, v2, 1);
  if (v3 == v6[0])
  {
    v4 = llvm::detail::DoubleAPFloat::compare(v6, v1);
    if (v3 != v6[0])
    {
      goto LABEL_4;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v6);
    return v4 == 1;
  }

  v4 = llvm::detail::IEEEFloat::compare(v6, v1);
  if (v3 == v6[0])
  {
    goto LABEL_7;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v6);
  return v4 == 1;
}

BOOL llvm::APFloat::operator==(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v6) == 1;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v6) == 1;
  }
}

uint64_t getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v18 = v1;
    v19 = a1;
    mlir::tensor::ExpandShapeOp::fold();
    a1 = v19;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v18 + 8);
    v4 = *(v18 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v13 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_25:
  result = mlir::getElementTypeOrSelf(a1);
  v15 = *(*result + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::arith::ArithFastMathInterface,mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::arith::ArithFastMathInterface,mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::arith::ArithFastMathInterface,mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::arith::ArithFastMathInterface,mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[57];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, const llvm::APInt *a2, uint64_t **a3)
{
  v4 = *(a2 + 2);
  v8 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, a2);
  }

  v7 = *a2;
  v10 = v4;
  v9 = v7;
  v8 = 0;
  result = llvm::APInt::operator+=(&v9, a3);
  v6 = v9;
  *(a1 + 8) = v10;
  *a1 = v6;
  *(a1 + 16) = 1;
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(uint64_t *a1)
{
  v1 = *a1;
  if (mlir::DenseElementsAttr::classof(*a1))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  if (v2)
  {
    return mlir::DenseElementsAttr::isSplat(&v4);
  }

  else
  {
    return 0;
  }
}

void *llvm::cast<mlir::ElementsAttr,mlir::Attribute>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
      llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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

llvm::APInt *llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(uint64_t a1, const llvm::APInt *a2)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    if (v4 > a2 || v4 + 16 * v3 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
  }

  result = (v4 + 16 * *(a1 + 8));
  v6 = *(a2 + 2);
  *(result + 2) = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(result, a2);
  }

  *result = *a2;
  ++*(a1 + 8);
  return result;
}

void anonymous namespace::AddIAddConstant::~AddIAddConstant(_anonymous_namespace_::AddIAddConstant *this)
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

uint64_t anonymous namespace::static_dag_matcher_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v18 = *(a1 + 16);
    if (v18 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 72);
  }

  else
  {
    v11 = 0;
  }

  *a5 = v11;
  a5[1] = 1;
  v21 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v13 = DefiningOp;
  {
    return 0;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v14) = v13;
  ++*(a3 + 8);
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13), (v16 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    InherentAttr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = InherentAttr;
  return 1;
}

uint64_t anonymous namespace::static_dag_matcher_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, DefiningOp) & 1) != 0)
  {
    v7 = v11;
    *a3 = v11;
    v8 = *(a1 + 16);
    v13[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
    v13[1] = 176;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    else
    {
      v12 = v13;
      if (v8)
      {
        if (mlir::RewriterBase::Listener::classof(v8))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10 && mlir::RewriterBase::Listener::classof(v10))
    {
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AddIOp,mlir::Value &,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AddIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t anonymous namespace::static_dag_matcher_0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, DefiningOp) & 1) != 0)
  {
    v7 = v11;
    *a3 = v11;
    v8 = *(a1 + 16);
    v13[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
    v13[1] = 176;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    else
    {
      v12 = v13;
      if (v8)
      {
        if (mlir::RewriterBase::Listener::classof(v8))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10 && mlir::RewriterBase::Listener::classof(v10))
    {
    }

    return 0;
  }
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::AddIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization1(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ****a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v10 = 261;
  v9[0] = v3;
  v9[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v9);
  v5 = *(v4 + 16);
  v11.n128_u32[0] = 3;
  v11.n128_u64[1] = ": arbitrary integer attribute";
  v12 = 29;
  v6 = *(v4 + 24);
  if (v6 >= *(v4 + 28))
  {
    if (v5 > &v11 || v5 + 24 * v6 <= &v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (v5 + 24 * *(v4 + 24));
  result = v11;
  v7[1].n128_u64[0] = v12;
  *v7 = result;
  ++*(v4 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_2(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t applyToIntegerAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t *, uint64_t *), uint64_t a5)
{
  v13 = a2;
  mlir::IntegerAttr::getValue(&v13, &v15);
  v11 = a3;
  mlir::IntegerAttr::getValue(&v11, &v13);
  a4(&v11, a5, &v15, &v13);
  v9 = mlir::IntegerAttr::get(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8, &v11);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  return v9;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>@<X0>(const llvm::APInt *a1@<X1>, uint64_t **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a1);
  }

  v5 = *a1;
  result = llvm::APInt::operator+=(&v5, a2);
  *(a3 + 8) = v6;
  *a3 = v5;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::growAndEmplaceBack<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  mlir::NamedAttribute::NamedAttribute(&v7, *a2, *a3);
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a1 + 16 * v4) = v7;
  v5 = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

void anonymous namespace::AddISubConstantRHS::~AddISubConstantRHS(_anonymous_namespace_::AddISubConstantRHS *this)
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

uint64_t anonymous namespace::static_dag_matcher_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v18 = *(a1 + 16);
    if (v18 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 72);
  }

  else
  {
    v11 = 0;
  }

  *a5 = v11;
  a5[1] = 1;
  v21 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v13 = DefiningOp;
  {
    return 0;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v14) = v13;
  ++*(a3 + 8);
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13), (v16 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    InherentAttr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = InherentAttr;
  return 1;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_5(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::SubIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_5(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>@<X0>(const llvm::APInt *a1@<X1>, unint64_t **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 2);
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a1);
  }

  v5 = *a1;
  result = llvm::APInt::operator-=(&v5, a2);
  *(a3 + 8) = v6;
  *a3 = v5;
  return result;
}

void anonymous namespace::AddISubConstantLHS::~AddISubConstantLHS(_anonymous_namespace_::AddISubConstantLHS *this)
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

uint64_t anonymous namespace::static_dag_matcher_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v18 = *(a1 + 16);
    if (v18 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v21 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v13 = DefiningOp;
  {
    return 0;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v14) = v13;
  ++*(a3 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    *a6 = *(a2 + 72) + 32;
    a6[1] = 1;
    if (*(a2 + 47))
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a6 = 32;
    a6[1] = 1;
    if (*(a2 + 47))
    {
LABEL_8:
      InherentAttr = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13);
      if (v16)
      {
        goto LABEL_10;
      }
    }
  }

  InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
LABEL_10:
  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    InherentAttr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = InherentAttr;
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SubIOp,mlir::Value &,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::SubIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_4(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::Attribute &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::SubIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_4(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::Attribute &,mlir::OperandRange &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AddIMulNegativeOneRhs::~AddIMulNegativeOneRhs(_anonymous_namespace_::AddIMulNegativeOneRhs *this)
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

uint64_t anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneRhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v35[0] = a2;
  v34 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v27 = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_39:
        (*(*v8 + 88))(v8, v9, v10, &v27);
        goto LABEL_40;
      }

      goto LABEL_40;
    }

    v27 = *(*(DefiningOp + 72) + 56);
    v11 = mlir::Value::getDefiningOp(&v27);
    if (!v11)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    v12 = v11;
    v31 = 0;
    v30 = &v31;
    v27 = (v11 - 16);
    v13 = mlir::Value::getDefiningOp(&v27);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v30, v13) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v12 + 24);
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    v14 = v31;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33[v34] = v12;
    LODWORD(v34) = v34 + 1;
    if (!*(v7 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v7, "overflowFlags", 13), (v16 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(v7 + 56, "overflowFlags", 0xDuLL);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    }

    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33[v34] = v7;
    LODWORD(v34) = v34 + 1;
    if (!*(a2 + 47) || (v17 = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13), (v18 & 1) == 0))
    {
      v17 = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
    }

    if (!v17 || *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    }

    LODWORD(v28) = 1;
    v27 = 0;
    v31 = &v27;
    if (v14)
    {
      v19 = mlir::detail::constant_int_value_binder::match(&v31, v14);
      v20 = v28;
      if (v19)
      {
        v21 = v27;
        LODWORD(v32) = 1;
        v31 = 0;
        v30 = &v31;
        if (mlir::detail::constant_int_value_binder::match(&v30, v14))
        {
          LODWORD(v28) = v32;
          v27 = v31;
          LOBYTE(v29) = 1;
        }

        else
        {
          LOBYTE(v27) = 0;
          LOBYTE(v29) = 0;
          if (v32 >= 0x41 && v31)
          {
            MEMORY[0x259C63150](v31, 0x1000C8000313F17);
          }
        }

        v23 = v28;
        if (!v28)
        {
          if (v20 >= 0x41 && v21)
          {
            MEMORY[0x259C63150](v21, 0x1000C8000313F17);
          }

LABEL_62:
          v25 = *(v33[1] + 24);
          v27 = *(*v33 + 24);
          v28 = v25;
          mlir::Builder::getFusedLoc(a3 + 1, &v27, 2, 0);
        }

        if (v28 > 0x40)
        {
          v24 = llvm::APInt::countTrailingOnesSlowCase(&v27) == v23;
          if (v29 == 1 && v27)
          {
            MEMORY[0x259C63150](v27, 0x1000C8000313F17);
          }
        }

        else
        {
          v24 = v27 == (0xFFFFFFFFFFFFFFFFLL >> -v28);
        }

        if (v20 >= 0x41 && v21)
        {
          MEMORY[0x259C63150](v21, 0x1000C8000313F17);
        }

        if (v24)
        {
          goto LABEL_62;
        }
      }

      else if (v28 >= 0x41 && v27)
      {
        MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      }
    }

    v26 = *(a3 + 2);
    if (v26 && mlir::RewriterBase::Listener::classof(v26))
    {
    }

    goto LABEL_40;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_39;
  }

LABEL_40:
  if (v33 != v35)
  {
    free(v33);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::MulIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_3(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'c0' failed to satisfy constraint: ''";
  v7 = 46;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AddIMulNegativeOneLhs::~AddIMulNegativeOneLhs(_anonymous_namespace_::AddIMulNegativeOneLhs *this)
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

uint64_t anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneLhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v35[0] = a2;
  v34 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v27 = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_40:
        (*(*v8 + 88))(v8, v9, v10, &v27);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    v27 = *(*(DefiningOp + 72) + 56);
    v11 = mlir::Value::getDefiningOp(&v27);
    if (!v11)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v12 = v11;
    v31 = 0;
    v30 = &v31;
    v27 = (v11 - 16);
    v13 = mlir::Value::getDefiningOp(&v27);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v30, v13) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v12 + 24);
        goto LABEL_40;
      }

      goto LABEL_41;
    }

    v14 = v31;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33[v34] = v12;
    LODWORD(v34) = v34 + 1;
    if (!*(v7 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v7, "overflowFlags", 13), (v16 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(v7 + 56, "overflowFlags", 0xDuLL);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    }

    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33[v34] = v7;
    LODWORD(v34) = v34 + 1;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      if (!*(a2 + 47))
      {
        goto LABEL_26;
      }
    }

    else if (!*(a2 + 47))
    {
      goto LABEL_26;
    }

    v17 = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13);
    if (v18)
    {
LABEL_27:
      if (!v17 || *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      LODWORD(v28) = 1;
      v27 = 0;
      v31 = &v27;
      if (v14)
      {
        v19 = mlir::detail::constant_int_value_binder::match(&v31, v14);
        v20 = v28;
        if (v19)
        {
          v21 = v27;
          LODWORD(v32) = 1;
          v31 = 0;
          v30 = &v31;
          if (mlir::detail::constant_int_value_binder::match(&v30, v14))
          {
            LODWORD(v28) = v32;
            v27 = v31;
            LOBYTE(v29) = 1;
          }

          else
          {
            LOBYTE(v27) = 0;
            LOBYTE(v29) = 0;
            if (v32 >= 0x41 && v31)
            {
              MEMORY[0x259C63150](v31, 0x1000C8000313F17);
            }
          }

          v23 = v28;
          if (!v28)
          {
            if (v20 >= 0x41 && v21)
            {
              MEMORY[0x259C63150](v21, 0x1000C8000313F17);
            }

LABEL_63:
            v25 = *(v33[1] + 24);
            v27 = *(*v33 + 24);
            v28 = v25;
            mlir::Builder::getFusedLoc(a3 + 1, &v27, 2, 0);
          }

          if (v28 > 0x40)
          {
            v24 = llvm::APInt::countTrailingOnesSlowCase(&v27) == v23;
            if (v29 == 1 && v27)
            {
              MEMORY[0x259C63150](v27, 0x1000C8000313F17);
            }
          }

          else
          {
            v24 = v27 == (0xFFFFFFFFFFFFFFFFLL >> -v28);
          }

          if (v20 >= 0x41 && v21)
          {
            MEMORY[0x259C63150](v21, 0x1000C8000313F17);
          }

          if (v24)
          {
            goto LABEL_63;
          }
        }

        else if (v28 >= 0x41 && v27)
        {
          MEMORY[0x259C63150](v27, 0x1000C8000313F17);
        }
      }

      v26 = *(a3 + 2);
      if (v26 && mlir::RewriterBase::Listener::classof(v26))
      {
      }

      goto LABEL_41;
    }

LABEL_26:
    v17 = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
    goto LABEL_27;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_40;
  }

LABEL_41:
  if (v33 != v35)
  {
    free(v33);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::MulIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'c0' failed to satisfy constraint: ''";
  v7 = 46;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::constFoldBinaryOpConditional<mlir::IntegerAttr,llvm::APInt,void,mlir::Attribute mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,void,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&)>(llvm::ArrayRef<mlir::Attribute>,mlir::Type,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&) &&)::{lambda(llvm::APInt,llvm::APInt)#1}>(uint64_t *a1, uint64_t a2, void *a3, void (**a4)(unsigned int **__return_ptr, uint64_t *, uint64_t *))
{
  v99 = *MEMORY[0x277D85DE8];
  v93 = a3;
  if (!a3)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = a1 + 1;
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v74 = *a1;
    v71 = v5;
    Type = mlir::IntegerAttr::getType(&v74);
    if (Type == mlir::IntegerAttr::getType(&v71))
    {
      mlir::IntegerAttr::getValue(&v74, &v91);
      mlir::IntegerAttr::getValue(&v71, &v89);
      (*a4)(&v78, &v91, &v89);
      LODWORD(v97) = v79;
      v96 = v78;
      v98 = 1;
      if (v90 >= 0x41 && v89)
      {
        MEMORY[0x259C63150](v89, 0x1000C8000313F17);
      }

      if (v92 >= 0x41 && v91)
      {
        MEMORY[0x259C63150](v91, 0x1000C8000313F17);
      }

      result = mlir::IntegerAttr::get(v93, &v96);
LABEL_41:
      if ((v98 & 1) != 0 && v97 >= 0x41 && v96)
      {
        v29 = result;
        MEMORY[0x259C63150](v96, 0x1000C8000313F17);
        return v29;
      }

      return result;
    }

    return 0;
  }

  if (mlir::DenseElementsAttr::classof(*a1))
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  v96 = v9;
  if (v9 && mlir::DenseElementsAttr::isSplat(&v96))
  {
    v10 = *v6;
    v11 = mlir::DenseElementsAttr::classof(*v6) ? v10 : 0;
    v96 = v11;
    if (v11)
    {
      if (mlir::DenseElementsAttr::isSplat(&v96))
      {
        v12 = a1[1];
        v74 = *a1;
        v71 = v12;
        v13 = mlir::DenseElementsAttr::getType(&v74);
        if (v13 == mlir::DenseElementsAttr::getType(&v71))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v87);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v85);
          (*a4)(&v78, &v87, &v85);
          LODWORD(v97) = v79;
          v96 = v78;
          v98 = 1;
          if (v86 >= 0x41 && v85)
          {
            MEMORY[0x259C63150](v85, 0x1000C8000313F17);
          }

          if (v88 >= 0x41 && v87)
          {
            MEMORY[0x259C63150](v87, 0x1000C8000313F17);
          }

          v14 = llvm::cast<mlir::ShapedType,mlir::Type>(&v93);
          result = mlir::DenseElementsAttr::get(v14, v15, &v96, 1);
          goto LABEL_41;
        }

        return 0;
      }
    }
  }

  v17 = a1;
  v18 = **a1;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    mlir::memref::GlobalOp::verify();
    v17 = a1;
    v19 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      return 0;
    }
  }

  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 == &v20[2 * v21] || *v22 != v19 || !v22[1])
  {
    return 0;
  }

  v30 = **v6;
  {
    v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    if (v33)
    {
      goto LABEL_54;
    }

LABEL_61:
    v33 = 0;
    v34 = v32;
    goto LABEL_62;
  }

  mlir::memref::GlobalOp::verify();
  v17 = a1;
  v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  if (!v33)
  {
    goto LABEL_61;
  }

LABEL_54:
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
LABEL_62:
  if (v34 == &v32[2 * v33])
  {
    return 0;
  }

  if (*v34 != v31)
  {
    return 0;
  }

  if (!v34[1])
  {
    return 0;
  }

  v83 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17);
  v84 = v40;
  v82[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v6);
  v82[1] = v41;
  v42 = mlir::ElementsAttr::getType(&v83);
  if (v42 != mlir::ElementsAttr::getType(v82))
  {
    return 0;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v83, &v78);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(v82, &v74);
  if (v81 == 1 && v77 == 1)
  {
    LOWORD(v71) = v78;
    if (v78 == 1)
    {
      v72 = v79;
    }

    else
    {
      (*(*v79 + 16))(&v72);
    }

    v73 = v80;
    v68 = v74;
    if (v74 == 1)
    {
      v69 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v69);
    }

    v70 = v76;
    v96 = &v98;
    v97 = 0x400000000;
    NumElements = mlir::ElementsAttr::getNumElements(v83, v84);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(&v96, NumElements);
    v47 = mlir::ElementsAttr::getNumElements(v83, v84);
    if (v47)
    {
      v48 = v47;
      v49 = v73;
      while (1)
      {
        v50 = BYTE1(v71) ? 0 : v49;
        if (v71 == 1)
        {
          v51 = (v72 + 16 * v50);
          v64 = *(v51 + 2);
          if (v64 > 0x40)
          {
            llvm::APInt::initSlowCase(&v63, v51);
          }

          v63 = *v51;
        }

        else
        {
          (*(*v72 + 24))(&v63);
        }

        v52 = HIBYTE(v68) ? 0 : v70;
        if (v68 == 1)
        {
          v53 = (v69 + 16 * v52);
          v62 = *(v53 + 2);
          if (v62 > 0x40)
          {
            llvm::APInt::initSlowCase(&v61, v53);
          }

          v61 = *v53;
        }

        else
        {
          (*(*v69 + 24))(&v61);
        }

        (*a4)(&v94, &v63, &v61);
        v66 = v95;
        v65 = v94;
        v67 = 1;
        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        }

        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x259C63150](v63, 0x1000C8000313F17);
        }

        v54 = v67;
        v55 = v67;
        if (v67 == 1)
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v96, &v65);
          v55 = v67;
        }

        if ((v55 & 1) != 0 && v66 >= 0x41 && v65)
        {
          MEMORY[0x259C63150](v65, 0x1000C8000313F17);
        }

        if (!v54)
        {
          break;
        }

        v49 = ++v73;
        ++v70;
        if (!--v48)
        {
          goto LABEL_115;
        }
      }

      v58 = 0;
    }

    else
    {
LABEL_115:
      v56 = llvm::cast<mlir::ShapedType,mlir::Type>(&v93);
      v58 = mlir::DenseElementsAttr::get(v56, v57, v96, v97);
    }

    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v96);
    if ((v68 & 1) == 0)
    {
      v59 = v69;
      v69 = 0;
      if (v59)
      {
        (*(*v59 + 8))(v59);
      }
    }

    result = v58;
    if ((v71 & 1) == 0)
    {
      v60 = v72;
      v72 = 0;
      if (v60)
      {
        (*(*v60 + 8))(v60);
        result = v58;
      }
    }
  }

  else
  {
    result = 0;
  }

  if (v77 == 1 && (v74 & 1) == 0)
  {
    v43 = v75;
    v75 = 0;
    if (v43)
    {
      v44 = result;
      (*(*v43 + 8))(v43);
      result = v44;
    }
  }

  if (v81 == 1 && (v78 & 1) == 0)
  {
    v45 = v79;
    v79 = 0;
    if (v45)
    {
      v29 = result;
      (*(*v45 + 8))(v45);
      return v29;
    }
  }

  return result;
}

void anonymous namespace::AddUIExtendedToAddI::~AddUIExtendedToAddI(_anonymous_namespace_::AddUIExtendedToAddI *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddUIExtendedToAddI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'res__1' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, const llvm::APInt *a2, unint64_t **a3)
{
  v4 = *(a2 + 2);
  v8 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7, a2);
  }

  v7 = *a2;
  v10 = v4;
  v9 = v7;
  v8 = 0;
  result = llvm::APInt::operator-=(&v9, a3);
  v6 = v9;
  *(a1 + 8) = v10;
  *a1 = v6;
  *(a1 + 16) = 1;
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void anonymous namespace::SubIRHSAddConstant::~SubIRHSAddConstant(_anonymous_namespace_::SubIRHSAddConstant *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubILHSAddConstant::~SubILHSAddConstant(_anonymous_namespace_::SubILHSAddConstant *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubIRHSSubConstantRHS::~SubIRHSSubConstantRHS(_anonymous_namespace_::SubIRHSSubConstantRHS *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubIRHSSubConstantLHS::~SubIRHSSubConstantLHS(_anonymous_namespace_::SubIRHSSubConstantLHS *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubILHSSubConstantRHS::~SubILHSSubConstantRHS(_anonymous_namespace_::SubILHSSubConstantRHS *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubILHSSubConstantLHS::~SubILHSSubConstantLHS(_anonymous_namespace_::SubILHSSubConstantLHS *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubISubILHSRHSLHS::~SubISubILHSRHSLHS(_anonymous_namespace_::SubISubILHSRHSLHS *this)
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

uint64_t anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(_anonymous_namespace_::SubISubILHSRHSLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_12:
        (*(*v8 + 88))(v8, v9, v10, v20);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      if (!*(DefiningOp + 47))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
      if (!*(DefiningOp + 47))
      {
        goto LABEL_19;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, "overflowFlags", 13);
    if (v14)
    {
LABEL_20:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      if (v22 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v21[v22] = v7;
      LODWORD(v22) = v22 + 1;
      if ((*(v5 + 46) & 0x80) != 0)
      {
        v15 = *(v5 + 9);
        if (*(a2 + 47))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v15 = 0;
        if (*(a2 + 47))
        {
LABEL_26:
          v16 = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13);
          if (v17)
          {
            goto LABEL_28;
          }
        }
      }

      v16 = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
LABEL_28:
      if (!v16 || *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      if (*(v12 + 24) == *(v15 + 56))
      {
        v19 = *(v21[1] + 24);
        v20[0] = *(*v21 + 24);
        v20[1] = v19;
        mlir::Builder::getFusedLoc(a3 + 1, v20, 2, 0);
      }

      v18 = *(a3 + 2);
      if (v18 && mlir::RewriterBase::Listener::classof(v18))
      {
      }

      goto LABEL_13;
    }

LABEL_19:
    InherentAttr = mlir::DictionaryAttr::get(v7 + 56, "overflowFlags", 0xDuLL);
    goto LABEL_20;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::SubIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "Operands 'x' and 'x0' must be equal";
  v7 = 35;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulIMulIConstant::~MulIMulIConstant(_anonymous_namespace_::MulIMulIConstant *this)
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

uint64_t anonymous namespace::MulIMulIConstant::matchAndRewrite(_anonymous_namespace_::MulIMulIConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  v25 = v27;
  v27[0] = a2;
  v26 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v24[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v24);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(v8))
    {
      goto LABEL_40;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v24[0] = *(*(DefiningOp + 72) + 56);
    v12 = mlir::Value::getDefiningOp(v24);
    if (v12)
    {
      v13 = v12;
      {
        goto LABEL_40;
      }

      if (v26 >= HIDWORD(v26))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25[v26] = v13;
      LODWORD(v26) = v26 + 1;
      if (!*(v7 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(v7, "overflowFlags", 13), (v15 & 1) == 0))
      {
        InherentAttr = mlir::DictionaryAttr::get(v7 + 56, "overflowFlags", 0xDuLL);
      }

      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      if (v26 >= HIDWORD(v26))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25[v26] = v7;
      LODWORD(v26) = v26 + 1;
      v24[0] = *(*(v5 + 9) + 56);
      v16 = mlir::Value::getDefiningOp(v24);
      if (v16)
      {
        v17 = v16;
        {
          if (v26 < HIDWORD(v26))
          {
            v25[v26] = v17;
            LODWORD(v26) = v26 + 1;
            if (!*(a2 + 47) || (v18 = mlir::Operation::getInherentAttr(a2, "overflowFlags", 13), (v19 & 1) == 0))
            {
              v18 = mlir::DictionaryAttr::get(a2 + 56, "overflowFlags", 0xDuLL);
            }

            if (!v18 || *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
            {
              mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
            }

            v20 = *(v25[1] + 24);
            v24[0] = *(*v25 + 24);
            v24[1] = v20;
            mlir::Builder::getFusedLoc(a3 + 1, v24, 2, 0);
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        goto LABEL_40;
      }

      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(v8))
      {
        goto LABEL_40;
      }

      v9 = *(v5 + 3);
    }

    else
    {
      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(v8))
      {
        goto LABEL_40;
      }

      v9 = *(v7 + 24);
    }

LABEL_12:
    (*(*v8 + 88))(v8, v9, v10, v24);
    v11 = v25;
    if (v25 == v27)
    {
      return 0;
    }

    goto LABEL_41;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(v8))
  {
    v9 = *(v7 + 24);
    goto LABEL_12;
  }

LABEL_40:
  v11 = v25;
  if (v25 != v27)
  {
LABEL_41:
    free(v11);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulIOp,mlir::Value &,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::MulIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::MulIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulSIExtendedToMulI::~MulSIExtendedToMulI(_anonymous_namespace_::MulSIExtendedToMulI *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedToMulI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'res__1' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulSIExtendedRHSOne::~MulSIExtendedRHSOne(_anonymous_namespace_::MulSIExtendedRHSOne *this)
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

uint64_t anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(_anonymous_namespace_::MulSIExtendedRHSOne *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v34[0] = a2;
  v33 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v24 = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v24);
  if (!DefiningOp)
  {
    v12 = *(a3 + 2);
    if (!v12 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_19;
    }

    v13 = *(v5 + 3);
LABEL_18:
    (*(*v12 + 88))(v12, v13, v14, &v24);
    goto LABEL_19;
  }

  v7 = DefiningOp;
  v29 = 0;
  v27 = &v29;
  v24 = (DefiningOp - 16);
  v8 = mlir::Value::getDefiningOp(&v24);
  if (!v8 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v27, v8) & 1) == 0)
  {
    v12 = *(a3 + 2);
    if (!v12 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_19;
    }

    v13 = *(v7 + 24);
    goto LABEL_18;
  }

  v9 = v29;
  if (v33 >= HIDWORD(v33))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v32[v33] = v7;
  LODWORD(v33) = v33 + 1;
  LODWORD(v25) = 1;
  v24 = 0;
  v29 = &v24;
  if (!v9)
  {
    goto LABEL_62;
  }

  v10 = mlir::detail::constant_int_value_binder::match(&v29, v9);
  v11 = v25;
  if ((v10 & 1) == 0)
  {
    if (v25 >= 0x41)
    {
      v16 = v24;
      if (v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_62;
  }

  v23 = v24;
  LODWORD(v30) = 1;
  v29 = 0;
  v27 = &v29;
  if (mlir::detail::constant_int_value_binder::match(&v27, v9))
  {
    LODWORD(v25) = v30;
    v24 = v29;
    LOBYTE(v26) = 1;
  }

  else
  {
    LOBYTE(v24) = 0;
    LOBYTE(v26) = 0;
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }

  v17 = v25;
  v18 = v25 - 1;
  if (v25 > 0x40)
  {
    if (((*(v24 + (v18 >> 6)) >> v18) & 1) != 0 || llvm::APInt::countLeadingZerosSlowCase(&v24) == v17)
    {
      v19 = 1;
      goto LABEL_53;
    }

LABEL_37:
    LODWORD(v28) = 1;
    v27 = 0;
    v29 = &v27;
    if (mlir::detail::constant_int_value_binder::match(&v29, v9))
    {
      LODWORD(v30) = v28;
      v29 = v27;
      LOBYTE(v31) = 1;
    }

    else
    {
      LOBYTE(v29) = 0;
      LOBYTE(v31) = 0;
      if (v28 >= 0x41 && v27)
      {
        MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      }
    }

    v20 = v30;
    if (v30 >= 0x41)
    {
      if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v29) > 0x40)
      {
        v19 = 1;
LABEL_48:
        if (v20 >= 0x41 && (v31 & 1) != 0 && v29)
        {
          MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }

        v17 = v25;
LABEL_53:
        if (v26 == 1 && v17 >= 0x41 && v24)
        {
          MEMORY[0x259C63150](v24, 0x1000C8000313F17);
        }

        if (v11 >= 0x41 && v23)
        {
          MEMORY[0x259C63150](v23, 0x1000C8000313F17);
          if (v19)
          {
            goto LABEL_62;
          }
        }

        else if (v19)
        {
          goto LABEL_62;
        }

        v24 = *(*v32 + 24);
        mlir::Builder::getFusedLoc(a3 + 1, &v24, 1, 0);
      }

      v21 = v29;
    }

    else
    {
      v21 = &v29;
    }

    v19 = *v21 != 1;
    goto LABEL_48;
  }

  if (((v24 >> v18) & 1) == 0 && v24)
  {
    goto LABEL_37;
  }

  v16 = v23;
  if (v11 >= 0x41 && v23)
  {
LABEL_24:
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

LABEL_62:
  v22 = *(a3 + 2);
  if (v22 && mlir::RewriterBase::Listener::classof(v22))
  {
  }

LABEL_19:
  if (v32 != v34)
  {
    free(v32);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicateAttr,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::CmpIOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtSIOp,mlir::IntegerType &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op1->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'c1' failed to satisfy constraint: ''";
  v7 = 46;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulUIExtendedToMulI::~MulUIExtendedToMulI(_anonymous_namespace_::MulUIExtendedToMulI *this)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulUIExtendedToMulI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'res__1' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a3);
  }

  v11 = *a3;
  v6 = *a2;
  if (**a2)
  {
    goto LABEL_12;
  }

  v7 = *(a4 + 2);
  if (v7 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v6 = 1;
    v10 = v11;
    *(a1 + 8) = v12;
    *a1 = v10;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v7)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::udiv(&v11, a4, &v13);
  v8 = v13;
  v9 = v12;
  *(a1 + 8) = v14;
  *a1 = v8;
  v14 = 0;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a3);
  }

  v11 = *a3;
  v6 = *a2;
  if (**a2)
  {
    goto LABEL_12;
  }

  v7 = *(a4 + 2);
  if (v7 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v6 = 1;
    v10 = v11;
    *(a1 + 8) = v12;
    *a1 = v10;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v7)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::sdiv_ov(&v11, a4, v6, &v13);
  v8 = v13;
  v9 = v12;
  *(a1 + 8) = v14;
  *a1 = v8;
  v14 = 0;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v15 = *(a3 + 2);
  if (v15 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, a3);
  }

  v14 = *a3;
  v7 = *a2;
  if (**a2)
  {
    goto LABEL_12;
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v7 = 1;
    v10 = v14;
    *(a1 + 8) = v15;
    *a1 = v10;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::udiv(&v14, a4, &v20);
  llvm::APInt::urem(&v14, a4, &v18);
  v9 = v19;
  if (v19 > 0x40)
  {
    v11 = llvm::APInt::countLeadingZerosSlowCase(&v18);
    if (v18)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }

    if (v11 != v9)
    {
      goto LABEL_9;
    }
  }

  else if (v18)
  {
LABEL_9:
    v19 = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase(&v18);
    }

    v18 = v15 != 0;
    llvm::APInt::uadd_ov(&v20, &v18, *a2, &v16);
    if (v19 >= 0x41 && v18)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }

    if (v21 >= 0x41 && v20)
    {
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }

    goto LABEL_25;
  }

  v17 = v21;
  v16 = v20;
LABEL_25:
  v12 = v16;
  v13 = v15;
  *(a1 + 8) = v17;
  *a1 = v12;
  v17 = 0;
  *(a1 + 16) = 1;
  if (v13 >= 0x41)
  {
    if (v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }
}

uint64_t *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t *result, BOOL **a2, llvm::APInt *a3, llvm::APInt *this)
{
  v6 = result;
  v16 = *(a3 + 2);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, a3);
  }

  v15 = *a3;
  v7 = *a2;
  if (**a2)
  {
    goto LABEL_10;
  }

  v8 = *(this + 2);
  if (v8 <= 0x40)
  {
    if (*this)
    {
      goto LABEL_7;
    }

LABEL_10:
    *v7 = 1;
    v9 = v16;
    v10 = v15;
    goto LABEL_11;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(this);
  if (result == v8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = v16;
  v10 = v15;
  if (!v15)
  {
LABEL_11:
    *(v6 + 8) = v9;
    *v6 = v10;
    *(v6 + 16) = 1;
    return result;
  }

  v25 = v16;
  v24 = 0;
  v11 = llvm::APInt::compareSigned(&v15, &v24);
  v12 = llvm::APInt::compareSigned(this, &v24);
  if (v11 < 1 || v12 < 1)
  {
    *v23 = 0;
    if (v11 > 0 || v12 > 0)
    {
      if (v11 > 0 || v12 < 1)
      {
        llvm::APInt::ssub_ov(&v24, this, &v23[2], &v21);
        llvm::APInt::sdiv_ov(&v15, &v21, &v23[1], v19);
        result = llvm::APInt::ssub_ov(&v24, v19, v23, &v17);
        if (v23[2])
        {
          goto LABEL_27;
        }
      }

      else
      {
        llvm::APInt::ssub_ov(&v24, &v15, &v23[3], &v21);
        llvm::APInt::sdiv_ov(&v21, this, &v23[1], v19);
        result = llvm::APInt::ssub_ov(&v24, v19, v23, &v17);
        if (v23[3])
        {
          goto LABEL_27;
        }
      }

      if (!v23[1])
      {
        **a2 = v23[0];
        if (v20 >= 0x41)
        {
LABEL_28:
          result = *v19;
          if (*v19)
          {
            result = MEMORY[0x259C63150](*v19, 0x1000C8000313F17);
          }
        }

LABEL_30:
        if (v22 >= 0x41)
        {
          result = v21;
          if (v21)
          {
            result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
          }
        }

        goto LABEL_33;
      }
    }

    else
    {
      llvm::APInt::ssub_ov(&v24, &v15, &v23[3], &v21);
      llvm::APInt::ssub_ov(&v24, this, &v23[2], v19);
      result = signedCeilNonnegInputs(&v17, &v21, v19, &v23[1]);
      if (!v23[3] && !v23[2])
      {
        **a2 = v23[1];
        if (v20 >= 0x41)
        {
          goto LABEL_28;
        }

        goto LABEL_30;
      }
    }

LABEL_27:
    **a2 = 1;
    if (v20 >= 0x41)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  result = signedCeilNonnegInputs(&v17, &v15, this, *a2);
LABEL_33:
  if (v25 >= 0x41)
  {
    result = v24;
    if (v24)
    {
      result = MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }
  }

  v13 = v17;
  v14 = v16;
  *(v6 + 8) = v18;
  *v6 = v13;
  v18 = 0;
  *(v6 + 16) = 1;
  if (v14 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      return MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *signedCeilNonnegInputs(const llvm::APInt *a1, const llvm::APInt *this, const llvm::APInt *a3, BOOL *a4)
{
  v7 = *(this + 2);
  v14 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13);
  }

  v13 = v7 != 0;
  llvm::APInt::ssub_ov(this, &v13, a4, &v9);
  llvm::APInt::sdiv_ov(&v9, a3, a4, &v11);
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  result = llvm::APInt::sadd_ov(&v11, &v13, a4, a1);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, llvm::APInt *a3, llvm::APInt *this)
{
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a3);
  }

  v11 = *a3;
  v7 = *(this + 2);
  if (v7 <= 0x40)
  {
    if (!*this)
    {
      goto LABEL_4;
    }
  }

  else if (llvm::APInt::countLeadingZerosSlowCase(this) == v7)
  {
LABEL_4:
    **a2 = 1;
    v8 = v11;
    *(a1 + 8) = v12;
    *a1 = v8;
    *(a1 + 16) = 1;
    return;
  }

  llvm::APInt::sfloordiv_ov(&v11, this, *a2, &v13);
  v9 = v13;
  v10 = v12;
  *(a1 + 8) = v14;
  *a1 = v9;
  v14 = 0;
  *(a1 + 16) = 1;
  if (v10 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a3);
  }

  v11 = *a3;
  v6 = *a2;
  if (**a2)
  {
    goto LABEL_12;
  }

  v7 = *(a4 + 2);
  if (v7 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v6 = 1;
    v10 = v11;
    *(a1 + 8) = v12;
    *a1 = v10;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v7)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::urem(&v11, a4, &v13);
  v8 = v13;
  v9 = v12;
  *(a1 + 8) = v14;
  *a1 = v8;
  v14 = 0;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, a3);
  }

  v11 = *a3;
  v6 = *a2;
  if (**a2)
  {
    goto LABEL_12;
  }

  v7 = *(a4 + 2);
  if (v7 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v6 = 1;
    v10 = v11;
    *(a1 + 8) = v12;
    *a1 = v10;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v7)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::srem(&v11, a4, &v13);
  v8 = v13;
  v9 = v12;
  *(a1 + 8) = v14;
  *a1 = v8;
  v14 = 0;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, const llvm::APInt *a2, void *a3)
{
  v3 = *(a2 + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v4 = *a3 & *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, const llvm::APInt *a2, void *a3)
{
  v3 = *(a2 + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v4 = *a3 | *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, const llvm::APInt *a2, void *a3)
{
  v3 = *(a2 + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v4 = *a3 ^ *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

void anonymous namespace::XOrINotCmpI::~XOrINotCmpI(_anonymous_namespace_::XOrINotCmpI *this)
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

uint64_t anonymous namespace::XOrINotCmpI::matchAndRewrite(_anonymous_namespace_::XOrINotCmpI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v20[0] = a2;
  v19 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v17[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (DefiningOp)
  {
    v6 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(v7))
      {
        v8 = *(v6 + 24);
LABEL_26:
        (*(*v7 + 88))(v7, v8, v9, v17);
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (!*(DefiningOp + 47) || (InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, "predicate", 9), (v11 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(v6 + 56, "predicate", 9uLL);
    }

    if (!InherentAttr || (mlir::arith::CmpIPredicateAttr::classof(InherentAttr) & 1) == 0)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(v7))
      {
        v8 = *(v6 + 24);
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ((*(v6 + 46) & 0x80) != 0)
    {
      v12 = v19;
      if (v19 < HIDWORD(v19))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = v19;
      if (v19 < HIDWORD(v19))
      {
LABEL_19:
        v18[v12] = v6;
        LODWORD(v19) = v19 + 1;
        v17[0] = *(*(v4 + 9) + 56);
        v13 = mlir::Value::getDefiningOp(v17);
        if (v13)
        {
          v14 = v13;
          {
            if (v19 < HIDWORD(v19))
            {
              v18[v19] = v14;
              LODWORD(v19) = v19 + 1;
              v15 = *(v18[1] + 24);
              v17[0] = *(*v18 + 24);
              v17[1] = v15;
              mlir::Builder::getFusedLoc(a3 + 1, v17, 2, 0);
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        else
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(v7))
          {
            v8 = *(v4 + 3);
            goto LABEL_26;
          }
        }

        goto LABEL_27;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(v7))
  {
    v8 = *(v4 + 3);
    goto LABEL_26;
  }

LABEL_27:
  if (v18 != v20)
  {
    free(v18);
  }

  return 0;
}

uint64_t anonymous namespace::static_dag_matcher_12(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v12);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, DefiningOp) & 1) != 0)
  {
    v5 = v10;
    v12[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 1'";
    v12[1] = 169;
    IntegerType = mlir::Builder::getIntegerType((a1 + 8), 1);
    if (mlir::Builder::getIntegerAttr(a1 + 8, IntegerType, 1uLL) == v5)
    {
      return 1;
    }

    else
    {
      v11 = v12;
      v9 = *(a1 + 16);
      if (v9)
      {
        if (mlir::RewriterBase::Listener::classof(v9))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8 && mlir::RewriterBase::Listener::classof(v8))
    {
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate,mlir::Value &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::CmpIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::CmpIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "expected op 'arith.cmpi' to have attribute 'predicate' of type '::mlir::arith::CmpIPredicateAttr'";
  v7 = 97;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_12(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization4(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ****a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v10 = 261;
  v9[0] = v3;
  v9[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v9);
  v5 = *(v4 + 16);
  v11.n128_u32[0] = 3;
  v11.n128_u64[1] = ": constant attribute 1";
  v12 = 22;
  v6 = *(v4 + 24);
  if (v6 >= *(v4 + 28))
  {
    if (v5 > &v11 || v5 + 24 * v6 <= &v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (v5 + 24 * *(v4 + 24));
  result = v11;
  v7[1].n128_u64[0] = v12;
  *v7 = result;
  ++*(v4 + 24);
  return result;
}

void anonymous namespace::XOrIOfExtUI::~XOrIOfExtUI(_anonymous_namespace_::XOrIOfExtUI *this)
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

uint64_t anonymous namespace::XOrIOfExtUI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v20);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
LABEL_18:
        v21[v13] = DefiningOp;
        LODWORD(v22) = v22 + 1;
        v20[0] = *(*(v5 + 9) + 56);
        v14 = mlir::Value::getDefiningOp(v20);
        if (!v14)
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
          {
            v9 = *(v5 + 3);
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
        {
          v7 = *(a3 + 2);
          if (v7)
          {
            v15 = v14;
            if (mlir::RewriterBase::Listener::classof(v7))
            {
              v9 = *(v15 + 24);
              goto LABEL_12;
            }
          }

          goto LABEL_13;
        }

        if ((*(v14 + 46) & 0x80) != 0)
        {
          v16 = *(v14 + 72);
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
LABEL_28:
            v21[v17] = v14;
            LODWORD(v22) = v22 + 1;
            if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
            {
              v18 = *(v21[1] + 24);
              v20[0] = *(*v21 + 24);
              v20[1] = v18;
              v20[2] = *(v21[2] + 24);
              mlir::Builder::getFusedLoc(a3 + 1, v20, 3, 0);
            }

            v19 = *(a3 + 2);
            if (v19 && mlir::RewriterBase::Listener::classof(v19))
            {
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = 0;
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
            goto LABEL_28;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::XOrIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::IntegerType &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtUIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_8(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_9(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::XOrIOfExtSI::~XOrIOfExtSI(_anonymous_namespace_::XOrIOfExtSI *this)
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

uint64_t anonymous namespace::XOrIOfExtSI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v20);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
LABEL_18:
        v21[v13] = DefiningOp;
        LODWORD(v22) = v22 + 1;
        v20[0] = *(*(v5 + 9) + 56);
        v14 = mlir::Value::getDefiningOp(v20);
        if (!v14)
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
          {
            v9 = *(v5 + 3);
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
        {
          v7 = *(a3 + 2);
          if (v7)
          {
            v15 = v14;
            if (mlir::RewriterBase::Listener::classof(v7))
            {
              v9 = *(v15 + 24);
              goto LABEL_12;
            }
          }

          goto LABEL_13;
        }

        if ((*(v14 + 46) & 0x80) != 0)
        {
          v16 = *(v14 + 72);
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
LABEL_28:
            v21[v17] = v14;
            LODWORD(v22) = v22 + 1;
            if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
            {
              v18 = *(v21[1] + 24);
              v20[0] = *(*v21 + 24);
              v20[1] = v18;
              v20[2] = *(v21[2] + 24);
              mlir::Builder::getFusedLoc(a3 + 1, v20, 3, 0);
            }

            v19 = *(a3 + 2);
            if (v19 && mlir::RewriterBase::Listener::classof(v19))
            {
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = 0;
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
            goto LABEL_28;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_6(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_7(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 8);
  v4 = *(a2 + 8);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v7, v3);
    if (v5 != v7.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::changeSign(&v7);
      v6 = (a1 + 8);
      if (v5 != v7.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, &v7);
      a1[32] = 1;
      if (v5 != v7.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v7);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v7, v3);
    if (v5 != v7.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::changeSign(&v7);
  v6 = (a1 + 8);
  if (v5 == v7.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v6, &v7);
  a1[32] = 1;
  if (v5 == v7.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v7);
}

uint64_t mlir::detail::constant_float_predicate_matcher::match(llvm::APFloatBase *a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = llvm::APFloatBase::Bogus(a1);
  v5 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, v4);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v10, v4);
  v8 = v9;
  if (!mlir::detail::constant_float_value_binder::match(&v8, a2))
  {
    v6 = 0;
    if (v5 != v10[0])
    {
      goto LABEL_4;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v10);
    return v6;
  }

  v6 = (*a1)(v9);
  if (v5 == v10[0])
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v10);
  return v6;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, a2);
  return a1;
}

uint64_t mlir::detail::constant_float_value_binder::match(uint64_t *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v19[0] = v5;
  if (v4)
  {
    mlir::FloatAttr::getValue(v19, &v20);
    v15 = llvm::APFloat::Storage::operator=((v2 + 8), v21);
    v16 = v21[0].n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v16)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v21);
    }

    return 1;
  }

  else
  {
    v6 = a2;
    if (mlir::DenseElementsAttr::classof(a2))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v20 = v7;
    if (v7)
    {
      v7 = mlir::DenseElementsAttr::isSplat(&v20) ? v6 : 0;
      v18 = v7;
      if (v7)
      {
        mlir::DenseElementsAttr::getType(&v18);
        mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v20, v18, 0);
        v6 = v18;
        NumElements = mlir::DenseElementsAttr::getNumElements(&v18);
        mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v19, v6, NumElements);
        v9 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v20);
        v10 = *(*v9 + 136);
        v11 = v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        LODWORD(v6) = v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v19[0] = v12;
        if (v11)
        {
          mlir::FloatAttr::getValue(v19, &v20);
          v13 = llvm::APFloat::Storage::operator=((v2 + 8), v21);
          v14 = v21[0].n128_u64[0];
          if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v21);
          }
        }

        LODWORD(v7) = 1;
      }
    }

    return v7 & v6;
  }
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::add(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::add(&v10, v8, 1);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::subtract(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::subtract(&v10, v8, 1);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = llvm::maximum(this, a3, v7);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

void *llvm::maximum@<X0>(llvm *this@<X0>, const llvm::APFloat *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 8);
  v8 = *(this + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v9 == v8)
  {
    if ((*(*(this + 2) + 28) & 7) == 1)
    {
      v13 = (a3 + 8);
      v11 = v7;

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
    }
  }

  else if ((*(this + 28) & 7) == 1)
  {
    v10 = (a3 + 8);
    v11 = v7;

    return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
  }

  v11 = (a2 + 8);
  v14 = *(a2 + 1);
  if (v9 != v14)
  {
    if ((*(a2 + 28) & 7) == 1)
    {
LABEL_39:
      v10 = (a3 + 8);

      return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
    }

    goto LABEL_14;
  }

  if ((*(*(a2 + 2) + 28) & 7) != 1)
  {
LABEL_14:
    v15 = *(this + 2);
    if (v9 != v8)
    {
      v15 = this;
    }

    v16 = *(v15 + 28);
    if ((v16 & 7) == 3 && (v9 != v14 ? (v17 = a2) : (v17 = *(a2 + 2)), (v18 = *(v17 + 28), (v18 & 7) == 3) && ((v16 >> 3) & 1) != (v18 & 8) >> 3))
    {
      if ((v16 & 8) != 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = this;
      }

      v20 = *(v19 + 1);
      v11 = (v19 + 8);
      if (v9 != v20)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v21 = v9;
      if (v9 == v8)
      {
        if (llvm::detail::DoubleAPFloat::compare(v7, v11))
        {
          v24 = this;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v11 = (v24 + 8);
        if (v21 != v25)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (llvm::detail::IEEEFloat::compare(v7, v11))
        {
          v22 = this;
        }

        else
        {
          v22 = a2;
        }

        v23 = *(v22 + 1);
        v11 = (v22 + 8);
        if (v21 != v23)
        {
          goto LABEL_39;
        }
      }
    }
  }

  v13 = (a3 + 8);

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
}

BOOL llvm::APFloat::operator<(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v6) == 0;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v6) == 0;
  }
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = llvm::minimum(this, a3, v7);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

void *llvm::minimum@<X0>(llvm *this@<X0>, const llvm::APFloat *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 8);
  v8 = *(this + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v9 == v8)
  {
    if ((*(*(this + 2) + 28) & 7) == 1)
    {
      v13 = (a3 + 8);
      v11 = v7;

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
    }
  }

  else if ((*(this + 28) & 7) == 1)
  {
    v10 = (a3 + 8);
    v11 = v7;

    return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
  }

  v11 = (a2 + 8);
  v14 = *(a2 + 1);
  if (v9 != v14)
  {
    if ((*(a2 + 28) & 7) == 1)
    {
LABEL_38:
      v10 = (a3 + 8);

      return llvm::detail::IEEEFloat::IEEEFloat(v10, v11);
    }

    goto LABEL_14;
  }

  if ((*(*(a2 + 2) + 28) & 7) != 1)
  {
LABEL_14:
    v15 = *(this + 2);
    if (v9 != v8)
    {
      v15 = this;
    }

    v16 = *(v15 + 28);
    if ((v16 & 7) != 3)
    {
      goto LABEL_28;
    }

    v17 = *(a2 + 2);
    if (v9 != v14)
    {
      v17 = a2;
    }

    v18 = *(v17 + 28);
    if ((v18 & 7) == 3 && ((v16 >> 3) & 1) != (v18 & 8) >> 3)
    {
      if ((v16 & 8) != 0)
      {
        v19 = this;
      }

      else
      {
        v19 = a2;
      }

      v20 = *(v19 + 1);
      v11 = (v19 + 8);
      if (v9 != v20)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_28:
      v21 = v9;
      if (v9 == v14)
      {
        if (llvm::detail::DoubleAPFloat::compare((a2 + 8), v7))
        {
          v24 = this;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v11 = (v24 + 8);
        if (v21 != v25)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (llvm::detail::IEEEFloat::compare((a2 + 8), v7))
        {
          v22 = this;
        }

        else
        {
          v22 = a2;
        }

        v23 = *(v22 + 1);
        v11 = (v22 + 8);
        if (v21 != v23)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v13 = (a3 + 8);

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v13, v11);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = llvm::minnum(this, a3, v7);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

void *llvm::minnum@<X0>(llvm *this@<X0>, const llvm::APFloat *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (this + 8);
  v8 = *(this + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(this);
  v10 = *(this + 2);
  if (v9 != v8)
  {
    v10 = this;
  }

  v11 = *(v10 + 28);
  if ((v11 & 7) == 1)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    if (v9 != v13)
    {
      v14 = (a3 + 8);
      v15 = v12;

      return llvm::detail::IEEEFloat::IEEEFloat(v14, v15);
    }

    v23 = (a3 + 8);
    v15 = v12;

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v15);
  }

  v17 = *(a2 + 1);
  v18 = *(a2 + 2);
  if (v9 != v17)
  {
    v18 = a2;
  }

  v19 = *(v18 + 28);
  if ((v19 & 7) != 1)
  {
    v20 = (v11 & 7) == 3 && (v19 & 7) == 3;
    if (v20 && ((v11 >> 3) & 1) != (v19 & 8) >> 3)
    {
      if ((v11 & 8) != 0)
      {
        v21 = this;
      }

      else
      {
        v21 = a2;
      }

      v22 = *(v21 + 1);
      v15 = (v21 + 8);
      if (v9 == v22)
      {
        goto LABEL_25;
      }

LABEL_44:
      v14 = (a3 + 8);

      return llvm::detail::IEEEFloat::IEEEFloat(v14, v15);
    }

    v24 = v9;
    if (v9 == v17)
    {
      if (llvm::detail::DoubleAPFloat::compare((a2 + 8), v7))
      {
        v27 = this;
      }

      else
      {
        v27 = a2;
      }

      v28 = *(v27 + 1);
      v15 = (v27 + 8);
      if (v24 != v28)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (llvm::detail::IEEEFloat::compare((a2 + 8), v7))
      {
        v25 = this;
      }

      else
      {
        v25 = a2;
      }

      v26 = *(v25 + 1);
      v15 = (v25 + 8);
      if (v24 != v26)
      {
        goto LABEL_44;
      }
    }

LABEL_25:
    v23 = (a3 + 8);

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v15);
  }

  if (v9 != v8)
  {
    v14 = (a3 + 8);
    v15 = v7;

    return llvm::detail::IEEEFloat::IEEEFloat(v14, v15);
  }

  v23 = (a3 + 8);
  v15 = v7;

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v23, v15);
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::multiply(&v10, v8, 1);
      v9 = (a1 + 8);
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
      a1[32] = 1;
      if (v7 != v10.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::multiply(&v10, v8, 1u);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void anonymous namespace::MulFOfNegF::~MulFOfNegF(_anonymous_namespace_::MulFOfNegF *this)
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

uint64_t anonymous namespace::MulFOfNegF::matchAndRewrite(_anonymous_namespace_::MulFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v20 = v5;
  v19 = v5;
  v22 = v24;
  v24[0] = a2;
  v23 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v21[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v21);
  if (!DefiningOp)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_27;
    }

    v15 = *(v6 + 3);
LABEL_26:
    (*(*v14 + 88))(v14, v15, v16, v21);
    goto LABEL_27;
  }

  v8 = DefiningOp;
  {
    goto LABEL_27;
  }

  if (v23 >= HIDWORD(v23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v22[v23] = v8;
  LODWORD(v23) = v23 + 1;
  v21[0] = *(*(v6 + 9) + 56);
  v9 = mlir::Value::getDefiningOp(v21);
  if (!v9)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_27;
    }

    v15 = *(v6 + 3);
    goto LABEL_26;
  }

  v10 = v9;
  {
    if (v23 >= HIDWORD(v23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22[v23] = v10;
    LODWORD(v23) = v23 + 1;
    if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "fastmath", 8), (v12 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "fastmath", 8uLL);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
    }

    if ((*(*(v20 + 24) + 8) ^ *(*(v19 + 24) + 8)) < 8)
    {
      v13 = *(v22[1] + 24);
      v21[0] = *(*v22 + 24);
      v21[1] = v13;
      v21[2] = *(v22[2] + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v21, 3, 0);
    }

    v18 = *(a3 + 2);
    if (v18 && mlir::RewriterBase::Listener::classof(v18))
    {
    }
  }

LABEL_27:
  if (v22 != v24)
  {
    free(v22);
  }

  return 0;
}

uint64_t anonymous namespace::static_dag_matcher_10(uint64_t a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return v5[1];
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (mlir::RewriterBase::Listener::classof(*(a1 + 16)))
      {
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::static_dag_matcher_11(uint64_t a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return v5[1];
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (mlir::RewriterBase::Listener::classof(*(a1 + 16)))
      {
      }
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulFOp,mlir::Value &,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::MulFOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_10(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::NegFOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_11(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::NegFOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 != v6)
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::divide(&v10, v8, 1);
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
  v8 = (a3 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::divide(&v10, v8, 1);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
    a1[32] = 1;
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

void anonymous namespace::DivFOfNegF::~DivFOfNegF(_anonymous_namespace_::DivFOfNegF *this)
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

uint64_t anonymous namespace::DivFOfNegF::matchAndRewrite(_anonymous_namespace_::DivFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = 0;
  }

  v20 = v5;
  v19 = v5;
  v22 = v24;
  v24[0] = a2;
  v23 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v21[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v21);
  if (!DefiningOp)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_27;
    }

    v15 = *(v6 + 3);
LABEL_26:
    (*(*v14 + 88))(v14, v15, v16, v21);
    goto LABEL_27;
  }

  v8 = DefiningOp;
  {
    goto LABEL_27;
  }

  if (v23 >= HIDWORD(v23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v22[v23] = v8;
  LODWORD(v23) = v23 + 1;
  v21[0] = *(*(v6 + 9) + 56);
  v9 = mlir::Value::getDefiningOp(v21);
  if (!v9)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_27;
    }

    v15 = *(v6 + 3);
    goto LABEL_26;
  }

  v10 = v9;
  {
    if (v23 >= HIDWORD(v23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22[v23] = v10;
    LODWORD(v23) = v23 + 1;
    if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "fastmath", 8), (v12 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "fastmath", 8uLL);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
    }

    if ((*(*(v20 + 24) + 8) ^ *(*(v19 + 24) + 8)) < 8)
    {
      v13 = *(v22[1] + 24);
      v21[0] = *(*v22 + 24);
      v21[1] = v13;
      v21[2] = *(v22[2] + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v21, 3, 0);
    }

    v18 = *(a3 + 2);
    if (v18 && mlir::RewriterBase::Listener::classof(v18))
    {
    }
  }

LABEL_27:
  if (v22 != v24)
  {
    free(v22);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::DivFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::DivFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::DivFOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 != v6)
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v10, v5);
    v8 = (a3 + 8);
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::mod(&v10, v8);
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v10, v5);
  v8 = (a3 + 8);
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::mod(&v10, v8);
  v9 = (a1 + 8);
  if (v7 == v10.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, &v10);
    a1[32] = 1;
    if (v7 != v10.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v9, &v10);
  a1[32] = 1;
  if (v7 == v10.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v10);
}

uint64_t getTypeIfLike<mlir::IntegerType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = v1;
    v16 = a1;
    mlir::tensor::ExpandShapeOp::fold();
    a1 = v16;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v15 + 8);
    v4 = *(v15 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v12 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_22:
  result = mlir::getElementTypeOrSelf(a1);
  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  return result;
}