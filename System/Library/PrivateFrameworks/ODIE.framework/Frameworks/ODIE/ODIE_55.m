void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 8) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v18[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
    if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0) && ((v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v15 & 1) == 0) || (v13 = *(v14 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3, 3, v13, a5, a6, "DenseI32ArrayAttr", 17))
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    a5(&v17, a6);
    if (v17)
    {
      mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  result = 0;
LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v13 = v15;
  v14 = 0x300000000;
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(v2, v3 + 64, 3);
  v5 = *(**v4 + 32);
  v12 = 261;
  v11[0] = "operandSegmentSizes";
  v11[1] = 19;
  v7 = mlir::StringAttr::get(v5, v11, v6);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v7, v4);
  if (v14)
  {
    v8 = mlir::DictionaryAttr::get(v2, v13, v14);
  }

  else
  {
    v8 = 0;
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = *(a2 + 4);
  v3 = 0x9DDFEA08EB382D69 * (*a2 ^ __ROR8__(v2 + 12, 12) ^ 0xFF51AFD7ED558CCDLL);
  v4 = __ROR8__(v2 + 12, 12) ^ (v3 >> 47);
  v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ v3)) >> 47))) ^ v2;
  v6 = 8 * v5 + 8;
  v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    if (*(v9 + 16) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_10;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3uLL) & 1) == 0)
  {
    goto LABEL_10;
  }

  result = 1;
LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 3);
    (*(*a3 + 16))(a3, v6);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorBlockArgument(int a1, uint64_t a2, unsigned int a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  if (v3)
  {
    v6 = 0;
    v7 = a2 + 64;
    v8 = 24;
    while (1)
    {
      mlir::cf::CondBranchOp::getSuccessorOperands(v15, a2, v6);
      BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v15, a3, *(((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + v8));
      v11 = v10;
      if (v16 != v17)
      {
        free(v16);
      }

      if (v11)
      {
        break;
      }

      ++v6;
      v8 += 32;
      if (v3 == v6)
      {
        v12 = 0;
        goto LABEL_10;
      }
    }

    v12 = BranchSuccessorArgument;
LABEL_10:
    result = v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorForOperands(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3 || *(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  if (*(v3 + 24) > 0x40u)
  {
    operator new[]();
  }

  if (*(v3 + 16) == 1)
  {
    v6 = 24;
  }

  else
  {
    v6 = 56;
  }

  return *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v6);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v94[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  v13 = a2 + 64;
  (*(*a3 + 176))(a3, *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (!*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 4))
  {
    goto LABEL_43;
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    *v15 = 40;
    ++*(v14 + 4);
  }

  v16 = *(a2 + 44);
  v17 = (v13 + 16 * ((v16 >> 23) & 1));
  v18 = v17[1];
  if ((v16 & 0x800000) != 0)
  {
    v19 = *(a2 + 72);
  }

  else
  {
    v19 = 0;
  }

  v20 = *v17;
  v21 = (*(*a3 + 16))(a3);
  if (v18)
  {
    v22 = v21;
    v23 = v18 + v20;
    v24 = v19 + 32 * v20;
    (*(*a3 + 160))(a3, *(v24 + 24));
    if (v23 - v20 != 1)
    {
      v25 = ~v20 + v23;
      v26 = (v24 + 56);
      do
      {
        v27 = *(v22 + 4);
        if (*(v22 + 3) - v27 > 1uLL)
        {
          *v27 = 8236;
          *(v22 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v22, ", ", 2uLL);
        }

        v28 = *v26;
        v26 += 4;
        (*(*a3 + 160))(a3, v28);
        --v25;
      }

      while (v25);
    }
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a3 + 16))(a3);
  v32 = *(v31 + 4);
  if (*(v31 + 3) == v32)
  {
    llvm::raw_ostream::write(v31, ":", 1uLL);
  }

  else
  {
    *v32 = 58;
    ++*(v31 + 4);
  }

  v33 = (*(*a3 + 16))(a3);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  v35 = *(a2 + 44);
  v36 = (v13 + 16 * ((v35 >> 23) & 1));
  v37 = v36[1];
  if ((v35 & 0x800000) != 0)
  {
    v38 = *(a2 + 72);
    if (v37)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v38 = 0;
    if (v37)
    {
LABEL_34:
      v39 = *v36;
      v40 = v37 + v39;
      v41 = v38 + 32 * v39;
      (*(*a3 + 32))(a3, *(*(v41 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v40 - v39 != 1)
      {
        v42 = ~v39 + v40;
        v43 = (v41 + 56);
        do
        {
          v44 = (*(*a3 + 16))(a3);
          v45 = *(v44 + 4);
          if (*(v44 + 3) - v45 > 1uLL)
          {
            *v45 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v46 = *v43;
          v43 += 4;
          (*(*a3 + 32))(a3, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v42;
        }

        while (v42);
      }
    }
  }

  v47 = (*(*a3 + 16))(a3);
  v48 = *(v47 + 4);
  if (*(v47 + 3) == v48)
  {
    llvm::raw_ostream::write(v47, ")", 1uLL);
  }

  else
  {
    *v48 = 41;
    ++*(v47 + 4);
  }

LABEL_43:
  v49 = (*(*a3 + 16))(a3);
  v50 = *(v49 + 4);
  if (*(v49 + 3) == v50)
  {
    llvm::raw_ostream::write(v49, ",", 1uLL);
  }

  else
  {
    *v50 = 44;
    ++*(v49 + 4);
  }

  v51 = (*(*a3 + 16))(a3);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  (*(*a3 + 176))(a3, *(((v13 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56));
  if (!*(v13 + 16 * ((*(a2 + 44) >> 23) & 1) + 8))
  {
    goto LABEL_82;
  }

  v53 = (*(*a3 + 16))(a3);
  v54 = *(v53 + 4);
  if (*(v53 + 3) == v54)
  {
    llvm::raw_ostream::write(v53, "(", 1uLL);
  }

  else
  {
    *v54 = 40;
    ++*(v53 + 4);
  }

  v55 = *(a2 + 44);
  v56 = (v13 + 16 * ((v55 >> 23) & 1));
  v57 = v56[2];
  if ((v55 & 0x800000) != 0)
  {
    v58 = *(a2 + 72);
  }

  else
  {
    v58 = 0;
  }

  v59 = *v56;
  v60 = v56[1];
  v61 = (*(*a3 + 16))(a3);
  if (v57)
  {
    v62 = v61;
    v63 = (v60 + v59);
    v64 = (v57 + v63);
    v65 = v58 + 32 * v63;
    (*(*a3 + 160))(a3, *(v65 + 24));
    if (v64 - v63 != 1)
    {
      v66 = ~v63 + v64;
      v67 = (v65 + 56);
      do
      {
        v68 = *(v62 + 4);
        if (*(v62 + 3) - v68 > 1uLL)
        {
          *v68 = 8236;
          *(v62 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v62, ", ", 2uLL);
        }

        v69 = *v67;
        v67 += 4;
        (*(*a3 + 160))(a3, v69);
        --v66;
      }

      while (v66);
    }
  }

  v70 = (*(*a3 + 16))(a3);
  v71 = *(v70 + 4);
  if (v71 >= *(v70 + 3))
  {
    llvm::raw_ostream::write(v70, 32);
  }

  else
  {
    *(v70 + 4) = v71 + 1;
    *v71 = 32;
  }

  v72 = (*(*a3 + 16))(a3);
  v73 = *(v72 + 4);
  if (*(v72 + 3) == v73)
  {
    llvm::raw_ostream::write(v72, ":", 1uLL);
  }

  else
  {
    *v73 = 58;
    ++*(v72 + 4);
  }

  v74 = (*(*a3 + 16))(a3);
  v75 = *(v74 + 4);
  if (v75 >= *(v74 + 3))
  {
    llvm::raw_ostream::write(v74, 32);
  }

  else
  {
    *(v74 + 4) = v75 + 1;
    *v75 = 32;
  }

  v76 = *(a2 + 44);
  v77 = (v13 + 16 * ((v76 >> 23) & 1));
  v78 = v77[2];
  if ((v76 & 0x800000) != 0)
  {
    v79 = *(a2 + 72);
    if (v78)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v79 = 0;
    if (v78)
    {
LABEL_73:
      v80 = (v77[1] + *v77);
      v81 = (v78 + v80);
      v82 = v79 + 32 * v80;
      (*(*a3 + 32))(a3, *(*(v82 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v81 - v80 != 1)
      {
        v83 = ~v80 + v81;
        v84 = (v82 + 56);
        do
        {
          v85 = (*(*a3 + 16))(a3);
          v86 = *(v85 + 4);
          if (*(v85 + 3) - v86 > 1uLL)
          {
            *v86 = 8236;
            *(v85 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v85, ", ", 2uLL);
          }

          v87 = *v84;
          v84 += 4;
          (*(*a3 + 32))(a3, *(v87 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v83;
        }

        while (v83);
      }
    }
  }

  v88 = (*(*a3 + 16))(a3);
  v89 = *(v88 + 4);
  if (*(v88 + 3) == v89)
  {
    llvm::raw_ostream::write(v88, ")", 1uLL);
  }

  else
  {
    *v89 = 41;
    ++*(v88 + 4);
  }

LABEL_82:
  v92 = v94;
  v93 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v92, "operandSegmentSizes", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v92, v93);
  if (v92 != v94)
  {
    free(v92);
  }

  v91 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyNSuccessors(a1, 2) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) || ((*(a1 + 46) & 0x80) == 0 ? (v4 = 0) : (v4 = *(a1 + 68)), !mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4)))
  {
LABEL_20:
    IsTerminator = 0;
    goto LABEL_21;
  }

  v6 = *(a1 + 44);
  v7 = *(a1 + 16 * ((v6 >> 23) & 1) + 64);
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(a1 + 72);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if (v7)
    {
LABEL_10:
      v9 = 0;
      v10 = v8 + 24;
      while (mlir::cf::__mlir_ods_local_type_constraint_ControlFlowOps1(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), v9))
      {
        ++v9;
        v10 += 32;
        if (v7 == v9)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_13:
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = 0;
    do
    {
      mlir::cf::CondBranchOp::getSuccessorOperands(v17, a1, v12);
      v13 = mlir::detail::verifyBranchSuccessorOperands(a1, v12, v17);
      if (v18 != v19)
      {
        free(v18);
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (v11 != ++v12);
  }

  IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v5, a2, a3, a4, a5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 11)
  {
    if (*a3 != 0x6C61765F65736163 || *(a3 + 3) != 0x7365756C61765F65)
    {
      goto LABEL_29;
    }

    v11 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_32;
  }

  if (a4 != 19)
  {
    if (a4 != 21)
    {
LABEL_29:
      LOBYTE(v11) = 0;
      v12 = 0;
      return v12 | v11;
    }

    if (*a3 != 0x65706F5F65736163 || a3[1] != 0x6765735F646E6172 || *(a3 + 13) != 0x73746E656D676573)
    {
      v6 = *(a3 + 13);
      v7 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v8 = 1935635566;
      goto LABEL_19;
    }

    v11 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
LABEL_32:
    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    return v12 | v11;
  }

  v6 = *(a3 + 11);
  v7 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
  v8 = 1400139365;
LABEL_19:
  v9 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v9)
  {
    goto LABEL_29;
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80, 3);
  v12 = v11 & 0xFFFFFFFFFFFFFF00;
  return v12 | v11;
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  switch(v7)
  {
    case 11:
      v18 = *v6;
      v19 = *(v6 + 3);
      if (v18 == 0x6C61765F65736163 && v19 == 0x7365756C61765F65)
      {
        if (a4)
        {
          if (mlir::DenseIntElementsAttr::classof(a4))
          {
            v21 = a4;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v5[1] = v21;
      }

      break;
    case 19:
      v10 = *v6 ^ 0x53646E617265706FLL;
      v11 = v6[1] ^ 0x6953746E656D6765;
      v12 = *(v6 + 11);
      v13 = 1400139365;
LABEL_13:
      if (v10 | v11 | v12 ^ (v13 | 0x73657A6900000000))
      {
        v14 = 1;
      }

      else
      {
        v14 = a4 == 0;
      }

      if (!v14 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v15 = a4[1];
        if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v15[2] == 32 && a4[2] == 3)
        {
          v16 = a4[4];
          if (v16 >= 4)
          {
            v17 = a4[3];

            memmove(v5 + 2, v17, v16 & 0xFFFFFFFFFFFFFFFCLL);
          }
        }
      }

      return;
    case 21:
      if (*v6 != 0x65706F5F65736163 || v6[1] != 0x6765735F646E6172 || *(v6 + 13) != 0x73746E656D676573)
      {
        v10 = *v6 ^ 0x5F646E617265706FLL;
        v11 = v6[1] ^ 0x5F746E656D676573;
        v12 = *(v6 + 13);
        v13 = 1935635566;
        goto LABEL_13;
      }

      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v22 = a4[1], *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v22[2] == 32)
        {
          v23 = a4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      *v5 = v23;
      break;
    default:
      return;
  }
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v20 = 261;
    v18 = "case_operand_segments";
    v19 = 21;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "case_values";
    v19 = 11;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 16, 3);
  v15 = *(**v14 + 32);
  v20 = 261;
  v18 = "operandSegmentSizes";
  v19 = 19;
  v17 = mlir::StringAttr::get(v15, &v18, v16);
  mlir::NamedAttrList::push_back(a3, v17, v14);
}

double mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v28, a6);
    if (v28)
    {
      mlir::Diagnostic::operator<<<42ul>(v29, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "case_operand_segments", 0x15uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v14[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 32)
      {
        a5(&v28, a6);
        if (v28)
        {
          goto LABEL_27;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
        goto LABEL_5;
      }

      *a3 = v14;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "case_values", 0xBuLL);
  if (v17)
  {
    v14 = *(v16 + 8);
    if (v14)
    {
      if (mlir::DenseIntElementsAttr::classof(*(v16 + 8)))
      {
        a3[1] = v14;
        goto LABEL_17;
      }

      a5(&v28, a6);
      if (v28)
      {
LABEL_27:
        if (v28)
        {
          v26 = 0;
          v27 = v14;
          v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
          v24 = v30 + 24 * v31;
          v25 = *v23;
          *(v24 + 16) = *(v23 + 16);
          *v24 = v25;
          ++v31;
        }

        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

LABEL_17:
  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v19 & 1) == 0 || (v20 = *(v18 + 8)) == 0) && ((v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v22 & 1) == 0) || (v20 = *(v21 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 2, 3, v20, a5, a6, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v23 = v25;
  v24 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v22 = 261;
    v20 = "case_operand_segments";
    v21 = 21;
    v9 = mlir::StringAttr::get(v8, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v22 = 261;
    v20 = "case_values";
    v21 = 11;
    v12 = mlir::StringAttr::get(v11, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v12, v10);
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 16, 3);
  v14 = *(**v13 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v16 = mlir::StringAttr::get(v14, &v20, v15);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v16, v13);
  if (v24)
  {
    v17 = mlir::DictionaryAttr::get(v3, v23, v24);
  }

  else
  {
    v17 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

__n128 mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a3 + 16) == *(a2 + 16) && *(a3 + 24) == *(a2 + 24);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hashProperties(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = *(a2 + 20);
  v7 = __ROR8__(v6 + 12, 12);
  v8 = 0x9DDFEA08EB382D69 * (a2[2] ^ v7 ^ 0xFF51AFD7ED558CCDLL);
  v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47))) ^ v6;
  memset(v14, 0, sizeof(v14));
  v15 = 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v13, 0, v14, &v14[3] + 8, &v12, &v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1))
  {
    goto LABEL_12;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }

    if (*(v9 + 16) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_12;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 2, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 3uLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 16))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 16, 3);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 16), 3);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorBlockArgument(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = a2[10];
  if (v3)
  {
    v6 = 0;
    v7 = a2 + 16;
    v8 = 24;
    while (1)
    {
      v15 = a2;
      mlir::cf::SwitchOp::getSuccessorOperands(v16, &v15, v6);
      BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v16, a3, *(((&v7[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + v8));
      v11 = v10;
      if (v17 != v18)
      {
        free(v17);
      }

      if (v11)
      {
        break;
      }

      ++v6;
      v8 += 32;
      if (v3 == v6)
      {
        v12 = 0;
        goto LABEL_10;
      }
    }

    v12 = BranchSuccessorArgument;
LABEL_10:
    result = v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorForOperands(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 64 + 16 * ((v3 >> 23) & 1);
  v23 = *(v4 + 8);
  v24 = v23 != 0;
  if (!v23)
  {
    v6 = v4 + ((v3 >> 21) & 0x7F8);
LABEL_28:
    result = *(((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    goto LABEL_29;
  }

  if (*(a2 + 40))
  {
    v5 = ((v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v5 = 32;
  }

  v7 = *a3;
  if (!*a3 || *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    result = 0;
    goto LABEL_29;
  }

  v20 = a2 + 64;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v23, v25);
  v9 = *&v25[16];
  v29 = *v25;
  v30 = *&v25[16];
  v31 = *&v25[32];
  *&v25[8] = *v25;
  *&v25[24] = v9;
  *v25 = 0;
  v10 = v26 - v9;
  if (v26 == v9)
  {
LABEL_27:
    v6 = v20 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
    goto LABEL_28;
  }

  v11 = v9 + 1;
  v12 = (v5 + 24);
  v13 = 1;
  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v25[8], &__s1);
    v14 = v28;
    v15 = __s1;
    if (*(v7 + 24) > 0x40u)
    {
      operator new[]();
    }

    v16 = *(v7 + 16);
    if (v28 > 0x40)
    {
      v17 = memcmp(__s1, v16, ((v28 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      v17 = __s1 == v16;
    }

    v18 = v17;
    if (v18)
    {
      v22 = *v12;
    }

    if (v14 >= 0x41 && v15)
    {
      MEMORY[0x25F891010](v15, 0x1000C8000313F17);
    }

    if (v18)
    {
      break;
    }

    *v25 = v13;
    *&v25[24] = v11++;
    v12 += 4;
    ++v13;
    if (!--v10)
    {
      goto LABEL_27;
    }
  }

  result = v22;
LABEL_29:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v29[19] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
  }

  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ",", 1uLL);
  }

  else
  {
    *v16 = 44;
    ++*(v15 + 4);
  }

  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, "[", 1uLL);
  }

  else
  {
    *v20 = 91;
    ++*(v19 + 4);
  }

  (*(*a3 + 128))(a3);
  v21 = *(a2 + 80);
  v22 = *(((a2 + 80 + 8 * *(a2 + 47) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v23 = *(a2 + 88);
  v24 = *(a2 + 40);
  v25 = *(v21 + 16);
  *&v26 = *(a2 + 72) + 32 * (*(a2 + 100) + *(a2 + 96));
  *(&v26 + 1) = v21;
  v27 = 0;
  v28 = v25;
  mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v29, 0, v25, &v26);
}

uint64_t mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_35;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_35;
  }

  v5 = a1 + 64;
  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v64 = a1;
    if (!mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v64))
    {
      goto LABEL_35;
    }

    v64 = a1;
    if (!mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v64))
    {
      goto LABEL_35;
    }

    v9 = *(a1 + 44);
    v10 = (v9 >> 23) & 1;
    v11 = *(v5 + 16 * v10 + 16);
    if ((v9 & 0x800000) != 0)
    {
      v12 = *(a1 + 72);
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      if (v11)
      {
LABEL_13:
        v13 = 0;
        v14 = v12 + 24;
        while (1)
        {
          v15 = *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8;
          v59 = v13;
          if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            v61 = 261;
            v60[0] = "operand";
            v60[1] = 7;
            mlir::Operation::emitOpError(a1, v60, &v64);
            if (v64)
            {
              mlir::Diagnostic::operator<<<3ul>(v65, " #");
            }

            v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v64, &v59);
            v17 = v16;
            if (*v16)
            {
              mlir::Diagnostic::operator<<<27ul>((v16 + 1), " must be integer, but got ");
              if (*v17)
              {
                LODWORD(v62) = 4;
                v63 = v15;
                v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v62, 1);
                v19 = v17[3] + 24 * *(v17 + 8);
                v20 = *v18;
                *(v19 + 16) = *(v18 + 16);
                *v19 = v20;
                ++*(v17 + 8);
              }
            }

            v21 = *(v17 + 200);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v64);
            if (v21)
            {
              goto LABEL_35;
            }
          }

          ++v13;
          v14 += 32;
          if (v11 == v13)
          {
            v10 = (*(a1 + 44) >> 23) & 1;
            v22 = *(v5 + 16 * v10 + 16);
            goto LABEL_28;
          }
        }
      }
    }

    v22 = 0;
LABEL_28:
    if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "case_operand_segments", 0x15uLL, "caseOperands", 0xCuLL, (*(v5 + 16 * v10 + 24) + *(v5 + 16 * v10 + 20) + v22) - (*(v5 + 16 * v10 + 20) + v22)))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v60[0] = "requires attribute 'case_operand_segments'";
    v61 = 259;
    mlir::Operation::emitOpError(a1, v60, &v64);
    v23 = v68;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v64);
    if (v23)
    {
      goto LABEL_35;
    }
  }

  if ((mlir::detail::BranchOpInterfaceTrait<mlir::cf::SwitchOp>::verifyTrait(a1) & 1) != 0 && mlir::OpTrait::impl::verifyIsTerminator(a1, v24))
  {
    v25 = *(a1 + 40);
    v26 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
    if (v25)
    {
      v27 = v25 - 1;
      if (!v26 && v25 == 1)
      {
LABEL_52:
        v28 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v27 = -1;
    }

    v31 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v32 = *(v26 + 8);
    v33 = (*(*(v26 + 16) + 8))();
    if (v31 == v33)
    {
      v34 = *(v26 + 8);
      v35 = (*(*(v26 + 16) + 24))();
      if (v36)
      {
        v37 = 8 * v36;
        v38 = 1;
        do
        {
          v39 = *v35++;
          v38 *= v39;
          v37 -= 8;
        }

        while (v37);
      }

      else
      {
        v38 = 1;
      }

      if (v38 == v27)
      {
        goto LABEL_52;
      }

      v61 = 257;
      mlir::Operation::emitOpError(a1, v60, &v64);
      if (v64)
      {
        mlir::Diagnostic::operator<<<24ul>(v65, "number of case values (");
      }

      v48 = *(v26 + 8);
      v49 = (*(*(v26 + 16) + 24))();
      if (v50)
      {
        v51 = 8 * v50;
        v52 = 1;
        do
        {
          v53 = *v49++;
          v52 *= v53;
          v51 -= 8;
        }

        while (v51);
      }

      else
      {
        v52 = 1;
      }

      if (v64)
      {
        LODWORD(v62) = 2;
        v63 = v52;
        v54 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v66, &v62, 1);
        v55 = v66 + 24 * v67;
        v56 = *v54;
        *(v55 + 16) = *(v54 + 16);
        *v55 = v56;
        ++v67;
        if (v64)
        {
          mlir::Diagnostic::operator<<<45ul>(v65, ") should match number of case destinations (");
        }
      }

      v62 = v27;
      v57 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v64, &v62);
      v58 = v57;
      if (*v57)
      {
        mlir::Diagnostic::operator<<<2ul>((v57 + 1), ")");
      }

      v47 = *(v58 + 200);
    }

    else
    {
      v40 = v33;
      v61 = 257;
      mlir::Operation::emitOpError(a1, v60, &v64);
      if (v64)
      {
        mlir::Diagnostic::operator<<<14ul>(v65, "'flag' type (");
        if (v64)
        {
          LODWORD(v62) = 4;
          v63 = v31;
          v41 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v66, &v62, 1);
          v42 = v66 + 24 * v67;
          v43 = *v41;
          *(v42 + 16) = *(v41 + 16);
          *v42 = v43;
          ++v67;
          if (v64)
          {
            mlir::Diagnostic::operator<<<33ul>(v65, ") should match case value type (");
            if (v64)
            {
              LODWORD(v62) = 4;
              v63 = v40;
              v44 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v66, &v62, 1);
              v45 = v66 + 24 * v67;
              v46 = *v44;
              *(v45 + 16) = *(v44 + 16);
              *v45 = v46;
              ++v67;
              if (v64)
              {
                mlir::Diagnostic::operator<<<2ul>(v65, ")");
              }
            }
          }
        }
      }

      v47 = v68;
    }

    v28 = v47 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v64);
    goto LABEL_36;
  }

LABEL_35:
  v28 = 0;
LABEL_36:
  v29 = *MEMORY[0x277D85DE8];
  return v28 & 1;
}

uint64_t mlir::detail::BranchOpInterfaceTrait<mlir::cf::SwitchOp>::verifyTrait(mlir::Operation *a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v1 = *(a1 + 10);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      mlir::cf::SwitchOp::getSuccessorOperands(v8, &v7, v3);
      v4 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v8);
      if (v9 != v10)
      {
        free(v9);
      }

      if ((v4 & 1) == 0)
      {
        break;
      }

      if (v1 == ++v3)
      {
        goto LABEL_7;
      }
    }

    result = 0;
  }

  else
  {
LABEL_7:
    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>();
      mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[315];
}

uint64_t llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>()
{
  {
    llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::bufferization::BufferDeallocationOpInterface>();
    unk_27FC199F0 = v1;
  }

  return llvm::getTypeName<mlir::bufferization::BufferDeallocationOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::bufferization::BufferDeallocationOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::bufferization::BufferDeallocationOpInterface]";
  v6 = 112;
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

uint64_t mlir::detail::constant_int_predicate_matcher::match(uint64_t (**this)(uint64_t *), mlir::Operation *a2)
{
  v7 = 1;
  v5 = &v6;
  v6 = 0;
  if (mlir::detail::constant_int_value_binder::match(&v5, a2))
  {
    v3 = (*this)(&v6);
  }

  else
  {
    v3 = 0;
  }

  if (v7 >= 0x41 && v6)
  {
    MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t *mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>()
{
  {
    mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID();
  }

  return &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = *a2;
  v9[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v9[2] = 0;
  v10[0] = 0;
  *(v10 + 5) = 0;
  v3 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v9, 1);
  v4 = *a1 + 40 * *(a1 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  v7 = *MEMORY[0x277D85DE8];
  return *a1 + 40 * v4 - 40;
}

void anonymous namespace::SimplifyConstCondBranchPred::~SimplifyConstCondBranchPred(_anonymous_namespace_::SimplifyConstCondBranchPred *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyConstCondBranchPred::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v23[0] = mlir::m_NonZero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  v6 = *(v5 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = (v9 + 120);
    if (v9 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = (v7 + 16 * v8 + 16);
  }

  if (mlir::detail::constant_int_predicate_matcher::match(v23, v10))
  {
    v11 = *(a2 + 44);
    v12 = a2 + 16 * ((v11 >> 23) & 1);
    v24 = *(((v12 + 64 + ((v11 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v13 = *(v12 + 64);
    v14 = *(v12 + 68);
    if ((v11 & 0x800000) == 0)
    {
LABEL_23:
      v15 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v15 = *(a2 + 72);
LABEL_12:
    v23[0] = (v15 + 32 * v13);
    v23[1] = ((v14 + v13) - v13);
    v16 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v24, v23);
    (*(*a3 + 8))(a3, a2, v16);
    return 1;
  }

  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8) & 7;
LABEL_14:
  v23[0] = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v6 == 7)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v18 = *(v5 + 8) & 7;
  if (v18 == 6)
  {
    v19 = v5 + 24 * *(v5 + 16);
    v20 = (v19 + 120);
    if (v19 == -120)
    {
      return 0;
    }
  }

  else
  {
    v20 = (v5 + 16 * v18 + 16);
  }

  result = mlir::detail::constant_int_predicate_matcher::match(v23, v20);
  if (result)
  {
    v21 = *(a2 + 44);
    v22 = (a2 + 16 * ((v21 >> 23) & 1));
    v24 = *(((v22 + ((v21 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 56);
    v13 = (v22[17] + v22[16]);
    v14 = v22[18];
    if ((v21 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  return result;
}

BOOL mlir::m_NonZero(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 != 0;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 != 0;
  }

  return 1;
}

BOOL mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 0;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 0;
  }

  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyConstCondBranchPred>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyConstCondBranchPred]";
  v6 = 112;
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

void anonymous namespace::SimplifyPassThroughCondBranch::~SimplifyPassThroughCondBranch(_anonymous_namespace_::SimplifyPassThroughCondBranch *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyPassThroughCondBranch::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 44);
  v6 = a2 + 16 * ((v5 >> 23) & 1);
  v7 = v6 + 64;
  v8 = (v6 + 64 + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  v26 = *(v8 + 56);
  v27 = v9;
  v11 = *(v6 + 64);
  v10 = *(v6 + 68);
  if ((v5 & 0x800000) != 0)
  {
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
  }

  v13 = (v10 + v11);
  v34 = (v12 + 32 * v11) & 0xFFFFFFFFFFFFFFF9 | 2;
  v35 = v13 - v11;
  v14 = *(v7 + 8);
  if ((v5 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  v32 = (v15 + 32 * v13) & 0xFFFFFFFFFFFFFFF9 | 2;
  v33 = (v14 + v13) - v13;
  v30[0] = v31;
  v30[1] = 0x400000000;
  v28[0] = v29;
  v28[1] = 0x400000000;
  v16 = collapseBranch(&v27, &v34, v30);
  if ((collapseBranch(&v26, &v32, v28) | v16) == 1)
  {
    v17 = *(*(a2 + 72) + 24);
    v18 = *(a2 + 24);
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::CondBranchOp>(a3 + 8, *(**v18 + 32));
    v36[0] = v18;
    v36[1] = v19;
    v36[2] = v37;
    v36[3] = 0x400000000;
    v37[4] = v38;
    v37[5] = 0x400000000;
    v38[4] = v39;
    v38[5] = 0x400000000;
    v39[8] = 4;
    v39[9] = v40;
    v39[10] = 0x100000000;
    v40[1] = v41;
    v40[2] = 0x100000000;
    v41[1] = 0;
    v41[2] = 0;
    v41[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v41[4] = 0;
    v41[6] = 0;
    mlir::cf::CondBranchOp::build(v19, v36, v17, v34, v35, v32, v33, v27, v26);
    v20 = mlir::Operation::create(v36);
    mlir::OpBuilder::insert((a3 + 8), v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(v36);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    (*(*a3 + 8))(a3, a2, v22);
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::CondBranchOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "cf.cond_br";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyPassThroughCondBranch>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyPassThroughCondBranch]";
  v6 = 114;
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

void anonymous namespace::SimplifyCondBranchIdenticalSuccessors::~SimplifyCondBranchIdenticalSuccessors(_anonymous_namespace_::SimplifyCondBranchIdenticalSuccessors *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyCondBranchIdenticalSuccessors::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = (a2 + 16 * ((v3 >> 23) & 1) + 64);
  v5 = (v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 24);
  v41 = v6;
  if (v6 == *(v5 + 56))
  {
    v10 = *v4;
    v11 = *(a2 + 16 * ((v3 >> 23) & 1) + 68);
    if ((v3 & 0x800000) != 0)
    {
      v12 = *(a2 + 72);
    }

    else
    {
      v12 = 0;
    }

    v13 = (v11 + v10);
    v14 = v12 + 32 * v10;
    v15 = v13 - v10;
    v16 = *(a2 + 16 * ((v3 >> 23) & 1) + 72);
    v17 = (v16 + v13);
    if (v13 - v10 == v17 - v13)
    {
      if (!v11)
      {
LABEL_10:
        v21 = *(a2 + 24);
        v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a3 + 8, *(**v21 + 32));
        v42 = v21;
        v43 = v22;
        v44[0] = v45;
        v44[1] = 0x400000000;
        v45[4] = v46;
        v45[5] = 0x400000000;
        v46[4] = v47;
        v46[5] = 0x400000000;
        v47[8] = 4;
        v48[0] = v49;
        v48[1] = 0x100000000;
        v49[1] = v50;
        v49[2] = 0x100000000;
        v50[1] = 0;
        v50[2] = 0;
        v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v50[4] = 0;
        v50[6] = 0;
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v48, v6);
        llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v44, (v12 + 32 * v10) & 0xFFFFFFFFFFFFFFF9 | 2, 0, (v12 + 32 * v10) & 0xFFFFFFFFFFFFFFF9 | 2, v15);
        v23 = mlir::Operation::create(&v42);
        mlir::OpBuilder::insert((a3 + 8), v23);
        v24 = *(*(v23 + 6) + 16);
        mlir::OperationState::~OperationState(&v42);
        if (v24 == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
        {
          v25 = v23;
        }

        else
        {
          v25 = 0;
        }

        (*(*a3 + 8))(a3, a2, v25);
        goto LABEL_35;
      }

      v18 = (v12 + 32 * v13 + 24);
      v19 = (v14 + 24);
      v20 = v13 - v10;
      while (*v19 == *v18)
      {
        v18 += 4;
        v19 += 4;
        if (!--v20)
        {
          goto LABEL_10;
        }
      }
    }

    v26 = *v6;
    if (*v6)
    {
      v27 = *(v26[2] + 16);
      while (1)
      {
        v26 = *v26;
        if (!v26)
        {
          break;
        }

        if (*(v26[2] + 16) != v27)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v27 = 0;
    }

    if (v27 != *(a2 + 16))
    {
      goto LABEL_2;
    }

    v42 = v44;
    v43 = 0x800000000;
    if (v15 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v13 - v10, 8);
      v14 = v12 + 32 * v10;
    }

    v40 = *(*(a2 + 72) + 24);
    if (v11 && v16)
    {
      v28 = ~v13 + v17;
      v29 = ~v10 + v13;
      v30 = (v12 + 32 * v13 + 24);
      v31 = (v14 + 24);
      do
      {
        v32 = *v31;
        v33 = *v30;
        v38 = v32;
        v39 = v33;
        if (v32 != v33)
        {
          v32 = mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v40, &v38, &v39) - 16;
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v42, v32);
        v34 = v28-- != 0;
        v35 = v34;
        v34 = v29-- != 0;
        if (!v34)
        {
          break;
        }

        v30 += 4;
        v31 += 4;
      }

      while ((v35 & 1) != 0);
    }

    v36 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>((a3 + 8), *(a2 + 24), &v41, &v42);
    (*(*a3 + 8))(a3, a2, v36);
    if (v42 != v44)
    {
      free(v42);
    }

LABEL_35:
    result = 1;
    goto LABEL_36;
  }

LABEL_2:
  result = 0;
LABEL_36:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SelectOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::arith::SelectOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::SelectOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.select";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::cf::BranchOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v21[0] = v22;
  v21[1] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v10 = *a4;
  v11 = *(a4 + 2);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v21, v9);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, v10 & 0xFFFFFFFFFFFFFFF9, 0, v10 & 0xFFFFFFFFFFFFFFF9, v11);
  v12 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyCondBranchIdenticalSuccessors>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyCondBranchIdenticalSuccessors]";
  v6 = 122;
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

void anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::~SimplifyCondBranchFromCondBranchOnSameCondition(_anonymous_namespace_::SimplifyCondBranchFromCondBranchOnSameCondition *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v5 = *(v4[2] + 16);
  if (*v4 || v5 == 0)
  {
    return 0;
  }

  v7 = *(v5 + 32);
  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
  {
    return 0;
  }

  v9 = *(a2 + 72);
  if (*(v9 + 24) != *(*(v7 + 72) + 24))
  {
    return 0;
  }

  v12 = *(((v7 + ((*(v7 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
  v13 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == v12)
  {
    v18 = *(v13 + 24);
    v14 = *(a2 + 80);
    v15 = *(a2 + 84);
  }

  else
  {
    v18 = *(v13 + 56);
    v14 = (*(a2 + 84) + *(a2 + 80));
    v15 = *(a2 + 88);
  }

  v17[0] = v9 + 32 * v14;
  v17[1] = (v15 + v14) - v14;
  v16 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v18, v17);
  (*(*a3 + 8))(a3, a2, v16);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SimplifyCondBranchFromCondBranchOnSameCondition]";
  v6 = 132;
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

void anonymous namespace::CondBranchTruthPropagation::~CondBranchTruthPropagation(_anonymous_namespace_::CondBranchTruthPropagation *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::CondBranchTruthPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = (a3 + 1);
  v33 = mlir::IntegerType::get(a3[1], 1, 0);
  v6 = a2 + 64;
  v7 = *(a2 + 44);
  v8 = (v7 >> 23) & 1;
  v9 = (v7 >> 21) & 0x7F8;
  v10 = **(((a2 + 64 + 16 * v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v10)
  {
    if (*v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10[2] + 16) == 0;
    }

    if (v11 || (v12 = **(*(a2 + 72) + 24)) == 0)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = 0;
      v13 = 0;
      do
      {
        v14 = *v12;
        v15 = v12[2];
        if (*(v15 + 16) == *(((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
        {
          if (!v13)
          {
            v16 = *(a2 + 24);
            v32 = *(**v5 + 600);
            v13 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(v5, v16, &v33, &v32) - 16;
            v15 = v12[2];
          }

          ((*a3)[5])(a3, v15);
          v17 = v12[1];
          if (v17)
          {
            v18 = *v12;
            *v17 = *v12;
            if (v18)
            {
              v18[1] = v12[1];
            }
          }

          v12[3] = v13;
          v12[1] = v13;
          v19 = *v13;
          *v12 = *v13;
          if (v19)
          {
            *(v19 + 8) = v12;
          }

          *v13 = v12;
          ((*a3)[6])(a3, v15);
          LOBYTE(v10) = 1;
        }

        v12 = v14;
      }

      while (v14);
      v20 = *(a2 + 44);
      v8 = (v20 >> 23) & 1;
      v9 = (v20 >> 21) & 0x7F8;
    }
  }

  v21 = **(((v6 + 16 * v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
  if (v21)
  {
    if (!*v21 && *(v21[2] + 16) != 0)
    {
      v23 = **(*(a2 + 72) + 24);
      if (v23)
      {
        v24 = 0;
        do
        {
          v25 = *v23;
          v26 = v23[2];
          if (*(v26 + 16) == *(((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56))
          {
            if (!v24)
            {
              v27 = *(a2 + 24);
              v32 = *(**v5 + 592);
              v24 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(v5, v27, &v33, &v32) - 16;
              v26 = v23[2];
            }

            ((*a3)[5])(a3, v26);
            v28 = v23[1];
            if (v28)
            {
              v29 = *v23;
              *v28 = *v23;
              if (v29)
              {
                v29[1] = v23[1];
              }
            }

            v23[3] = v24;
            v23[1] = v24;
            v30 = *v24;
            *v23 = *v24;
            if (v30)
            {
              *(v30 + 8) = v23;
            }

            *v24 = v23;
            ((*a3)[6])(a3, v26);
            LOBYTE(v10) = 1;
          }

          v23 = v25;
        }

        while (v25);
      }
    }
  }

  return v10 & 1;
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::BoolAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t **a4)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v8;
  v19[2] = &v20;
  v19[3] = 0x400000000;
  v21[0] = v22;
  v21[1] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  v9 = *a3;
  v10 = mlir::BoolAttr::operator mlir::TypedAttr(a4);
  v12 = v11;
  v18 = v9;
  v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(v19);
  *v13 = v10;
  v13[1] = v12;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v21, &v18, v19);
  v14 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v14);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.constant";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *mlir::BoolAttr::operator mlir::TypedAttr(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::CondBranchTruthPropagation>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::CondBranchTruthPropagation]";
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

void *mlir::RewritePatternSet::add(void *a1, uint64_t *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v8 = (a1 + 1);
    v9 = a1[1];
    v10 = v5 - v9;
    v11 = (v5 - v9) >> 3;
    v12 = v11 + 1;
    if ((v11 + 1) >> 61)
    {
      std::vector<std::unique_ptr<mlir::RewritePattern>>::__throw_length_error[abi:nn200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
    v15 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v14)
    {
      v15 = v12;
    }

    v23[4] = a1 + 1;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<mlir::RewritePattern>>>(v8, v15);
    }

    v16 = v11;
    v17 = (8 * v11);
    v18 = *a2;
    *a2 = 0;
    v19 = &v17[-v16];
    *v17 = v18;
    v7 = v17 + 1;
    memcpy(v19, v9, v10);
    v20 = a1[1];
    a1[1] = v19;
    a1[2] = v7;
    v21 = a1[3];
    a1[3] = 0;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    std::__split_buffer<std::unique_ptr<mlir::RewritePattern>>::~__split_buffer(v23);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  a1[2] = v7;
  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(llvm::LogicalResult (*)(mlir::cf::SwitchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F4F0))
  {
    qword_27FC1F4E0 = llvm::detail::getTypeNameImpl<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>();
    *algn_27FC1F4E8 = v1;
    __cxa_guard_release(&qword_27FC1F4F0);
  }

  return qword_27FC1F4E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::cf::detail::AssertOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void mlir::RewritePatternSet::add<mlir::cf::AssertOp>(llvm::LogicalResult (*)(mlir::cf::AssertOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::RewritePatternSet::add<mlir::cf::BranchOp>(llvm::LogicalResult (*)(mlir::cf::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

uint64_t llvm::getTypeName<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F518))
  {
    qword_27FC1F508 = llvm::detail::getTypeNameImpl<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>();
    unk_27FC1F510 = v1;
    __cxa_guard_release(&qword_27FC1F518);
  }

  return qword_27FC1F508;
}

const char *llvm::detail::getTypeNameImpl<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1F540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F540))
  {
    qword_27FC1F530 = llvm::detail::getTypeNameImpl<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>();
    *algn_27FC1F538 = v1;
    __cxa_guard_release(&qword_27FC1F540);
  }

  return qword_27FC1F530;
}

const char *llvm::detail::getTypeNameImpl<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

BOOL mlir::AsmParser::parseType<mlir::IntegerType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 536))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

char **llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[48 * v3 - 48];
    v5 = -48 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 6;
      v5 += 48;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[64 * v3 - 64];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::arith::ConstantOp::getAsmResultNames(mlir::arith::ConstantOp *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = *(*a1 - 8);
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(a1);
  if (*(*ValueAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = ValueAttr;
  }

  else
  {
    v7 = 0;
  }

  v32 = v7;
  if (!v7)
  {
    if (*(*a1 + 36))
    {
      v15 = *a1 - 16;
    }

    else
    {
      v15 = 0;
    }

    v17 = *MEMORY[0x277D85DE8];
    v12 = "cst";
    v14 = a3;
    v11 = 3;
    goto LABEL_23;
  }

  v8 = *(*(v5 & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (*((v5 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x3FFFFFFF) == 1)
  {
    if (*(*a1 + 36))
    {
      v9 = *a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    Int = mlir::IntegerAttr::getInt(&v32);
    if (Int)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    if (Int)
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = *MEMORY[0x277D85DE8];
    v14 = a3;
    v15 = v9;
LABEL_23:

    a2(v14, v15, v12, v11);
    return;
  }

  v33 = v35;
  v34 = xmmword_25D0A05C0;
  v25 = 2;
  v29 = 0;
  v30 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v24 = &unk_286E79DA0;
  v31 = &v33;
  llvm::raw_ostream::SetUnbuffered(&v24);
  v16 = v28;
  if (v28 >= v27)
  {
    llvm::raw_ostream::write(&v24, 99);
  }

  else
  {
    ++v28;
    *v16 = 99;
  }

  v23 = *(v7 + 6);
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v22 = v7[2];
  llvm::APInt::print(&v22, &v24, 1);
  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x25F891010](v22, 0x1000C8000313F17);
  }

  if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = v28;
    if (v28 >= v27)
    {
      llvm::raw_ostream::write(&v24, 95);
    }

    else
    {
      ++v28;
      *v18 = 95;
    }

    v22 = v5 & 0xFFFFFFFFFFFFFFF8;
    mlir::Type::print(&v22, &v24);
  }

  if (*(*a1 + 36))
  {
    v19 = *a1 - 16;
  }

  else
  {
    v19 = 0;
  }

  a2(a3, v19, *v31, v31[1]);
  llvm::raw_ostream::~raw_ostream(&v24);
  if (v33 != v35)
  {
    free(v33);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::ConstantOp::verify(mlir::arith::ConstantOp *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  if (v2 != (*v4)(v4, ValueAttr))
  {
    v31 = 257;
    mlir::Operation::emitOpError(*this, v30, &v34);
    if (v34)
    {
      mlir::Diagnostic::operator<<<12ul>(v35, "value type ");
    }

    v11 = mlir::arith::ConstantOp::getValueAttr(this);
    v13 = (*v12)(v12, v11);
    if (v34)
    {
      v32 = 4;
      v33 = v13;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
      v15 = v36 + 24 * v37;
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++v37;
      if (v34)
      {
        mlir::Diagnostic::operator<<<26ul>(v35, " must match return type: ");
        if (v34)
        {
          v32 = 4;
          v33 = v2;
          v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v32, 1);
          v18 = v36 + 24 * v37;
          v19 = *v17;
          *(v18 + 16) = *(v17 + 16);
          *v18 = v19;
          ++v37;
        }
      }
    }

    goto LABEL_28;
  }

  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v2 + 8) >> 30)
  {
    v27 = "integer return type must be signless";
    goto LABEL_27;
  }

  v5 = mlir::arith::ConstantOp::getValueAttr(this);
  v6 = *v5;
  v7 = *(*v5 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v6 + 8, v9))
    {
      v27 = "value must be an integer, float, or elements attribute";
      goto LABEL_27;
    }
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v10 = 1;
    goto LABEL_29;
  }

  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  v22 = &v20[v21];
  v10 = 1;
  v23 = memchr(v20, 1, v21);
  if (v23)
  {
    v24 = v23 == v22;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    if ((v25 = mlir::arith::ConstantOp::getValueAttr(this), v26 = *(*v25 + 136), v26 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) && v26 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || (v25[3] & 1) == 0)
    {
      v27 = "intializing scalable vectors with elements attribute is not supported unless it's a vector splat";
LABEL_27:
      v30[0] = v27;
      v31 = 259;
      mlir::Operation::emitOpError(*this, v30, &v34);
LABEL_28:
      v10 = v38 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    }
  }

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t *mlir::arith::ConstantOp::isBuildableWith(uint64_t *a1, _DWORD *a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  if (result)
  {
    if ((*v5)(v5, result) != a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] >> 30)
    {
      return 0;
    }

    else
    {
      v6 = *a1;
      v7 = *(v6 + 136);
      if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        return 1;
      }

      else
      {
        v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
        return (mlir::detail::InterfaceMap::lookup(v6 + 8, v9) != 0);
      }
    }
  }

  return result;
}

char *mlir::arith::ConstantOp::materialize(mlir::OpBuilder *a1, uint64_t *a2, _DWORD *a3, uint64_t **a4)
{
  if (!mlir::arith::ConstantOp::isBuildableWith(a2, a3))
  {
    return 0;
  }

  if (a2)
  {
    v7 = *a2;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  }

  else
  {
    v9 = 0;
  }

  v11[0] = a2;
  v11[1] = v9;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(a1, a4, v11);
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t **a2, uint64_t *a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = v12;
  v11[3] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  mlir::arith::ConstantOp::build(v6, v11, *a3, a3[1]);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::arith::ConstantIntOp::build(mlir::arith::ConstantIntOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3, int a4)
{
  v7 = mlir::IntegerType::get(*this, a4, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(this, v7, a3);
  v9 = IntegerAttr;
  if (IntegerAttr)
  {
    v10 = *IntegerAttr;
    v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  }

  else
  {
    v12 = 0;
  }

  __src = v7;
  v13 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
  *v13 = v9;
  v13[1] = v12;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v15);
}

void mlir::arith::ConstantIndexOp::build(mlir::arith::ConstantIndexOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v4 = *(**this + 472);
  IndexAttr = mlir::Builder::getIndexAttr(this, a3);
  v6 = IndexAttr;
  if (IndexAttr)
  {
    v7 = *IndexAttr;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  }

  else
  {
    v9 = 0;
  }

  __src = v4;
  v10 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
  *v10 = v6;
  v10[1] = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v12);
}

unint64_t mlir::arith::AddIOp::fold(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 48) + 8);
  v89 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (!v4 || !mlir::detail::constant_int_predicate_matcher::match(&v89, v4))
  {
    v7 = *(*a1 + 72);
    v8 = *(v7 + 24);
    if ((~*(v8 + 8) & 7) != 0)
    {
      v9 = *(v7 + 24);
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(v9 + 8) & 7;
      if (v10 == 6)
      {
        v11 = v9 + 24 * *(v9 + 16) + 120;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = v9 + 16 * v10 + 16;
      }

      if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
      {
        v12 = *(v11 + 72);
        if (*(v7 + 56) == *(v12 + 56))
        {
          v5 = *(v12 + 24);
          goto LABEL_4;
        }
      }
    }

LABEL_15:
    v13 = *(v7 + 56);
    if ((~*(v13 + 8) & 7) == 0)
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = *(v13 + 8) & 7;
      if (v14 == 6)
      {
        v15 = v13 + 24 * *(v13 + 16) + 120;
        if (!v15)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v15 = v13 + 16 * v14 + 16;
      }

      if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
      {
        v16 = *(v15 + 72);
        if (v8 == *(v16 + 56))
        {
          v5 = *(v16 + 24);
          goto LABEL_4;
        }
      }
    }

LABEL_24:
    v17 = *(a2 + 48);
    v18 = *v17;
    if (*v17 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_88;
    }

    v19 = v17[1];
    if (v19 && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_62;
    }

    if (v18 && (v21 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v17)) != 0)
    {
      v22 = (*v20)(v20, v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = v17[1];
    if (!v23)
    {
      goto LABEL_87;
    }

    v25 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v23);
    if (!v25)
    {
      goto LABEL_87;
    }

    v26 = (*v24)(v24, v25);
    v18 = 0;
    if (!v22 || !v26 || v26 != v22)
    {
      goto LABEL_88;
    }

    v88 = v22;
    v19 = *v17;
    if (*v17)
    {
      if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_62:
        v18 = v19;
LABEL_88:
        result = v18 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_89;
      }
    }

    v27 = v17[1];
    if (!v27)
    {
      goto LABEL_87;
    }

    v28 = *(*v27 + 136);
    if (v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v18 = v17[1];
    }

    else
    {
      v18 = 0;
    }

    if (!v19 || v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_88;
    }

    v29 = *v19;
    v30 = *(*v19 + 136);
    if (v28 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v30 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v75 = *v17;
      v72 = v27;
      if (v19[1] != *(v27 + 8))
      {
        goto LABEL_87;
      }

      mlir::IntegerAttr::getValue(&v75, &v82);
      mlir::IntegerAttr::getValue(&v72, &v78);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v89, &v82, &v78);
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x25F891010](v78, 0x1000C8000313F17);
      }

      if (v83 >= 0x41 && v82)
      {
        MEMORY[0x25F891010](v82, 0x1000C8000313F17);
      }

      if (v91 != 1)
      {
        goto LABEL_87;
      }

      v31 = mlir::IntegerAttr::get(v88, &v89);
LABEL_58:
      v18 = v31;
      if ((v91 & 1) != 0 && v90 >= 0x41 && v89)
      {
        MEMORY[0x25F891010](v89, 0x1000C8000313F17);
      }

      goto LABEL_88;
    }

    if ((v30 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1 && (v28 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v28 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v27 + 24) == 1)
    {
      v75 = *v17;
      v72 = v27;
      if (v19[1] != *(v27 + 8))
      {
        goto LABEL_87;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v82, &v75);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v78, &v72);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v89, &v82, &v78);
      if (v79 >= 0x41 && v78)
      {
        MEMORY[0x25F891010](v78, 0x1000C8000313F17);
      }

      if (v83 >= 0x41 && v82)
      {
        MEMORY[0x25F891010](v82, 0x1000C8000313F17);
      }

      if (v91 != 1)
      {
        goto LABEL_87;
      }

      v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v88);
      v31 = mlir::DenseElementsAttr::get(v32, v33, &v89, 1);
      goto LABEL_58;
    }

    v34 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v29 + 8, v34))
    {
      goto LABEL_87;
    }

    v35 = *v17[1];
    v36 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v35 + 8, v36))
    {
      goto LABEL_87;
    }

    v37 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v17);
    v39 = v38;
    v87[0] = v37;
    v87[1] = v38;
    v40 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17[1]);
    v42 = v41;
    v86[0] = v40;
    v86[1] = v41;
    v43 = (**(v39 + 24))();
    if (v43 != (**(v42 + 24))())
    {
LABEL_87:
      v18 = 0;
      goto LABEL_88;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v82, v87);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v78, v86);
    v44 = v85;
    if ((v85 & 1) == 0)
    {
      v18 = 0;
      if ((v81 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_131;
    }

    if ((v81 & 1) == 0)
    {
      v18 = 0;
LABEL_135:
      if ((v82 & 1) == 0 && v83)
      {
        (*(*v83 + 8))(v83);
      }

      goto LABEL_88;
    }

    LOWORD(v75) = v82;
    if (v82 == 1)
    {
      v76 = v83;
    }

    else
    {
      (*(*v83 + 16))(&v76);
    }

    v77 = v84;
    LOWORD(v72) = v78;
    if (v78 == 1)
    {
      v73 = v79;
    }

    else
    {
      (*(*v79 + 16))(&v73);
    }

    v74 = v80;
    v89 = &v91;
    v90 = 0x400000000;
    v46 = (*(v39 + 16))(v39, v37);
    v48 = (*(v47 + 24))(v47, v46);
    if (v49)
    {
      v50 = 8 * v49;
      v51 = 1;
      do
      {
        v52 = *v48++;
        v51 *= v52;
        v50 -= 8;
      }

      while (v50);
    }

    else
    {
      v51 = 1;
    }

    if (v51 > HIDWORD(v90))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v89, v51);
    }

    v53 = (*(v39 + 16))(v39, v37);
    v55 = (*(v54 + 24))(v54, v53);
    if (v56)
    {
      v57 = 8 * v56;
      v58 = 1;
      do
      {
        v59 = *v55++;
        v58 *= v59;
        v57 -= 8;
      }

      while (v57);
      if (!v58)
      {
LABEL_123:
        v61 = llvm::cast<mlir::ShapedType,mlir::Type>(&v88);
        v18 = mlir::DenseElementsAttr::get(v61, v62, v89, v90);
LABEL_125:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v89);
        if ((v72 & 1) == 0)
        {
          v63 = v73;
          v73 = 0;
          if (v63)
          {
            (*(*v63 + 8))(v63);
          }
        }

        if ((v75 & 1) == 0)
        {
          v64 = v76;
          v76 = 0;
          if (v64)
          {
            (*(*v64 + 8))(v64);
          }
        }

LABEL_131:
        if ((v78 & 1) == 0 && v79)
        {
          (*(*v79 + 8))(v79);
        }

        if (!v44)
        {
          goto LABEL_88;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v58 = 1;
    }

    v60 = v77;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v67, &v75, v60);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v65, &v72, v74);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v69, &v67, &v65);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      if (v68 >= 0x41 && v67)
      {
        MEMORY[0x25F891010](v67, 0x1000C8000313F17);
      }

      if (v71 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v89, &v69);
      if ((v71 & 1) != 0 && v70 >= 0x41 && v69)
      {
        MEMORY[0x25F891010](v69, 0x1000C8000313F17);
      }

      v60 = ++v77;
      ++v74;
      if (!--v58)
      {
        goto LABEL_123;
      }
    }

    v18 = 0;
    goto LABEL_125;
  }

  v5 = *(*(*a1 + 72) + 24);
LABEL_4:
  result = v5 | 4;
LABEL_89:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::arith::AddUIExtendedOp::getShapeForUnroll(mlir::arith::AddUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::AddUIExtendedOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v150 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 36);
  v7 = *a1 - 16;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v7 + 8) & 7;
  if (v6)
  {
    v9 = v8 == 6;
  }

  else
  {
    v9 = 1;
  }

  v10 = -32;
  if (v9 || v8 == 5)
  {
    v10 = -40;
  }

  v12 = *(v5 + v10 + 8);
  v13 = *(*(v5 + 72) + 56);
  *&v148 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (v13)
  {
    v15 = *(v13 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v13 + 24 * *(v13 + 16);
      v17 = (v16 + 120);
      if (v16 == -120)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = (v13 + 16 * v15 + 16);
    }

    if (mlir::detail::constant_int_predicate_matcher::match(&v148, v17))
    {
      *&v148 = *(***(*a1 + 24) + 32);
      ZeroAttr = mlir::Builder::getZeroAttr(&v148, v12 & 0xFFFFFFFFFFFFFFF8);
      v19 = *(*(*a1 + 72) + 24) | 4;
LABEL_21:
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v19);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, ZeroAttr & 0xFFFFFFFFFFFFFFFBLL);
      result = 1;
      goto LABEL_133;
    }
  }

LABEL_22:
  v21 = *(a2 + 40);
  v22 = *v21;
  if (*v21 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_84;
  }

  v23 = v21[1];
  if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_60;
  }

  if (v22 && (v25 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v21)) != 0)
  {
    v26 = (*v24)(v24, v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = v21[1];
  if (!v27)
  {
    goto LABEL_132;
  }

  v29 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v27);
  if (!v29)
  {
    goto LABEL_132;
  }

  v30 = (*v28)(v28, v29);
  result = 0;
  if (v26 && v30 && v30 == v26)
  {
    v135 = v26;
    v23 = *v21;
    if (!*v21 || *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v31 = v21[1];
      if (!v31)
      {
        goto LABEL_83;
      }

      v32 = *(*v31 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v22 = v21[1];
      }

      else
      {
        v22 = 0;
      }

      if (!v23 || v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_84;
      }

      v33 = *v23;
      v34 = *(*v23 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v126 = *v21;
        v123 = v31;
        if (v23[1] == *(v31 + 8))
        {
          mlir::IntegerAttr::getValue(&v126, &v146);
          mlir::IntegerAttr::getValue(&v123, &v129);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v148, &v146, &v129);
          if (v130 >= 0x41 && v129)
          {
            MEMORY[0x25F891010](v129, 0x1000C8000313F17);
          }

          if (DWORD2(v146) >= 0x41 && v146)
          {
            MEMORY[0x25F891010](v146, 0x1000C8000313F17);
          }

          if (v149[0] == 1)
          {
            v35 = mlir::IntegerAttr::get(v135, &v148);
LABEL_56:
            v22 = v35;
            if ((v149[0] & 1) != 0 && DWORD2(v148) >= 0x41 && v148)
            {
              MEMORY[0x25F891010](v148, 0x1000C8000313F17);
            }

            goto LABEL_84;
          }
        }

        goto LABEL_83;
      }

      if ((v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v23 + 24) == 1 && (v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v31 + 24) == 1)
      {
        v126 = *v21;
        v123 = v31;
        if (v23[1] == *(v31 + 8))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v146, &v126);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v129, &v123);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v148, &v146, &v129);
          if (v130 >= 0x41 && v129)
          {
            MEMORY[0x25F891010](v129, 0x1000C8000313F17);
          }

          if (DWORD2(v146) >= 0x41 && v146)
          {
            MEMORY[0x25F891010](v146, 0x1000C8000313F17);
          }

          if (v149[0] == 1)
          {
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v135);
            v35 = mlir::DenseElementsAttr::get(v36, v37, &v148, 1);
            goto LABEL_56;
          }
        }

LABEL_83:
        v22 = 0;
        goto LABEL_84;
      }

      v38 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v33 + 8, v38))
      {
        goto LABEL_83;
      }

      v39 = *v21[1];
      v40 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v39 + 8, v40))
      {
        goto LABEL_83;
      }

      v41 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v21);
      v43 = v42;
      v144 = v41;
      v145 = v42;
      v44 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v21[1]);
      v46 = v45;
      v141 = v44;
      v142 = v45;
      v47 = (**(v43 + 24))();
      if (v47 != (**(v46 + 24))())
      {
        goto LABEL_83;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v146, &v144);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v129, &v141);
      v48 = BYTE8(v147);
      if ((BYTE8(v147) & 1) == 0)
      {
        v22 = 0;
        if ((v132 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_222:
        if ((v129 & 1) == 0 && v130)
        {
          (*(*v130 + 8))(v130);
        }

        if (!v48)
        {
LABEL_84:
          if (!v22)
          {
            goto LABEL_132;
          }

          v49 = **(a2 + 40);
          v50 = *v22;
          v51 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
          v52 = mlir::detail::InterfaceMap::lookup(v50 + 8, v51);
          v53 = (*v52)(v52, v22);
          I1SameShape = getI1SameShape(v53);
          v143 = I1SameShape;
          if (!I1SameShape || v49 == 0)
          {
            goto LABEL_132;
          }

          v56 = I1SameShape;
          v57 = *v22;
          v58 = *(*v22 + 136);
          if (v58 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v129 = v22;
            v126 = v49;
            if (*(v22 + 8) == v49[1])
            {
              mlir::IntegerAttr::getValue(&v129, &v141);
              mlir::IntegerAttr::getValue(&v126, &v139);
              calculateUnsignedOverflow(&v141, &v139, &v146);
              DWORD2(v148) = DWORD2(v146);
              *&v148 = v146;
              v149[0] = 1;
              if (v140 >= 0x41 && v139)
              {
                MEMORY[0x25F891010](v139, 0x1000C8000313F17);
              }

              if (v142 >= 0x41 && v141)
              {
                MEMORY[0x25F891010](v141, 0x1000C8000313F17);
              }

              v64 = mlir::IntegerAttr::get(v56, &v148);
              goto LABEL_123;
            }

LABEL_129:
            ZeroAttr = 0;
            goto LABEL_130;
          }

          if ((v58 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v22 + 24) == 1)
          {
            v59 = *(*v49 + 136);
            v60 = v59 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v59 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
            if (v60 && *(v49 + 24) == 1)
            {
              v129 = v22;
              v126 = v49;
              if (*(v22 + 8) == v49[1])
              {
                mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v129, &v148);
                v146 = v148;
                v147 = *v149;
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v148, &v137);
                mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v126, &v148);
                v146 = v148;
                v147 = *v149;
                mlir::DenseElementsAttr::IntElementIterator::operator*(&v148, &v135);
                calculateUnsignedOverflow(&v137, &v135, &v146);
                DWORD2(v148) = DWORD2(v146);
                *&v148 = v146;
                v149[0] = 1;
                if (v136 >= 0x41 && v135)
                {
                  MEMORY[0x25F891010](v135, 0x1000C8000313F17);
                }

                if (v138 >= 0x41 && v137)
                {
                  MEMORY[0x25F891010](v137, 0x1000C8000313F17);
                }

                v61 = *v56;
                v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
                v63 = mlir::detail::InterfaceMap::lookup(v61 + 8, v62);
                v64 = mlir::DenseElementsAttr::get(v56, v63, &v148, 1);
LABEL_123:
                ZeroAttr = v64;
                if ((v149[0] & 1) != 0 && DWORD2(v148) >= 0x41 && v148)
                {
                  MEMORY[0x25F891010](v148, 0x1000C8000313F17);
                }

                goto LABEL_130;
              }

              goto LABEL_129;
            }
          }

          v65 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v57 + 8, v65))
          {
            goto LABEL_132;
          }

          v66 = *v49;
          v67 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v66 + 8, v67))
          {
            goto LABEL_132;
          }

          v68 = *v22;
          v69 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          v70 = mlir::detail::InterfaceMap::lookup(v68 + 8, v69);
          v134[0] = v22;
          v134[1] = v70;
          v71 = *v49;
          v72 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
          v73 = mlir::detail::InterfaceMap::lookup(v71 + 8, v72);
          v133[0] = v49;
          v133[1] = v73;
          v74 = (**(v70 + 24))();
          if (v74 != (**(v73 + 24))())
          {
            goto LABEL_129;
          }

          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v146, v134);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v129, v133);
          v75 = BYTE8(v147);
          if ((BYTE8(v147) & 1) == 0)
          {
            if (v132 & 1) == 0 || (v129)
            {
              goto LABEL_129;
            }

            ZeroAttr = 0;
            goto LABEL_175;
          }

          if ((v132 & 1) == 0)
          {
            ZeroAttr = 0;
LABEL_178:
            if ((v146 & 1) == 0 && *(&v146 + 1))
            {
              (*(**(&v146 + 1) + 8))(*(&v146 + 1));
            }

LABEL_130:
            if (ZeroAttr)
            {
              v19 = v22 & 0xFFFFFFFFFFFFFFFBLL;
              goto LABEL_21;
            }

LABEL_132:
            result = 0;
            goto LABEL_133;
          }

          LOWORD(v126) = v146;
          if (v146 == 1)
          {
            v127 = *(&v146 + 1);
          }

          else
          {
            (*(**(&v146 + 1) + 16))(&v127);
          }

          v128 = v147;
          v77 = v129;
          LOWORD(v123) = v129;
          if (v129 == 1)
          {
            v124 = v130;
          }

          else
          {
            (*(*v130 + 16))(&v124);
          }

          v125 = v131;
          *&v148 = v149;
          *(&v148 + 1) = 0x400000000;
          v78 = (*(v70 + 16))(v70, v22);
          v80 = (*(v79 + 24))(v79, v78);
          if (v81)
          {
            v82 = 8 * v81;
            v83 = 1;
            do
            {
              v84 = *v80++;
              v83 *= v84;
              v82 -= 8;
            }

            while (v82);
          }

          else
          {
            v83 = 1;
          }

          if (v83 > HIDWORD(v148))
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v148, v83);
          }

          v85 = (*(v70 + 16))(v70, v22);
          v87 = (*(v86 + 24))(v86, v85);
          if (v88)
          {
            v89 = 8 * v88;
            v90 = 1;
            do
            {
              v91 = *v87++;
              v90 *= v91;
              v89 -= 8;
            }

            while (v89);
            if (!v90)
            {
LABEL_166:
              v93 = llvm::cast<mlir::ShapedType,mlir::Type>(&v143);
              ZeroAttr = mlir::DenseElementsAttr::get(v93, v94, v148, DWORD2(v148));
              goto LABEL_168;
            }
          }

          else
          {
            v90 = 1;
          }

          v92 = v128;
          while (1)
          {
            mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v118, &v126, v92);
            mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v116, &v123, v125);
            calculateUnsignedOverflow(&v118, &v116, &v144);
            v121 = v145;
            v120 = v144;
            v122 = 1;
            if (v117 >= 0x41 && v116)
            {
              MEMORY[0x25F891010](v116, 0x1000C8000313F17);
            }

            if (v119 >= 0x41 && v118)
            {
              MEMORY[0x25F891010](v118, 0x1000C8000313F17);
            }

            if (v122 != 1)
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v148, &v120);
            if ((v122 & 1) != 0 && v121 >= 0x41 && v120)
            {
              MEMORY[0x25F891010](v120, 0x1000C8000313F17);
            }

            v92 = ++v128;
            ++v125;
            if (!--v90)
            {
              goto LABEL_166;
            }
          }

          ZeroAttr = 0;
LABEL_168:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v148);
          if ((v123 & 1) == 0)
          {
            v95 = v124;
            v124 = 0;
            if (v95)
            {
              (*(*v95 + 8))(v95);
            }
          }

          if ((v126 & 1) == 0)
          {
            v96 = v127;
            v127 = 0;
            if (v96)
            {
              (*(*v96 + 8))(v96);
            }
          }

          if (v77)
          {
LABEL_177:
            if (!v75)
            {
              goto LABEL_130;
            }

            goto LABEL_178;
          }

LABEL_175:
          if (v130)
          {
            (*(*v130 + 8))(v130);
          }

          goto LABEL_177;
        }

LABEL_226:
        if ((v146 & 1) == 0 && *(&v146 + 1))
        {
          (*(**(&v146 + 1) + 8))(*(&v146 + 1));
        }

        goto LABEL_84;
      }

      if ((v132 & 1) == 0)
      {
        v22 = 0;
        goto LABEL_226;
      }

      LOWORD(v126) = v146;
      if (v146 == 1)
      {
        v127 = *(&v146 + 1);
      }

      else
      {
        (*(**(&v146 + 1) + 16))(&v127);
      }

      v128 = v147;
      LOWORD(v123) = v129;
      if (v129 == 1)
      {
        v124 = v130;
      }

      else
      {
        (*(*v130 + 16))(&v124);
      }

      v125 = v131;
      *&v148 = v149;
      *(&v148 + 1) = 0x400000000;
      v97 = (*(v43 + 16))(v43, v41);
      v99 = (*(v98 + 24))(v98, v97);
      if (v100)
      {
        v101 = 8 * v100;
        v102 = 1;
        do
        {
          v103 = *v99++;
          v102 *= v103;
          v101 -= 8;
        }

        while (v101);
      }

      else
      {
        v102 = 1;
      }

      if (v102 > HIDWORD(v148))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v148, v102);
      }

      v104 = (*(v43 + 16))(v43, v41);
      v106 = (*(v105 + 24))(v105, v104);
      if (v107)
      {
        v108 = 8 * v107;
        v109 = 1;
        do
        {
          v110 = *v106++;
          v109 *= v110;
          v108 -= 8;
        }

        while (v108);
        if (!v109)
        {
LABEL_214:
          v112 = llvm::cast<mlir::ShapedType,mlir::Type>(&v135);
          v22 = mlir::DenseElementsAttr::get(v112, v113, v148, DWORD2(v148));
LABEL_216:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v148);
          if ((v123 & 1) == 0)
          {
            v114 = v124;
            v124 = 0;
            if (v114)
            {
              (*(*v114 + 8))(v114);
            }
          }

          if ((v126 & 1) == 0)
          {
            v115 = v127;
            v127 = 0;
            if (v115)
            {
              (*(*v115 + 8))(v115);
            }
          }

          goto LABEL_222;
        }
      }

      else
      {
        v109 = 1;
      }

      v111 = v128;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v139, &v126, v111);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v137, &v123, v125);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddUIExtendedOp::fold(mlir::arith::AddUIExtendedOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v120, &v139, &v137);
        if (v138 >= 0x41 && v137)
        {
          MEMORY[0x25F891010](v137, 0x1000C8000313F17);
        }

        if (v140 >= 0x41 && v139)
        {
          MEMORY[0x25F891010](v139, 0x1000C8000313F17);
        }

        if (v122 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v148, &v120);
        if ((v122 & 1) != 0 && v121 >= 0x41 && v120)
        {
          MEMORY[0x25F891010](v120, 0x1000C8000313F17);
        }

        v111 = ++v128;
        ++v125;
        if (!--v109)
        {
          goto LABEL_214;
        }
      }

      v22 = 0;
      goto LABEL_216;
    }

LABEL_60:
    v22 = v23;
    goto LABEL_84;
  }

LABEL_133:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getI1SameShape(uint64_t *a1)
{
  v2 = mlir::IntegerType::get(*(**a1 + 32), 1, 0);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v3)
  {
    v5 = *v4;
    LOBYTE(v8[0]) = 0;
    v9 = 0;
    return v5(v4, v3, v8, v2);
  }

  else
  {
    if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return v2;
    }

    v8[0] = v2;
    return mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v2 + 32), v8);
  }
}

uint64_t calculateUnsignedOverflow@<X0>(const llvm::APInt *a1@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::APInt::compare(a1, a2);
  *(a3 + 8) = 1;
  if ((result & 0x80000000) != 0)
  {
    *a3 = -1;

    return llvm::APInt::clearUnusedBits(a3);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t mlir::arith::SubIOp::fold(uint64_t *a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  if (*(*(*a1 + 72) + 24) == *(*(*a1 + 72) + 56))
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_12;
    }

    v11 = v9;
    v12 = v10;
    if (!(*(v10 + 16))(v10, v9))
    {
      goto LABEL_2;
    }

    v13 = (*(v12 + 24))(v12, v11);
    if (!v14)
    {
LABEL_12:
      v16 = *a1;
      v96 = *(***(*a1 + 24) + 32);
      result = mlir::Builder::getZeroAttr(&v96, *(v16 - 8) & 0xFFFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_89;
    }

    v15 = 8 * v14;
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_2:
  v4 = *(*(a2 + 48) + 8);
  v96 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (!v4)
  {
    v6 = *a1;
LABEL_14:
    v17 = *(v6 + 72);
    v18 = *(v17 + 24);
    if ((~*(v18 + 8) & 7) == 0)
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = *(v18 + 8) & 7;
      if (v19 == 6)
      {
        v20 = v18 + 24 * *(v18 + 16) + 120;
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v20 = v18 + 16 * v19 + 16;
      }

      if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
      {
        v36 = *(v17 + 56);
        v37 = *(v20 + 72);
        v7 = *(v37 + 56);
        v38 = *(v37 + 24);
        if (v36 == v7)
        {
          result = v38 | 4;
          goto LABEL_89;
        }

        if (v36 == v38)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_22:
    v21 = *(a2 + 48);
    v22 = *v21;
    if (*v21 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_88;
    }

    v23 = v21[1];
    if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_60;
    }

    if (v22 && (v25 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v21)) != 0)
    {
      v26 = (*v24)(v24, v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = v21[1];
    if (!v27)
    {
      goto LABEL_87;
    }

    v29 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v27);
    if (!v29)
    {
      goto LABEL_87;
    }

    v30 = (*v28)(v28, v29);
    v22 = 0;
    if (!v26 || !v30 || v30 != v26)
    {
      goto LABEL_88;
    }

    v95 = v26;
    v23 = *v21;
    if (*v21)
    {
      if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_60:
        v22 = v23;
LABEL_88:
        result = v22 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_89;
      }
    }

    v31 = v21[1];
    if (!v31)
    {
      goto LABEL_87;
    }

    v32 = *(*v31 + 136);
    if (v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v22 = v21[1];
    }

    else
    {
      v22 = 0;
    }

    if (!v23 || v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_88;
    }

    v33 = *v23;
    v34 = *(*v23 + 136);
    if (v32 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v82 = *v21;
      v79 = v31;
      if (v23[1] != *(v31 + 8))
      {
        goto LABEL_87;
      }

      mlir::IntegerAttr::getValue(&v82, &v89);
      mlir::IntegerAttr::getValue(&v79, &v85);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v96, &v89, &v85);
      if (v86 >= 0x41 && v85)
      {
        MEMORY[0x25F891010](v85, 0x1000C8000313F17);
      }

      if (v90 >= 0x41 && v89)
      {
        MEMORY[0x25F891010](v89, 0x1000C8000313F17);
      }

      if (v98 != 1)
      {
        goto LABEL_87;
      }

      v35 = mlir::IntegerAttr::get(v95, &v96);
LABEL_56:
      v22 = v35;
      if ((v98 & 1) != 0 && v97 >= 0x41 && v96)
      {
        MEMORY[0x25F891010](v96, 0x1000C8000313F17);
      }

      goto LABEL_88;
    }

    if ((v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v23 + 24) == 1 && (v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v31 + 24) == 1)
    {
      v82 = *v21;
      v79 = v31;
      if (v23[1] != *(v31 + 8))
      {
        goto LABEL_87;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v89, &v82);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v85, &v79);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v96, &v89, &v85);
      if (v86 >= 0x41 && v85)
      {
        MEMORY[0x25F891010](v85, 0x1000C8000313F17);
      }

      if (v90 >= 0x41 && v89)
      {
        MEMORY[0x25F891010](v89, 0x1000C8000313F17);
      }

      if (v98 != 1)
      {
        goto LABEL_87;
      }

      v39 = llvm::cast<mlir::ShapedType,mlir::Type>(&v95);
      v35 = mlir::DenseElementsAttr::get(v39, v40, &v96, 1);
      goto LABEL_56;
    }

    v41 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v33 + 8, v41))
    {
      goto LABEL_87;
    }

    v42 = *v21[1];
    v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v42 + 8, v43))
    {
      goto LABEL_87;
    }

    v44 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v21);
    v46 = v45;
    v94[0] = v44;
    v94[1] = v45;
    v47 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v21[1]);
    v49 = v48;
    v93[0] = v47;
    v93[1] = v48;
    v50 = (**(v46 + 24))();
    if (v50 != (**(v49 + 24))())
    {
LABEL_87:
      v22 = 0;
      goto LABEL_88;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v89, v94);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v85, v93);
    v51 = v92;
    if ((v92 & 1) == 0)
    {
      v22 = 0;
      if ((v88 & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_131;
    }

    if ((v88 & 1) == 0)
    {
      v22 = 0;
LABEL_135:
      if ((v89 & 1) == 0 && v90)
      {
        (*(*v90 + 8))(v90);
      }

      goto LABEL_88;
    }

    LOWORD(v82) = v89;
    if (v89 == 1)
    {
      v83 = v90;
    }

    else
    {
      (*(*v90 + 16))(&v83);
    }

    v84 = v91;
    LOWORD(v79) = v85;
    if (v85 == 1)
    {
      v80 = v86;
    }

    else
    {
      (*(*v86 + 16))(&v80);
    }

    v81 = v87;
    v96 = &v98;
    v97 = 0x400000000;
    v53 = (*(v46 + 16))(v46, v44);
    v55 = (*(v54 + 24))(v54, v53);
    if (v56)
    {
      v57 = 8 * v56;
      v58 = 1;
      do
      {
        v59 = *v55++;
        v58 *= v59;
        v57 -= 8;
      }

      while (v57);
    }

    else
    {
      v58 = 1;
    }

    if (v58 > HIDWORD(v97))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v96, v58);
    }

    v60 = (*(v46 + 16))(v46, v44);
    v62 = (*(v61 + 24))(v61, v60);
    if (v63)
    {
      v64 = 8 * v63;
      v65 = 1;
      do
      {
        v66 = *v62++;
        v65 *= v66;
        v64 -= 8;
      }

      while (v64);
      if (!v65)
      {
LABEL_123:
        v68 = llvm::cast<mlir::ShapedType,mlir::Type>(&v95);
        v22 = mlir::DenseElementsAttr::get(v68, v69, v96, v97);
LABEL_125:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v96);
        if ((v79 & 1) == 0)
        {
          v70 = v80;
          v80 = 0;
          if (v70)
          {
            (*(*v70 + 8))(v70);
          }
        }

        if ((v82 & 1) == 0)
        {
          v71 = v83;
          v83 = 0;
          if (v71)
          {
            (*(*v71 + 8))(v71);
          }
        }

LABEL_131:
        if ((v85 & 1) == 0 && v86)
        {
          (*(*v86 + 8))(v86);
        }

        if (!v51)
        {
          goto LABEL_88;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v65 = 1;
    }

    v67 = v84;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v74, &v82, v67);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v72, &v79, v81);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v76, &v74, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v75 >= 0x41 && v74)
      {
        MEMORY[0x25F891010](v74, 0x1000C8000313F17);
      }

      if (v78 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v96, &v76);
      if ((v78 & 1) != 0 && v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      v67 = ++v84;
      ++v81;
      if (!--v65)
      {
        goto LABEL_123;
      }
    }

    v22 = 0;
    goto LABEL_125;
  }

  v5 = mlir::detail::constant_int_predicate_matcher::match(&v96, v4);
  v6 = *a1;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *(*(v6 + 72) + 24);
LABEL_5:
  result = v7 | 4;
LABEL_89:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::MulIOp::fold(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v83 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (!v4)
  {
LABEL_9:
    v9 = *v3;
    if (*v3 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_71;
    }

    v10 = v3[1];
    if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_50;
    }

    if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
    {
      v13 = (*v11)(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = v3[1];
    if (!v14)
    {
      goto LABEL_70;
    }

    v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    if (!v16)
    {
      goto LABEL_70;
    }

    v17 = (*v15)(v15, v16);
    v9 = 0;
    if (!v13 || !v17 || v17 != v13)
    {
      goto LABEL_71;
    }

    v80 = v13;
    v10 = *v3;
    if (*v3)
    {
      if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_50:
        v9 = v10;
LABEL_71:
        result = v9 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_72;
      }
    }

    v18 = v3[1];
    if (!v18)
    {
      goto LABEL_70;
    }

    v19 = *(*v18 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v9 = v3[1];
    }

    else
    {
      v9 = 0;
    }

    if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_71;
    }

    v20 = *v10;
    v21 = *(*v10 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v64 = *v3;
      v61 = v18;
      if (v10[1] == *(v18 + 8))
      {
        mlir::IntegerAttr::getValue(&v64, &v70);
        mlir::IntegerAttr::getValue(&v61, &v67);
        llvm::APInt::operator*(&v70, &v67, &v74);
        LODWORD(v84) = v75;
        v83 = v74;
        v85 = 1;
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        if (v71 >= 0x41 && v70)
        {
          MEMORY[0x25F891010](v70, 0x1000C8000313F17);
        }

        v25 = mlir::IntegerAttr::get(v80, &v83);
        goto LABEL_59;
      }

LABEL_70:
      v9 = 0;
      goto LABEL_71;
    }

    if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
    {
      v64 = *v3;
      v61 = v18;
      if (v10[1] == *(v18 + 8))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &v64);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v67, &v61);
        llvm::APInt::operator*(&v70, &v67, &v74);
        LODWORD(v84) = v75;
        v83 = v74;
        v85 = 1;
        if (v68 >= 0x41 && v67)
        {
          MEMORY[0x25F891010](v67, 0x1000C8000313F17);
        }

        if (v71 >= 0x41 && v70)
        {
          MEMORY[0x25F891010](v70, 0x1000C8000313F17);
        }

        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v25 = mlir::DenseElementsAttr::get(v23, v24, &v83, 1);
LABEL_59:
        v9 = v25;
        if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
        {
          MEMORY[0x25F891010](v83, 0x1000C8000313F17);
        }

        goto LABEL_71;
      }

      goto LABEL_70;
    }

    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v26))
    {
      goto LABEL_70;
    }

    v27 = *v3[1];
    v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v28))
    {
      goto LABEL_70;
    }

    v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
    v31 = v30;
    v79[0] = v29;
    v79[1] = v30;
    v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
    v34 = v33;
    v78[0] = v32;
    v78[1] = v33;
    v35 = (**(v31 + 24))();
    if (v35 != (**(v34 + 24))())
    {
      goto LABEL_70;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, v79);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, v78);
    v36 = v77;
    if ((v77 & 1) == 0)
    {
      v9 = 0;
      if ((v73 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_114;
    }

    if ((v73 & 1) == 0)
    {
      v9 = 0;
LABEL_118:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_71;
    }

    LOWORD(v67) = v74;
    if (v74 == 1)
    {
      v68 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v68);
    }

    v69 = v76;
    LOWORD(v64) = v70;
    if (v70 == 1)
    {
      v65 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v65);
    }

    v66 = v72;
    v83 = &v85;
    v84 = 0x400000000;
    v38 = (*(v31 + 16))(v31, v29);
    v40 = (*(v39 + 24))(v39, v38);
    if (v41)
    {
      v42 = 8 * v41;
      v43 = 1;
      do
      {
        v44 = *v40++;
        v43 *= v44;
        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v43 = 1;
    }

    if (v43 > HIDWORD(v84))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v83, v43);
    }

    v45 = (*(v31 + 16))(v31, v29);
    v47 = (*(v46 + 24))(v46, v45);
    if (v48)
    {
      v49 = 8 * v48;
      v50 = 1;
      do
      {
        v51 = *v47++;
        v50 *= v51;
        v49 -= 8;
      }

      while (v49);
      if (!v50)
      {
LABEL_106:
        v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v80);
        v9 = mlir::DenseElementsAttr::get(v53, v54, v83, v84);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v83);
        if ((v64 & 1) == 0)
        {
          v55 = v65;
          v65 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((v67 & 1) == 0)
        {
          v56 = v68;
          v68 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

LABEL_114:
        if ((v70 & 1) == 0 && v71)
        {
          (*(*v71 + 8))(v71);
        }

        if (!v36)
        {
          goto LABEL_71;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v50 = 1;
    }

    v52 = v69;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v67, v52);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v57, &v64, v66);
      llvm::APInt::operator*(&v59, &v57, &v81);
      v62 = v82;
      v61 = v81;
      v63 = 1;
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x25F891010](v57, 0x1000C8000313F17);
      }

      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v63 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v83, &v61);
      if ((v63 & 1) != 0 && v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v52 = ++v69;
      ++v66;
      if (!--v50)
      {
        goto LABEL_106;
      }
    }

    v9 = 0;
    goto LABEL_108;
  }

  if (!mlir::detail::constant_int_predicate_matcher::match(&v83, v4))
  {
    v3 = *(a2 + 48);
    v7 = v3[1];
    v83 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v7)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v83, v7))
      {
        v6 = *(*(*a1 + 72) + 24);
        goto LABEL_7;
      }

      v3 = *(a2 + 48);
    }

    goto LABEL_9;
  }

  v6 = *(*(*a1 + 72) + 56);
LABEL_7:
  result = v6 | 4;
LABEL_72:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::arith::MulIOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, void *), uint64_t a3)
{
  v52[4] = *MEMORY[0x277D85DE8];
  if (*(*(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_2;
  }

  v7 = *(*a1 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v49 = 0;
  v50 = &v49;
  if ((~*(v8 + 8) & 7) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(v10 + 8) & 7;
    if (v11 == 6)
    {
      v12 = v10 + 24 * *(v10 + 16);
      v13 = v12 + 120;
      if (v12 == -120)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = v10 + 16 * v11 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v50, v13))
    {
      goto LABEL_25;
    }

    v14 = (~*(v9 + 8) & 7) != 0 ? v9 : 0;
    if (!v14)
    {
      goto LABEL_25;
    }

    v15 = *(v14 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v14 + 24 * *(v14 + 16) + 120;
      if (!v16)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = v14 + 16 * v15 + 16;
    }

    v17 = *(*(v16 + 48) + 8);
    if (*(v17 + 24) == 13)
    {
      v18 = *(v17 + 16);
      v19 = *v18;
      v20 = *(v18 + 5);
      if (v19 == 0x762E726F74636576 && v20 == 0x656C616373762E72)
      {
LABEL_48:
        v50 = v52;
        v51 = xmmword_25D0A05C0;
        v42 = 2;
        v46 = 0;
        v47 = 1;
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v41 = &unk_286E79DA0;
        v48 = &v50;
        llvm::raw_ostream::SetUnbuffered(&v41);
        v37 = v45;
        if (v45 >= v44)
        {
          llvm::raw_ostream::write(&v41, 99);
        }

        else
        {
          ++v45;
          *v37 = 99;
        }

        Int = mlir::IntegerAttr::getInt(&v49);
        llvm::write_integer(&v41, Int, 0, 0);
        v39 = v45;
        if (v44 - v45 > 6)
        {
          *(v45 + 3) = 1701601635;
          *v39 = 1668511327;
          v45 += 7;
        }

        else
        {
          llvm::raw_ostream::write(&v41, "_vscale", 7uLL);
        }

        if (*(*a1 + 36))
        {
          v40 = *a1 - 16;
        }

        else
        {
          v40 = 0;
        }

        a2(a3, v40, *v48, v48[1]);
        llvm::raw_ostream::~raw_ostream(&v41);
        if (v50 != v52)
        {
          free(v50);
        }

        goto LABEL_2;
      }
    }
  }

LABEL_25:
  v22 = *(*a1 + 72);
  v23 = *(v22 + 56);
  v24 = *(v22 + 24);
  v50 = &v49;
  if ((~*(v23 + 8) & 7) != 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v26 = *(v25 + 8) & 7;
    if (v26 == 6)
    {
      v27 = v25 + 24 * *(v25 + 16);
      v28 = v27 + 120;
      if (v27 == -120)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v28 = v25 + 16 * v26 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v50, v28))
    {
      v29 = (~*(v24 + 8) & 7) != 0 ? v24 : 0;
      if (v29)
      {
        v30 = *(v29 + 8) & 7;
        if (v30 == 6)
        {
          v31 = v29 + 24 * *(v29 + 16) + 120;
          if (!v31)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v31 = v29 + 16 * v30 + 16;
        }

        v32 = *(*(v31 + 48) + 8);
        if (*(v32 + 24) == 13)
        {
          v33 = *(v32 + 16);
          v34 = *v33;
          v35 = *(v33 + 5);
          if (v34 == 0x762E726F74636576 && v35 == 0x656C616373762E72)
          {
            goto LABEL_48;
          }
        }
      }
    }
  }

LABEL_2:
  v3 = *MEMORY[0x277D85DE8];
}

void mlir::arith::MulSIExtendedOp::getShapeForUnroll(mlir::arith::MulSIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::MulSIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v136 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = v5[1];
  v133 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v6)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v133, v6))
    {
      v7 = *(*(a2 + 40) + 8);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v7 & 0xFFFFFFFFFFFFFFFBLL);
      v8 = v7 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_130:
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v8);
      result = 1;
      goto LABEL_131;
    }

    v5 = *(a2 + 40);
  }

  v9 = *v5;
  if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_67;
  }

  v10 = v5[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_46;
  }

  if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
  {
    v13 = (*v11)(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v5[1];
  if (!v14)
  {
    goto LABEL_75;
  }

  v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  if (!v16)
  {
    goto LABEL_75;
  }

  v17 = (*v15)(v15, v16);
  result = 0;
  if (v13 && v17 && v17 == v13)
  {
    v130 = v13;
    v10 = *v5;
    if (!*v5 || *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v19 = v5[1];
      if (!v19)
      {
        goto LABEL_66;
      }

      v20 = *(*v19 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = v5[1];
      }

      else
      {
        v9 = 0;
      }

      if (!v10 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_67;
      }

      v21 = *v10;
      v22 = *(*v10 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v112 = *v5;
        v109 = v19;
        if (v10[1] == *(v19 + 8))
        {
          mlir::IntegerAttr::getValue(&v112, &v118);
          mlir::IntegerAttr::getValue(&v109, &v115);
          llvm::APInt::operator*(&v118, &v115, &v122);
          LODWORD(v134) = v123;
          v133 = v122;
          v135[0] = 1;
          if (v116 >= 0x41 && v115)
          {
            MEMORY[0x25F891010](v115, 0x1000C8000313F17);
          }

          if (v119 >= 0x41 && v118)
          {
            MEMORY[0x25F891010](v118, 0x1000C8000313F17);
          }

          v26 = mlir::IntegerAttr::get(v130, &v133);
          goto LABEL_55;
        }

LABEL_66:
        v9 = 0;
        goto LABEL_67;
      }

      if ((v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1)
      {
        v112 = *v5;
        v109 = v19;
        if (v10[1] == *(v19 + 8))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v118, &v112);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v115, &v109);
          llvm::APInt::operator*(&v118, &v115, &v122);
          LODWORD(v134) = v123;
          v133 = v122;
          v135[0] = 1;
          if (v116 >= 0x41 && v115)
          {
            MEMORY[0x25F891010](v115, 0x1000C8000313F17);
          }

          if (v119 >= 0x41 && v118)
          {
            MEMORY[0x25F891010](v118, 0x1000C8000313F17);
          }

          v24 = llvm::cast<mlir::ShapedType,mlir::Type>(&v130);
          v26 = mlir::DenseElementsAttr::get(v24, v25, &v133, 1);
LABEL_55:
          v9 = v26;
          if ((v135[0] & 1) != 0 && v134 >= 0x41 && v133)
          {
            MEMORY[0x25F891010](v133, 0x1000C8000313F17);
          }

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v21 + 8, v27))
      {
        goto LABEL_66;
      }

      v28 = *v5[1];
      v29 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v28 + 8, v29))
      {
        goto LABEL_66;
      }

      v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
      v32 = v31;
      v128 = v30;
      v129 = v31;
      v33 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
      v35 = v34;
      v126 = v33;
      v127 = v34;
      v36 = (**(v32 + 24))();
      if (v36 != (**(v35 + 24))())
      {
        goto LABEL_66;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v122, &v128);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v118, &v126);
      v37 = v125;
      if ((v125 & 1) == 0)
      {
        v9 = 0;
        if ((v121 & 1) == 0)
        {
          goto LABEL_67;
        }

LABEL_175:
        if ((v118 & 1) == 0 && v119)
        {
          (*(*v119 + 8))(v119);
        }

        if (v37)
        {
          goto LABEL_179;
        }

LABEL_67:
        if (!v9)
        {
LABEL_75:
          result = 0;
          goto LABEL_131;
        }

        v38 = *(a2 + 40);
        v39 = *v38;
        if (!*v38 || *(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v40 = v38[1];
          if (!v40 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            if (v39 && (v42 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v38)) != 0)
            {
              v43 = (*v41)(v41, v42);
            }

            else
            {
              v43 = 0;
            }

            v44 = v38[1];
            if (!v44)
            {
              goto LABEL_128;
            }

            v46 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v44);
            if (!v46)
            {
              goto LABEL_128;
            }

            v47 = (*v45)(v45, v46);
            v39 = 0;
            if (!v43 || !v47 || v47 != v43)
            {
              goto LABEL_129;
            }

            v130 = v43;
            v40 = *v38;
            if (!*v38 || *(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v48 = v38[1];
              if (!v48)
              {
                goto LABEL_128;
              }

              v49 = *(*v48 + 136);
              if (v49 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                v39 = v38[1];
              }

              else
              {
                v39 = 0;
              }

              if (!v40 || v49 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_129;
              }

              v50 = *v40;
              v51 = *(*v40 + 136);
              if (v49 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v51 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v112 = *v38;
                v109 = v48;
                if (v40[1] == *(v48 + 8))
                {
                  mlir::IntegerAttr::getValue(&v112, &v118);
                  mlir::IntegerAttr::getValue(&v109, &v115);
                  llvm::APIntOps::mulhs(&v118, &v115, &v122);
                  LODWORD(v134) = v123;
                  v133 = v122;
                  v135[0] = 1;
                  if (v116 >= 0x41 && v115)
                  {
                    MEMORY[0x25F891010](v115, 0x1000C8000313F17);
                  }

                  if (v119 >= 0x41 && v118)
                  {
                    MEMORY[0x25F891010](v118, 0x1000C8000313F17);
                  }

                  v52 = mlir::IntegerAttr::get(v130, &v133);
LABEL_102:
                  v39 = v52;
                  if ((v135[0] & 1) != 0 && v134 >= 0x41 && v133)
                  {
                    MEMORY[0x25F891010](v133, 0x1000C8000313F17);
                  }

                  goto LABEL_129;
                }

                goto LABEL_128;
              }

              if ((v51 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v51 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v40 + 24) == 1 && (v49 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v49 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v48 + 24) == 1)
              {
                v112 = *v38;
                v109 = v48;
                if (v40[1] == *(v48 + 8))
                {
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v118, &v112);
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v115, &v109);
                  llvm::APIntOps::mulhs(&v118, &v115, &v122);
                  LODWORD(v134) = v123;
                  v133 = v122;
                  v135[0] = 1;
                  if (v116 >= 0x41 && v115)
                  {
                    MEMORY[0x25F891010](v115, 0x1000C8000313F17);
                  }

                  if (v119 >= 0x41 && v118)
                  {
                    MEMORY[0x25F891010](v118, 0x1000C8000313F17);
                  }

                  v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v130);
                  v52 = mlir::DenseElementsAttr::get(v53, v54, &v133, 1);
                  goto LABEL_102;
                }

LABEL_128:
                v39 = 0;
                goto LABEL_129;
              }

              v55 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v50 + 8, v55))
              {
                goto LABEL_128;
              }

              v56 = *v38[1];
              v57 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v56 + 8, v57))
              {
                goto LABEL_128;
              }

              v58 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v38);
              v60 = v59;
              v128 = v58;
              v129 = v59;
              v61 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v38[1]);
              v63 = v62;
              v126 = v61;
              v127 = v62;
              v64 = (**(v60 + 24))();
              if (v64 != (**(v63 + 24))())
              {
                goto LABEL_128;
              }

              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v122, &v128);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v118, &v126);
              v65 = v125;
              if ((v125 & 1) == 0)
              {
                v39 = 0;
                if ((v121 & 1) == 0)
                {
                  goto LABEL_129;
                }

                goto LABEL_221;
              }

              if ((v121 & 1) == 0)
              {
                v39 = 0;
LABEL_225:
                if ((v122 & 1) == 0 && v123)
                {
                  (*(*v123 + 8))(v123);
                }

                goto LABEL_129;
              }

              LOWORD(v115) = v122;
              if (v122 == 1)
              {
                v116 = v123;
              }

              else
              {
                (*(*v123 + 16))(&v116);
              }

              v117 = v124;
              LOWORD(v112) = v118;
              if (v118 == 1)
              {
                v113 = v119;
              }

              else
              {
                (*(*v119 + 16))(&v113);
              }

              v114 = v120;
              v133 = v135;
              v134 = 0x400000000;
              v86 = (*(v60 + 16))(v60, v58);
              v88 = (*(v87 + 24))(v87, v86);
              if (v89)
              {
                v90 = 8 * v89;
                v91 = 1;
                do
                {
                  v92 = *v88++;
                  v91 *= v92;
                  v90 -= 8;
                }

                while (v90);
              }

              else
              {
                v91 = 1;
              }

              if (v91 > HIDWORD(v134))
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v133, v91);
              }

              v93 = (*(v60 + 16))(v60, v58);
              v95 = (*(v94 + 24))(v94, v93);
              if (v96)
              {
                v97 = 8 * v96;
                v98 = 1;
                do
                {
                  v99 = *v95++;
                  v98 *= v99;
                  v97 -= 8;
                }

                while (v97);
                if (!v98)
                {
LABEL_213:
                  v101 = llvm::cast<mlir::ShapedType,mlir::Type>(&v130);
                  v39 = mlir::DenseElementsAttr::get(v101, v102, v133, v134);
LABEL_215:
                  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v133);
                  if ((v112 & 1) == 0)
                  {
                    v103 = v113;
                    v113 = 0;
                    if (v103)
                    {
                      (*(*v103 + 8))(v103);
                    }
                  }

                  if ((v115 & 1) == 0)
                  {
                    v104 = v116;
                    v116 = 0;
                    if (v104)
                    {
                      (*(*v104 + 8))(v104);
                    }
                  }

LABEL_221:
                  if ((v118 & 1) == 0 && v119)
                  {
                    (*(*v119 + 8))(v119);
                  }

                  if (!v65)
                  {
                    goto LABEL_129;
                  }

                  goto LABEL_225;
                }
              }

              else
              {
                v98 = 1;
              }

              v100 = v117;
              while (1)
              {
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v107, &v115, v100);
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v105, &v112, v114);
                llvm::APIntOps::mulhs(&v107, &v105, &v131);
                v110 = v132;
                v109 = v131;
                v111 = 1;
                if (v106 >= 0x41 && v105)
                {
                  MEMORY[0x25F891010](v105, 0x1000C8000313F17);
                }

                if (v108 >= 0x41 && v107)
                {
                  MEMORY[0x25F891010](v107, 0x1000C8000313F17);
                }

                if (v111 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v133, &v109);
                if ((v111 & 1) != 0 && v110 >= 0x41 && v109)
                {
                  MEMORY[0x25F891010](v109, 0x1000C8000313F17);
                }

                v100 = ++v117;
                ++v114;
                if (!--v98)
                {
                  goto LABEL_213;
                }
              }

              v39 = 0;
              goto LABEL_215;
            }
          }

          v39 = v40;
        }

LABEL_129:
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v9 & 0xFFFFFFFFFFFFFFFBLL);
        v8 = v39 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_130;
      }

      if ((v121 & 1) == 0)
      {
        v9 = 0;
LABEL_179:
        if ((v122 & 1) == 0 && v123)
        {
          (*(*v123 + 8))(v123);
        }

        goto LABEL_67;
      }

      LOWORD(v115) = v122;
      if (v122 == 1)
      {
        v116 = v123;
      }

      else
      {
        (*(*v123 + 16))(&v116);
      }

      v117 = v124;
      LOWORD(v112) = v118;
      if (v118 == 1)
      {
        v113 = v119;
      }

      else
      {
        (*(*v119 + 16))(&v113);
      }

      v114 = v120;
      v133 = v135;
      v134 = 0x400000000;
      v67 = (*(v32 + 16))(v32, v30);
      v69 = (*(v68 + 24))(v68, v67);
      if (v70)
      {
        v71 = 8 * v70;
        v72 = 1;
        do
        {
          v73 = *v69++;
          v72 *= v73;
          v71 -= 8;
        }

        while (v71);
      }

      else
      {
        v72 = 1;
      }

      if (v72 > HIDWORD(v134))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v133, v72);
      }

      v74 = (*(v32 + 16))(v32, v30);
      v76 = (*(v75 + 24))(v75, v74);
      if (v77)
      {
        v78 = 8 * v77;
        v79 = 1;
        do
        {
          v80 = *v76++;
          v79 *= v80;
          v78 -= 8;
        }

        while (v78);
        if (!v79)
        {
LABEL_167:
          v82 = llvm::cast<mlir::ShapedType,mlir::Type>(&v130);
          v9 = mlir::DenseElementsAttr::get(v82, v83, v133, v134);
LABEL_169:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v133);
          if ((v112 & 1) == 0)
          {
            v84 = v113;
            v113 = 0;
            if (v84)
            {
              (*(*v84 + 8))(v84);
            }
          }

          if ((v115 & 1) == 0)
          {
            v85 = v116;
            v116 = 0;
            if (v85)
            {
              (*(*v85 + 8))(v85);
            }
          }

          goto LABEL_175;
        }
      }

      else
      {
        v79 = 1;
      }

      v81 = v117;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v107, &v115, v81);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v105, &v112, v114);
        llvm::APInt::operator*(&v107, &v105, &v131);
        v110 = v132;
        v109 = v131;
        v111 = 1;
        if (v106 >= 0x41 && v105)
        {
          MEMORY[0x25F891010](v105, 0x1000C8000313F17);
        }

        if (v108 >= 0x41 && v107)
        {
          MEMORY[0x25F891010](v107, 0x1000C8000313F17);
        }

        if (v111 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v133, &v109);
        if ((v111 & 1) != 0 && v110 >= 0x41 && v109)
        {
          MEMORY[0x25F891010](v109, 0x1000C8000313F17);
        }

        v81 = ++v117;
        ++v114;
        if (!--v79)
        {
          goto LABEL_167;
        }
      }

      v9 = 0;
      goto LABEL_169;
    }

LABEL_46:
    v9 = v10;
    goto LABEL_67;
  }

LABEL_131:
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::arith::MulUIExtendedOp::getShapeForUnroll(mlir::arith::MulUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::MulUIExtendedOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v140 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = v5[1];
  v137 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v6)
  {
    v8 = mlir::detail::constant_int_predicate_matcher::match(&v137, v6);
    v5 = *(a2 + 40);
    v9 = v5[1];
    if (v8)
    {
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v9 & 0xFFFFFFFFFFFFFFFBLL);
      v10 = v9 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_134:
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v10);
      result = 1;
      goto LABEL_135;
    }

    v137 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v9)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v137, v9))
      {
        v11 = *a1;
        v137 = *(***(*a1 + 24) + 32);
        ZeroAttr = mlir::Builder::getZeroAttr(&v137, *(*(*(v11 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v13 = *(*(*a1 + 72) + 24) | 4;
LABEL_133:
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a3, v13);
        v10 = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_134;
      }

      v5 = *(a2 + 40);
    }
  }

  v14 = *v5;
  if (*v5 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v15 = v5[1];
  if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_49;
  }

  if (v14 && (v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
  {
    v18 = (*v16)(v16, v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = v5[1];
  if (!v19)
  {
    goto LABEL_78;
  }

  v21 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v19);
  if (!v21)
  {
    goto LABEL_78;
  }

  v22 = (*v20)(v20, v21);
  result = 0;
  if (v18 && v22 && v22 == v18)
  {
    v134 = v18;
    v15 = *v5;
    if (!*v5 || *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v24 = v5[1];
      if (!v24)
      {
        goto LABEL_69;
      }

      v25 = *(*v24 + 136);
      if (v25 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = v5[1];
      }

      else
      {
        v14 = 0;
      }

      if (!v15 || v25 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_70;
      }

      v26 = *v15;
      v27 = *(*v15 + 136);
      if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v27 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v116 = *v5;
        v113 = v24;
        if (v15[1] == *(v24 + 8))
        {
          mlir::IntegerAttr::getValue(&v116, &v122);
          mlir::IntegerAttr::getValue(&v113, &v119);
          llvm::APInt::operator*(&v122, &v119, &v126);
          LODWORD(v138) = v127;
          v137 = v126;
          v139[0] = 1;
          if (v120 >= 0x41 && v119)
          {
            MEMORY[0x25F891010](v119, 0x1000C8000313F17);
          }

          if (v123 >= 0x41 && v122)
          {
            MEMORY[0x25F891010](v122, 0x1000C8000313F17);
          }

          v31 = mlir::IntegerAttr::get(v134, &v137);
          goto LABEL_58;
        }

LABEL_69:
        v14 = 0;
        goto LABEL_70;
      }

      if ((v27 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v27 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v15 + 24) == 1 && (v25 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v24 + 24) == 1)
      {
        v116 = *v5;
        v113 = v24;
        if (v15[1] == *(v24 + 8))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v122, &v116);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v119, &v113);
          llvm::APInt::operator*(&v122, &v119, &v126);
          LODWORD(v138) = v127;
          v137 = v126;
          v139[0] = 1;
          if (v120 >= 0x41 && v119)
          {
            MEMORY[0x25F891010](v119, 0x1000C8000313F17);
          }

          if (v123 >= 0x41 && v122)
          {
            MEMORY[0x25F891010](v122, 0x1000C8000313F17);
          }

          v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
          v31 = mlir::DenseElementsAttr::get(v29, v30, &v137, 1);
LABEL_58:
          v14 = v31;
          if ((v139[0] & 1) != 0 && v138 >= 0x41 && v137)
          {
            MEMORY[0x25F891010](v137, 0x1000C8000313F17);
          }

          goto LABEL_70;
        }

        goto LABEL_69;
      }

      v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v32))
      {
        goto LABEL_69;
      }

      v33 = *v5[1];
      v34 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v33 + 8, v34))
      {
        goto LABEL_69;
      }

      v35 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
      v37 = v36;
      v132 = v35;
      v133 = v36;
      v38 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
      v40 = v39;
      v130 = v38;
      v131 = v39;
      v41 = (**(v37 + 24))();
      if (v41 != (**(v40 + 24))())
      {
        goto LABEL_69;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v126, &v132);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v122, &v130);
      v42 = v129;
      if ((v129 & 1) == 0)
      {
        v14 = 0;
        if ((v125 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_179:
        if ((v122 & 1) == 0 && v123)
        {
          (*(*v123 + 8))(v123);
        }

        if (v42)
        {
          goto LABEL_183;
        }

LABEL_70:
        if (!v14)
        {
LABEL_78:
          result = 0;
          goto LABEL_135;
        }

        v43 = *(a2 + 40);
        ZeroAttr = *v43;
        if (!*v43 || *(*ZeroAttr + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v44 = v43[1];
          if (!v44 || *(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
          {
            if (ZeroAttr && (v46 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v43)) != 0)
            {
              v47 = (*v45)(v45, v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = v43[1];
            if (!v48)
            {
              goto LABEL_131;
            }

            v50 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v48);
            if (!v50)
            {
              goto LABEL_131;
            }

            v51 = (*v49)(v49, v50);
            ZeroAttr = 0;
            if (!v47 || !v51 || v51 != v47)
            {
              goto LABEL_132;
            }

            v134 = v47;
            v44 = *v43;
            if (!*v43 || *(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v52 = v43[1];
              if (!v52)
              {
                goto LABEL_131;
              }

              v53 = *(*v52 + 136);
              if (v53 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                ZeroAttr = v43[1];
              }

              else
              {
                ZeroAttr = 0;
              }

              if (!v44 || v53 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_132;
              }

              v54 = *v44;
              v55 = *(*v44 + 136);
              if (v53 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v55 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v116 = *v43;
                v113 = v52;
                if (v44[1] == *(v52 + 8))
                {
                  mlir::IntegerAttr::getValue(&v116, &v122);
                  mlir::IntegerAttr::getValue(&v113, &v119);
                  llvm::APIntOps::mulhu(&v122, &v119, &v126);
                  LODWORD(v138) = v127;
                  v137 = v126;
                  v139[0] = 1;
                  if (v120 >= 0x41 && v119)
                  {
                    MEMORY[0x25F891010](v119, 0x1000C8000313F17);
                  }

                  if (v123 >= 0x41 && v122)
                  {
                    MEMORY[0x25F891010](v122, 0x1000C8000313F17);
                  }

                  v56 = mlir::IntegerAttr::get(v134, &v137);
LABEL_105:
                  ZeroAttr = v56;
                  if ((v139[0] & 1) != 0 && v138 >= 0x41 && v137)
                  {
                    MEMORY[0x25F891010](v137, 0x1000C8000313F17);
                  }

                  goto LABEL_132;
                }

                goto LABEL_131;
              }

              if ((v55 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v55 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v44 + 24) == 1 && (v53 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v53 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v52 + 24) == 1)
              {
                v116 = *v43;
                v113 = v52;
                if (v44[1] == *(v52 + 8))
                {
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v122, &v116);
                  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v119, &v113);
                  llvm::APIntOps::mulhu(&v122, &v119, &v126);
                  LODWORD(v138) = v127;
                  v137 = v126;
                  v139[0] = 1;
                  if (v120 >= 0x41 && v119)
                  {
                    MEMORY[0x25F891010](v119, 0x1000C8000313F17);
                  }

                  if (v123 >= 0x41 && v122)
                  {
                    MEMORY[0x25F891010](v122, 0x1000C8000313F17);
                  }

                  v57 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
                  v56 = mlir::DenseElementsAttr::get(v57, v58, &v137, 1);
                  goto LABEL_105;
                }

LABEL_131:
                ZeroAttr = 0;
                goto LABEL_132;
              }

              v59 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v54 + 8, v59))
              {
                goto LABEL_131;
              }

              v60 = *v43[1];
              v61 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
              if (!mlir::detail::InterfaceMap::lookup(v60 + 8, v61))
              {
                goto LABEL_131;
              }

              v62 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v43);
              v64 = v63;
              v132 = v62;
              v133 = v63;
              v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v43[1]);
              v67 = v66;
              v130 = v65;
              v131 = v66;
              v68 = (**(v64 + 24))();
              if (v68 != (**(v67 + 24))())
              {
                goto LABEL_131;
              }

              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v126, &v132);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v122, &v130);
              v69 = v129;
              if ((v129 & 1) == 0)
              {
                ZeroAttr = 0;
                if ((v125 & 1) == 0)
                {
                  goto LABEL_132;
                }

                goto LABEL_225;
              }

              if ((v125 & 1) == 0)
              {
                ZeroAttr = 0;
LABEL_229:
                if ((v126 & 1) == 0 && v127)
                {
                  (*(*v127 + 8))(v127);
                }

                goto LABEL_132;
              }

              LOWORD(v119) = v126;
              if (v126 == 1)
              {
                v120 = v127;
              }

              else
              {
                (*(*v127 + 16))(&v120);
              }

              v121 = v128;
              LOWORD(v116) = v122;
              if (v122 == 1)
              {
                v117 = v123;
              }

              else
              {
                (*(*v123 + 16))(&v117);
              }

              v118 = v124;
              v137 = v139;
              v138 = 0x400000000;
              v90 = (*(v64 + 16))(v64, v62);
              v92 = (*(v91 + 24))(v91, v90);
              if (v93)
              {
                v94 = 8 * v93;
                v95 = 1;
                do
                {
                  v96 = *v92++;
                  v95 *= v96;
                  v94 -= 8;
                }

                while (v94);
              }

              else
              {
                v95 = 1;
              }

              if (v95 > HIDWORD(v138))
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v137, v95);
              }

              v97 = (*(v64 + 16))(v64, v62);
              v99 = (*(v98 + 24))(v98, v97);
              if (v100)
              {
                v101 = 8 * v100;
                v102 = 1;
                do
                {
                  v103 = *v99++;
                  v102 *= v103;
                  v101 -= 8;
                }

                while (v101);
                if (!v102)
                {
LABEL_217:
                  v105 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
                  ZeroAttr = mlir::DenseElementsAttr::get(v105, v106, v137, v138);
LABEL_219:
                  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v137);
                  if ((v116 & 1) == 0)
                  {
                    v107 = v117;
                    v117 = 0;
                    if (v107)
                    {
                      (*(*v107 + 8))(v107);
                    }
                  }

                  if ((v119 & 1) == 0)
                  {
                    v108 = v120;
                    v120 = 0;
                    if (v108)
                    {
                      (*(*v108 + 8))(v108);
                    }
                  }

LABEL_225:
                  if ((v122 & 1) == 0 && v123)
                  {
                    (*(*v123 + 8))(v123);
                  }

                  if (!v69)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_229;
                }
              }

              else
              {
                v102 = 1;
              }

              v104 = v121;
              while (1)
              {
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v111, &v119, v104);
                mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v109, &v116, v118);
                llvm::APIntOps::mulhu(&v111, &v109, &v135);
                v114 = v136;
                v113 = v135;
                v115 = 1;
                if (v110 >= 0x41 && v109)
                {
                  MEMORY[0x25F891010](v109, 0x1000C8000313F17);
                }

                if (v112 >= 0x41 && v111)
                {
                  MEMORY[0x25F891010](v111, 0x1000C8000313F17);
                }

                if (v115 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v137, &v113);
                if ((v115 & 1) != 0 && v114 >= 0x41 && v113)
                {
                  MEMORY[0x25F891010](v113, 0x1000C8000313F17);
                }

                v104 = ++v121;
                ++v118;
                if (!--v102)
                {
                  goto LABEL_217;
                }
              }

              ZeroAttr = 0;
              goto LABEL_219;
            }
          }

          ZeroAttr = v44;
        }

LABEL_132:
        v13 = v14 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_133;
      }

      if ((v125 & 1) == 0)
      {
        v14 = 0;
LABEL_183:
        if ((v126 & 1) == 0 && v127)
        {
          (*(*v127 + 8))(v127);
        }

        goto LABEL_70;
      }

      LOWORD(v119) = v126;
      if (v126 == 1)
      {
        v120 = v127;
      }

      else
      {
        (*(*v127 + 16))(&v120);
      }

      v121 = v128;
      LOWORD(v116) = v122;
      if (v122 == 1)
      {
        v117 = v123;
      }

      else
      {
        (*(*v123 + 16))(&v117);
      }

      v118 = v124;
      v137 = v139;
      v138 = 0x400000000;
      v71 = (*(v37 + 16))(v37, v35);
      v73 = (*(v72 + 24))(v72, v71);
      if (v74)
      {
        v75 = 8 * v74;
        v76 = 1;
        do
        {
          v77 = *v73++;
          v76 *= v77;
          v75 -= 8;
        }

        while (v75);
      }

      else
      {
        v76 = 1;
      }

      if (v76 > HIDWORD(v138))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v137, v76);
      }

      v78 = (*(v37 + 16))(v37, v35);
      v80 = (*(v79 + 24))(v79, v78);
      if (v81)
      {
        v82 = 8 * v81;
        v83 = 1;
        do
        {
          v84 = *v80++;
          v83 *= v84;
          v82 -= 8;
        }

        while (v82);
        if (!v83)
        {
LABEL_171:
          v86 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
          v14 = mlir::DenseElementsAttr::get(v86, v87, v137, v138);
LABEL_173:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v137);
          if ((v116 & 1) == 0)
          {
            v88 = v117;
            v117 = 0;
            if (v88)
            {
              (*(*v88 + 8))(v88);
            }
          }

          if ((v119 & 1) == 0)
          {
            v89 = v120;
            v120 = 0;
            if (v89)
            {
              (*(*v89 + 8))(v89);
            }
          }

          goto LABEL_179;
        }
      }

      else
      {
        v83 = 1;
      }

      v85 = v121;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v111, &v119, v85);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v109, &v116, v118);
        llvm::APInt::operator*(&v111, &v109, &v135);
        v114 = v136;
        v113 = v135;
        v115 = 1;
        if (v110 >= 0x41 && v109)
        {
          MEMORY[0x25F891010](v109, 0x1000C8000313F17);
        }

        if (v112 >= 0x41 && v111)
        {
          MEMORY[0x25F891010](v111, 0x1000C8000313F17);
        }

        if (v115 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v137, &v113);
        if ((v115 & 1) != 0 && v114 >= 0x41 && v113)
        {
          MEMORY[0x25F891010](v113, 0x1000C8000313F17);
        }

        v85 = ++v121;
        ++v118;
        if (!--v83)
        {
          goto LABEL_171;
        }
      }

      v14 = 0;
      goto LABEL_173;
    }

LABEL_49:
    v14 = v15;
    goto LABEL_70;
  }

LABEL_135:
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::DivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4 && mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
  {
    result = *(*(*a1 + 72) + 24) | 4;
    goto LABEL_72;
  }

  v6 = foldDivMul(*(*(*a1 + 72) + 24), *(*(*a1 + 72) + 56), 2);
  if (v6)
  {
    result = v6 | 4;
    goto LABEL_72;
  }

  v57 = 0;
  v7 = *(a2 + 40);
  v56 = &v57;
  v8 = *v7;
  if (*v7 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v9 = v7[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v7[1];
  if (!v13)
  {
    goto LABEL_68;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_68;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_69;
  }

  v81 = v12;
  v17 = *v7;
  if (*v7 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v18 = v7[1];
  if (!v18)
  {
    goto LABEL_68;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v7;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = mlir::IntegerAttr::get(v81, &v82);
LABEL_41:
        v9 = v22;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v68 = *v7;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v22 = mlir::DenseElementsAttr::get(v23, v24, &v82, 1);
        goto LABEL_41;
      }
    }

    goto LABEL_68;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
  {
    goto LABEL_68;
  }

  v26 = *v7[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_68;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v7);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v7[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_68:
    v9 = 0;
    goto LABEL_69;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v9 = 0;
LABEL_118:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_69;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_106:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_114:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_69;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_106;
      }
    }

    v9 = 0;
    goto LABEL_108;
  }

  v9 = 0;
  if (v74)
  {
    goto LABEL_114;
  }

LABEL_69:
  if (v57)
  {
    result = 0;
  }

  else
  {
    result = v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_72:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t foldDivMul(uint64_t a1, uint64_t a2, int a3)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16) + 120;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = v3 + 16 * v4 + 16;
  }

  if (*(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id || (a3 & ~*(*(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64) + 8)) != 0)
  {
    return 0;
  }

  v6 = *(v5 + 72);
  result = *(v6 + 56);
  if (*(v6 + 24) != a2)
  {
    if (result == a2)
    {
      return *(v6 + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getDivUISpeculatability(uint64_t a1)
{
  v6 = mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = (v3 + 120);
    if (v3 == -120)
    {
      return 0;
    }
  }

  else
  {
    v4 = (v1 + 16 * v2 + 16);
  }

  return mlir::detail::constant_int_range_predicate_matcher::match(&v6, v4) & 1;
}

unint64_t mlir::arith::DivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4 && mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
  {
    result = *(*(*a1 + 72) + 24) | 4;
    goto LABEL_72;
  }

  v6 = foldDivMul(*(*(*a1 + 72) + 24), *(*(*a1 + 72) + 56), 1);
  if (v6)
  {
    result = v6 | 4;
    goto LABEL_72;
  }

  v57 = 0;
  v7 = *(a2 + 40);
  v56 = &v57;
  v8 = *v7;
  if (*v7 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v9 = v7[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v7[1];
  if (!v13)
  {
    goto LABEL_68;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_68;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_69;
  }

  v81 = v12;
  v17 = *v7;
  if (*v7 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v7;
    goto LABEL_69;
  }

  v18 = v7[1];
  if (!v18)
  {
    goto LABEL_68;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_69;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v7;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = mlir::IntegerAttr::get(v81, &v82);
LABEL_41:
        v9 = v22;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v68 = *v7;
    v65 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v22 = mlir::DenseElementsAttr::get(v23, v24, &v82, 1);
        goto LABEL_41;
      }
    }

    goto LABEL_68;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
  {
    goto LABEL_68;
  }

  v26 = *v7[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_68;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v7);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v7[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_68:
    v9 = 0;
    goto LABEL_69;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v9 = 0;
LABEL_118:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_69;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_106:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_108:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_114:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_69;
        }

        goto LABEL_118;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_106;
      }
    }

    v9 = 0;
    goto LABEL_108;
  }

  v9 = 0;
  if (v74)
  {
    goto LABEL_114;
  }

LABEL_69:
  if (v57)
  {
    result = 0;
  }

  else
  {
    result = v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_72:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL getDivSISpeculatability(uint64_t a1)
{
  v12 = mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16);
    v5 = (v4 + 120);
    if (v4 == -120)
    {
      return 0;
    }
  }

  else
  {
    v5 = (v1 + 16 * v3 + 16);
  }

  if (!mlir::detail::constant_int_range_predicate_matcher::match(&v12, v5))
  {
    return 0;
  }

  v11 = mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  v6 = (~*(a1 + 8) & 7) != 0 ? a1 : 0;
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = (v8 + 120);
    if (v8 == -120)
    {
      return 0;
    }
  }

  else
  {
    v9 = (v6 + 16 * v7 + 16);
  }

  return (mlir::detail::constant_int_range_predicate_matcher::match(&v11, v9) & 1) != 0;
}

unint64_t mlir::arith::CeilDivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      result = *(*(*a1 + 72) + 24) | 4;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v81 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v24 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v82, 1);
LABEL_58:
        v8 = v24;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25))
  {
    goto LABEL_69;
  }

  v26 = *v3[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_69;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v8 = 0;
LABEL_119:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_107:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v8 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_115:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_107;
      }
    }

    v8 = 0;
    goto LABEL_109;
  }

  v8 = 0;
  if (v74)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v57)
  {
    result = 0;
  }

  else
  {
    result = v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_73:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::CeilDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      result = *(*(*a1 + 72) + 24) | 4;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v81 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v24 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v82, 1);
LABEL_58:
        v8 = v24;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25))
  {
    goto LABEL_69;
  }

  v26 = *v3[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_69;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v8 = 0;
LABEL_119:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_107:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v8 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_115:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_107;
      }
    }

    v8 = 0;
    goto LABEL_109;
  }

  v8 = 0;
  if (v74)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v57)
  {
    result = 0;
  }

  else
  {
    result = v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_73:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::FloorDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      result = *(*(*a1 + 72) + 24) | 4;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v81 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v24 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v82, 1);
LABEL_58:
        v8 = v24;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25))
  {
    goto LABEL_69;
  }

  v26 = *v3[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_69;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v8 = 0;
LABEL_119:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_107:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v8 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_115:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_107;
      }
    }

    v8 = 0;
    goto LABEL_109;
  }

  v8 = 0;
  if (v74)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v57)
  {
    result = 0;
  }

  else
  {
    result = v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_73:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::RemUIOp::fold(uint64_t *a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v83 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v83, v4))
    {
      v6 = *a1;
      v83 = *(***(*a1 + 24) + 32);
      result = mlir::Builder::getZeroAttr(&v83, *(v6 - 8) & 0xFFFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v58 = 0;
  v57 = &v58;
  v8 = *v3;
  if (*v3 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v9 = v3[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[1];
  if (!v13)
  {
    goto LABEL_69;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_69;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_70;
  }

  v82 = v12;
  v17 = *v3;
  if (*v3 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v18 = v3[1];
  if (!v18)
  {
    goto LABEL_69;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v3[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v69 = *v3;
    v66 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v69, &v76);
      mlir::IntegerAttr::getValue(&v66, &v72);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v57, &v76, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      if (v85 == 1)
      {
        v25 = mlir::IntegerAttr::get(v82, &v83);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v69 = *v3;
    v66 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v76, &v69);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v72, &v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v57, &v76, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      if (v85 == 1)
      {
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
        v25 = mlir::DenseElementsAttr::get(v23, v24, &v83, 1);
LABEL_58:
        v9 = v25;
        if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
        {
          MEMORY[0x25F891010](v83, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v26))
  {
    goto LABEL_69;
  }

  v27 = *v3[1];
  v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v28))
  {
    goto LABEL_69;
  }

  v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v31 = v30;
  v81[0] = v29;
  v81[1] = v30;
  v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v34 = v33;
  v80[0] = v32;
  v80[1] = v33;
  v35 = (**(v31 + 24))();
  if (v35 != (**(v34 + 24))())
  {
LABEL_69:
    v9 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v76, v81);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v72, v80);
  v36 = v79;
  if (v79)
  {
    if ((v75 & 1) == 0)
    {
      v9 = 0;
LABEL_119:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_70;
    }

    LOWORD(v69) = v76;
    if (v76 == 1)
    {
      v70 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v70);
    }

    v71 = v78;
    LOWORD(v66) = v72;
    if (v72 == 1)
    {
      v67 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v67);
    }

    v68 = v74;
    v83 = &v85;
    v84 = 0x400000000;
    v38 = (*(v31 + 16))(v31, v29);
    v40 = (*(v39 + 24))(v39, v38);
    if (v41)
    {
      v42 = 8 * v41;
      v43 = 1;
      do
      {
        v44 = *v40++;
        v43 *= v44;
        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v43 = 1;
    }

    if (v43 > HIDWORD(v84))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v83, v43);
    }

    v45 = (*(v31 + 16))(v31, v29);
    v47 = (*(v46 + 24))(v46, v45);
    if (v48)
    {
      v49 = 8 * v48;
      v50 = 1;
      do
      {
        v51 = *v47++;
        v50 *= v51;
        v49 -= 8;
      }

      while (v49);
      if (!v50)
      {
LABEL_107:
        v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
        v9 = mlir::DenseElementsAttr::get(v53, v54, v83, v84);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v83);
        if ((v66 & 1) == 0)
        {
          v55 = v67;
          v67 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((v69 & 1) == 0)
        {
          v56 = v70;
          v70 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

LABEL_115:
        if ((v72 & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v36)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v50 = 1;
    }

    v52 = v71;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v61, &v69, v52);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v66, v68);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v63, &v57, &v61, &v59);
      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      if (v65 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v83, &v63);
      if ((v65 & 1) != 0 && v64 >= 0x41 && v63)
      {
        MEMORY[0x25F891010](v63, 0x1000C8000313F17);
      }

      v52 = ++v71;
      ++v68;
      if (!--v50)
      {
        goto LABEL_107;
      }
    }

    v9 = 0;
    goto LABEL_109;
  }

  v9 = 0;
  if (v75)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v58)
  {
    result = 0;
  }

  else
  {
    result = v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_73:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}