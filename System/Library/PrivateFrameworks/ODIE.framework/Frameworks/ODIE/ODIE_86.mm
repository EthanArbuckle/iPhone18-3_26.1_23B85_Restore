uint64_t llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F00))
  {
    qword_27FC22EF0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>();
    *algn_27FC22EF8 = v1;
    __cxa_guard_release(&qword_27FC22F00);
  }

  return qword_27FC22EF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<3u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AtLeastNOperands<3>::Impl<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC22F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F10))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>();
    qword_27FC22F08 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC22F10);
  }

  return qword_27FC22F08;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F28))
  {
    qword_27FC22F18 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>();
    unk_27FC22F20 = v1;
    __cxa_guard_release(&qword_27FC22F28);
  }

  return qword_27FC22F18;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<Empty>]";
  v6 = 139;
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

uint64_t mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[51];
}

uint64_t llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>();
    unk_27FC1B1B0 = v1;
  }

  return llvm::getTypeName<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LoopLikeOpInterface::Trait<Empty>]";
  v6 = 101;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, llvm::raw_ostream *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v53 = a2;
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  v9 = *(((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  (*(*a3 + 160))(a3, **(v10 + 48));
  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 2)
  {
    *(v12 + 2) = 32;
    *v12 = 15648;
    *(v11 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v11, " = ", 3uLL);
  }

  ODSOperands = mlir::scf::ForOp::getODSOperands(&v53, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 3uLL)
  {
    *v15 = 544175136;
    *(v14 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v14, " to ", 4uLL);
  }

  v16 = mlir::scf::ForOp::getODSOperands(&v53, 1u);
  (*(*a3 + 160))(a3, *(v16 + 24));
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if ((*(v17 + 3) - v18) > 5)
  {
    *(v18 + 4) = 8304;
    *v18 = 1702130464;
    *(v17 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v17, " step ", 6uLL);
  }

  v19 = mlir::scf::ForOp::getODSOperands(&v53, 2u);
  (*(*a3 + 160))(a3, *(v19 + 24));
  v20 = *(((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10) + 8);
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 48);
  v23 = ((*(v21 + 56) - v22) >> 3) - 1;
  v24 = mlir::scf::ForOp::getODSOperands(&v53, 3u);
  printInitializationList(a3, (v22 + 8), v23, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25, " iter_args", 0xAuLL);
  mlir::scf::ForOp::getODSOperands(&v53, 3u);
  if (v26)
  {
    v27 = (*(*a3 + 16))(a3);
    v28 = *(v27 + 4);
    if ((*(v27 + 3) - v28) > 4)
    {
      *(v28 + 4) = 40;
      *v28 = 540945696;
      *(v27 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v27, " -> (", 5uLL);
    }

    v29 = mlir::scf::ForOp::getODSOperands(&v53, 3u);
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      (*(*a3 + 32))(a3, *(*(v29 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v33 = v32 - 1;
      if (v33)
      {
        v34 = (v31 + 56);
        do
        {
          v35 = (*(*a3 + 16))(a3);
          v36 = *(v35 + 4);
          if (*(v35 + 3) - v36 > 1uLL)
          {
            *v36 = 8236;
            *(v35 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v35, ", ", 2uLL);
          }

          v37 = *v34;
          v34 += 4;
          (*(*a3 + 32))(a3, *(v37 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v33;
        }

        while (v33);
      }
    }

    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (v39 >= *(v38 + 3))
    {
      llvm::raw_ostream::write(v38, 41);
    }

    else
    {
      *(v38 + 4) = v39 + 1;
      *v39 = 41;
    }
  }

  v40 = (*(*a3 + 16))(a3);
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

  v42 = *(((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10) + 8);
  if (v42)
  {
    v43 = v42 - 8;
  }

  else
  {
    v43 = 0;
  }

  v44 = *(**(v43 + 48) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v44 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v45 = (*(*a3 + 16))(a3);
    v46 = *(v45 + 4);
    if ((*(v45 + 3) - v46) > 2)
    {
      *(v46 + 2) = 32;
      *v46 = 14880;
      *(v45 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v45, " : ", 3uLL);
    }

    (*(*a3 + 32))(a3, v44);
    v47 = (*(*a3 + 16))(a3);
    v48 = *(v47 + 4);
    if (v48 >= *(v47 + 3))
    {
      llvm::raw_ostream::write(v47, 32);
    }

    else
    {
      *(v47 + 4) = v48 + 1;
      *v48 = 32;
    }
  }

  v49 = ((v53 + 16 * ((*(v53 + 11) >> 23) & 1) + ((*(v53 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v53 + 10);
  mlir::scf::ForOp::getODSOperands(&v53, 3u);
  (*(*a3 + 224))(a3, v49, 0, v50 != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v53);
  return (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0);
}

uint64_t mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 3))
  {
    goto LABEL_35;
  }

  v4 = a1[11];
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) == 0)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = (((&a1[4 * ((v4 >> 23) & 1) + 17] + ((v4 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_10;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v35 = 257;
      mlir::Operation::emitOpError(a1, v34, &v36);
      if (v36)
      {
        mlir::Diagnostic::operator<<<26ul>(&v37, "expects a non-empty block");
      }

      v11 = v38;
      goto LABEL_18;
    }

LABEL_10:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_19;
    }
  }

  LODWORD(v33) = v6;
  v34[0] = "expects region #";
  v35 = 259;
  mlir::Operation::emitOpError(a1, v34, &v36);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v36, &v33);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_18:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  if (v11)
  {
LABEL_35:
    v29 = 0;
  }

  else
  {
LABEL_19:
    v33 = a1;
    ODSOperands = mlir::scf::ForOp::getODSOperands(&v33, 0);
    v14 = v13;
    if (v13)
    {
      v15 = 0;
      v16 = ODSOperands + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(v33, (*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8), v15))
      {
        ++v15;
        v16 += 32;
        if (v14 == v15)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_35;
    }

LABEL_23:
    v17 = mlir::scf::ForOp::getODSOperands(&v33, 1u);
    if (v18)
    {
      v19 = v18;
      v20 = v17 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(v33, (*(*v20 + 8) & 0xFFFFFFFFFFFFFFF8), v14))
      {
        LODWORD(v14) = v14 + 1;
        v20 += 32;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_35;
    }

LABEL_27:
    v21 = mlir::scf::ForOp::getODSOperands(&v33, 2u);
    if (v22)
    {
      v23 = v22;
      v24 = v21 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps3(v33, (*(*v24 + 8) & 0xFFFFFFFFFFFFFFF8), v14))
      {
        LODWORD(v14) = v14 + 1;
        v24 += 32;
        if (!--v23)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    mlir::scf::ForOp::getODSOperands(&v33, 3u);
    v25 = *(*(mlir::scf::ForOp::getODSOperands(&v33, 0) + 24) + 8);
    if ((*(*(mlir::scf::ForOp::getODSOperands(&v33, 1u) + 24) + 8) ^ v25) <= 7 && (v26 = *(*(mlir::scf::ForOp::getODSOperands(&v33, 1u) + 24) + 8), (*(*(mlir::scf::ForOp::getODSOperands(&v33, 2u) + 24) + 8) ^ v26) <= 7) && (v27 = *(*(mlir::scf::ForOp::getODSOperands(&v33, 2u) + 24) + 8), (*(*(mlir::scf::ForOp::getODSOperands(&v33, 0) + 24) + 8) ^ v27) < 8))
    {
      if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(v33, ((v33 + 16 * ((*(v33 + 11) >> 23) & 1) + ((*(v33 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v33 + 10), "region", 6, 0))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v34[0] = "failed to verify that all of {lowerBound, upperBound, step} have same type";
      v35 = 259;
      mlir::Operation::emitOpError(v33, v34, &v36);
      v28 = v38;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
      if (v28)
      {
        goto LABEL_35;
      }
    }

    v33 = a1;
    mlir::scf::ForOp::getODSOperands(&v33, 3u);
    if (v32 == *(v33 + 9))
    {
      v29 = 1;
    }

    else
    {
      v34[0] = "mismatch in number of loop-carried values and defined values";
      v35 = 259;
      mlir::Operation::emitOpError(v33, v34, &v36);
      v29 = v38 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

uint64_t mlir::Op<mlir::scf::ForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
        {
          v45 = 1283;
          v44[0] = "expects regions to end with '";
          v44[2] = "scf.yield";
          v44[3] = 9;
          v46[0] = v44;
          v46[2] = "', found '";
          v47 = 770;
          v37 = *(v8 + 8);
          *v48 = v46;
          v49 = *(v37 + 16);
          v50 = 1282;
          v51[0] = v48;
          v51[2] = "'";
          v52 = 770;
          mlir::Operation::emitOpError(this, v51, &v55);
          mlir::Diagnostic::attachNote(v56, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if ((mlir::detail::verifyLoopLikeOpInterface(this, a2) & 1) == 0 || (mlir::detail::verifyTypesAlongControlFlowEdges(this, v9) & 1) == 0)
  {
    v22 = 0;
    goto LABEL_45;
  }

  v51[0] = this;
  v10 = *(((this + 16 * ((*(this + 11) >> 23) & 1) + ((*(this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(**(v11 + 48) + 8);
  if ((*(*(mlir::scf::ForOp::getODSOperands(v51, 0) + 24) + 8) ^ v12) >= 8)
  {
    v53[0] = "expected induction variable to be same type as bounds and step";
    v54 = 259;
    v13 = v51[0];
LABEL_48:
    mlir::Operation::emitOpError(v13, v53, &v55);
    v40 = v57;
    goto LABEL_49;
  }

  v13 = v51[0];
  v14 = *(((v51[0] + 16 * ((*(v51[0] + 11) >> 23) & 1) + ((*(v51[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v51[0] + 10) + 8);
  if (v14)
  {
    v15 = v14 - 8;
  }

  else
  {
    v15 = 0;
  }

  if (((*(v15 + 56) - *(v15 + 48)) >> 3) - 1 != *(v51[0] + 9))
  {
    v53[0] = "mismatch in number of basic block args and defined values";
    v54 = 259;
    goto LABEL_48;
  }

  ODSOperands = mlir::scf::ForOp::getODSOperands(v51, 3u);
  v18 = *(v51[0] + 9);
  v19 = *(((v51[0] + 16 * ((*(v51[0] + 11) >> 23) & 1) + ((*(v51[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v51[0] + 10) + 8);
  if (v19)
  {
    v20 = v19 - 8;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v21 = v51[0] - 16;
  }

  else
  {
    v21 = 0;
  }

  v22 = 1;
  if (!v16)
  {
    goto LABEL_45;
  }

  v23 = *(v20 + 48);
  v24 = *(v20 + 56);
  v25 = v23 + 8 == v24 || v18 == 0;
  if (v25)
  {
    goto LABEL_45;
  }

  v26 = 0;
  v27 = v23 + 16;
  v28 = v18 - 1;
  v29 = ODSOperands + 24;
  v30 = v51[0] - 16;
  while (1)
  {
    v31 = v21;
    if (!v26)
    {
      goto LABEL_36;
    }

    v32 = *(v51[0] - 1) & 7;
    v33 = v51[0] - 16;
    v34 = v26;
    if (v32 != 6)
    {
      v35 = (5 - v32);
      v31 = v30;
      v34 = v26 - v35;
      if (v26 <= v35)
      {
        goto LABEL_36;
      }

      v33 = v51[0] - 16 * v35 - 16;
    }

    v31 = &v33[-24 * v34];
LABEL_36:
    v36 = *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v36 != (*(v31 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      break;
    }

    if ((*(*(v23 + 8 * v26 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != v36)
    {
      v48[0] = v26;
      v54 = 257;
      mlir::Operation::emitOpError(v51[0], v53, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<24ul>(v56, "types mismatch between ");
      }

      v43 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v55, v48);
      v42 = v43;
      if (*v43)
      {
        mlir::Diagnostic::operator<<<37ul>((v43 + 1), "th iter region arg and defined value");
      }

      goto LABEL_58;
    }

    if (v16 - 1 != v26 && v27 != v24)
    {
      v27 += 8;
      v30 -= 16;
      v29 += 32;
      v25 = v28 == v26++;
      if (!v25)
      {
        continue;
      }
    }

    goto LABEL_45;
  }

  v48[0] = v26;
  v54 = 257;
  mlir::Operation::emitOpError(v51[0], v53, &v55);
  if (v55)
  {
    mlir::Diagnostic::operator<<<24ul>(v56, "types mismatch between ");
  }

  v41 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v55, v48);
  v42 = v41;
  if (*v41)
  {
    mlir::Diagnostic::operator<<<34ul>((v41 + 1), "th iter operand and defined value");
  }

LABEL_58:
  v40 = *(v42 + 200);
LABEL_49:
  v22 = v40 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
LABEL_45:
  v38 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::printAssembly(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 15)
  {
    if (a4 == 7)
    {
      if (*a3 != 1886413165 || *(a3 + 3) != 1735289200)
      {
        goto LABEL_41;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    }

    else
    {
      v5 = 0;
      if (a4 != 10)
      {
        return v5 | v4;
      }

      if (*a3 != 0x7453636974617473 || *(a3 + 8) != 28773)
      {
        goto LABEL_41;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
    }

LABEL_44:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 == 16)
  {
    if (*a3 == 0x6F4C636974617473 && *(a3 + 8) == 0x646E756F42726577)
    {
      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    }

    else
    {
      if (*a3 != 0x7055636974617473 || *(a3 + 8) != 0x646E756F42726570)
      {
        goto LABEL_41;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
    }

    goto LABEL_44;
  }

  if (a4 == 19)
  {
    v6 = *(a3 + 11);
    v7 = *a3 == 0x53646E617265706FLL && *(a3 + 8) == 0x6953746E656D6765;
    v8 = 1400139365;
  }

  else
  {
    v5 = 0;
    if (a4 != 21)
    {
      return v5 | v4;
    }

    v6 = *(a3 + 13);
    v7 = *a3 == 0x5F646E617265706FLL && *(a3 + 8) == 0x5F746E656D676573;
    v8 = 1935635566;
  }

  v12 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v12)
  {
LABEL_41:
    LOBYTE(v4) = 0;
    v5 = 0;
    return v5 | v4;
  }

  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96, 4);
  v5 = v4 & 0xFFFFFFFFFFFFFF00;
  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 <= 15)
  {
    if (v5 == 7)
    {
      v25 = *v4;
      v26 = *(v4 + 3);
      if (v25 == 1886413165 && v26 == 1735289200)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v30 = a4;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v30;
      }
    }

    else if (v5 == 10)
    {
      v10 = *v4;
      v11 = *(v4 + 4);
      if (v10 == 0x7453636974617473 && v11 == 28773)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v13[2] == 64)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v14;
      }
    }
  }

  else if (v5 == 16)
  {
    if (*v4 == 0x6F4C636974617473 && *(v4 + 1) == 0x646E756F42726577)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v28 = *(a4 + 8), *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v28[2] == 64)
        {
          v29 = a4;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v29;
    }

    else
    {
      v17 = *v4;
      v16 = *(v4 + 1);
      if (v17 == 0x7055636974617473 && v16 == 0x646E756F42726570)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v19 = *(a4 + 8), *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v19[2] == 64)
          {
            v20 = a4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v20;
      }
    }
  }

  else
  {
    if (v5 == 19)
    {
      v6 = *v4 ^ 0x53646E617265706FLL;
      v7 = *(v4 + 1) ^ 0x6953746E656D6765;
      v8 = *(v4 + 11);
      v9 = 1400139365;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v6 = *v4 ^ 0x5F646E617265706FLL;
      v7 = *(v4 + 1) ^ 0x5F746E656D676573;
      v8 = *(v4 + 13);
      v9 = 1935635566;
    }

    if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
    {
      v21 = 1;
    }

    else
    {
      v21 = a4 == 0;
    }

    if (!v21 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v22 = *(a4 + 8);
      if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v22[2] == 32 && *(a4 + 16) == 4)
      {
        v23 = *(a4 + 32);
        if (v23 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96), *(a4 + 24), v23 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v26 = 261;
    v24 = "mapping";
    v25 = 7;
    v10 = mlir::StringAttr::get(v9, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v26 = 261;
    v24 = "staticLowerBound";
    v25 = 16;
    v13 = mlir::StringAttr::get(v12, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v26 = 261;
    v24 = "staticStep";
    v25 = 10;
    v16 = mlir::StringAttr::get(v15, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v26 = 261;
    v24 = "staticUpperBound";
    v25 = 16;
    v19 = mlir::StringAttr::get(v18, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 4), 4);
  v21 = *(**v20 + 32);
  v26 = 261;
  v24 = "operandSegmentSizes";
  v25 = 19;
  v23 = mlir::StringAttr::get(v21, &v24, v22);
  mlir::NamedAttrList::push_back(a3, v23, v20);
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(v11, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v14, "staticLowerBound", 16, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0 || (v17 = v15[1]) == 0 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v17, "staticStep", 10, a4, a5))
      {
        v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
        if ((v19 & 1) == 0)
        {
          return 1;
        }

        v20 = v18[1];
        if (!v20 || mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v20, "staticUpperBound", 16, a4, a5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v35, a6);
    if (v35)
    {
      mlir::Diagnostic::operator<<<42ul>(v36, "expected DictionaryAttr to set properties");
    }

    goto LABEL_43;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "mapping", 7uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v35, a6);
        if (v35)
        {
          goto LABEL_41;
        }

LABEL_43:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
LABEL_44:
        result = 0;
        goto LABEL_45;
      }

      *a3 = v12;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "staticLowerBound", 0x10uLL);
  if (v14)
  {
    v12 = *(v13 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v12[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        a5(&v35, a6);
        if (!v35)
        {
          goto LABEL_43;
        }

LABEL_40:
        mlir::Diagnostic::operator<<<62ul>(v36, v28);
        goto LABEL_41;
      }

      a3[1] = v12;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "staticStep", 0xAuLL);
  if (v17)
  {
    v12 = *(v16 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v18 = v12[1], *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v18[2] != 64)
      {
        a5(&v35, a6);
        if (!v35)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (v35)
        {
          v33 = 0;
          v34 = v12;
          v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
          v30 = v37 + 24 * v38;
          v31 = *v29;
          *(v30 + 16) = *(v29 + 16);
          *v30 = v31;
          ++v38;
        }

        goto LABEL_43;
      }

      a3[2] = v12;
    }
  }

  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "staticUpperBound", 0x10uLL);
  if (v20)
  {
    v12 = *(v19 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v21 = v12[1];
        if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v21[2] == 64)
        {
          a3[3] = v12;
          goto LABEL_28;
        }
      }

      a5(&v35, a6);
      if (!v35)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }
  }

LABEL_28:
  v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if (v23 & 1) != 0 && (v24 = *(v22 + 8)) != 0 || (v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v26) && (v24 = *(v25 + 8)) != 0)
  {
    if ((convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 4, 4, v24, a5, a6, "DenseI32ArrayAttr", 17) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  result = 1;
LABEL_45:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v29 = v31;
  v30 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v28 = 261;
    v26 = "mapping";
    v27 = 7;
    v9 = mlir::StringAttr::get(v8, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v28 = 261;
    v26 = "staticLowerBound";
    v27 = 16;
    v12 = mlir::StringAttr::get(v11, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v28 = 261;
    v26 = "staticStep";
    v27 = 10;
    v15 = mlir::StringAttr::get(v14, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v28 = 261;
    v26 = "staticUpperBound";
    v27 = 16;
    v18 = mlir::StringAttr::get(v17, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v18, v16);
  }

  v19 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 4), 4);
  v20 = *(**v19 + 32);
  v28 = 261;
  v26 = "operandSegmentSizes";
  v27 = 19;
  v22 = mlir::StringAttr::get(v20, &v26, v21);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v22, v19);
  if (v30)
  {
    v23 = mlir::DictionaryAttr::get(v3, v29, v30);
  }

  else
  {
    v23 = 0;
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

__n128 mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2] || a3[3] != a2[3])
  {
    return 0;
  }

  return a3[4] == a2[4] && a3[5] == a2[5];
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ForallOp>::hashProperties(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a2[2];
  v7 = a2[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v19 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = a2[5];
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (a2[4] ^ v13 ^ 0xFF51AFD7ED558CCDLL);
  v17 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47))) ^ v12;
  memset(v22, 0, sizeof(v22));
  v23 = 0xFF51AFD7ED558CCDLL;
  v21 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v21, 0, v22, &v22[3] + 8, &v20, &v19, &v18, &v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3))
  {
    goto LABEL_16;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_16:
      result = 0;
      goto LABEL_17;
    }

    if (*(v9 + 16) >= 5)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_16;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 4, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 3) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 4uLL) & 1) == 0)
  {
    goto LABEL_16;
  }

  result = 1;
LABEL_17:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 32, 4);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 16))(a3, *(v6 + 8));
  (*(*a3 + 16))(a3, *(v6 + 16));
  (*(*a3 + 16))(a3, *(v6 + 24));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 32), 4);
  }

  return result;
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v3, &v4);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::promoteIfSingleIteration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v17 = a2;
  mlir::scf::ForallOp::getMixedLowerBound(&v17, &v24);
  mlir::scf::ForallOp::getMixedUpperBound(&v17, &v21);
  mlir::scf::ForallOp::getMixedStep(&v17, &v18);
  v27 = v29;
  v28 = 0x600000000;
  if (v25)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v27, &v24);
  }

  v30 = v32;
  v31 = 0x600000000;
  if (v22)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v30, &v21);
  }

  v33 = v35;
  v34 = 0x600000000;
  if (v19)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v33, &v18);
  }

  if (v18 != &v20)
  {
    free(v18);
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  if (v24 != &v26)
  {
    free(v24);
  }

  v4 = v33;
  v5 = 1;
  if (v28 && v31 && v34)
  {
    v16 = a3;
    v6 = v27;
    v7 = v30;
    v8 = 8 * v34 - 8;
    v9 = 8 * v31 - 8;
    v10 = 8 * v28 - 8;
    do
    {
      v11 = mlir::constantTripCount(*v6, *v7, *v4) == 1;
      v5 = v12 & v11;
      if ((v12 & v11) != 1)
      {
        break;
      }

      if (!v10)
      {
        break;
      }

      if (!v9)
      {
        break;
      }

      ++v6;
      ++v7;
      ++v4;
      v13 = v8;
      v8 -= 8;
      v9 -= 8;
      v10 -= 8;
    }

    while (v13);
    v4 = v33;
    a3 = v16;
  }

  if (v4 != v35)
  {
    free(v4);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v5)
  {
    mlir::scf::promote(a3, v17);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::getInitsMutable(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  mlir::scf::ForallOp::getOutputsMutable(&v6, a2);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v2 = *(v6 + 72);
  }

  else
  {
    v2 = 0;
  }

  v3 = v7;
  if (v8 != v9)
  {
    free(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2 + 32 * v3;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ForallOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[15] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC22F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F38))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl>(void)::Empty>>();
    qword_27FC22F30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC22F38);
  }

  v11[6] = qword_27FC22F30;
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v11[10] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v11[12] = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[13] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[14] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 14);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F50))
  {
    qword_27FC22F40 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl>(void)::Empty>>();
    *algn_27FC22F48 = v1;
    __cxa_guard_release(&qword_27FC22F50);
  }

  return qword_27FC22F40;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<Empty>]";
  v6 = 144;
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

uint64_t mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[56];
}

uint64_t llvm::getTypeName<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>();
    *algn_27FC1B1D8 = v1;
  }

  return llvm::getTypeName<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestinationStyleOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC22F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F60))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>>();
    qword_27FC22F58 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC22F60);
  }

  return qword_27FC22F58;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F78))
  {
    qword_27FC22F68 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>>();
    unk_27FC22F70 = v1;
    __cxa_guard_release(&qword_27FC22F78);
  }

  return qword_27FC22F68;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParallelRegion<Empty>]";
  v6 = 101;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v6 = a2;
  v88 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v82 = v6;
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 10272;
    *(v7 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v7, " (", 2uLL);
  }

  mlir::scf::ForallOp::getInductionVars(v86, v6);
  v9 = v86[0];
  v10 = LODWORD(v86[1]);
  v11 = (*(*a3 + 16))(a3);
  if (v10)
  {
    v12 = v11;
    (*(*a3 + 160))(a3, *v9);
    if (v10 != 1)
    {
      v13 = v9 + 1;
      v14 = 8 * v10 - 8;
      do
      {
        v15 = *(v12 + 4);
        if (*(v12 + 3) - v15 > 1uLL)
        {
          *v15 = 8236;
          *(v12 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        v16 = *v13++;
        (*(*a3 + 160))(a3, v16);
        v14 -= 8;
      }

      while (v14);
    }
  }

  if (v86[0] != v87)
  {
    free(v86[0]);
  }

  mlir::scf::ForallOp::getMixedLowerBound(&v82, v86);
  if (LODWORD(v86[1]))
  {
    v17 = v86[0];
    v18 = 8 * LODWORD(v86[1]);
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v17);
      v20 = 0;
      if ((v21 & 1) == 0 || ConstantIntValue)
      {
        break;
      }

      ++v17;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    mlir::scf::ForallOp::getMixedStep(&v82, &v83);
    v22 = v83;
    if (v84)
    {
      v23 = 8 * v84 - 8;
      do
      {
        v24 = *v22++;
        v25 = mlir::getConstantIntValue(v24) == 1;
        v20 = v26 & v25;
        v27 = (v26 & v25) != 1 || v23 == 0;
        v23 -= 8;
      }

      while (!v27);
      v22 = v83;
    }

    else
    {
      v20 = 1;
    }

    if (v22 != &v85)
    {
      free(v22);
    }
  }

  if (v86[0] != v87)
  {
    free(v86[0]);
  }

  v28 = (*(*a3 + 16))(a3);
  v29 = *(v28 + 4);
  v30 = *(v28 + 3) - v29;
  if (v20)
  {
    if (v30 > 4)
    {
      *(v29 + 4) = 32;
      *v29 = 1852383273;
      *(v28 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v28, ") in ", 5uLL);
    }

    v31 = 1;
    v32 = 24;
  }

  else
  {
    if (v30 > 3)
    {
      *v29 = 540876841;
      *(v28 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v28, ") = ", 4uLL);
    }

    v33 = *(v82 + 11);
    if ((v33 & 0x800000) != 0)
    {
      v35 = *(v82 + 9);
    }

    else
    {
      v35 = 0;
    }

    v34 = v82 + 16 * ((v33 >> 23) & 1) + 64;
    mlir::printDynamicIndexList(a3, v6, v35, *(v34 + 8), *(*(v34 + 1) + 24), *(*(v34 + 1) + 32) >> 3, 0, 0, 2, 0, 1);
    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (*(v36 + 3) - v37 > 3uLL)
    {
      *v37 = 544175136;
      *(v36 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v36, " to ", 4uLL);
    }

    v38 = *(v82 + 11);
    if ((v38 & 0x800000) != 0)
    {
      v40 = *(v82 + 9);
    }

    else
    {
      v40 = 0;
    }

    v39 = v82 + 16 * ((v38 >> 23) & 1);
    mlir::printDynamicIndexList(a3, v6, v40 + 32 * *(v39 + 24), (*(v39 + 25) + *(v39 + 24)) - *(v39 + 24), *(*(v39 + 11) + 24), *(*(v39 + 11) + 32) >> 3, 0, 0, 2, 0, 1);
    v41 = (*(*a3 + 16))(a3);
    v42 = *(v41 + 4);
    if ((*(v41 + 3) - v42) > 5)
    {
      *(v42 + 4) = 8304;
      *v42 = 1702130464;
      *(v41 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v41, " step ", 6uLL);
    }

    v31 = 2;
    v32 = 16;
  }

  ODSOperands = mlir::scf::ForallOp::getODSOperands(&v82, v31);
  v44 = *(v82 + 16 * ((*(v82 + 11) >> 23) & 1) + v32 + 64);
  mlir::printDynamicIndexList(a3, v6, ODSOperands, v45, *(v44 + 24), *(v44 + 32) >> 3, 0, 0, 2, 0, 1);
  v46 = v82;
  RegionOutArgs = mlir::scf::ForallOp::getRegionOutArgs(v82);
  v49 = *(v46 + 11);
  v50 = (v46 + 16 * ((v49 >> 23) & 1));
  v51 = v50[27];
  v52 = (v50[26] + v50[25] + v50[24]);
  if ((v49 & 0x800000) != 0)
  {
    v53 = *(v46 + 9);
  }

  else
  {
    v53 = 0;
  }

  printInitializationList(a3, RegionOutArgs, v47, (v53 + 32 * v52) & 0xFFFFFFFFFFFFFFF9 | 2, (v51 + v52) - v52, " shared_outs", 0xCuLL);
  v54 = (*(*a3 + 16))(a3);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, " ", 1uLL);
  }

  else
  {
    *v55 = 32;
    ++*(v54 + 4);
  }

  mlir::scf::ForallOp::getRegionOutArgs(v82);
  if (v56)
  {
    v57 = (*(*a3 + 16))(a3);
    v58 = *(v57 + 4);
    v81 = v6;
    if (*(v57 + 3) - v58 > 3uLL)
    {
      *v58 = 673201709;
      *(v57 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v57, "-> (", 4uLL);
    }

    v59 = v82;
    v60 = *(v82 + 9);
    v61 = v82 - 16;
    if (v60)
    {
      v62 = v82 - 16;
    }

    else
    {
      v62 = 0;
    }

    if (v60)
    {
      (*(*a3 + 32))(a3, *(v82 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v60 != 1)
      {
        v63 = v62 - 16;
        v64 = 1;
        while (1)
        {
          v65 = (*(*a3 + 16))(a3);
          v66 = *(v65 + 4);
          if (*(v65 + 3) - v66 > 1uLL)
          {
            *v66 = 8236;
            *(v65 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v65, ", ", 2uLL);
          }

          v67 = *(v59 - 1) & 7;
          v68 = v61;
          v69 = v64;
          if (v67 == 6)
          {
            goto LABEL_71;
          }

          v70 = (5 - v67);
          v71 = v63;
          v69 = v64 - v70;
          if (v64 > v70)
          {
            break;
          }

LABEL_72:
          (*(*a3 + 32))(a3, *(v71 + 1) & 0xFFFFFFFFFFFFFFF8);
          ++v64;
          v63 -= 16;
          if (v60 == v64)
          {
            goto LABEL_73;
          }
        }

        v68 = &v62[-16 * v70];
LABEL_71:
        v71 = &v68[-24 * v69];
        goto LABEL_72;
      }
    }

LABEL_73:
    v72 = (*(*a3 + 16))(a3);
    v73 = *(v72 + 4);
    if (*(v72 + 3) - v73 > 1uLL)
    {
      *v73 = 8233;
      *(v72 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v72, ") ", 2uLL);
    }

    v6 = v81;
  }

  (*(*a3 + 224))(a3, ((v82 + 16 * ((*(v82 + 11) >> 23) & 1) + ((*(v82 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v82 + 10), 0, *(v82 + 9) != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(v6);
  v75 = *(AttrDictionary + 8);
  v76 = *(AttrDictionary + 16);
  v77 = *(v82 + 6);
  v78 = *(v77 + 96);
  *v86 = *(v78[*(v77 + 104) - 1] + 16);
  v87[0] = *(v78[1] + 16);
  v87[1] = *(v78[3] + 16);
  v87[2] = *(v78[2] + 16);
  result = (*(*a3 + 192))(a3, v75, v76, v86, 4);
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_98;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_98;
  }

  v5 = *(a1 + 44);
  if ((v5 & 0x7FFFFF) == 0)
  {
    goto LABEL_22;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_12;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v104 = 257;
      mlir::Operation::emitOpError(a1, v103, &v106);
      if (v106)
      {
        mlir::Diagnostic::operator<<<26ul>(v107, "expects a non-empty block");
      }

      v11 = v108;
      goto LABEL_20;
    }

LABEL_12:
    ++v6;
    v7 += 3;
    if ((v5 & 0x7FFFFF) == v6)
    {
      goto LABEL_22;
    }
  }

  LODWORD(v101[0]) = v6;
  v103[0] = "expects region #";
  v104 = 259;
  mlir::Operation::emitOpError(a1, v103, &v106);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v106, v101);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_20:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
  if (v11)
  {
LABEL_98:
    v86 = 0;
    goto LABEL_99;
  }

  LODWORD(v5) = *(a1 + 44);
LABEL_22:
  v100 = a1;
  v12 = a1 + 64;
  v13 = a1 + 64 + 16 * ((v5 >> 23) & 1);
  v14 = *(v13 + 8);
  if (!v14)
  {
    v46 = "requires attribute 'staticLowerBound'";
    goto LABEL_59;
  }

  v15 = *(v13 + 16);
  if (!v15)
  {
    v46 = "requires attribute 'staticStep'";
    goto LABEL_59;
  }

  v16 = *(v13 + 24);
  if (!v16)
  {
    v46 = "requires attribute 'staticUpperBound'";
LABEL_59:
    v103[0] = v46;
    v104 = 259;
    mlir::Operation::emitOpError(a1, v103, &v106);
    v47 = v108;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
    if (v47)
    {
      goto LABEL_98;
    }

    goto LABEL_60;
  }

  v17 = *v13;
  v106 = a1;
  if (!mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v14, "staticLowerBound", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v106))
  {
    goto LABEL_98;
  }

  v106 = a1;
  if (!mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v16, "staticUpperBound", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v106))
  {
    goto LABEL_98;
  }

  v106 = a1;
  if (!mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v15, "staticStep", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v106))
  {
    goto LABEL_98;
  }

  v106 = a1;
  if (!mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(v17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v106))
  {
    goto LABEL_98;
  }

  v18 = *(a1 + 44);
  v19 = *(v12 + 16 * ((v18 >> 23) & 1) + 32);
  if ((v18 & 0x800000) != 0)
  {
    v20 = *(a1 + 72);
    if (v19)
    {
LABEL_31:
      v21 = 0;
      v22 = v20 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, v21))
      {
        ++v21;
        v22 += 32;
        if (v19 == v21)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_98;
    }
  }

  else
  {
    v20 = 0;
    if (v19)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  ODSOperands = mlir::scf::ForallOp::getODSOperands(&v100, 1u);
  if (v24)
  {
    v25 = v24;
    v26 = ODSOperands + 24;
    while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(v100, *(*v26 + 8) & 0xFFFFFFFFFFFFFFF8, v19))
    {
      LODWORD(v19) = v19 + 1;
      v26 += 32;
      if (!--v25)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_98;
  }

LABEL_38:
  v27 = mlir::scf::ForallOp::getODSOperands(&v100, 2u);
  if (v28)
  {
    v29 = v28;
    v30 = v27 + 24;
    while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(v100, *(*v30 + 8) & 0xFFFFFFFFFFFFFFF8, v19))
    {
      LODWORD(v19) = v19 + 1;
      v30 += 32;
      if (!--v29)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_98;
  }

LABEL_42:
  v31 = mlir::scf::ForallOp::getODSOperands(&v100, 3u);
  if (v32)
  {
    v33 = v32;
    v34 = v31 + 24;
    do
    {
      v35 = *(*v34 + 8) & 0xFFFFFFFFFFFFFFF8;
      v105 = v19;
      v36 = *v35;
      if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v44 = mlir::detail::InterfaceMap::lookup(v36 + 8, v43);
        (*(v44 + 8))(v44, v35);
      }

      else
      {
        v104 = 261;
        v103[0] = "operand";
        v103[1] = 7;
        mlir::Operation::emitOpError(v100, v103, &v106);
        if (v106)
        {
          mlir::Diagnostic::operator<<<3ul>(v107, " #");
        }

        v37 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v106, &v105);
        v38 = v37;
        if (*v37)
        {
          mlir::Diagnostic::operator<<<64ul>((v37 + 1), " must be variadic of ranked tensor of any type values, but got ");
          if (*v38)
          {
            LODWORD(v101[0]) = 4;
            v101[1] = v35;
            v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v38 + 3), v101, 1);
            v40 = v38[3] + 24 * *(v38 + 8);
            v41 = *v39;
            *(v40 + 16) = *(v39 + 16);
            *v40 = v41;
            ++*(v38 + 8);
          }
        }

        v42 = *(v38 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
        if (v42)
        {
          goto LABEL_98;
        }
      }

      LODWORD(v19) = v19 + 1;
      v34 += 32;
      --v33;
    }

    while (v33);
  }

  if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(v100, ((v100 + 16 * ((*(v100 + 11) >> 23) & 1) + ((*(v100 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v100 + 10), "region", 6, 0))
  {
    goto LABEL_98;
  }

LABEL_60:
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, v45))
  {
    goto LABEL_98;
  }

  v100 = a1;
  v48 = *(a1 + 44);
  v49 = (v12 + 16 * ((v48 >> 23) & 1));
  v50 = v49[1];
  v51 = *(v50 + 32);
  v52 = v51 >> 3;
  v105 = v51 >> 3;
  v53 = *(a1 + 36);
  v54 = *(v49 + 8);
  v55 = *(v49 + 10) + *(v49 + 9) + v54;
  v56 = (*(v49 + 11) + v55);
  if (v56 - v55 != v53)
  {
    v103[0] = "produces ";
    v104 = 259;
    mlir::Operation::emitOpError(a1, v103, &v106);
    v102 = *(a1 + 36);
    v69 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v106, &v102);
    v70 = v69;
    if (*v69)
    {
      mlir::Diagnostic::operator<<<24ul>((v69 + 1), " results, but has only ");
    }

    v71 = (v12 + 16 * ((*(a1 + 44) >> 23) & 1));
    v72 = (v71[10] + v71[9] + v71[8]);
    v101[0] = (v71[11] + v72) - v72;
    v73 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v70, v101);
    v68 = v73;
    if (*v73)
    {
      mlir::Diagnostic::operator<<<9ul>((v73 + 1), " outputs");
    }

    goto LABEL_90;
  }

  v57 = *(((v49 + ((v48 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v57)
  {
    v58 = v57 - 8;
  }

  else
  {
    v58 = 0;
  }

  v60 = v58 + 48;
  v59 = *(v58 + 48);
  v61 = (v51 >> 3);
  if (v61 - v55 + v56 != ((*(v60 + 8) - v59) >> 3))
  {
    v103[0] = "region expects ";
    v104 = 259;
    mlir::Operation::emitOpError(a1, v103, &v106);
    v74 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v106, &v105);
    v68 = v74;
    if (*v74)
    {
      mlir::Diagnostic::operator<<<11ul>((v74 + 1), " arguments");
    }

    goto LABEL_90;
  }

  v101[0] = 0;
  if (!v52)
  {
LABEL_70:
    v63 = 0;
    v64 = v48 & 0x800000;
    v65 = (32 * v55) | 0x18;
    while (v53 > v63)
    {
      v66 = *(*(*(a1 + 72) + v65) + 8) ^ *(*(v59 + 8 * (v52 + v63++)) + 8);
      v65 += 32;
      if (v66 >= 8)
      {
        LODWORD(v101[0]) = v63 - 1;
        v103[0] = "type mismatch between ";
        v104 = 259;
        mlir::Operation::emitOpError(a1, v103, &v106);
        v67 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v106, v101);
        v68 = v67;
        if (*v67)
        {
          mlir::Diagnostic::operator<<<44ul>((v67 + 1), "-th output and corresponding block argument");
        }

        goto LABEL_90;
      }
    }

    v75 = *v49;
    if (v75)
    {
      v76 = *(v75 + 16);
      v77 = v52;
      if (v76)
      {
        if (v76 == v61)
        {
          v78 = *(v75 + 8);
          v79 = 8 * v61;
          while (1)
          {
            v80 = **v78;
            v81 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID();
            if (!mlir::detail::InterfaceMap::lookup(v80 + 8, v81))
            {
              break;
            }

            ++v78;
            v79 -= 8;
            if (!v79)
            {
              v82 = *(a1 + 44);
              v83 = v12 + 16 * ((v82 >> 23) & 1);
              v50 = *(v83 + 8);
              v54 = *(v83 + 32);
              v77 = *(v50 + 32) >> 3;
              v64 = v82 & 0x800000;
              goto LABEL_93;
            }
          }

          v104 = 257;
          mlir::Operation::emitOpError(a1, v103, &v106);
          if (v106)
          {
            mlir::Diagnostic::operator<<(v107, **(*(a1 + 48) + 96));
            if (v106)
            {
              mlir::Diagnostic::operator<<<33ul>(v107, " is not device mapping attribute");
            }
          }
        }

        else
        {
          v104 = 257;
          mlir::Operation::emitOpError(a1, v103, &v106);
          if (v106)
          {
            mlir::Diagnostic::operator<<<42ul>(v107, "mapping attribute size must match op rank");
          }
        }

        v85 = v108;
        goto LABEL_91;
      }
    }

    else
    {
      v77 = v52;
    }

LABEL_93:
    if (v64)
    {
      v87 = *(a1 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v87 = 2;
    }

    if (mlir::verifyListOfOperandsOrIntegers(a1, "lower bound", 11, v52, *(v50 + 24), v77, v87, v54))
    {
      v88 = *(v12 + 16 * ((*(a1 + 44) >> 23) & 1) + 24);
      v89 = *(v88 + 24);
      v90 = *(v88 + 32) >> 3;
      v91 = mlir::scf::ForallOp::getODSOperands(&v100, 1u);
      if (mlir::verifyListOfOperandsOrIntegers(a1, "upper bound", 11, v52, v89, v90, v91 & 0xFFFFFFFFFFFFFFF9 | 2, v92))
      {
        v93 = *(v100 + 2 * ((*(v100 + 11) >> 23) & 1) + 10);
        v94 = *(v93 + 24);
        v95 = *(v93 + 32) >> 3;
        v96 = mlir::scf::ForallOp::getODSOperands(&v100, 2u);
        v86 = mlir::verifyListOfOperandsOrIntegers(a1, "step", 4, v52, v94, v95, v96 & 0xFFFFFFFFFFFFFFF9 | 2, v97);
        goto LABEL_99;
      }
    }

    goto LABEL_98;
  }

  v62 = 0;
  while (*(*(*(*(v59 + 8 * v62) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v101[0] = ++v62;
    if (v61 == v62)
    {
      goto LABEL_70;
    }
  }

  v103[0] = "expects ";
  v104 = 259;
  mlir::Operation::emitOpError(a1, v103, &v106);
  v84 = mlir::InFlightDiagnostic::operator<<<long long &>(&v106, v101);
  v68 = v84;
  if (*v84)
  {
    mlir::Diagnostic::operator<<<34ul>((v84 + 1), "-th block argument to be an index");
  }

LABEL_90:
  v85 = *(v68 + 200);
LABEL_91:
  v86 = v85 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v106);
LABEL_99:
  v98 = *MEMORY[0x277D85DE8];
  return v86 & 1;
}

uint64_t mlir::Op<mlir::scf::ForallOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &unk_27FC22EA0)
        {
          v16 = 1283;
          v15[0] = "expects regions to end with '";
          v15[2] = "scf.forall.in_parallel";
          v15[3] = 22;
          v17[0] = v15;
          v17[2] = "', found '";
          v18 = 770;
          v12 = *(v8 + 8);
          v19 = v17;
          v20 = *(v12 + 16);
          v21 = 1282;
          v22[0] = &v19;
          v22[2] = "'";
          v23 = 770;
          mlir::Operation::emitOpError(this, v22, v24);
          mlir::Diagnostic::attachNote(v25, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::detail::verifyLoopLikeOpInterface(this, a2) & 1) != 0 && (mlir::detail::verifyTypesAlongControlFlowEdges(this, v9))
  {
    v11 = mlir::detail::verifyDestinationStyleOpInterface(this, v10);
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::foldHook(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IfOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IfOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IfOp>::getEntrySuccessorRegions(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[11];
  v8 = *a3;
  if (!*a3)
  {
    goto LABEL_9;
  }

  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v9 = *(v8 + 8), *(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v9[2] != 1)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v10 = (v8 + 16);
  v11 = *(v8 + 24);
  if (v11 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((v8 + 16)) == v11)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (*v10)
  {
LABEL_9:
    v18[0] = ((&a2[4 * ((v7 >> 23) & 1) + 17] + ((v7 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    result = llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a5, v18);
    if (!v8)
    {
      goto LABEL_15;
    }

    v11 = *(v8 + 24);
    v10 = (v8 + 16);
    if (v11 <= 0x40)
    {
      if (*v10)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = llvm::APInt::countLeadingZerosSlowCase(v10);
    if (result != v11)
    {
      return result;
    }
  }

LABEL_15:
  v13 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
  v15 = *(v13 + 24);
  v14 = v13 + 24;
  if (v15 == v14)
  {
    v16 = a2[9];
    v17 = (a2 - 4);
    if (!v16)
    {
      v17 = 0;
    }

    v18[0] = v17;
    v18[1] = v16;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a5, v18);
  }

  else
  {
    v18[0] = v14;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a5, v18);
  }
}

__n128 mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IfOp>::getSuccessorRegions(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = a2[9];
    v7 = (a2 - 4) & 0xFFFFFFFFFFFFFFF9 | 4;
    if (!v6)
    {
      v7 = 4;
    }

    v20 = 0;
    v21 = v7;
    v22 = v6;
  }

  else
  {
    v9 = a2[10];
    v8 = a2[11];
    v21 = 0;
    v22 = 0;
    v20 = ((&a2[4 * ((v8 >> 23) & 1) + 17] + ((v8 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a4, &v20, 1);
    v11 = *a4 + 24 * *(a4 + 8);
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++*(a4 + 8);
    v13 = ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    v15 = *(v13 + 24);
    v14 = v13 + 24;
    if (v15 == v14)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v20 = v14;
    }
  }

  v16 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a4, &v20, 1);
  v17 = (*a4 + 24 * *(a4 + 8));
  result = *v16;
  v17[1].n128_u64[0] = v16[1].n128_u64[0];
  *v17 = result;
  ++*(a4 + 8);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IfOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  if (!*a3 || *(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v7 = *(v6 + 8), *(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v7[2] != 1)
  {
    if (*(a5 + 12) > 1u)
    {
      LODWORD(v11) = *(a5 + 8);
      if (v11)
      {
        if (v11 >= 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = v11;
        }

        v12 = *a5;
        do
        {
          *v12 = 0x100000000;
          *(v12 + 8) = 1;
          v12 += 12;
          --v11;
        }

        while (v11);
        v13 = *(a5 + 8);
        if (v13 > 1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = *a5 + 12 * v13;
      v15 = v13 - 2;
      do
      {
        *v14 = 0x100000000;
        *(v14 + 8) = 1;
        v14 += 12;
      }

      while (!__CFADD__(v15++, 1));
    }

    else
    {
      *(a5 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), 2uLL, 12);
      v10 = *a5;
      *v10 = 0x100000000;
      *(v10 + 8) = 1;
      *(v10 + 12) = 0x100000000;
      *(v10 + 20) = 1;
    }

LABEL_21:
    *(a5 + 8) = 2;
    return;
  }

  v8 = *(v6 + 24);
  if (v8 > 0x40)
  {
    v9 = llvm::APInt::countLeadingZerosSlowCase((v6 + 16)) == v8;
  }

  else
  {
    v9 = *(v6 + 16) == 0;
  }

  v17 = v9;
  llvm::SmallVectorImpl<mlir::InvocationBounds>::emplace_back<int,int>(a5, 0, v17 ^ 1);
  v18 = *(v6 + 24);
  if (v18 > 0x40)
  {
    v19 = llvm::APInt::countLeadingZerosSlowCase((v6 + 16)) == v18;
  }

  else
  {
    v19 = *(v6 + 16) == 0;
  }

  v20 = v19;

  llvm::SmallVectorImpl<mlir::InvocationBounds>::emplace_back<int,int>(a5, 0, v20);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::scf::IfOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[7] = *MEMORY[0x277D85DE8];
  mlir::scf::detail::IfOpGenericAdaptorBase::IfOpGenericAdaptorBase(v15, a6, a9, a10);
  v15[5] = a4;
  v15[6] = a5;
  LOBYTE(result) = mlir::scf::IfOp::inferReturnTypes(v15[3], v15[4], a11);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::scf::IfOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  mlir::scf::detail::IfOpGenericAdaptorBase::IfOpGenericAdaptorBase(v21, a6, a9, a10);
  v21[5] = a4;
  v21[6] = a5;
  if (mlir::scf::IfOp::inferReturnTypes(v21[3], v21[4], &v18))
  {
    if (mlir::detail::InferTypeOpInterfaceTrait<mlir::scf::IfOp>::isCompatibleReturnTypes(v18 & 0xFFFFFFFFFFFFFFF9 | 2, v19, *a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8)))
    {
      v15 = 1;
    }

    else
    {
      v21[0] = "scf.if";
      v21[1] = 6;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v21, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceTrait<mlir::scf::IfOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  if (*(v3 + 24) == v3 + 24)
  {
    return 0;
  }

  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    return 0;
  }

  v10 = *(*(v8 + 72) + 56);
  v31 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = (v12 + 120);
    if (v12 == -120)
    {
      return 0;
    }
  }

  else
  {
    v13 = (v10 + 16 * v11 + 16);
  }

  result = mlir::detail::constant_int_predicate_matcher::match(&v31, v13);
  if (result)
  {
    v14 = *(a2 + 72);
    v15 = *(*(v8 + 72) + 24);
    v16 = v14[1];
    if (v16)
    {
      v17 = *v14;
      *v16 = *v14;
      if (v17)
      {
        *(v17 + 8) = v14[1];
      }
    }

    v14[3] = v15;
    v18 = *v15;
    *v14 = *v15;
    v14[1] = v15;
    if (v18)
    {
      *(v18 + 8) = v14;
    }

    *v15 = v14;
    v20 = *(a2 + 40);
    v19 = *(a2 + 44);
    v21 = (v19 >> 23) & 1;
    v22 = (v19 >> 21) & 0x7F8;
    v23 = ((v2 + 16 * v21 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v20;
    v24 = *(v23 + 8);
    if (v24)
    {
      v25 = v24 - 8;
    }

    else
    {
      v25 = 0;
    }

    if (*(v23 + 24) != v23 + 24)
    {
      llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(v23, *(v23 + 8), v23 + 24, *(v23 + 32), (v23 + 24));
      v20 = *(a2 + 40);
      v26 = *(a2 + 44);
      v21 = (v26 >> 23) & 1;
      v22 = (v26 >> 21) & 0x7F8;
    }

    v27 = ((v2 + 16 * v21 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v20;
    v28 = *(v27 + 32);
    if (v24)
    {
      v29 = (v25 + 8);
    }

    else
    {
      v29 = 0;
    }

    result = 1;
    if (v29 != v28)
    {
      v30 = v29[1];
      if (v30 != v28)
      {
        llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(v27 + 24, v28, v27, v29, v30);
        return 1;
      }
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[14] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC22F88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22F88))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::InferTypeOpAdaptor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::InferTypeOpAdaptor>(void)::Empty>>();
    qword_27FC22F80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC22F88);
  }

  v11[10] = qword_27FC22F80;
  v11[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v11[12] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[13] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::InferTypeOpAdaptor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::InferTypeOpAdaptor>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22FA0))
  {
    qword_27FC22F90 = llvm::detail::getTypeNameImpl<mlir::OpTrait::InferTypeOpAdaptor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::InferTypeOpAdaptor>(void)::Empty>>();
    *algn_27FC22F98 = v1;
    __cxa_guard_release(&qword_27FC22FA0);
  }

  return qword_27FC22F90;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::InferTypeOpAdaptor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::InferTypeOpAdaptor>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::InferTypeOpAdaptor<Empty>]";
  v6 = 102;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[71];
}

uint64_t llvm::getTypeName<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>>();
    unk_27FC1B250 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::RecursivelySpeculatableImplTrait<Empty>]";
  v6 = 116;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if ((*(v10 + 3) - v11) > 4)
    {
      *(v11 + 4) = 40;
      *v11 = 540945696;
      *(v10 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v10, " -> (", 5uLL);
    }

    v12 = *(a2 + 36);
    if (v12)
    {
      v13 = a2 - 16;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v12 != 1)
      {
        v14 = v13 - 16;
        v15 = 1;
        while (1)
        {
          v16 = (*(*a3 + 16))(a3);
          v17 = *(v16 + 4);
          if (*(v16 + 3) - v17 > 1uLL)
          {
            *v17 = 8236;
            *(v16 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v16, ", ", 2uLL);
          }

          v18 = *(a2 - 8) & 7;
          v19 = v13;
          v20 = v15;
          if (v18 == 6)
          {
            goto LABEL_20;
          }

          v21 = (5 - v18);
          v22 = v14;
          v20 = v15 - v21;
          if (v15 > v21)
          {
            break;
          }

LABEL_21:
          (*(*a3 + 32))(a3, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
          ++v15;
          v14 -= 16;
          if (v12 == v15)
          {
            goto LABEL_22;
          }
        }

        v19 = v13 - 16 * v21;
LABEL_20:
        v22 = v19 - 24 * v20;
        goto LABEL_21;
      }
    }

LABEL_22:
    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, ")", 1uLL);
    }

    else
    {
      *v24 = 41;
      ++*(v23 + 4);
    }
  }

  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  (*(*a3 + 224))(a3, ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, v9 != 0, 0);
  v27 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v29 = *(v27 + 24);
  v28 = v27 + 24;
  if (v29 != v28)
  {
    v30 = (*(*a3 + 16))(a3);
    v31 = *(v30 + 4);
    if ((*(v30 + 3) - v31) > 5)
    {
      *(v31 + 4) = 8293;
      *v31 = 1936483616;
      *(v30 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v30, " else ", 6uLL);
    }

    (*(*a3 + 224))(a3, v28, 0, v9 != 0, 0);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v33 = *(AttrDictionary + 8);
  v34 = *(AttrDictionary + 16);
  v35 = *(*a3 + 192);

  return v35(a3, v33, v34, 0, 0);
}

uint64_t mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::verifyInvariants(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyNRegions(a1, 2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2) || !mlir::OpTrait::impl::verifyOneOperand(a1, v3))
  {
    goto LABEL_28;
  }

  v5 = *(a1 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) == 0)
  {
    goto LABEL_19;
  }

  v7 = 0;
  v8 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v8 == *v8)
    {
      goto LABEL_10;
    }

    v9 = v8[1];
    if (v8 == v9 || v8 != *(v9 + 8))
    {
      break;
    }

    if (*(v9 + 24) == v9 + 24)
    {
      v30 = 257;
      mlir::Operation::emitOpError(a1, v29, &v31);
      if (v31)
      {
        mlir::Diagnostic::operator<<<26ul>(&v32, "expects a non-empty block");
      }

      v12 = v33;
      goto LABEL_18;
    }

LABEL_10:
    ++v7;
    v8 += 3;
    if (v6 == v7)
    {
      goto LABEL_19;
    }
  }

  LODWORD(v26[0]) = v7;
  v29[0] = "expects region #";
  v30 = 259;
  mlir::Operation::emitOpError(a1, v29, &v31);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, v26);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
LABEL_18:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  if (v12)
  {
LABEL_28:
    v20 = 0;
  }

  else
  {
LABEL_19:
    if ((mlir::OpTrait::impl::verifyNoRegionArguments(a1, v4) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!mlir::scf::__mlir_ods_local_type_constraint_SCFOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0))
    {
      goto LABEL_28;
    }

    v13 = a1 + 64;
    if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, ((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "thenRegion", 10, 0))
    {
      goto LABEL_28;
    }

    v14 = ((v13 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    v15 = v14 + 24;
    v28 = 1;
    v16 = *(v14 + 32);
    if (v16 != v15 && *(v16 + 8) != v15)
    {
      v29[0] = "region #";
      v30 = 259;
      mlir::Operation::emitOpError(a1, v29, &v31);
      v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v28);
      v18 = v17;
      v25 = 1283;
      v24[0] = " ('";
      v24[2] = "elseRegion";
      v24[3] = 10;
      v26[0] = v24;
      v26[2] = "') ";
      v27 = 770;
      if (*v17)
      {
        mlir::Diagnostic::operator<<((v17 + 1), v26);
        if (*v18)
        {
          mlir::Diagnostic::operator<<<58ul>((v18 + 1), "failed to verify constraint: region with at most 1 blocks");
        }
      }

      v19 = *(v18 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
      if (v19)
      {
        goto LABEL_28;
      }
    }

    if (*(a1 + 36) && (v23 = ((v13 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), *(v23 + 24) == v23 + 24))
    {
      v29[0] = "must have an else block if defining values";
      v30 = 259;
      mlir::Operation::emitOpError(a1, v29, &v31);
      v20 = v33 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    }

    else
    {
      v20 = 1;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

uint64_t mlir::Op<mlir::scf::IfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
        {
          v15 = 1283;
          v14[0] = "expects regions to end with '";
          v14[2] = "scf.yield";
          v14[3] = 9;
          v16[0] = v14;
          v16[2] = "', found '";
          v17 = 770;
          v11 = *(v8 + 8);
          v18 = v16;
          v19 = *(v11 + 16);
          v20 = 1282;
          v21[0] = &v18;
          v21[2] = "'";
          v22 = 770;
          mlir::Operation::emitOpError(this, v21, v23);
          mlir::Diagnostic::attachNote(v24, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::detail::verifyTypesAlongControlFlowEdges(this, a2))
  {
    v10 = mlir::detail::verifyInferredResultTypes(this, v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::InParallelOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits::Model<mlir::scf::InParallelOp>::getParentResult(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v3 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3)
    {
      v3 = *(v3 + 16);
    }
  }

  v4 = v3 - 24 * (a3 - 5) - 96;
  v5 = v3 - 16 * ((a3 + 1) & 0xF);
  if (a3 <= 5)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits::Model<mlir::scf::InParallelOp>::getYieldingOps(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 40);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ParallelCombiningOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[80];
}

uint64_t llvm::getTypeName<mlir::ParallelCombiningOpInterface>()
{
  {
    llvm::getTypeName<mlir::ParallelCombiningOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ParallelCombiningOpInterface>();
    *algn_27FC1B298 = v1;
  }

  return llvm::getTypeName<mlir::ParallelCombiningOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ParallelCombiningOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ParallelCombiningOpInterface]";
  v6 = 96;
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v13[15] = *MEMORY[0x277D85DE8];
  v13[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v13[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v13[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v13[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC22FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22FB0))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl>(void)::Empty>>();
    qword_27FC22FA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC22FB0);
  }

  v13[4] = qword_27FC22FA8;
  v13[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v13[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v13[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v13[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v13[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v13[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v13[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC22FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22FD8))
  {
    v11 = llvm::getTypeName<mlir::ParallelCombiningOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ParallelCombiningOpInterface::Trait>(void)::Empty>>();
    qword_27FC22FD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v11, v12);
    __cxa_guard_release(&qword_27FC22FD8);
  }

  v13[12] = qword_27FC22FD0;
  v13[13] = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v13[14] = v3;
  do
  {
    v5 = v13[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 14);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22FC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22FC8))
  {
    qword_27FC22FB8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl>(void)::Empty>>();
    unk_27FC22FC0 = v1;
    __cxa_guard_release(&qword_27FC22FC8);
  }

  return qword_27FC22FB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl<Empty>]";
  v6 = 120;
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

uint64_t llvm::getTypeName<mlir::ParallelCombiningOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ParallelCombiningOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC22FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC22FF0))
  {
    qword_27FC22FE0 = llvm::detail::getTypeNameImpl<mlir::ParallelCombiningOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ParallelCombiningOpInterface::Trait>(void)::Empty>>();
    *algn_27FC22FE8 = v1;
    __cxa_guard_release(&qword_27FC22FF0);
  }

  return qword_27FC22FE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ParallelCombiningOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ParallelCombiningOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ParallelCombiningOpInterface::Trait<Empty>]";
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 224))(a3, ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10], 0, 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v10 = *(AttrDictionary + 8);
  v11 = *(AttrDictionary + 16);
  v12 = *(*a3 + 192);

  return v12(a3, v10, v11, 0, 0);
}

uint64_t mlir::Op<mlir::scf::InParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::HasParent<mlir::scf::ForallOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ParallelCombiningOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    goto LABEL_33;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
  {
    v41 = 257;
    mlir::Operation::emitOpError(a1, v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<19ul>(v44, "expects parent op ");
    }

    v37 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v43, &v37);
    v42[0] = "scf.forall";
    v42[1] = 10;
    v38[0] = v42;
    v38[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v38);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    if (v12)
    {
      goto LABEL_33;
    }
  }

  v13 = *(a1 + 44);
  if ((v13 & 0x7FFFFF) != 0)
  {
    v14 = 0;
    v15 = (((a1 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    while (1)
    {
      if (v15 != *v15)
      {
        v16 = v15[1];
        if (v15 == v16 || v15 != *(v16 + 8))
        {
          break;
        }
      }

      ++v14;
      v15 += 3;
      if ((v13 & 0x7FFFFF) == v14)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v38[0]) = v14;
    v40[0] = "expects region #";
    v41 = 259;
    mlir::Operation::emitOpError(a1, v40, &v43);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v43, v38);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<23ul>((v17 + 1), " to have 0 or 1 blocks");
    }

    v19 = *(v18 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    if (v19)
    {
      goto LABEL_33;
    }

    LODWORD(v13) = *(a1 + 44);
  }

LABEL_25:
  if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, ((a1 + 64 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "region", 6, 0) || !mlir::OpTrait::impl::verifyIsTerminator(a1, v20) || (mlir::detail::verifyParallelCombiningOpInterface(a1, v21) & 1) == 0)
  {
LABEL_33:
    v25 = 0;
    goto LABEL_34;
  }

  v22 = *((*(*(a1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v22)
  {
    v23 = *(*(v22 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v28 = *(((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
    if (v28)
    {
      v29 = v28 - 8;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 + 32;
    v31 = *(v29 + 40);
    if (v31 == v29 + 32)
    {
      v25 = 1;
      goto LABEL_34;
    }

    while (*(*(v31 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
    {
      v32 = *(*(v31 + 72) + 32 * *(v31 + 104) + 24);
      RegionOutArgs = mlir::scf::ForallOp::getRegionOutArgs(v22);
      if (v34)
      {
        v35 = 8 * v34;
        v36 = RegionOutArgs;
        while (*v36 != v32)
        {
          ++v36;
          v35 -= 8;
          if (!v35)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v36 = RegionOutArgs;
      }

      if (v36 == (RegionOutArgs + 8 * v34))
      {
LABEL_49:
        v40[0] = "may only insert into an output block argument";
        v41 = 259;
        v24 = v31;
        goto LABEL_50;
      }

      v31 = *(v31 + 8);
      v25 = 1;
      if (v31 == v30)
      {
        goto LABEL_34;
      }
    }

    v38[0] = "expected only ";
    v39 = 259;
    mlir::Operation::emitOpError(a1, v38, &v43);
    if (v43)
    {
      v41 = 262;
      v40[0] = "tensor.parallel_insert_slice";
      v40[1] = 28;
      mlir::Diagnostic::operator<<(v44, v40);
      if (v43)
      {
        mlir::Diagnostic::operator<<<5ul>(v44, " ops");
      }
    }
  }

  else
  {
    v40[0] = "expected forall op parent";
    v41 = 259;
    v24 = a1;
LABEL_50:
    mlir::Operation::emitOpError(v24, v40, &v43);
  }

  v25 = v44[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1702060387 ? (v4 = *(a3 + 4) == 115) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1702060387 && v6 == 115)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v8 = a4[1], *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v8[2] == 64)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v9;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "cases";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "cases", 5uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
        {
          a5(&v20, a6);
          if (v20)
          {
            if (v20)
            {
              v18 = 0;
              v19 = v12;
              v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
              v16 = v22 + 24 * v23;
              v17 = *v15;
              *(v16 + 16) = *(v15 + 16);
              *v16 = v17;
              ++v23;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_12;
  }

  a5(&v20, a6);
  if (v20)
  {
    mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  result = 0;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "cases";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::IndexSwitchOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

unint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = *(a2 + 44);
  v9 = (v8 >> 23) & 1;
  v10 = a2 + 64 + 16 * v9;
  v11 = v8 & 0x7FFFFF;
  v12 = *a3;
  if (!*a3)
  {
    goto LABEL_7;
  }

  if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v12 = 0;
  }

  v27 = v12;
  if (v12)
  {
    v13 = *v10;
    v14 = *(*v10 + 32);
    if (v11)
    {
      v15 = ((v10 + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v16 = v11 - 1;
    }

    else
    {
      v15 = 0;
      v16 = -1;
    }

    if (v14 < 8 || v16 == 0)
    {
LABEL_22:
      v28[0] = ((v7 + 16 * v9 + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    }

    else
    {
      v20 = *(v13 + 24);
      v21 = v15 + 24;
      v22 = 24 * (v8 & 0x7FFFFF) - 48;
      v23 = 8 * (v14 >> 3) - 8;
      while (1)
      {
        v24 = *v20;
        if (v24 == mlir::IntegerAttr::getInt(&v27))
        {
          break;
        }

        if (v23)
        {
          ++v20;
          v21 += 24;
          v25 = v22;
          v22 -= 24;
          v23 -= 8;
          if (v25)
          {
            continue;
          }
        }

        v8 = *(a2 + 44);
        v9 = (v8 >> 23) & 1;
        goto LABEL_22;
      }

      v28[0] = v21;
    }

    result = llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a5, v28);
  }

  else
  {
LABEL_7:
    if (v11)
    {
      v17 = ((v10 + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    }

    else
    {
      v17 = 0;
      v11 = 0;
    }

    result = std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(v28, v17, 0, v17, v11, a5);
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getSuccessorRegions(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a2[9];
    v5 = a2 - 4;
    if (!v4)
    {
      v5 = 0;
    }

    v11[0] = v5;
    v11[1] = v4;
    result = llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a4, v11);
  }

  else
  {
    v7 = a2[11];
    v8 = v7 & 0x7FFFFF;
    if ((v7 & 0x7FFFFF) != 0)
    {
      v9 = ((&a2[4 * ((v7 >> 23) & 1) + 17] + ((v7 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10];
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    result = std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>(v11, v9, 0, v9, v8, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::IndexSwitchOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_22;
  }

  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = 0;
  }

  v26 = v7;
  if (v7)
  {
    v8 = *(a2 + 44);
    v9 = (v8 & 0x7FFFFF) - 1;
    v10 = *(a2 + 64 + 16 * ((v8 >> 23) & 1));
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    Int = mlir::IntegerAttr::getInt(&v26);
    if (v12 >= 8)
    {
      v14 = &v11[v12 >> 3];
      v15 = 8 * (v12 >> 3);
      while (*v11 != Int)
      {
        ++v11;
        v15 -= 8;
        if (!v15)
        {
          v11 = v14;
          break;
        }
      }
    }

    v16 = *(a2 + 44);
    v17 = *(a2 + 64 + 16 * ((v16 >> 23) & 1));
    v18 = *(v17 + 24);
    v19 = (v18 + (*(v17 + 32) & 0xFFFFFFFFFFFFFFF8));
    v20 = (v11 - v18) >> 3;
    if (v11 == v19)
    {
      v21 = v9;
    }

    else
    {
      v21 = v20;
    }

    v22 = v16 & 0x7FFFFF;
    if ((v16 & 0x7FFFFF) != 0)
    {
      do
      {
        v23 = *(a5 + 8);
        if (v23 >= *(a5 + 12))
        {
          llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,BOOL>(a5, 0, v21 == 0);
        }

        else
        {
          v24 = *a5 + 12 * v23;
          if (v21)
          {
            v25 = 0x100000000;
          }

          else
          {
            v25 = 0x100000001;
          }

          *v24 = 0;
          *(v24 + 4) = v25;
          ++*(a5 + 8);
        }

        --v21;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
LABEL_22:
    llvm::SmallVectorImpl<mlir::InvocationBounds>::append(a5, *(a2 + 44) & 0x7FFFFF, 0x100000000, 1);
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[10] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC23000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23000))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>>();
    qword_27FC22FF8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23000);
  }

  v11[0] = qword_27FC22FF8;
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[9] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23018))
  {
    qword_27FC23008 = llvm::detail::getTypeNameImpl<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>>();
    unk_27FC23010 = v1;
    __cxa_guard_release(&qword_27FC23018);
  }

  return qword_27FC23008;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AtLeastNRegions<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNRegions<1u>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AtLeastNRegions<1>::Impl<Empty>]";
  v6 = 108;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v60[4] = *MEMORY[0x277D85DE8];
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
  v58 = v60;
  v59 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v58, "cases", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v58, v59);
  if (*(a2 + 36))
  {
    v10 = (*(*a3 + 16))(a3);
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

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (*(v12 + 3) - v13 > 1uLL)
    {
      *v13 = 15917;
      *(v12 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v12, "->", 2uLL);
    }

    v14 = (*(*a3 + 16))(a3);
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

    v16 = *(a2 + 36);
    v17 = v16 ? a2 - 16 : 0;
    if (v16)
    {
      (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v16 != 1)
      {
        v18 = v17 - 16;
        v19 = 1;
        while (1)
        {
          v20 = (*(*a3 + 16))(a3);
          v21 = *(v20 + 4);
          if (*(v20 + 3) - v21 > 1uLL)
          {
            *v21 = 8236;
            *(v20 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v20, ", ", 2uLL);
          }

          v22 = *(a2 - 8) & 7;
          v23 = v17;
          v24 = v19;
          if (v22 == 6)
          {
            goto LABEL_26;
          }

          v25 = (5 - v22);
          v26 = v18;
          v24 = v19 - v25;
          if (v19 > v25)
          {
            break;
          }

LABEL_27:
          (*(*a3 + 32))(a3, *(v26 + 8) & 0xFFFFFFFFFFFFFFF8);
          ++v19;
          v18 -= 16;
          if (v16 == v19)
          {
            goto LABEL_28;
          }
        }

        v23 = v17 - 16 * v25;
LABEL_26:
        v26 = v23 - 24 * v24;
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = a2 + 64;
  v30 = *(a2 + 44);
  v31 = (a2 + 64 + 16 * ((v30 >> 23) & 1));
  v32 = *v31;
  if ((v30 & 0x7FFFFF) != 0)
  {
    v33 = ((v31 + ((v30 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v34 = (v30 & 0x7FFFFF) - 1;
  }

  else
  {
    v33 = 0;
    v34 = -1;
  }

  v35 = *(v32 + 32);
  if (v35 >= 8 && v34 != 0)
  {
    v37 = *(v32 + 24);
    v38 = (v33 + 24) & 0xFFFFFFFFFFFFFFF8;
    v39 = 8 * (v35 >> 3) - 8;
    v40 = (v30 & 0x7FFFFF) - 2;
    do
    {
      (*(*a3 + 128))(a3);
      v41 = (*(*a3 + 16))(a3);
      v42 = *(v41 + 4);
      if ((*(v41 + 3) - v42) > 4)
      {
        *(v42 + 4) = 32;
        *v42 = 1702060387;
        *(v41 + 4) += 5;
      }

      else
      {
        llvm::raw_ostream::write(v41, "case ", 5uLL);
      }

      v43 = (*(*a3 + 16))(a3);
      llvm::write_integer(v43, *v37, 0, 0);
      v44 = (*(*a3 + 16))(a3);
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

      (*(*a3 + 224))(a3, v38, 0, 1, 0);
      v47 = v40-- != 0;
      if (!v39)
      {
        break;
      }

      ++v37;
      v39 -= 8;
      v38 += 24;
    }

    while (v47);
  }

  (*(*a3 + 128))(a3);
  v48 = (*(*a3 + 16))(a3);
  v49 = *(v48 + 4);
  if (*(v48 + 3) - v49 > 6uLL)
  {
    *(v49 + 3) = 1953264993;
    *v49 = 1634100580;
    *(v48 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v48, "default", 7uLL);
  }

  v50 = (*(*a3 + 16))(a3);
  v51 = *(v50 + 4);
  if (v51 >= *(v50 + 3))
  {
    llvm::raw_ostream::write(v50, 32);
  }

  else
  {
    *(v50 + 4) = v51 + 1;
    *v51 = 32;
  }

  v52 = (((v29 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  v56 = *v52 == v52 || ((v53 = v52[1]) != 0 ? (v54 = v53 - 8) : (v54 = 0), (v55 = *(v54 + 32), *(mlir::Operation::getAttrDictionary(v55) + 16)) || (*(v55 + 46) & 0x80) != 0 && *(v55 + 68)) || *(v55 + 36) != 0;
  (*(*a3 + 224))(a3, ((v29 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 1, v56, 0);
  if (v58 != v60)
  {
    free(v58);
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyAtLeastNRegions(a1, 1) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2) || !mlir::OpTrait::impl::verifyOneOperand(a1, v3))
  {
    goto LABEL_35;
  }

  v4 = *(a1 + 44);
  if ((v4 & 0x7FFFFF) == 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = (((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v6 == *v6)
    {
      goto LABEL_10;
    }

    v7 = v6[1];
    if (v6 == v7 || v6 != *(v7 + 8))
    {
      break;
    }

    if (*(v7 + 24) == v7 + 24)
    {
      v54 = 257;
      mlir::Operation::emitOpError(a1, v53, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<26ul>(&v56, "expects a non-empty block");
      }

      v10 = v59;
      goto LABEL_18;
    }

LABEL_10:
    ++v5;
    v6 += 3;
    if ((v4 & 0x7FFFFF) == v5)
    {
      goto LABEL_20;
    }
  }

  LODWORD(v49) = v5;
  v53[0] = "expects region #";
  v54 = 259;
  mlir::Operation::emitOpError(a1, v53, &v55);
  v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v55, &v49);
  v9 = v8;
  if (*v8)
  {
    mlir::Diagnostic::operator<<<23ul>((v8 + 1), " to have 0 or 1 blocks");
  }

  v10 = *(v9 + 200);
LABEL_18:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
  if (v10)
  {
    goto LABEL_35;
  }

  LODWORD(v4) = *(a1 + 44);
LABEL_20:
  v11 = a1 + 64;
  v12 = *(a1 + 64 + 16 * ((v4 >> 23) & 1));
  if (!v12)
  {
    v53[0] = "requires attribute 'cases'";
    v54 = 259;
    mlir::Operation::emitOpError(a1, v53, &v55);
    v26 = v59;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
    if (v26)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v55 = a1;
  if (!mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v12, "cases", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v55))
  {
    goto LABEL_35;
  }

  v13 = *(a1 + 44);
  v14 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v52) = 0;
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_30;
  }

  v54 = 261;
  v53[0] = "operand";
  v53[1] = 7;
  mlir::Operation::emitOpError(a1, v53, &v55);
  if (v55)
  {
    mlir::Diagnostic::operator<<<3ul>(&v56, " #");
  }

  v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v55, &v52);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<25ul>((v15 + 1), " must be index, but got ");
    if (*v16)
    {
      LODWORD(v49) = 4;
      v50 = v14;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v49, 1);
      v18 = v16[3] + 24 * *(v16 + 8);
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++*(v16 + 8);
    }
  }

  v20 = *(v16 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
  if (v20)
  {
    goto LABEL_35;
  }

  v13 = *(a1 + 44);
LABEL_30:
  if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, ((v11 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "defaultRegion", 13, 0))
  {
    goto LABEL_35;
  }

  v21 = *(a1 + 44);
  v22 = v21 & 0x7FFFFF;
  if ((v21 & 0x7FFFFF) == 0)
  {
    v25 = 0;
    v24 = 24;
    goto LABEL_38;
  }

  if (v22 == 1)
  {
LABEL_41:
    v48 = a1;
    v31 = *(a1 + 44);
    if ((v31 & 0x7FFFFF) == 0 || (v32 = (v31 >> 23) & 1, v33 = *(v11 + 16 * v32), v34 = *(v33 + 32), v34 >> 3 != (v31 & 0x7FFFFF) - 1))
    {
      v53[0] = "has ";
      v54 = 259;
      mlir::Operation::emitOpError(a1, v53, &v55);
      v49 = (*(a1 + 44) & 0x7FFFFF) - 1;
      v40 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v55, &v49);
      v41 = v40;
      if (*v40)
      {
        mlir::Diagnostic::operator<<<19ul>((v40 + 1), " case regions but ");
      }

      v52 = *(*(v11 + 16 * ((*(a1 + 44) >> 23) & 1)) + 32) >> 3;
      v42 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v41, &v52);
      v43 = v42;
      if (*v42)
      {
        mlir::Diagnostic::operator<<<13ul>((v42 + 1), " case values");
      }

      v27 = *(v43 + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_36;
    }

    v49 = 0;
    v50 = 0;
    v51 = 0;
    if (v34 >= 8)
    {
      v35 = *(v33 + 24);
      v36 = 8 * (v34 >> 3);
      while (1)
      {
        v52 = *v35;
        llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v49, &v52, &v55);
        if (v57 != 1)
        {
          break;
        }

        ++v35;
        v36 -= 8;
        if (!v36)
        {
          v31 = *(a1 + 44);
          v32 = (v31 >> 23) & 1;
          goto LABEL_48;
        }
      }

      v53[0] = "has duplicate case value: ";
      v54 = 259;
      mlir::Operation::emitOpError(a1, v53, &v55);
      v27 = *(mlir::InFlightDiagnostic::operator<<<long long &>(&v55, &v52) + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_64;
    }

LABEL_48:
    v37 = ((v11 + 16 * v32 + ((v31 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    v55 = "default region";
    v58 = 259;
    if (mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(&v48, v37, &v55))
    {
      v38 = *(a1 + 44);
      v39 = v38 & 0x7FFFFF;
      if ((v38 & 0x7FFFFF) != 0)
      {
        if (v39 == 1)
        {
          v27 = 1;
LABEL_64:
          MEMORY[0x25F891030](v49, 8);
          goto LABEL_36;
        }

        v46 = ((v11 + 16 * ((v38 >> 23) & 1) + ((v38 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
        v45 = v46 + 24;
        v44 = v46 + 24 * v39;
      }

      else
      {
        v44 = 0;
        v45 = 24;
      }

      v47 = 0;
      do
      {
        v53[0] = v47;
        v55 = "case region #";
        v57 = v53;
        v58 = 2819;
        v27 = mlir::scf::IndexSwitchOp::verify(void)::$_0::operator()(&v48, v45, &v55);
        if ((v27 & 1) == 0)
        {
          break;
        }

        ++v47;
        v45 += 24;
      }

      while (v45 != v44);
      goto LABEL_64;
    }

    v27 = 0;
    goto LABEL_64;
  }

  v23 = ((v11 + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  v24 = v23 + 24;
  v25 = v23 + 24 * v22;
LABEL_38:
  v30 = 1;
  while (mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, v24, "caseRegions", 11, v30))
  {
    ++v30;
    v24 += 24;
    if (v24 == v25)
    {
      goto LABEL_41;
    }
  }

LABEL_35:
  v27 = 0;
LABEL_36:
  v28 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

uint64_t mlir::Op<mlir::scf::IndexSwitchOp,mlir::OpTrait::AtLeastNRegions<1u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v2 = a1[11];
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = (((&a1[4 * ((v2 >> 23) & 1) + 17] + ((v2 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    do
    {
      if (v4 != *v4)
      {
        v5 = v4[1];
        if (v5)
        {
          v6 = v5 - 8;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(*(v6 + 32) + 48);
        if (*(v7 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
        {
          v13 = 1283;
          v12[0] = "expects regions to end with '";
          v12[2] = "scf.yield";
          v12[3] = 9;
          v14[0] = v12;
          v14[2] = "', found '";
          v15 = 770;
          v9 = *(v7 + 8);
          v16 = v14;
          v17 = *(v9 + 16);
          v18 = 1282;
          v19[0] = &v16;
          v19[2] = "'";
          v20 = 770;
          mlir::Operation::emitOpError(a1, v19, v21);
          mlir::Diagnostic::attachNote(v22, 0, 0);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  v8 = mlir::detail::verifyTypesAlongControlFlowEdges(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    v4 = *(a3 + 11);
    v5 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v6 = 1400139365;
  }

  else
  {
    if (a4 != 21)
    {
      goto LABEL_15;
    }

    v4 = *(a3 + 13);
    v5 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v6 = 1935635566;
  }

  v7 = v6 | 0x73657A6900000000;
  if (v5 && v4 == v7)
  {
    v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 4);
    v10 = v11 & 0xFFFFFFFFFFFFFF00;
    v9 = v11;
    return v10 | v9;
  }

LABEL_15:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 19)
  {
    v6 = *v4 ^ 0x53646E617265706FLL;
    v7 = v4[1] ^ 0x6953746E656D6765;
    v8 = *(v4 + 11);
    v9 = 1400139365;
  }

  else
  {
    if (v5 != 21)
    {
      return result;
    }

    v6 = *v4 ^ 0x5F646E617265706FLL;
    v7 = v4[1] ^ 0x5F746E656D676573;
    v8 = *(v4 + 13);
    v9 = 1935635566;
  }

  if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 == 0;
  }

  if (!v10 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v11 = *(a4 + 8);
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11[2] == 32 && *(a4 + 16) == 4)
    {
      v12 = *(a4 + 32);
      if (v12 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), *(a4 + 24), v12 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 4);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v18[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
    if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0) && ((v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v15 & 1) == 0) || (v13 = *(v14 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3, 4, v13, a5, a6, "DenseI32ArrayAttr", 17))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v13 = v15;
  v14 = 0x300000000;
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(v2, v3 + 64, 4);
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

__n128 mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * (*a2 ^ __ROR8__(v2 + 16, 16) ^ 0xFF51AFD7ED558CCDLL);
  v4 = __ROR8__(v2 + 16, 16) ^ (v3 >> 47);
  v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ v3)) >> 47))) ^ v2;
  v6 = 8 * v5 + 8;
  v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
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

    if (*(v9 + 16) >= 5)
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
      memmove(v3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 4uLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 4);
    (*(*a3 + 16))(a3, v6);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 4);
  }

  return result;
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v3, &v4);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopLowerBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 44);
  v4 = *(a1 + 16 * ((v3 >> 23) & 1) + 64);
  if ((v3 & 0x800000) != 0)
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2, v5, 0, v5, v4);
  *(a2 + 64) = 1;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopSteps(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 44);
  v4 = (a1 + 16 * ((v3 >> 23) & 1));
  v5 = v4[16];
  v6 = v4[17];
  v7 = v4[18];
  if ((v3 & 0x800000) != 0)
  {
    v8 = *(a1 + 72);
  }

  else
  {
    v8 = 0;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2, v8 + 32 * (v6 + v5), 0, v8 + 32 * (v6 + v5), (v7 + v6 + v5) - (v6 + v5));
  *(a2 + 64) = 1;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopUpperBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 44);
  v4 = a1 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 64);
  v6 = *(v4 + 68);
  if ((v3 & 0x800000) != 0)
  {
    v7 = *(a1 + 72);
  }

  else
  {
    v7 = 0;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2, v7 + 32 * v5, 0, v7 + 32 * v5, (v6 + v5) - v5);
  *(a2 + 64) = 1;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[14] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23028))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>>();
    qword_27FC23020 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23028);
  }

  v11[6] = qword_27FC23020;
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v11[10] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v11[12] = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[13] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23040))
  {
    qword_27FC23030 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>>();
    *algn_27FC23038 = v1;
    __cxa_guard_release(&qword_27FC23040);
  }

  return qword_27FC23030;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<Empty>]";
  v6 = 140;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 10272;
    *(v7 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v7, " (", 2uLL);
  }

  v9 = a2 + 64;
  v10 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 48);
  v13 = *(v11 + 56);
  v14 = (*(*a3 + 16))(a3);
  if (v13 != v12)
  {
    v15 = v14;
    (*(*a3 + 160))(a3, *v12);
    if (v13 - v12 != 8)
    {
      v16 = v12 + 8;
      do
      {
        v17 = *(v15 + 4);
        if (*(v15 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v15 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v15, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 8;
        (*(*a3 + 160))(a3, v18);
      }

      while (v16 != v13);
    }
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 4)
  {
    *(v20 + 4) = 40;
    *v20 = 540876841;
    *(v19 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v19, ") = (", 5uLL);
  }

  v21 = *(a2 + 44);
  v22 = *(v9 + 16 * ((v21 >> 23) & 1));
  if ((v21 & 0x800000) != 0)
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = 0;
  }

  v24 = (*(*a3 + 16))(a3);
  if (v22)
  {
    v25 = v24;
    (*(*a3 + 160))(a3, *(v23 + 24));
    if (v22 != 1)
    {
      v26 = v22 - 1;
      v27 = (v23 + 56);
      do
      {
        v28 = *(v25 + 4);
        if (*(v25 + 3) - v28 > 1uLL)
        {
          *v28 = 8236;
          *(v25 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v25, ", ", 2uLL);
        }

        v29 = *v27;
        v27 += 4;
        (*(*a3 + 160))(a3, v29);
        --v26;
      }

      while (v26);
    }
  }

  v30 = (*(*a3 + 16))(a3);
  v31 = *(v30 + 4);
  if ((*(v30 + 3) - v31) > 5)
  {
    *(v31 + 4) = 10272;
    *v31 = 1869881385;
    *(v30 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v30, ") to (", 6uLL);
  }

  v32 = *(a2 + 44);
  v33 = (v9 + 16 * ((v32 >> 23) & 1));
  v34 = v33[1];
  if ((v32 & 0x800000) != 0)
  {
    v35 = *(a2 + 72);
  }

  else
  {
    v35 = 0;
  }

  v36 = *v33;
  v37 = (*(*a3 + 16))(a3);
  if (v34)
  {
    v38 = v37;
    v39 = v34 + v36;
    v40 = v35 + 32 * v36;
    (*(*a3 + 160))(a3, *(v40 + 24));
    if (v39 - v36 != 1)
    {
      v41 = ~v36 + v39;
      v42 = (v40 + 56);
      do
      {
        v43 = *(v38 + 4);
        if (*(v38 + 3) - v43 > 1uLL)
        {
          *v43 = 8236;
          *(v38 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v38, ", ", 2uLL);
        }

        v44 = *v42;
        v42 += 4;
        (*(*a3 + 160))(a3, v44);
        --v41;
      }

      while (v41);
    }
  }

  v45 = (*(*a3 + 16))(a3);
  v46 = *(v45 + 4);
  if (*(v45 + 3) - v46 > 7uLL)
  {
    *v46 = 0x2820706574732029;
    *(v45 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v45, ") step (", 8uLL);
  }

  v47 = *(a2 + 44);
  v48 = (v9 + 16 * ((v47 >> 23) & 1));
  v49 = v48[2];
  if ((v47 & 0x800000) != 0)
  {
    v50 = *(a2 + 72);
  }

  else
  {
    v50 = 0;
  }

  v51 = *v48;
  v52 = v48[1];
  v53 = (*(*a3 + 16))(a3);
  if (v49)
  {
    v54 = v53;
    v55 = (v52 + v51);
    v56 = (v49 + v55);
    v57 = v50 + 32 * v55;
    (*(*a3 + 160))(a3, *(v57 + 24));
    if (v56 - v55 != 1)
    {
      v58 = ~v55 + v56;
      v59 = (v57 + 56);
      do
      {
        v60 = *(v54 + 4);
        if (*(v54 + 3) - v60 > 1uLL)
        {
          *v60 = 8236;
          *(v54 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v54, ", ", 2uLL);
        }

        v61 = *v59;
        v59 += 4;
        (*(*a3 + 160))(a3, v61);
        --v58;
      }

      while (v58);
    }
  }

  v62 = (*(*a3 + 16))(a3);
  v63 = *(v62 + 4);
  if (*(v62 + 3) == v63)
  {
    llvm::raw_ostream::write(v62, ")", 1uLL);
  }

  else
  {
    *v63 = 41;
    ++*(v62 + 4);
  }

  if (*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 12))
  {
    v64 = (*(*a3 + 16))(a3);
    v65 = *(v64 + 4);
    if (*(v64 + 3) - v65 > 6uLL)
    {
      *(v65 + 3) = 673215593;
      *v65 = 1768843552;
      *(v64 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v64, " init (", 7uLL);
    }

    v66 = *(a2 + 44);
    v67 = (v9 + 16 * ((v66 >> 23) & 1));
    v68 = v67[3];
    if ((v66 & 0x800000) != 0)
    {
      v69 = *(a2 + 72);
    }

    else
    {
      v69 = 0;
    }

    v70 = *v67;
    v71 = v67[1];
    v72 = v67[2];
    v73 = (*(*a3 + 16))(a3);
    if (v68)
    {
      v74 = v73;
      v75 = (v72 + v71 + v70);
      v76 = (v68 + v75);
      v77 = v69 + 32 * v75;
      (*(*a3 + 160))(a3, *(v77 + 24));
      if (v76 - v75 != 1)
      {
        v78 = ~v75 + v76;
        v79 = (v77 + 56);
        do
        {
          v80 = *(v74 + 4);
          if (*(v74 + 3) - v80 > 1uLL)
          {
            *v80 = 8236;
            *(v74 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v74, ", ", 2uLL);
          }

          v81 = *v79;
          v79 += 4;
          (*(*a3 + 160))(a3, v81);
          --v78;
        }

        while (v78);
      }
    }

    v82 = (*(*a3 + 16))(a3);
    v83 = *(v82 + 4);
    if (*(v82 + 3) == v83)
    {
      llvm::raw_ostream::write(v82, ")", 1uLL);
    }

    else
    {
      *v83 = 41;
      ++*(v82 + 4);
    }
  }

  v84 = *(a2 + 36);
  v85 = (a2 - 16);
  if (!v84)
  {
    v85 = 0;
  }

  v92 = v85;
  v93 = 0;
  v94 = v85;
  v95 = v84;
  if (v84)
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a3, &v92);
  }

  v86 = (*(*a3 + 16))(a3);
  v87 = *(v86 + 4);
  if (v87 >= *(v86 + 3))
  {
    llvm::raw_ostream::write(v86, 32);
  }

  else
  {
    *(v86 + 4) = v87 + 1;
    *v87 = 32;
  }

  (*(*a3 + 224))(a3, ((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, 1, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v89 = *(AttrDictionary + 8);
  v90 = *(AttrDictionary + 16);
  v92 = "operandSegmentSizes";
  v93 = 19;
  return (*(*a3 + 192))(a3, v89, v90, &v92, 1);
}

uint64_t mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_81;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_81;
  }

  v5 = *(a1 + 44);
  if ((v5 & 0x7FFFFF) == 0)
  {
    goto LABEL_22;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_12;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v77 = 257;
      mlir::Operation::emitOpError(a1, v76, &v78);
      if (v78)
      {
        mlir::Diagnostic::operator<<<26ul>(v79, "expects a non-empty block");
      }

      v11 = v80;
      goto LABEL_20;
    }

LABEL_12:
    ++v6;
    v7 += 3;
    if ((v5 & 0x7FFFFF) == v6)
    {
      goto LABEL_22;
    }
  }

  LODWORD(v75) = v6;
  v76[0] = "expects region #";
  v77 = 259;
  mlir::Operation::emitOpError(a1, v76, &v78);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v78, &v75);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_20:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
  if (v11)
  {
LABEL_81:
    v54 = 0;
    goto LABEL_82;
  }

  LODWORD(v5) = *(a1 + 44);
LABEL_22:
  v12 = a1 + 64;
  v13 = (v5 >> 23) & 1;
  v14 = *(a1 + 64 + 16 * v13);
  if ((v5 & 0x800000) != 0)
  {
    v15 = *(a1 + 72);
    if (v14)
    {
LABEL_24:
      v16 = 0;
      v17 = v15 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(a1, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, v16))
      {
        ++v16;
        v17 += 32;
        if (v14 == v16)
        {
          v5 = *(a1 + 44);
          v13 = (v5 >> 23) & 1;
          v18 = v5 & 0x800000;
          v19 = *(v12 + 16 * v13);
          goto LABEL_31;
        }
      }

      goto LABEL_81;
    }
  }

  else
  {
    v15 = 0;
    if (v14)
    {
      goto LABEL_24;
    }
  }

  v19 = 0;
  v18 = v5 & 0x800000;
LABEL_31:
  v20 = *(v12 + 16 * v13 + 4);
  if (v18)
  {
    v21 = *(a1 + 72);
    if (v20)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v21 = 0;
    if (v20)
    {
LABEL_33:
      v22 = v20 + v19 - v19;
      v23 = v21 + 32 * v19 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(a1, *(*v23 + 8) & 0xFFFFFFFFFFFFFFF8, v14))
      {
        LODWORD(v14) = v14 + 1;
        v23 += 32;
        if (!--v22)
        {
          v5 = *(a1 + 44);
          v13 = (v5 >> 23) & 1;
          v18 = v5 & 0x800000;
          v24 = (v12 + 16 * v13);
          v19 = *v24;
          v20 = v24[1];
          goto LABEL_37;
        }
      }

      goto LABEL_81;
    }
  }

LABEL_37:
  v25 = *(v12 + 16 * v13 + 8);
  if (v18)
  {
    v26 = *(a1 + 72);
    if (v25)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v26 = 0;
    if (v25)
    {
LABEL_39:
      v27 = v20 + v19;
      v28 = (v25 + v27) - v27;
      v29 = v26 + 32 * v27 + 24;
      while (mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(a1, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, v14))
      {
        LODWORD(v14) = v14 + 1;
        v29 += 32;
        if (!--v28)
        {
          LODWORD(v5) = *(a1 + 44);
          goto LABEL_43;
        }
      }

      goto LABEL_81;
    }
  }

LABEL_43:
  if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, ((v12 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "region", 6, 0) || !mlir::OpTrait::impl::verifyOneRegion(a1, v30))
  {
    goto LABEL_81;
  }

  v69 = a1;
  v31 = *(a1 + 44);
  v32 = (v12 + 16 * ((v31 >> 23) & 1));
  v33 = v32[2];
  if ((v31 & 0x800000) == 0)
  {
    v34 = 0;
    if (v33)
    {
      goto LABEL_47;
    }

    goto LABEL_110;
  }

  v34 = *(a1 + 72);
  if (!v33)
  {
LABEL_110:
    v76[0] = "needs at least one tuple element for lowerBound, upperBound and step";
    v77 = 259;
    v41 = a1;
    goto LABEL_111;
  }

LABEL_47:
  v35 = (v32[1] + *v32);
  v36 = (v33 + v35) - v35;
  v37 = (v34 + 32 * v35 + 24);
  v38 = v36;
  do
  {
    ConstantIntValue = mlir::getConstantIntValue(*v37 | 4);
    if ((v40 & 1) != 0 && ConstantIntValue <= 0)
    {
      v76[0] = "constant step operand must be positive";
      v77 = 259;
      v41 = v69;
      goto LABEL_111;
    }

    v37 += 4;
    --v38;
  }

  while (v38);
  v41 = v69;
  v42 = (((v69 + 16 * ((*(v69 + 11) >> 23) & 1) + ((*(v69 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v69 + 10));
  v43 = v42[1];
  if (v43)
  {
    v44 = (v43 - 8);
  }

  else
  {
    v44 = 0;
  }

  v46 = v44[6];
  v45 = v44[7];
  if (v36 != ((v45 - v46) >> 3))
  {
    v77 = 257;
    mlir::Operation::emitOpError(v69, v76, &v78);
    if (v78)
    {
      mlir::Diagnostic::operator<<<49ul>(v79, "expects the same number of induction variables: ");
    }

    LODWORD(v74) = (v44[7] - v44[6]) >> 3;
    v55 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&v78, &v74);
    v56 = v55;
    if (*v55)
    {
      mlir::Diagnostic::operator<<<28ul>((v55 + 1), " as bound and step values: ");
    }

    v75 = v36;
    v57 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v56, &v75);
    goto LABEL_76;
  }

  if (v46 == v45)
  {
LABEL_58:
    if (*v42 == v42 || (v47 = v44[4], v47 == v44 + 4))
    {
      v47 = 0;
    }

    else if (*(*(v47 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
    {
      v48 = *(v69 + 9);
      v49 = *(v47 + 44) & 0x7FFFFF;
      v74 = v49;
      v75 = v48;
      mlir::scf::ParallelOp::getODSOperands(&v69, 3u);
      v73 = v50;
      if (v48 == v49)
      {
        if (v50 == v48)
        {
          if (!v48)
          {
LABEL_69:
            v54 = 1;
            goto LABEL_82;
          }

          v51 = 0;
          v52 = 24;
          while (1)
          {
            v53 = v69 - 24 * (v51 - 5) - 96;
            if (v51 <= 5)
            {
              v53 = v69 - 16 * ((v51 + 1) & 0xF);
            }

            v71 = *(v53 + 1) & 0xFFFFFFFFFFFFFFF8;
            v70 = *(*(*(v47 + 72) + v52) + 8) & 0xFFFFFFFFFFFFFFF8;
            if (v71 != v70)
            {
              break;
            }

            ++v51;
            v52 += 32;
            if (v48 == v51)
            {
              goto LABEL_69;
            }
          }

          v72 = v51;
          v77 = 257;
          mlir::Operation::emitOpError(v47, v76, &v78);
          if (v78)
          {
            mlir::Diagnostic::operator<<<17ul>(v79, "expects type of ");
          }

          v65 = mlir::InFlightDiagnostic::operator<<<long long &>(&v78, &v72);
          v66 = v65;
          if (*v65)
          {
            mlir::Diagnostic::operator<<<24ul>((v65 + 1), "-th reduction operand: ");
            if (*v66)
            {
              mlir::Diagnostic::operator<<<mlir::Type &>((v66 + 1), &v70);
              if (*v66)
              {
                mlir::Diagnostic::operator<<<24ul>((v66 + 1), " to be the same as the ");
              }
            }
          }

          v67 = mlir::InFlightDiagnostic::operator<<<long long &>(v66, &v72);
          v68 = v67;
          if (*v67)
          {
            mlir::Diagnostic::operator<<<18ul>((v67 + 1), "-th result type: ");
            if (*v68)
            {
              mlir::Diagnostic::operator<<<mlir::Type &>((v68 + 1), &v71);
            }
          }

          v58 = *(v68 + 200);
          goto LABEL_112;
        }

        v77 = 257;
        mlir::Operation::emitOpError(v69, v76, &v78);
        if (v78)
        {
          mlir::Diagnostic::operator<<<28ul>(v79, "expects number of results: ");
        }

        v64 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v78, &v75);
        v62 = v64;
        if (*v64)
        {
          mlir::Diagnostic::operator<<<46ul>((v64 + 1), " to be the same as number of initial values: ");
        }

        v63 = &v73;
      }

      else
      {
        v77 = 257;
        mlir::Operation::emitOpError(v69, v76, &v78);
        if (v78)
        {
          mlir::Diagnostic::operator<<<28ul>(v79, "expects number of results: ");
        }

        v61 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v78, &v75);
        v62 = v61;
        if (*v61)
        {
          mlir::Diagnostic::operator<<<42ul>((v61 + 1), " to be the same as number of reductions: ");
        }

        v63 = &v74;
      }

      v57 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v62, v63);
LABEL_76:
      v58 = *(v57 + 200);
      goto LABEL_112;
    }

    v77 = 261;
    v76[0] = "expects body to terminate with 'scf.reduce'";
    v76[1] = 43;
    mlir::Operation::emitOpError(v69, v76, &v78);
    if (v47)
    {
      mlir::Diagnostic::attachNote(v79, *(v47 + 24), 1);
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
    goto LABEL_81;
  }

  while (*(*(*(*v46 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v46 += 8;
    if (v46 == v45)
    {
      goto LABEL_58;
    }
  }

  v76[0] = "expects arguments for the induction variable to be of index type";
  v77 = 259;
LABEL_111:
  mlir::Operation::emitOpError(v41, v76, &v78);
  v58 = v80;
LABEL_112:
  v54 = v58 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
LABEL_82:
  v59 = *MEMORY[0x277D85DE8];
  return v54 & 1;
}

uint64_t mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
        {
          v15 = 1283;
          v14[0] = "expects regions to end with '";
          v14[2] = "scf.reduce";
          v14[3] = 10;
          v16[0] = v14;
          v16[2] = "', found '";
          v17 = 770;
          v11 = *(v8 + 8);
          v18 = v16;
          v19 = *(v11 + 16);
          v20 = 1282;
          v21[0] = &v18;
          v21[2] = "'";
          v22 = 770;
          mlir::Operation::emitOpError(this, v21, v23);
          mlir::Diagnostic::attachNote(v24, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::detail::verifyLoopLikeOpInterface(this, a2))
  {
    v10 = mlir::detail::verifyTypesAlongControlFlowEdges(this, v9);
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
  a2[2] = a2 + 4;
  *&result = 0x100000000;
  a2[3] = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
      v6 = *(a2 + 16);
      if (v6)
      {
        v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v8 = *(InterfaceFor + 16);

  return v8();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v13[9] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC23050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23050))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>>();
    qword_27FC23048 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23050);
  }

  v13[0] = qword_27FC23048;
  v13[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v13[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v13[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23078))
  {
    v11 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>>();
    qword_27FC23070 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v11, v12);
    __cxa_guard_release(&qword_27FC23078);
  }

  v13[4] = qword_27FC23070;
  v13[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v13[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v13[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v13[8] = v3;
  do
  {
    v5 = v13[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23068))
  {
    qword_27FC23058 = llvm::detail::getTypeNameImpl<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>>();
    unk_27FC23060 = v1;
    __cxa_guard_release(&qword_27FC23068);
  }

  return qword_27FC23058;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::VariadicRegions<Empty>]";
  v6 = 99;
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

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23090))
  {
    qword_27FC23080 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>>();
    *algn_27FC23088 = v1;
    __cxa_guard_release(&qword_27FC23090);
  }

  return qword_27FC23080;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v43[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v7 = (*(*a3 + 16))(a3);
    v8 = *(v7 + 4);
    if (*(v7 + 3) == v8)
    {
      llvm::raw_ostream::write(v7, "(", 1uLL);
    }

    else
    {
      *v8 = 40;
      ++*(v7 + 4);
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v9 = *(a2 + 68);
      v10 = *(a2 + 72);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v11 = (*(*a3 + 16))(a3);
    if (v9)
    {
      v12 = v11;
      (*(*a3 + 160))(a3, *(v10 + 24));
      v13 = v9 - 1;
      if (v13)
      {
        v14 = (v10 + 56);
        do
        {
          v15 = *(v12 + 4);
          if (*(v12 + 3) - v15 > 1uLL)
          {
            *v15 = 8236;
            *(v12 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v12, ", ", 2uLL);
          }

          v16 = *v14;
          v14 += 4;
          (*(*a3 + 160))(a3, v16);
          --v13;
        }

        while (v13);
      }
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
      llvm::raw_ostream::write(v19, ":", 1uLL);
    }

    else
    {
      *v20 = 58;
      ++*(v19 + 4);
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (v22 >= *(v21 + 3))
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      *(v21 + 4) = v22 + 1;
      *v22 = 32;
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v23 = *(a2 + 68);
      if (v23)
      {
        v24 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v23 != 1)
        {
          v25 = v23 - 1;
          v26 = (v24 + 56);
          do
          {
            v27 = (*(*a3 + 16))(a3);
            v28 = *(v27 + 4);
            if (*(v27 + 3) - v28 > 1uLL)
            {
              *v28 = 8236;
              *(v27 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v27, ", ", 2uLL);
            }

            v29 = *v26;
            v26 += 4;
            (*(*a3 + 32))(a3, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v25;
          }

          while (v25);
        }
      }
    }

    v30 = (*(*a3 + 16))(a3);
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
  }

  v32 = (*(*a3 + 16))(a3);
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

  v34 = *(a2 + 44);
  v35 = v34 & 0x7FFFFF;
  if ((v34 & 0x7FFFFF) != 0)
  {
    v36 = ((a2 + 16 * ((v34 >> 23) & 1) + ((v34 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    (*(*a3 + 224))(a3, v36, 1, 1, 0);
    if (v35 != 1)
    {
      v37 = v36 + 24;
      v38 = 24 * v35 - 24;
      do
      {
        v39 = (*(*a3 + 16))(a3);
        v40 = *(v39 + 4);
        if (*(v39 + 3) - v40 > 1uLL)
        {
          *v40 = 8236;
          *(v39 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v39, ", ", 2uLL);
        }

        (*(*a3 + 224))(a3, v37, 1, 1, 0);
        v37 += 24;
        v38 -= 24;
      }

      while (v38);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v43, 0);
  v42 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v25[25] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroResults(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
          {
            goto LABEL_14;
          }
        }
      }
    }

    v22 = 257;
    mlir::Operation::emitOpError(a1, v21, &v24);
    if (v24)
    {
      mlir::Diagnostic::operator<<<19ul>(v25, "expects parent op ");
    }

    v20 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v24, &v20);
    v23[0] = "scf.parallel";
    v23[1] = 12;
    v19[0] = v23;
    v19[1] = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v19);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    if ((v11 & 1) == 0)
    {
LABEL_14:
      v15 = *(a1 + 44);
      if ((v15 & 0x7FFFFF) == 0)
      {
LABEL_18:
        IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v4);
        goto LABEL_13;
      }

      v16 = 0;
      v17 = ((a1 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
      v18 = 24 * (v15 & 0x7FFFFF);
      while (mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, v17, "reductions", 10, v16))
      {
        ++v16;
        v17 += 24;
        v18 -= 24;
        if (!v18)
        {
          goto LABEL_18;
        }
      }
    }
  }

  IsTerminator = 0;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

BOOL mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyRegionInvariants(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 44);
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) != 0)
  {
    v3 = 0;
    v4 = ((a1 + ((v1 >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
    while (1)
    {
      v5 = *(v4 + 24 * v3 + 8);
      if (v5)
      {
        v6 = v5 - 8;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 32);
      if (v7 == v6 + 32)
      {
        v23 = v3;
        v22 = 257;
        mlir::Operation::emitOpError(a1, v21, &v26);
        v20 = mlir::InFlightDiagnostic::operator<<<long long &>(&v26, &v23);
        v17 = v20;
        if (*v20)
        {
          mlir::Diagnostic::operator<<<32ul>((v20 + 1), "-th reduction has an empty body");
        }

        goto LABEL_20;
      }

      v8 = *(*(*(a1 + 72) + 32 * v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v11 = v6 + 48;
      v10 = *(v6 + 48);
      v9 = *(v11 + 8);
      if (((v9 - v10) & 0x7FFFFFFF8) != 0x10)
      {
        goto LABEL_14;
      }

      if (v9 != v10)
      {
        while (v8 == (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          v10 += 8;
          if (v10 == v9)
          {
            goto LABEL_11;
          }
        }

LABEL_14:
        v23 = v3;
        v22 = 257;
        mlir::Operation::emitOpError(a1, v21, &v26);
        if (v26)
        {
          mlir::Diagnostic::operator<<<40ul>(v27, "expected two block arguments with type ");
          if (v26)
          {
            v24 = 4;
            v25 = v8;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v28, &v24, 1);
            v14 = v28 + 24 * v29;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v29;
            if (v26)
            {
              mlir::Diagnostic::operator<<<9ul>(v27, " in the ");
            }
          }
        }

        v16 = mlir::InFlightDiagnostic::operator<<<long long &>(&v26, &v23);
        v17 = v16;
        if (*v16)
        {
          mlir::Diagnostic::operator<<<21ul>((v16 + 1), "-th reduction region");
        }

LABEL_20:
        v18 = *(v17 + 200);
        goto LABEL_21;
      }

LABEL_11:
      if (*(*(v7 + 48) + 16) != &unk_27FC22EB0)
      {
        break;
      }

      if (++v3 == v2)
      {
        goto LABEL_13;
      }
    }

    v23 = v3;
    v21[0] = "reduction bodies must be terminated with an 'scf.reduce.return' op";
    v22 = 259;
    mlir::Operation::emitOpError(a1, v21, &v26);
    v18 = v30;
LABEL_21:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
    result = (v18 & 1) == 0;
  }

  else
  {
LABEL_13:
    result = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::printAssembly(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[10] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC230A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC230A0))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>>();
    qword_27FC23098 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC230A0);
  }

  v11[4] = qword_27FC23098;
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[9] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC230B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC230B8))
  {
    qword_27FC230A8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>>();
    unk_27FC230B0 = v1;
    __cxa_guard_release(&qword_27FC230B8);
  }

  return qword_27FC230A8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<Empty>]";
  v6 = 120;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, 0);
  v10 = (*(*a3 + 16))(a3);
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

  v12 = (*(*a3 + 16))(a3);
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

  v14 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 2);
  if (!v7 || (v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v9 = *(v8 + 16)) == 0 || *(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
  {
    v23 = 257;
    mlir::Operation::emitOpError(a1, v22, &v27);
    if (v27)
    {
      mlir::Diagnostic::operator<<<19ul>(v28, "expects parent op ");
    }

    v21 = "'";
    v10 = mlir::InFlightDiagnostic::operator<<<char const*>(&v27, &v21);
    v26[0] = "scf.reduce";
    v26[1] = 10;
    v24 = v26;
    v25 = 1;
    v11 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v10, &v24);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<2ul>((v11 + 1), "'");
    }

    v13 = *(v12 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
    if (v13)
    {
      goto LABEL_17;
    }
  }

  if (mlir::OpTrait::impl::verifyIsTerminator(a1, v6))
  {
    v14 = *(**(*(a1 + 2) + 48) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v14 == (*(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v15 = 1;
    }

    else
    {
      v23 = 257;
      mlir::Operation::emitOpError(a1, v22, &v27);
      if (v27)
      {
        mlir::Diagnostic::operator<<<16ul>(v28, "must have type ");
        if (v27)
        {
          LODWORD(v24) = 4;
          v25 = v14;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v24, 1);
          v19 = v29 + 24 * v30;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v30;
          if (v27)
          {
            mlir::Diagnostic::operator<<<36ul>(v28, " (the type of the reduction inputs)");
          }
        }
      }

      v15 = v31 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
    }
  }

  else
  {
LABEL_17:
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::printAssembly(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 68);
  return *(a2 + 72);
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 24;
  __src[0] = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  __src[1] = v2;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, __src, &v5);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getInitsMutable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 44) & 0x800000) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 68);
  return *(a2 + 72);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  result = *(v3 + 48);
  v5 = (*(v3 + 56) - result) >> 3;
  return result;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getYieldedValuesMutable(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 32);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 68);
    v6 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[8] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  v8 = *(a2 + 44);
  v9 = *(((a2 + 64 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  if ((v8 & 0x800000) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v11 = 0;
    v12 = 2;
  }

  printInitializationList(a3, *(v10 + 48), (*(v10 + 56) - *(v10 + 48)) >> 3, v12, v11, " ", 1uLL);
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 32;
    *v14 = 14880;
    *(v13 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v13, " : ", 3uLL);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v15 = *(a2 + 68);
    v16 = *(a2 + 72);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v26[0] = v16;
  v26[1] = 0;
  v26[2] = v16;
  v26[3] = v15;
  v17 = *(a2 + 36);
  v18 = a2 - 16;
  if (!v17)
  {
    v18 = 0;
  }

  v25[0] = v18;
  v25[1] = 0;
  v25[2] = v18;
  v25[3] = v17;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a3, v26, v25);
  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  (*(*a3 + 224))(a3, ((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, 1, 0);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) - v22 > 3uLL)
  {
    *v22 = 544171040;
    *(v21 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v21, " do ", 4uLL);
  }

  (*(*a3 + 224))(a3, ((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24, 1, 1, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  return (*(*a3 + 200))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0);
}

uint64_t mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(unsigned int *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyNRegions(a1, 2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2))
  {
    goto LABEL_39;
  }

  v3 = a1[11];
  if ((v3 & 0x7FFFFF) == 0)
  {
LABEL_19:
    v10 = a1 + 16;
    if (!mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, ((&a1[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10], "before", 6, 0) || !mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, ((&v10[4 * ((a1[11] >> 23) & 1) + 1] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10] + 24, "after", 5, 1u))
    {
      goto LABEL_39;
    }

    v11 = (((&v10[4 * ((a1[11] >> 23) & 1) + 1] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    if (*v11 == v11 || ((v12 = v11[1]) != 0 ? (v13 = v12 - 8) : (v13 = 0), v14 = *(v13 + 32), v14 == v13 + 32))
    {
      v14 = 0;
    }

    else if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
    {
      if (v11[3] == v11 + 3 || ((v15 = v11[4]) != 0 ? (v16 = v15 - 8) : (v16 = 0), v14 = *(v16 + 32), v14 == v16 + 32))
      {
        v14 = 0;
      }

      else if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
      {
        result = 1;
        goto LABEL_40;
      }

      v23 = 261;
      v18 = "expects the 'after' region to terminate with 'scf.yield'";
      v19 = 56;
LABEL_36:
      v22[0] = v18;
      v22[1] = v19;
      mlir::Operation::emitOpError(a1, v22, &v24);
      if (v14)
      {
        mlir::Diagnostic::attachNote(v25, *(v14 + 24), 1);
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
      goto LABEL_39;
    }

    v23 = 261;
    v18 = "expects the 'before' region to terminate with 'scf.condition'";
    v19 = 61;
    goto LABEL_36;
  }

  v4 = 0;
  v5 = (((&a1[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  while (1)
  {
    if (v5 == *v5)
    {
      goto LABEL_9;
    }

    v6 = v5[1];
    if (v5 == v6 || v5 != *(v6 + 8))
    {
      break;
    }

    if (*(v6 + 24) == v6 + 24)
    {
      v23 = 257;
      mlir::Operation::emitOpError(a1, v22, &v24);
      if (v24)
      {
        mlir::Diagnostic::operator<<<26ul>(v25, "expects a non-empty block");
      }

      v9 = v26;
      goto LABEL_17;
    }

LABEL_9:
    ++v4;
    v5 += 3;
    if ((v3 & 0x7FFFFF) == v4)
    {
      goto LABEL_19;
    }
  }

  v21 = v4;
  v22[0] = "expects region #";
  v23 = 259;
  mlir::Operation::emitOpError(a1, v22, &v24);
  v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v21);
  v8 = v7;
  if (*v7)
  {
    mlir::Diagnostic::operator<<<23ul>((v7 + 1), " to have 0 or 1 blocks");
  }

  v9 = *(v8 + 200);
LABEL_17:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  if ((v9 & 1) == 0)
  {
    LODWORD(v3) = a1[11];
    goto LABEL_19;
  }

LABEL_39:
  result = 0;
LABEL_40:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyTypesAlongControlFlowEdges(a1, a2))
  {
    v4 = mlir::detail::verifyLoopLikeOpInterface(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
      v6 = *(a2 + 16);
      if (v6)
      {
        v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      }
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v8 = *(InterfaceFor + 16);

  return v8();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[12] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC230C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC230C8))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>>();
    qword_27FC230C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC230C8);
  }

  v11[4] = qword_27FC230C0;
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[11] = v3;
  do
  {
    v5 = v11[v4];
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

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC230E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC230E0))
  {
    qword_27FC230D0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>>();
    *algn_27FC230D8 = v1;
    __cxa_guard_release(&qword_27FC230E0);
  }

  return qword_27FC230D0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp, mlir::scf::ForOp, mlir::scf::IfOp, mlir::scf::IndexSwitchOp, mlir::scf::WhileOp>::Impl<Empty>]";
  v6 = 208;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v32[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v8 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v10 = *(a2 + 68);
      v11 = *(a2 + 72);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = (*(*a3 + 16))(a3);
    if (v10)
    {
      v13 = v12;
      (*(*a3 + 160))(a3, *(v11 + 24));
      v14 = v10 - 1;
      if (v14)
      {
        v15 = (v11 + 56);
        do
        {
          v16 = *(v13 + 4);
          if (*(v13 + 3) - v16 > 1uLL)
          {
            *v16 = 8236;
            *(v13 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v13, ", ", 2uLL);
          }

          v17 = *v15;
          v15 += 4;
          (*(*a3 + 160))(a3, v17);
          --v14;
        }

        while (v14);
      }
    }

    v18 = (*(*a3 + 16))(a3);
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

    v20 = (*(*a3 + 16))(a3);
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

    v22 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v24 = *(a2 + 68);
      if (v24)
      {
        v25 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v25 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v24 != 1)
        {
          v26 = v24 - 1;
          v27 = (v25 + 56);
          do
          {
            v28 = (*(*a3 + 16))(a3);
            v29 = *(v28 + 4);
            if (*(v28 + 3) - v29 > 1uLL)
            {
              *v29 = 8236;
              *(v28 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v28, ", ", 2uLL);
            }

            v30 = *v27;
            v27 += 4;
            (*(*a3 + 32))(a3, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v26;
          }

          while (v26);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v27[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = *(*(v8 + 48) + 16);
        v10 = v9 == &_MergedGlobals_50 || v9 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id;
        v11 = v10 || v9 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id;
        v12 = v11 || v9 == &unk_27FC22EA8;
        if (v12 || v9 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v24 = 257;
  mlir::Operation::emitOpError(a1, v23, &v26);
  if (v26)
  {
    mlir::Diagnostic::operator<<<19ul>(v27, "expects parent op ");
  }

  v22 = "to be one of '";
  v14 = mlir::InFlightDiagnostic::operator<<<char const*>(&v26, &v22);
  v25[2] = xmmword_2799BEC70;
  v25[3] = *&off_2799BEC80;
  v25[4] = xmmword_2799BEC90;
  v25[0] = xmmword_2799BEC50;
  v25[1] = *&off_2799BEC60;
  v21[0] = v25;
  v21[1] = 5;
  v15 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v14, v21);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<2ul>((v15 + 1), "'");
  }

  v17 = *(v16 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  if ((v17 & 1) == 0)
  {
LABEL_27:
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
  }

  else
  {
LABEL_25:
    IsTerminator = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t anonymous namespace::SCFInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void anonymous namespace::SCFInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 72);
      v6 = *(a2 + 68);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v14 = a3;
    v15 = 0;
    v16 = v5;
    v17 = 0;
    if (a4)
    {
      if (v6)
      {
        v7 = (v5 + 24);
        v8 = 1;
        do
        {
          v9 = mlir::ValueRange::dereference_iterator(&v14, v8 - 1);
          v10 = *v7;
          v7 += 4;
          v13 = v10;
          mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v9, &v13);
          v15 = v8;
          v17 = v8;
          if (a4 == v8)
          {
            break;
          }
        }

        while (v6 != v8++);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void SingleBlockExecuteInliner::~SingleBlockExecuteInliner(SingleBlockExecuteInliner *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t SingleBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v4 = *(v3 + 8);
  if (v4 == v3 || *(v4 + 8) != v3)
  {
    return 0;
  }

  replaceOpWithRegion(a3, a2, v4);
  return 1;
}

uint64_t replaceOpWithRegion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 32);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 68);
    v8 = *(v6 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  v9 = *(a2 + 16);
  (*(*a1 + 32))(a1);
  (**a1)(a1, a2, v8, v7);
  v10 = *(*a1 + 16);

  return v10(a1, v6);
}

const char *llvm::detail::getTypeNameImpl<SingleBlockExecuteInliner>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = SingleBlockExecuteInliner]";
  v6 = 87;
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

void MultiBlockExecuteInliner::~MultiBlockExecuteInliner(MultiBlockExecuteInliner *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t MultiBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 16);
  if (v5 && (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v7) || *(*(v7 + 48) + 16) == &_MergedGlobals_50)
  {
    mlir::RewriterBase::splitBlock(a3, *(a2 + 16));
  }

  result = 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<MultiBlockExecuteInliner>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = MultiBlockExecuteInliner]";
  v6 = 86;
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

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::scf::ForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_2>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = **a1;
  while (1)
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v5)
    {
      break;
    }

    v2 = *(v5 + 16);
    result = v2 != 0;
    if (v2 == v3 || v2 == 0)
    {
      return result;
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "tensor.insert_slice";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void anonymous namespace::ForOpIterArgsFolder::~ForOpIterArgsFolder(_anonymous_namespace_::ForOpIterArgsFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ForOpIterArgsFolder::matchAndRewrite(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v76[8] = *MEMORY[0x277D85DE8];
  v52 = a2;
  v4 = a2[9];
  v49 = &v51;
  v50 = xmmword_25D0A0580;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v49, &v51, v4, 1);
  }

  v62[0] = v63;
  v62[1] = 0x400000000;
  v59 = v61;
  v60 = 0x400000000;
  v56 = v58;
  v57 = 0x400000000;
  v53 = v55;
  v54 = 0x400000000;
  if (v4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v62, v63, v4 + 1, 8);
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v62, 0);
  mlir::scf::ForOp::getODSOperands(&v52, 3u);
  if (v5 > HIDWORD(v60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v5, 8);
  }

  if (HIDWORD(v57) < v4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v4, 8);
  }

  if (HIDWORD(v54) < v4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v55, v4, 8);
  }

  ODSOperands = mlir::scf::ForOp::getODSOperands(&v52, 3u);
  v8 = v7;
  v9 = *(v52 + 9);
  v10 = *(((v52 + 16 * ((*(v52 + 11) >> 23) & 1) + ((*(v52 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v11 + 48);
  v12 = *(v11 + 56);
  if (v9)
  {
    v14 = v52 - 16;
  }

  else
  {
    v14 = 0;
  }

  YieldedValues = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(v52);
  v64 = ODSOperands;
  v65 = 0;
  v66 = (v13 + 8);
  v67 = v14;
  v48 = v14;
  v68 = 0;
  v69 = YieldedValues;
  v70 = 0;
  if (v8)
  {
    v17 = v13 + 8 == v12 || v9 == 0;
    if (!v17 && v16 != 0)
    {
      v43 = a3;
      v19 = 0;
      v44 = 0;
      v45 = v16 - 1;
      v46 = v9 - 1;
      v20 = (ODSOperands + 24);
      v47 = v8 - 1;
      v21 = 16;
      v22 = v14;
      while (1)
      {
        if (v19)
        {
          v23 = v48;
          v24 = v48[1] & 7;
          v25 = v19;
          if (v24 != 6)
          {
            v26 = (5 - v24);
            v27 = v22;
            v25 = v19 - v26;
            if (v19 <= v26)
            {
              goto LABEL_32;
            }

            v23 = &v48[-2 * v26];
          }

          v27 = &v23[-3 * v25];
        }

        else
        {
          v27 = v48;
        }

LABEL_32:
        v28 = *v20;
        v29 = mlir::ValueRange::dereference_iterator(&v69, v19);
        v30 = *(v13 + 8 * v19 + 8);
        if (v30 == v29 || v28 == v29)
        {
          llvm::SmallVectorTemplateBase<BOOL,true>::push_back(&v49, 0);
LABEL_38:
          v44 = 1;
          goto LABEL_47;
        }

        v32 = v29;
        if (*v30)
        {
          llvm::SmallVectorTemplateBase<BOOL,true>::push_back(&v49, 1);
        }

        else
        {
          v33 = *v27;
          v34 = *v27 == 0;
          v35 = !v34;
          llvm::SmallVectorTemplateBase<BOOL,true>::push_back(&v49, v35);
          if (!v33)
          {
            goto LABEL_38;
          }

          v44 |= v34;
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v59, v28);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v56, v32);
        v28 = 0;
LABEL_47:
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v62, v28);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, v28);
        v65 = v19 + 1;
        v66 = (v13 + v21);
        v68 = v19 + 1;
        v70 = v19 + 1;
        if (v47 != v19 && v13 + v21 != v12 && v46 != v19)
        {
          v22 -= 2;
          v21 += 8;
          v20 += 4;
          v17 = v45 == v19++;
          if (!v17)
          {
            continue;
          }
        }

        if (v44)
        {
          v36 = *(v52 + 3);
          v37 = *(mlir::scf::ForOp::getODSOperands(&v52, 0) + 24);
          v38 = *(mlir::scf::ForOp::getODSOperands(&v52, 1u) + 24);
          v39 = *(mlir::scf::ForOp::getODSOperands(&v52, 2u) + 24);
          v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ForOp>(v43 + 8, *(**v36 + 32));
          v64 = v36;
          v65 = v40;
          v66 = &v68;
          v67 = 0x400000000;
          v71 = v73;
          v72 = 0x400000000;
          v73[4] = v74;
          v73[5] = 0x400000000;
          v74[8] = 4;
          v74[9] = v75;
          v74[10] = 0x100000000;
          v75[1] = v76;
          v75[2] = 0x100000000;
          v76[2] = 0;
          v76[1] = 0;
          v76[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v76[4] = 0;
          v76[6] = 0;
          mlir::scf::ForOp::build(v43 + 8, &v64, v37, v38, v39, v59 & 0xFFFFFFFFFFFFFFF9, v60);
        }

        break;
      }
    }
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (v56 != v58)
  {
    free(v56);
  }

  if (v59 != v61)
  {
    free(v59);
  }

  if (v62[0] != v63)
  {
    free(v62[0]);
  }

  if (v49 != &v51)
  {
    free(v49);
  }

  v41 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ForOpIterArgsFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ForOpIterArgsFolder]";
  v6 = 104;
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

void anonymous namespace::SimplifyTrivialLoops::~SimplifyTrivialLoops(_anonymous_namespace_::SimplifyTrivialLoops *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t, uint64_t))
{
  v66[4] = *MEMORY[0x277D85DE8];
  v57 = a2;
  v4 = *(mlir::scf::ForOp::getODSOperands(&v57, 0) + 24);
  if (v4 == *(mlir::scf::ForOp::getODSOperands(&v57, 1u) + 24))
  {
    goto LABEL_62;
  }

  v5 = *(mlir::scf::ForOp::getODSOperands(&v57, 0) + 24);
  v6 = *(mlir::scf::ForOp::getODSOperands(&v57, 1u) + 24);
  v62 = 0;
  v63 = 0;
  v64 = &v63;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = *(v7 + 8) & 7;
    if (v8 == 6)
    {
      v9 = v7 + 24 * *(v7 + 16);
      v10 = v9 + 120;
      if (v9 == -120)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v10 = v7 + 16 * v8 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v64, v10))
    {
      v60 = &v62;
      v11 = (~*(v6 + 8) & 7) != 0 ? v6 : 0;
      if (v11)
      {
        v12 = *(v11 + 8) & 7;
        if (v12 == 6)
        {
          v13 = v11 + 24 * *(v11 + 16);
          v14 = v13 + 120;
          if (v13 == -120)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v14 = v11 + 16 * v12 + 16;
        }

        if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v60, v14))
        {
          LODWORD(v65) = *(v63 + 24);
          if (v65 > 0x40)
          {
            operator new[]();
          }

          v64 = *(v63 + 16);
          if (*(v62 + 24) > 0x40u)
          {
            operator new[]();
          }

          v49 = *(v62 + 16);
          v55 = *(v62 + 24);
          __src = v49;
          llvm::APInt::operator-=(&__src, &v64);
          v50 = v55;
          v55 = 0;
          if (v50 > 0x40)
          {
            v29 = *__src;
            if (__src)
            {
              MEMORY[0x25F891010](__src, 0x1000C8000313F17);
              if (v55 >= 0x41)
              {
                if (__src)
                {
                  MEMORY[0x25F891010](__src, 0x1000C8000313F17);
                }
              }
            }
          }

          else if (v50)
          {
            v29 = (__src << -v50) >> -v50;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_58;
        }
      }
    }
  }

LABEL_22:
  LODWORD(v65) = 1;
  v64 = 0;
  v60 = v5;
  v61 = &v64;
  if ((~*(v6 + 8) & 7) != 0)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16);
      v18 = v17 + 120;
      if (v17 == -120)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 = v15 + 16 * v16 + 16;
    }

    if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id && (*(v18 + 46) & 0x80) != 0 && *(v18 + 68) == 2)
    {
      v19 = *(*(v18 + 72) + 24);
      if (mlir::detail::matchOperandOrValueAtIndex<mlir::detail::constant_int_value_binder>(v18, 1u, &v61) && v5 == v19)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_37:
  v58 = &v64;
  v59 = v5;
  if ((~*(v6 + 8) & 7) != 0)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_52;
  }

  v22 = *(v21 + 8) & 7;
  if (v22 != 6)
  {
    v24 = v21 + 16 * v22 + 16;
LABEL_45:
    if (*(*(v24 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id || (*(v24 + 46) & 0x80) == 0 || *(v24 + 68) != 2)
    {
      goto LABEL_52;
    }

    if (!mlir::detail::matchOperandOrValueAtIndex<mlir::detail::constant_int_value_binder>(v24, 0, &v58) || v59 != *(*(v24 + 72) + 56))
    {
      goto LABEL_52;
    }

LABEL_65:
    if (v65 > 0x40)
    {
      v38 = *v64;
    }

    else if (v65)
    {
      v38 = (v64 << -v65) >> -v65;
    }

    else
    {
      v38 = 0;
    }

    v28 = v38 & 0xFFFFFFFFFFFFFF00;
    v26 = v38;
    v27 = 1;
    goto LABEL_53;
  }

  v23 = v21 + 24 * *(v21 + 16);
  v24 = v23 + 120;
  if (v23 != -120)
  {
    goto LABEL_45;
  }

LABEL_52:
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_53:
  if (v65 >= 0x41 && v64)
  {
    MEMORY[0x25F891010](v64, 0x1000C8000313F17);
  }

  if (!v27)
  {
    goto LABEL_63;
  }

  v29 = v28 | v26;
LABEL_58:
  if (v29 <= 0)
  {
LABEL_62:
    v32 = v57;
    ODSOperands = mlir::scf::ForOp::getODSOperands(&v57, 3u);
    (**a3)(a3, v32, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v34);
    v35 = 1;
    goto LABEL_64;
  }

  mlir::scf::ForOp::getConstantStep(&__src, &v57);
  if (v56 != 1)
  {
LABEL_63:
    v35 = 0;
    goto LABEL_64;
  }

  v30 = v55;
  LODWORD(v61) = v55;
  if (v55 > 0x40)
  {
    operator new[]();
  }

  v31 = __src;
  v60 = __src;
  if (llvm::APInt::slt(&v60, v29))
  {
    v39 = *(((v57 + 16 * ((*(v57 + 44) >> 23) & 1) + ((*(v57 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 40) + 8);
    v40 = v39 - 8;
    if (!v39)
    {
      v40 = 0;
    }

    v41 = *(v40 + 40);
    v42 = v40 + 32;
    {
      v35 = 0;
      goto LABEL_82;
    }

    v51 = v57;
    v52 = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(v57);
    (**a3)(a3, v51, v52, v53);
  }

  else
  {
    v64 = v66;
    v65 = 0x400000000;
    mlir::scf::ForOp::getODSOperands(&v57, 3u);
    if (v45 + 1 > HIDWORD(v65))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v45 + 1, 8);
    }

    v46 = mlir::scf::ForOp::getODSOperands(&v57, 0);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v64, *(v46 + 24));
    v47 = mlir::scf::ForOp::getODSOperands(&v57, 3u);
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v64, v64 + 8 * v65, v47, 0, v47, v48);
    replaceOpWithRegion(a3, v57, *(((v57 + 16 * ((*(v57 + 44) >> 23) & 1) + ((*(v57 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v57 + 40) + 8));
    if (v64 != v66)
    {
      free(v64);
    }
  }

  v35 = 1;
LABEL_82:
  if (v61 >= 0x41 && v60)
  {
    MEMORY[0x25F891010](v60, 0x1000C8000313F17);
  }

  if (v30 >= 0x41 && v31)
  {
    MEMORY[0x25F891010](v31, 0x1000C8000313F17);
  }

LABEL_64:
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}