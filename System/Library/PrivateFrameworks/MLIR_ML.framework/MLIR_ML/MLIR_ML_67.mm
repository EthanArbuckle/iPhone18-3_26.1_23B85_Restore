BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17TensorAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::TensorAxisRefAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::interleave<mlir::silc::TensorAxisRefAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::raw_ostream,mlir::silc::TensorAxisRefAttr const>(mlir::silc::TensorAxisRefAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(uint64_t result, void *a2, mlir::AsmPrinter *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v21[9] = v5;
    v21[10] = v6;
    v11 = result;
    v21[0] = *result;
    result = (*(*a3 + 56))(a3);
    if ((result & 1) == 0)
    {
      v12 = (*(*a3 + 16))(a3);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::silc::TensorAxisRefAttr::print(v21, a3);
      result = (*(*v12 + 80))(v12);
      if (v13 == result + v12[4] - v12[2])
      {
        result = (*(*a3 + 40))(a3, v21[0]);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v15 = *a5;
      v16 = *(a5 + 8);
      v17 = a4[4];
      if (v16 <= a4[3] - v17)
      {
        if (v16)
        {
          v18 = *(a5 + 8);
          memcpy(v17, v15, v16);
          a4[4] += v18;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v15, v16);
      }

      v21[0] = *i;
      result = (*(*a3 + 56))(a3);
      if ((result & 1) == 0)
      {
        v19 = (*(*a3 + 16))(a3);
        v20 = (*(*v19 + 80))(v19) + v19[4] - v19[2];
        mlir::silc::TensorAxisRefAttr::print(v21, a3);
        result = (*(*v19 + 80))(v19);
        if (v20 == result + v19[4] - v19[2])
        {
          result = (*(*a3 + 40))(a3, v21[0]);
        }
      }
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

uint64_t mlir::silc::allSliceShape(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char **a5)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = v5 - *a3;
  v9 = *a4;
  v8 = a4[1];
  if (v7 != v8 - *a4)
  {
    return 0;
  }

  v10 = v7 >> 1;
  if (v7 >> 1 > ((a1[1] - *a1) >> 3))
  {
    return 0;
  }

  v11 = *(a2 + 8);
  v12 = (v11 - *a2) >> 3;
  if (v10 > v12)
  {
    return 0;
  }

  if (a5 != a2)
  {
    v14 = a5;
    v15 = a1;
    std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(a5, *a2, v11, v12);
    a1 = v15;
    v9 = *a4;
    v8 = a4[1];
    v6 = *a3;
    v5 = a3[1];
    if (*a4 == v8)
    {
      return 1;
    }

LABEL_9:
    if (v6 != v5)
    {
      v18 = *a1;
      v19 = *v14;
      v20 = v6 + 2;
      v21 = v9 + 2;
      do
      {
        *&v19[8 * *(v20 - 2)] /= *(v18 + 8 * *(v21 - 2));
        if (v21 == v8)
        {
          break;
        }

        v21 += 2;
        v22 = v20 == v5;
        v20 += 2;
      }

      while (!v22);
    }

    return 1;
  }

  v14 = a5;
  if (v9 != v8)
  {
    goto LABEL_9;
  }

  return 1;
}

uint64_t mlir::silc::allGatherShape(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char **a5)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = v5 - *a3;
  v9 = *a4;
  v8 = a4[1];
  if (v7 != v8 - *a4)
  {
    return 0;
  }

  v10 = v7 >> 1;
  if (v7 >> 1 > ((a1[1] - *a1) >> 3))
  {
    return 0;
  }

  v11 = *(a2 + 8);
  v12 = (v11 - *a2) >> 3;
  if (v10 > v12)
  {
    return 0;
  }

  if (a5 != a2)
  {
    v14 = a5;
    v15 = a1;
    std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(a5, *a2, v11, v12);
    a1 = v15;
    v9 = *a4;
    v8 = a4[1];
    v6 = *a3;
    v5 = a3[1];
    if (*a4 == v8)
    {
      return 1;
    }

LABEL_9:
    if (v6 != v5)
    {
      v18 = *a1;
      v19 = *v14;
      v20 = v6 + 2;
      v21 = v9 + 2;
      do
      {
        *&v19[8 * *(v20 - 2)] *= *(v18 + 8 * *(v21 - 2));
        if (v21 == v8)
        {
          break;
        }

        v21 += 2;
        v22 = v20 == v5;
        v20 += 2;
      }

      while (!v22);
    }

    return 1;
  }

  v14 = a5;
  if (v9 != v8)
  {
    goto LABEL_9;
  }

  return 1;
}

BOOL mlir::silc::SilcMeshOp::verify(mlir::SymbolTable **this)
{
  v33 = *MEMORY[0x277D85DE8];
  if (mlir::SymbolTable::lookupNearestSymbolFrom(*this, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9)))
  {
    return 1;
  }

  v17 = 257;
  mlir::OpState::emitError(this, v16, &v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "Mesh not in symbol table: @";
    v19 = 27;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v23 + 24 * v24;
    v4 = v18;
    *(v3 + 2) = v19;
    *v3 = v4;
    ++v24;
  }

  *&v18 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v6;
    mlir::Diagnostic::operator<<(&v22, &v18);
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v21);
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

    v7 = __p;
    if (__p)
    {
      v8 = v30;
      v9 = __p;
      if (v30 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v30 = v7;
      operator delete(v9);
    }

    v10 = v27;
    if (v27)
    {
      v11 = v28;
      v12 = v27;
      if (v28 != v27)
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
        v12 = v27;
      }

      v28 = v10;
      operator delete(v12);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }

  return v2;
}

unint64_t mlir::silc::SilcSPMDCallOp::getCallableForCallee(mlir::silc::SilcSPMDCallOp *this)
{
  v1 = *this;
  if (!*(*this + 47) || (result = mlir::Operation::getInherentAttr(*this, "callee", 6), (v3 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(v1 + 56, "callee", 6uLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      result &= ~4uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::silc::SilcSPMDCallOp::setCalleeFromCallable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v8 = 261;
  v7[0] = "callee";
  v7[1] = 6;
  v6 = mlir::StringAttr::get(Context, v7, v5);
  mlir::Operation::setAttr(v3, v6, a2 & 0xFFFFFFFFFFFFFFF8);
}

BOOL mlir::silc::detail::isBufferizedAndPromotedType(mlir::silc::detail *this, const mlir::Type *a2)
{
  v2 = *this;
  if (*(**this + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::MemRefType::getShape(&v5);
  return v3 > 3;
}

BOOL mlir::silc::SilcAllSliceOp::isConverted(mlir::silc::SilcAllSliceOp *this)
{
  if (*(*this + 36))
  {
    v1 = *this - 16;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v1, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::MemRefType::getShape(&v5);
  return v3 > 3;
}

BOOL mlir::silc::SilcAllGatherOp::isConverted(mlir::silc::SilcAllGatherOp *this)
{
  if (*(*this + 36))
  {
    v1 = *this - 16;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v1, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::MemRefType::getShape(&v5);
  return v3 > 3;
}

BOOL mlir::silc::SilcAllReduceOp::isConverted(mlir::silc::SilcAllReduceOp *this)
{
  if (*(*this + 36))
  {
    v1 = *this - 16;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v1, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return 0;
  }

  mlir::MemRefType::getShape(&v5);
  return v3 > 3;
}

uint64_t mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::SilcAllGatherOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::silc::SilcAllGatherOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'silc.all_gather' op requires attribute 'sharding'";
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

uint64_t mlir::silc::SilcAllGatherOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "sharding", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
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

uint64_t mlir::silc::SilcAllGatherOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "sharding", 8, *a2);
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

unint64_t mlir::silc::SilcAllGatherOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::silc::SilcAllGatherOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x676E696472616873)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::silc::SilcAllGatherOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x676E696472616873)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
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

uint64_t mlir::silc::SilcAllGatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "sharding", 8uLL, *a2);
  }

  return result;
}

uint64_t mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: Describes the sharding of a tensor";
        v22 = 66;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::silc::SilcAllGatherOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::silc::ShardingAttr>(a1, v2) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::silc::ShardingAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
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

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::ShardingAttr]";
  *(&v28 + 1) = 74;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
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

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
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

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::silc::SilcAllGatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a4;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::silc::SilcAllGatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a6;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a5;
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v13);
      *(v14 + 8 * v13++) = result;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
  return result;
}

uint64_t mlir::silc::SilcAllGatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::silc::SilcAllGatherOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v103 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v93 = v2;
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v3, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v93) & 1) == 0 || (mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *(*this + 9) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    if ((mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v6)
    {
      goto LABEL_42;
    }

    v7 = *v6;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v83 = v7;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v83 + 8);
      v10 = *(v83 + 16);
      if (!v10)
      {
        goto LABEL_42;
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
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v26 = v11[1];
LABEL_43:
      v93 = v6;
      v94 = v26;
      mlir::ShapedType::getShape(&v93);
      v28 = v27;
      if (*(*this + 9))
      {
        v29 = *this - 16;
      }

      else
      {
        v29 = 0;
      }

      v30 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        v31 = *v30;
        {
          v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v33 = v31[1];
          v34 = *(v31 + 4);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v82 = v31;
          v84 = v30;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v30 = v84;
          v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v33 = v82[1];
          v34 = *(v82 + 4);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        v35 = v33;
        v36 = v34;
        do
        {
          v37 = v36 >> 1;
          v38 = &v35[2 * (v36 >> 1)];
          v40 = *v38;
          v39 = v38 + 2;
          v36 += ~(v36 >> 1);
          if (v40 < v32)
          {
            v35 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        while (v36);
        if (v35 != &v33[2 * v34] && *v35 == v32)
        {
          v54 = v35[1];
          v90 = v30;
          v91 = v54;
          mlir::ShapedType::getShape(&v90);
          if (v28 != v55)
          {
            goto LABEL_106;
          }

          goto LABEL_61;
        }
      }

LABEL_60:
      v90 = v30;
      v91 = 0;
      mlir::ShapedType::getShape(&v90);
      if (v28 != v41)
      {
        goto LABEL_106;
      }

LABEL_61:
      if (*(*this + 9))
      {
        v42 = *this - 16;
      }

      else
      {
        v42 = 0;
      }

      v43 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v43)
      {
        goto LABEL_79;
      }

      v44 = *v43;
      {
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        if (v47)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v85 = v44;
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v85 + 8);
        v47 = *(v85 + 16);
        if (v47)
        {
LABEL_67:
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
LABEL_77:
          if (v48 != &v46[2 * v47] && *v48 == v45)
          {
            v56 = v48[1];
LABEL_80:
            v89[0] = v43;
            v89[1] = v56;
            mlir::ShapedType::getShape(v89);
            v58 = v57;
            v59 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v59)
            {
              goto LABEL_94;
            }

            v60 = *v59;
            {
              v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v62 = *(v60 + 8);
              v63 = *(v60 + 16);
              if (v63)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v86 = v59;
              v70 = v60;
              mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
              v59 = v86;
              v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v62 = *(v70 + 8);
              v63 = *(v70 + 16);
              if (v63)
              {
LABEL_83:
                v64 = v62;
                v65 = v63;
                do
                {
                  v66 = v65 >> 1;
                  v67 = &v64[2 * (v65 >> 1)];
                  v69 = *v67;
                  v68 = v67 + 2;
                  v65 += ~(v65 >> 1);
                  if (v69 < v61)
                  {
                    v64 = v68;
                  }

                  else
                  {
                    v65 = v66;
                  }
                }

                while (v65);
LABEL_92:
                if (v64 != &v62[2 * v63] && *v64 == v61)
                {
                  v79 = v64[1];
                  v87 = v59;
                  v88 = v79;
                  mlir::ShapedType::getShape(&v87);
                  if (v58 == v80)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_106;
                }

LABEL_94:
                v87 = v59;
                v88 = 0;
                mlir::ShapedType::getShape(&v87);
                if (v58 == v71)
                {
LABEL_95:
                  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
                  if (*(*this + 9))
                  {
                    v73 = *this - 16;
                  }

                  else
                  {
                    v73 = 0;
                  }

                  v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, 0);
                  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v74))
                  {
                    v75 = *(*this + 9) ? *this - 16 : 0;
                    v76 = mlir::detail::OpResultImpl::getNextResultAtOffset(v75, 0);
                    v77 = mlir::getElementTypeOrSelf(v76);
                    if (v77 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
                    {
                      return 1;
                    }
                  }

                  v78 = "failed to verify that all of {input, result} have same element type";
                  goto LABEL_107;
                }

LABEL_106:
                v78 = "failed to verify that all of {input, result} have same rank";
LABEL_107:
                v90 = v78;
                v92 = 259;
                mlir::OpState::emitOpError(this, &v90, &v93);
                v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
                if (v93)
                {
                  mlir::InFlightDiagnostic::report(&v93);
                }

                if (v102 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v94);
                }

                return v17;
              }
            }

            v63 = 0;
            v64 = v62;
            goto LABEL_92;
          }

LABEL_79:
          v56 = 0;
          goto LABEL_80;
        }
      }

      v47 = 0;
      v48 = v46;
      goto LABEL_77;
    }

LABEL_42:
    v26 = 0;
    goto LABEL_43;
  }

  v90 = "requires attribute 'sharding'";
  v92 = 259;
  mlir::OpState::emitOpError(this, &v90, &v93);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
  if (v93)
  {
    mlir::InFlightDiagnostic::report(&v93);
  }

  if (v102 == 1)
  {
    if (v101 != &v102)
    {
      free(v101);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v100;
      v20 = __p;
      if (v100 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v100 = v18;
      operator delete(v20);
    }

    v21 = v97;
    if (v97)
    {
      v22 = v98;
      v23 = v97;
      if (v98 != v97)
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
        v23 = v97;
      }

      v98 = v21;
      operator delete(v23);
    }

    if (v95 != &v96)
    {
      free(v95);
    }
  }

  return v17;
}

uint64_t mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v130 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(*a2 + 17);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = v10[1];
      v15 = *(v10 + 4);
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = v10;
      mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v14 = v22[1];
      v15 = *(v22 + 4);
      if (!v15)
      {
        goto LABEL_18;
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
      v24 = v16[1];
      v118 = a2;
      v119 = v24;
      hasRank = mlir::ShapedType::hasRank(&v118);
      v10 = *a2;
      if (!hasRank)
      {
        goto LABEL_44;
      }

LABEL_21:
      {
        v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v27 = v10[1];
        v28 = *(v10 + 4);
        if (!v28)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v105 = v10;
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v27 = v105[1];
        v28 = *(v105 + 4);
        if (!v28)
        {
          goto LABEL_33;
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
      if (v29 != &v27[2 * v28] && *v29 == v26)
      {
        v45 = v29[1];
        v107 = a2;
        v108 = v45;
        mlir::ShapedType::getShape(&v107);
        v10 = *a2;
        if (v46 < 1)
        {
          goto LABEL_44;
        }

LABEL_34:
        {
          v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v37 = v10[1];
          v38 = *(v10 + 4);
          if (!v38)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v102 = v10;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v37 = v102[1];
          v38 = *(v102 + 4);
          if (!v38)
          {
            goto LABEL_133;
          }
        }

        v39 = v37;
        v40 = v38;
        do
        {
          v41 = v40 >> 1;
          v42 = &v39[2 * (v40 >> 1)];
          v44 = *v42;
          v43 = v42 + 2;
          v40 += ~(v40 >> 1);
          if (v44 < v36)
          {
            v39 = v43;
          }

          else
          {
            v40 = v41;
          }
        }

        while (v40);
        if (v39 != &v37[2 * v38] && *v39 == v36)
        {
          v103 = v39[1];
          goto LABEL_135;
        }

LABEL_133:
        v103 = 0;
LABEL_135:
        *&v116 = a2;
        *(&v116 + 1) = v103;
        mlir::ShapedType::getElementType(&v116);
        return 1;
      }

LABEL_33:
      v107 = a2;
      v108 = 0;
      mlir::ShapedType::getShape(&v107);
      v10 = *a2;
      if (v35 < 1)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

LABEL_18:
    v118 = a2;
    v119 = 0;
    v23 = mlir::ShapedType::hasRank(&v118);
    v10 = *a2;
    if (!v23)
    {
      goto LABEL_44;
    }

    goto LABEL_21;
  }

LABEL_44:
  if (v10[17] == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = v10[1];
      v68 = *(v10 + 4);
      if (!v68)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v75 = v10;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v66 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v67 = v75[1];
      v68 = *(v75 + 4);
      if (!v68)
      {
        goto LABEL_98;
      }
    }

    v69 = v67;
    v70 = v68;
    do
    {
      v71 = v70 >> 1;
      v72 = &v69[2 * (v70 >> 1)];
      v74 = *v72;
      v73 = v72 + 2;
      v70 += ~(v70 >> 1);
      if (v74 < v66)
      {
        v69 = v73;
      }

      else
      {
        v70 = v71;
      }
    }

    while (v70);
    if (v69 != &v67[2 * v68] && *v69 == v66)
    {
      v86 = v69[1];
      v114 = a2;
      v115 = v86;
      mlir::ShapedType::getElementType(&v114);
      v76 = *a2;
      {
LABEL_99:
        v77 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v78 = v76[1];
        v79 = *(v76 + 4);
        if (!v79)
        {
          goto LABEL_111;
        }

LABEL_100:
        v80 = v78;
        v81 = v79;
        do
        {
          v82 = v81 >> 1;
          v83 = &v80[2 * (v81 >> 1)];
          v85 = *v83;
          v84 = v83 + 2;
          v81 += ~(v81 >> 1);
          if (v85 < v77)
          {
            v80 = v84;
          }

          else
          {
            v81 = v82;
          }
        }

        while (v81);
        if (v80 != &v78[2 * v79] && *v80 == v77)
        {
          v87 = v80[1];
          v112 = a2;
          v113 = v87;
          if (!mlir::ShapedType::hasRank(&v112))
          {
            goto LABEL_45;
          }

          goto LABEL_114;
        }

LABEL_111:
        v112 = a2;
        v113 = 0;
        if (!mlir::ShapedType::hasRank(&v112))
        {
          goto LABEL_45;
        }

LABEL_114:
        v88 = *a2;
        {
          v89 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v90 = v88[1];
          v91 = *(v88 + 4);
          if (!v91)
          {
            goto LABEL_126;
          }
        }

        else
        {
          v98 = v88;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v89 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v90 = v98[1];
          v91 = *(v98 + 4);
          if (!v91)
          {
            goto LABEL_126;
          }
        }

        v92 = v90;
        v93 = v91;
        do
        {
          v94 = v93 >> 1;
          v95 = &v92[2 * (v93 >> 1)];
          v97 = *v95;
          v96 = v95 + 2;
          v93 += ~(v93 >> 1);
          if (v97 < v89)
          {
            v92 = v96;
          }

          else
          {
            v93 = v94;
          }
        }

        while (v93);
        if (v92 != &v90[2 * v91] && *v92 == v89)
        {
          v100 = v92[1];
          v110 = a2;
          v111 = v100;
          mlir::ShapedType::getShape(&v110);
          if (v101 < 1)
          {
            goto LABEL_45;
          }

          return 1;
        }

LABEL_126:
        v110 = a2;
        v111 = 0;
        mlir::ShapedType::getShape(&v110);
        if (v99 < 1)
        {
          goto LABEL_45;
        }

        return 1;
      }

LABEL_108:
      v106 = v76;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v77 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v78 = v106[1];
      v79 = *(v106 + 4);
      if (!v79)
      {
        goto LABEL_111;
      }

      goto LABEL_100;
    }

LABEL_98:
    v114 = a2;
    v115 = 0;
    mlir::ShapedType::getElementType(&v114);
    v76 = *a2;
    {
      goto LABEL_99;
    }

    goto LABEL_108;
  }

LABEL_45:
  v109 = 261;
  v107 = a3;
  v108 = a4;
  mlir::Operation::emitOpError(&v118, a1, &v107);
  if (v118)
  {
    LODWORD(v116) = 3;
    *(&v116 + 1) = " #";
    v117 = 2;
    if (v121 >= v122)
    {
      if (v120 > &v116 || v120 + 24 * v121 <= &v116)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v47 = v120 + 24 * v121;
    v48 = v116;
    *(v47 + 2) = v117;
    *v47 = v48;
    v49 = ++v121;
    if (v118)
    {
      LODWORD(v116) = 5;
      *(&v116 + 1) = a5;
      if (v49 >= v122)
      {
        if (v120 > &v116 || v120 + 24 * v49 <= &v116)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v50 = v120 + 24 * v121;
      v51 = v116;
      *(v50 + 2) = v117;
      *v50 = v51;
      v52 = ++v121;
      if (v118)
      {
        LODWORD(v116) = 3;
        *(&v116 + 1) = " must be non-0-ranked.tensor of any type values or non-0-ranked.memref of any type values, but got ";
        v117 = 99;
        if (v52 >= v122)
        {
          if (v120 > &v116 || v120 + 24 * v52 <= &v116)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v53 = v120 + 24 * v121;
        v54 = v116;
        *(v53 + 2) = v117;
        *v53 = v54;
        ++v121;
        if (v118)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v116, a2);
          if (v121 >= v122)
          {
            if (v120 > &v116 || v120 + 24 * v121 <= &v116)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v55 = v120 + 24 * v121;
          v56 = v116;
          *(v55 + 2) = v117;
          *v55 = v56;
          ++v121;
        }
      }
    }
  }

  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v118);
  if (v118)
  {
    mlir::InFlightDiagnostic::report(&v118);
  }

  if (v129 == 1)
  {
    if (v128 != &v129)
    {
      free(v128);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v127;
      v60 = __p;
      if (v127 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v127 = v58;
      operator delete(v60);
    }

    v61 = v124;
    if (v124)
    {
      v62 = v125;
      v63 = v124;
      if (v125 != v124)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x259C63150](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        v63 = v124;
      }

      v125 = v61;
      operator delete(v63);
    }

    if (v120 != &v123)
    {
      free(v120);
    }
  }

  return v57;
}

uint64_t mlir::silc::SilcAllGatherOp::parse(mlir::silc::SilcAllGatherOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15 = 0;
  v16 = 0;
  Inputs = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v21 = 257;
  if (((*(*this + 400))(this, "on", 2, v20) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ShardingAttr>(this, &v16, 0))
  {
    return 0;
  }

  if (v16)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v16;
  }

  v13 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 1);
  v20[0] = this;
  v20[1] = &v13;
  v20[2] = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v7, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllGatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, v20))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(v20);
  v15 = v8;
  Results = mlir::FunctionType::getResults(v20);
  mlir::OperationState::addTypes(a2, Results, v10);
  v11 = (*(*this + 16))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v17, &Inputs, v11, a2 + 16) & 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ShardingAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12ShardingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::SilcAllReduceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::silc::SilcAllReduceOpAdaptor::verify(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    if (a1[4])
    {
      if (a1[5])
      {
        v4 = *(*v3 + 136);
        if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
        {
          return 1;
        }

        if (v4 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v3 = 0;
        }

        v30[0] = v3;
        if (v3)
        {
          mlir::SymbolRefAttr::getNestedReferences(v30);
          if (!v5)
          {
            return 1;
          }
        }

        v28[0] = "'silc.all_reduce' op attribute 'mesh' failed to satisfy constraint: mesh attr or flat mesh symbol reference attr";
        v29 = 259;
        mlir::emitError(a2, v28, v30);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
        return v6;
      }

      v28[0] = "'silc.all_reduce' op requires attribute 'reduce_op'";
      v29 = 259;
      mlir::emitError(a2, v28, v30);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
      if (v30[0])
      {
        mlir::InFlightDiagnostic::report(v30);
      }

      if (v38 == 1)
      {
        if (v37 != &v38)
        {
          free(v37);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v36;
          v23 = __p;
          if (v36 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v36 = v21;
          operator delete(v23);
        }

        v10 = v33;
        if (!v33)
        {
          goto LABEL_60;
        }

        v24 = v34;
        v12 = v33;
        if (v34 == v33)
        {
LABEL_59:
          v34 = v10;
          operator delete(v12);
LABEL_60:
          if (v31 != &v32)
          {
            free(v31);
          }

          return v6;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v10);
LABEL_58:
        v12 = v33;
        goto LABEL_59;
      }
    }

    else
    {
      v28[0] = "'silc.all_reduce' op requires attribute 'mesh_axes'";
      v29 = 259;
      mlir::emitError(a2, v28, v30);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
      if (v30[0])
      {
        mlir::InFlightDiagnostic::report(v30);
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

        v10 = v33;
        if (!v33)
        {
          goto LABEL_60;
        }

        v18 = v34;
        v12 = v33;
        if (v34 == v33)
        {
          goto LABEL_59;
        }

        do
        {
          v20 = *--v18;
          v19 = v20;
          *v18 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v18 != v10);
        goto LABEL_58;
      }
    }
  }

  else
  {
    v28[0] = "'silc.all_reduce' op requires attribute 'mesh'";
    v29 = 259;
    mlir::emitError(a2, v28, v30);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v36;
        v9 = __p;
        if (v36 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v36 = v7;
        operator delete(v9);
      }

      v10 = v33;
      if (!v33)
      {
        goto LABEL_60;
      }

      v11 = v34;
      v12 = v33;
      if (v34 == v33)
      {
        goto LABEL_59;
      }

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
      goto LABEL_58;
    }
  }

  return v6;
}

uint64_t mlir::silc::SilcAllReduceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v38 = v6;
  if (!v6)
  {
    a3(&v41, a4);
    if (v41)
    {
      LODWORD(v39) = 3;
      *(&v39 + 1) = "expected DictionaryAttr to set properties";
      v40 = 41;
      if (v44 >= v45)
      {
        if (v43 > &v39 || v43 + 24 * v44 <= &v39)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v23 = v43 + 24 * v44;
      v24 = v39;
      *(v23 + 2) = v40;
      *v23 = v24;
      ++v44;
      if (v41)
      {
        mlir::InFlightDiagnostic::report(&v41);
      }
    }

    if (v52 != 1)
    {
      return 0;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v18 = v47;
    if (!v47)
    {
      goto LABEL_61;
    }

    v28 = v48;
    v20 = v47;
    if (v48 == v47)
    {
LABEL_60:
      v48 = v18;
      operator delete(v20);
LABEL_61:
      if (v43 != &v46)
      {
        free(v43);
      }

      return 0;
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

    while (v28 != v18);
LABEL_59:
    v20 = v47;
    goto LABEL_60;
  }

  v8 = mlir::DictionaryAttr::get(&v38, "mesh", 4uLL);
  if (v8)
  {
    *a1 = v8;
  }

  v9 = mlir::DictionaryAttr::get(&v38, "mesh_axes", 9uLL);
  if (v9)
  {
    if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
    {
      v10 = v9;
      a3(&v41, a4);
      if (v41)
      {
        LODWORD(v39) = 3;
        v40 = 54;
        if (v44 >= v45)
        {
          if (v43 > &v39 || v43 + 24 * v44 <= &v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v43 + 24 * v44;
        v12 = v39;
        *(v11 + 2) = v40;
        *v11 = v12;
        ++v44;
        if (v41)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v39, v10);
          if (v44 >= v45)
          {
            if (v43 > &v39 || v43 + 24 * v44 <= &v39)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v43 + 24 * v44;
          v14 = v39;
          *(v13 + 2) = v40;
          *v13 = v14;
          ++v44;
          if (v41)
          {
            mlir::InFlightDiagnostic::report(&v41);
          }
        }
      }

      if ((v52 & 1) == 0)
      {
        return 0;
      }

      if (v51 != &v52)
      {
        free(v51);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v50;
        v17 = __p;
        if (v50 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v50 = v15;
        operator delete(v17);
      }

      v18 = v47;
      if (!v47)
      {
        goto LABEL_61;
      }

      v19 = v48;
      v20 = v47;
      if (v48 == v47)
      {
        goto LABEL_60;
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
      goto LABEL_59;
    }

    a1[1] = v9;
  }

  v31 = mlir::DictionaryAttr::get(&v38, "reduce_op", 9uLL);
  if (!v31)
  {
    return 1;
  }

  if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    a1[2] = v31;
    return 1;
  }

  v32 = v31;
  a3(&v41, a4);
  if (v41)
  {
    LODWORD(v39) = 3;
    v40 = 54;
    if (v44 >= v45)
    {
      if (v43 > &v39 || v43 + 24 * v44 <= &v39)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = v43 + 24 * v44;
    v34 = v39;
    *(v33 + 2) = v40;
    *v33 = v34;
    ++v44;
    if (v41)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, v32);
      if (v44 >= v45)
      {
        if (v43 > &v39 || v43 + 24 * v44 <= &v39)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v43 + 24 * v44;
      v36 = v39;
      *(v35 + 2) = v40;
      *v35 = v36;
      ++v44;
      if (v41)
      {
        mlir::InFlightDiagnostic::report(&v41);
      }
    }
  }

  if (v52 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v42);
  }

  return 0;
}

uint64_t mlir::silc::SilcAllReduceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "mesh", 4, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v18, "mesh_axes", 9, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v18, "reduce_op", 9, v11);
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

unint64_t mlir::silc::SilcAllReduceOp::computePropertiesHash(void *a1)
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

unint64_t mlir::silc::SilcAllReduceOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 9)
  {
    if (a4 == 4 && *a3 == 1752393069)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 == 0x6578615F6873656DLL && *(a3 + 8) == 115)
  {
    return a2[1];
  }

  if (*a3 != 0x6F5F656375646572 || *(a3 + 8) != 112)
  {
    return 0;
  }

  return a2[2];
}

void *mlir::silc::SilcAllReduceOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9)
  {
    if (*a2 == 0x6578615F6873656DLL && *(a2 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        result[1] = v7;
      }

      else
      {
        result[1] = 0;
      }
    }

    else if (*a2 == 0x6F5F656375646572 && *(a2 + 8) == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[2] = v6;
      }

      else
      {
        result[2] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752393069)
  {
    *result = a4;
  }

  return result;
}

void mlir::silc::SilcAllReduceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "mesh", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "mesh_axes", 9uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "reduce_op", 9uLL, v6);
  }
}

BOOL mlir::silc::SilcAllReduceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v8, "mesh", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(v9, "mesh_axes", 9, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(v10, "reduce_op", 9, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v5 = *(*a1 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  v10 = v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a1 : 0;
  v29 = v10;
  if (v10)
  {
    mlir::SymbolRefAttr::getNestedReferences(&v29);
    if (!v11)
    {
      return 1;
    }
  }

  a4(&v29, a5);
  if (v29)
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

    v12 = v31 + 24 * v32;
    v13 = v26;
    *(v12 + 2) = v27;
    *v12 = v13;
    ++v32;
    if (v29)
    {
      v28 = 261;
      *&v26 = a2;
      *(&v26 + 1) = a3;
      mlir::Diagnostic::operator<<(&v30, &v26);
      if (v29)
      {
        LODWORD(v26) = 3;
        *(&v26 + 1) = "' failed to satisfy constraint: mesh attr or flat mesh symbol reference attr";
        v27 = 76;
        if (v32 >= v33)
        {
          if (v31 > &v26 || v31 + 24 * v32 <= &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v31 + 24 * v32;
        v15 = v26;
        *(v14 + 2) = v27;
        *v14 = v15;
        ++v32;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
  if (v29)
  {
    mlir::InFlightDiagnostic::report(&v29);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v16;
}

uint64_t mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: Reference to the sharding in a tensor axis";
        v22 = 74;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: Reduction operation along one or more mesh axis";
        v22 = 79;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::silc::SilcAllReduceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 48))(a1, v3) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::silc::TensorAxisRefAttr>(a1, (v3 + 8)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::silc::ReductionKindAttr>(a1, (v3 + 16)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::silc::TensorAxisRefAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
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

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::TensorAxisRefAttr]";
  *(&v28 + 1) = 79;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
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

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
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

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::silc::ReductionKindAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
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

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::ReductionKindAttr]";
  *(&v28 + 1) = 79;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
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

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
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

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::silc::SilcAllReduceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::silc::SilcAllReduceOp::setReduceOp(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::silc::ReductionKindAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::silc::SilcAllReduceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a4;
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a5;
  v13[1] = a6;
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) = a7;
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::silc::SilcAllReduceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a5;
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v15[1] = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a8;
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

uint64_t mlir::silc::SilcAllReduceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v17 = a4;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a5;
  v13[1] = a6;
  result = mlir::silc::ReductionKindAttr::get(*a1, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 16) = result;
  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v16) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::silc::SilcAllReduceOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v15[1] = a7;
  result = mlir::silc::ReductionKindAttr::get(*a1, a8);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = result;
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

uint64_t mlir::silc::SilcAllReduceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::silc::SilcAllReduceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v68 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v3 + 16);
      if (v6)
      {
        v59[0] = *this;
        if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v2, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
        {
          return 0;
        }

        v59[0] = *this;
        if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(v5, "mesh_axes", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
        {
          return 0;
        }

        v59[0] = *this;
        if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(v6, "reduce_op", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0 || (mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
        {
          return 0;
        }

        v8 = *(*this + 9) ? *this - 16 : 0;
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
        if ((mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
        {
          return 0;
        }

        v56 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v59[0] = mlir::TensorType::operator mlir::ShapedType(&v56);
        v59[1] = v10;
        mlir::ShapedType::getShape(v59);
        v12 = v11;
        if (*(*this + 9))
        {
          v13 = *this - 16;
        }

        else
        {
          v13 = 0;
        }

        v55 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        v57[0] = mlir::TensorType::operator mlir::ShapedType(&v55);
        v57[1] = v14;
        mlir::ShapedType::getShape(v57);
        if (v12 == v15 && (*(*this + 9) ? (v16 = *this - 16) : (v16 = 0), v53 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8), v54[0] = mlir::TensorType::operator mlir::ShapedType(&v53), v54[1] = v17, mlir::ShapedType::getShape(v54), v19 = v18, v51 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v52[0] = mlir::TensorType::operator mlir::ShapedType(&v51), v52[1] = v20, mlir::ShapedType::getShape(v52), v19 == v21))
        {
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
          if (*(*this + 9))
          {
            v23 = *this - 16;
          }

          else
          {
            v23 = 0;
          }

          v24 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0);
          if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v24))
          {
            v25 = *(*this + 9) ? *this - 16 : 0;
            v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
            v27 = mlir::getElementTypeOrSelf(v26);
            if (v27 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
            {
              return 1;
            }
          }

          v50 = "failed to verify that all of {input, result} have same element type";
        }

        else
        {
          v50 = "failed to verify that all of {input, result} have same rank";
        }

        v57[0] = v50;
        v58 = 259;
        mlir::OpState::emitOpError(this, v57, v59);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
        return v28;
      }

      v57[0] = "requires attribute 'reduce_op'";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v65;
          v45 = __p;
          if (v65 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v65 = v43;
          operator delete(v45);
        }

        v32 = v62;
        if (!v62)
        {
          goto LABEL_80;
        }

        v46 = v63;
        v34 = v62;
        if (v63 == v62)
        {
LABEL_79:
          v63 = v32;
          operator delete(v34);
LABEL_80:
          if (v60 != &v61)
          {
            free(v60);
          }

          return v28;
        }

        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            MEMORY[0x259C63150](v47, 0x1000C8077774924);
          }
        }

        while (v46 != v32);
LABEL_78:
        v34 = v62;
        goto LABEL_79;
      }
    }

    else
    {
      v57[0] = "requires attribute 'mesh_axes'";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 == 1)
      {
        if (v66 != &v67)
        {
          free(v66);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v65;
          v39 = __p;
          if (v65 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v65 = v37;
          operator delete(v39);
        }

        v32 = v62;
        if (!v62)
        {
          goto LABEL_80;
        }

        v40 = v63;
        v34 = v62;
        if (v63 == v62)
        {
          goto LABEL_79;
        }

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

        while (v40 != v32);
        goto LABEL_78;
      }
    }
  }

  else
  {
    v57[0] = "requires attribute 'mesh'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v59);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v65;
        v31 = __p;
        if (v65 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v65 = v29;
        operator delete(v31);
      }

      v32 = v62;
      if (!v62)
      {
        goto LABEL_80;
      }

      v33 = v63;
      v34 = v62;
      if (v63 == v62)
      {
        goto LABEL_79;
      }

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
      goto LABEL_78;
    }
  }

  return v28;
}

uint64_t mlir::silc::SilcAllReduceOp::parse(mlir::silc::SilcAllReduceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  Inputs = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v21, 1) & 1) == 0)
  {
    return 0;
  }

  v24 = 257;
  if (((*(*this + 400))(this, "on", 2, v23) & 1) == 0 || ((*(*this + 152))(this) & 1) == 0 || ((*(*this + 440))(this, &v19, 0) & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v19;
  }

  v24 = 257;
  if (((*(*this + 400))(this, "along", 5, v23) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::TensorAxisRefAttr>(this, &v18, 0))
  {
    return 0;
  }

  if (v18)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(a2);
    *(v6 + 8) = v18;
  }

  if (((*(*this + 168))(this) & 1) == 0)
  {
    return 0;
  }

  v24 = 257;
  if (((*(*this + 400))(this, "op", 2, v23) & 1) == 0 || ((*(*this + 136))(this) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ReductionKindAttr>(this, &v17, 0))
  {
    return 0;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 16) = v17;
  }

  v14 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 1);
  v23[0] = this;
  v23[1] = &v14;
  v23[2] = a2;
  if (!mlir::silc::SilcAllReduceOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllReduceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v23))
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v23[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, v23))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(v23);
  v16 = v9;
  Results = mlir::FunctionType::getResults(v23);
  mlir::OperationState::addTypes(a2, Results, v11);
  v12 = (*(*this + 16))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v20, &Inputs, v12, a2 + 16) & 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ReductionKindAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17ReductionKindAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::SilcAllSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::silc::SilcAllSliceOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'silc.all_slice' op requires attribute 'sharding'";
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

uint64_t mlir::silc::SilcAllSliceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "sharding", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
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

uint64_t mlir::silc::SilcAllSliceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "sharding", 8, *a2);
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

unint64_t mlir::silc::SilcAllSliceOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::silc::SilcAllSliceOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x676E696472616873)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::silc::SilcAllSliceOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x676E696472616873)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
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

uint64_t mlir::silc::SilcAllSliceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "sharding", 8uLL, *a2);
  }

  return result;
}

uint64_t mlir::silc::SilcAllSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::silc::ShardingAttr>(a1, v2) & 1;
}

uint64_t mlir::silc::SilcAllSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a5;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a4;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::silc::SilcAllSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a6;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a5;
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v13);
      *(v14 + 8 * v13++) = result;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
  return result;
}

uint64_t mlir::silc::SilcAllSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::silc::SilcAllSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v103 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v93 = v2;
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v3, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v93) & 1) == 0 || (mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v4 = *(*this + 9) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    if ((mlir::silc::__mlir_ods_local_type_constraint_SilcOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v6)
    {
      goto LABEL_42;
    }

    v7 = *v6;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v83 = v7;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v83 + 8);
      v10 = *(v83 + 16);
      if (!v10)
      {
        goto LABEL_42;
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
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v26 = v11[1];
LABEL_43:
      v93 = v6;
      v94 = v26;
      mlir::ShapedType::getShape(&v93);
      v28 = v27;
      if (*(*this + 9))
      {
        v29 = *this - 16;
      }

      else
      {
        v29 = 0;
      }

      v30 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        v31 = *v30;
        {
          v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v33 = v31[1];
          v34 = *(v31 + 4);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v82 = v31;
          v84 = v30;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v30 = v84;
          v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v33 = v82[1];
          v34 = *(v82 + 4);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        v35 = v33;
        v36 = v34;
        do
        {
          v37 = v36 >> 1;
          v38 = &v35[2 * (v36 >> 1)];
          v40 = *v38;
          v39 = v38 + 2;
          v36 += ~(v36 >> 1);
          if (v40 < v32)
          {
            v35 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        while (v36);
        if (v35 != &v33[2 * v34] && *v35 == v32)
        {
          v54 = v35[1];
          v90 = v30;
          v91 = v54;
          mlir::ShapedType::getShape(&v90);
          if (v28 != v55)
          {
            goto LABEL_106;
          }

          goto LABEL_61;
        }
      }

LABEL_60:
      v90 = v30;
      v91 = 0;
      mlir::ShapedType::getShape(&v90);
      if (v28 != v41)
      {
        goto LABEL_106;
      }

LABEL_61:
      if (*(*this + 9))
      {
        v42 = *this - 16;
      }

      else
      {
        v42 = 0;
      }

      v43 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v43)
      {
        goto LABEL_79;
      }

      v44 = *v43;
      {
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        if (v47)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v85 = v44;
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v85 + 8);
        v47 = *(v85 + 16);
        if (v47)
        {
LABEL_67:
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
LABEL_77:
          if (v48 != &v46[2 * v47] && *v48 == v45)
          {
            v56 = v48[1];
LABEL_80:
            v89[0] = v43;
            v89[1] = v56;
            mlir::ShapedType::getShape(v89);
            v58 = v57;
            v59 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v59)
            {
              goto LABEL_94;
            }

            v60 = *v59;
            {
              v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v62 = *(v60 + 8);
              v63 = *(v60 + 16);
              if (v63)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v86 = v59;
              v70 = v60;
              mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
              v59 = v86;
              v61 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v62 = *(v70 + 8);
              v63 = *(v70 + 16);
              if (v63)
              {
LABEL_83:
                v64 = v62;
                v65 = v63;
                do
                {
                  v66 = v65 >> 1;
                  v67 = &v64[2 * (v65 >> 1)];
                  v69 = *v67;
                  v68 = v67 + 2;
                  v65 += ~(v65 >> 1);
                  if (v69 < v61)
                  {
                    v64 = v68;
                  }

                  else
                  {
                    v65 = v66;
                  }
                }

                while (v65);
LABEL_92:
                if (v64 != &v62[2 * v63] && *v64 == v61)
                {
                  v79 = v64[1];
                  v87 = v59;
                  v88 = v79;
                  mlir::ShapedType::getShape(&v87);
                  if (v58 == v80)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_106;
                }

LABEL_94:
                v87 = v59;
                v88 = 0;
                mlir::ShapedType::getShape(&v87);
                if (v58 == v71)
                {
LABEL_95:
                  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
                  if (*(*this + 9))
                  {
                    v73 = *this - 16;
                  }

                  else
                  {
                    v73 = 0;
                  }

                  v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, 0);
                  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(v74))
                  {
                    v75 = *(*this + 9) ? *this - 16 : 0;
                    v76 = mlir::detail::OpResultImpl::getNextResultAtOffset(v75, 0);
                    v77 = mlir::getElementTypeOrSelf(v76);
                    if (v77 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
                    {
                      return 1;
                    }
                  }

                  v78 = "failed to verify that all of {input, result} have same element type";
                  goto LABEL_107;
                }

LABEL_106:
                v78 = "failed to verify that all of {input, result} have same rank";
LABEL_107:
                v90 = v78;
                v92 = 259;
                mlir::OpState::emitOpError(this, &v90, &v93);
                v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
                if (v93)
                {
                  mlir::InFlightDiagnostic::report(&v93);
                }

                if (v102 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v94);
                }

                return v17;
              }
            }

            v63 = 0;
            v64 = v62;
            goto LABEL_92;
          }

LABEL_79:
          v56 = 0;
          goto LABEL_80;
        }
      }

      v47 = 0;
      v48 = v46;
      goto LABEL_77;
    }

LABEL_42:
    v26 = 0;
    goto LABEL_43;
  }

  v90 = "requires attribute 'sharding'";
  v92 = 259;
  mlir::OpState::emitOpError(this, &v90, &v93);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v93);
  if (v93)
  {
    mlir::InFlightDiagnostic::report(&v93);
  }

  if (v102 == 1)
  {
    if (v101 != &v102)
    {
      free(v101);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v100;
      v20 = __p;
      if (v100 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v100 = v18;
      operator delete(v20);
    }

    v21 = v97;
    if (v97)
    {
      v22 = v98;
      v23 = v97;
      if (v98 != v97)
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
        v23 = v97;
      }

      v98 = v21;
      operator delete(v23);
    }

    if (v95 != &v96)
    {
      free(v95);
    }
  }

  return v17;
}

uint64_t mlir::silc::SilcAllSliceOp::parse(mlir::silc::SilcAllSliceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15 = 0;
  v16 = 0;
  Inputs = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v18, 1) & 1) == 0)
  {
    return 0;
  }

  v21 = 257;
  if (((*(*this + 400))(this, "on", 2, v20) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::ShardingAttr>(this, &v16, 0))
  {
    return 0;
  }

  if (v16)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v16;
  }

  v13 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 1);
  v20[0] = this;
  v20[1] = &v13;
  v20[2] = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(v7, "sharding", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v20[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, v20))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(v20);
  v15 = v8;
  Results = mlir::FunctionType::getResults(v20);
  mlir::OperationState::addTypes(a2, Results, v10);
  v11 = (*(*this + 16))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v17, &Inputs, v11, a2 + 16) & 1;
}

uint64_t mlir::silc::detail::SilcMeshOpGenericAdaptorBase::SilcMeshOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::silc::SilcMeshOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      return 1;
    }

    v18[0] = "'silc.mesh' op requires attribute 'sym_name'";
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
    v18[0] = "'silc.mesh' op requires attribute 'mesh'";
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

uint64_t mlir::silc::SilcMeshOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "mesh", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
    {
      v9 = v8;
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

uint64_t mlir::silc::SilcMeshOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "mesh", 4, *a2);
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

unint64_t mlir::silc::SilcMeshOp::computePropertiesHash(void *a1)
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

unint64_t mlir::silc::SilcMeshOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 4 && *a3 == 1752393069)
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

void *mlir::silc::SilcMeshOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
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

        result[1] = v4;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752393069)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
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

void mlir::silc::SilcMeshOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "mesh", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v5);
  }
}

BOOL mlir::silc::SilcMeshOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(v8, "mesh", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: Mesh of axes and a list of devices";
        v22 = 66;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

uint64_t mlir::silc::SilcMeshOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::silc::MeshAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::silc::MeshAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
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

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::MeshAttr]";
  *(&v28 + 1) = 70;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
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

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
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

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

uint64_t mlir::silc::SilcMeshOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::silc::SilcMeshOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

void mlir::silc::SilcMeshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 256);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 8) = a3;
  v5 = *(a2 + 256);
  if (!v5)
  {
    operator new();
  }

  *v5 = a4;
}

void mlir::silc::SilcMeshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 8) = a5;
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a6;
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

uint64_t mlir::silc::SilcMeshOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5)
{
  v11 = 261;
  v10[0] = a3;
  v10[1] = a4;
  result = mlir::Builder::getStringAttr(a1, v10, a3);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 8) = result;
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a5;
  return result;
}

unint64_t mlir::silc::SilcMeshOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7)
{
  v18 = 261;
  v17[0] = a5;
  v17[1] = a6;
  result = mlir::Builder::getStringAttr(a1, v17, a3);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = result;
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a7;
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

uint64_t mlir::silc::SilcMeshOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::silc::SilcMeshOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *(v2 + 8);
    if (v5)
    {
      v25[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0)
      {
        return 0;
      }

      v25[0] = *this;
      return mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(v3, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1;
    }

    v23[0] = "requires attribute 'sym_name'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
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
        goto LABEL_40;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_39:
        v29 = v11;
        operator delete(v13);
LABEL_40:
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
LABEL_38:
      v13 = v28;
      goto LABEL_39;
    }
  }

  else
  {
    v23[0] = "requires attribute 'mesh'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
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
        goto LABEL_40;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_39;
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
      goto LABEL_38;
    }
  }

  return v7;
}

uint64_t mlir::silc::SilcMeshOp::parse(mlir::silc::SilcMeshOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13 = 0;
  v14 = 0;
  if (!mlir::AsmParser::parseSymbolName(this, &v14))
  {
    return 0;
  }

  if (v14)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *(v5 + 8) = v14;
  }

  if (((*(*this + 136))(this) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAttr>(this, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v6 = *(a2 + 32);
    if (!v6)
    {
      operator new();
    }

    *v6 = v13;
  }

  if (v12 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((v7 = *(a2 + 1), v11[0] = this, v11[1] = &v12, v11[2] = a2, (v8 = mlir::NamedAttrList::get(a2 + 112, **(v7 + 96))) == 0) || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(v8, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcMeshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v11)) && ((v9 = mlir::NamedAttrList::get(a2 + 112, *(*(v7 + 96) + 8))) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcMeshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v11)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::silc::SilcMeshOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::StringAttr::getValue(&v19);
  (*(*a2 + 88))(a2, Value, v7);
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
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
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

  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (((*(*a2 + 56))(a2) & 1) == 0)
  {
    v14 = (*(*a2 + 16))(a2);
    v15 = (*(*v14 + 80))(v14) + v14[4] - v14[2];
    mlir::silc::MeshAttr::print(&v19, a2);
    if (v15 == (*(*v14 + 80))(v14) + v14[4] - v14[2])
    {
      (*(*a2 + 40))(a2, v19);
    }
  }

  v19 = v21;
  v21[0] = "sym_name";
  v21[1] = 8;
  v21[2] = "mesh";
  v21[3] = 4;
  v20 = 0x200000002;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v16 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, v16, v17, v19, v20);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::SilcSPMDCallOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase::getCallee(mlir::silc::detail::SilcSPMDCallOpGenericAdaptorBase *this)
{
  v2 = *(this + 3);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::silc::SilcSPMDCallOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(*v3 + 136);
      if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
      {
        return 1;
      }

      if (v4 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v3 = 0;
      }

      v24 = v3;
      if (v3)
      {
        mlir::SymbolRefAttr::getNestedReferences(&v24);
        if (!v5)
        {
          return 1;
        }
      }

      v22[0] = "'silc.call' op attribute 'mesh' failed to satisfy constraint: mesh attr or flat mesh symbol reference attr";
      v23 = 259;
      mlir::emitError(a2, v22, &v24);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
      if (v24)
      {
        mlir::InFlightDiagnostic::report(&v24);
      }

      if (v33 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v25);
      }

      return v6;
    }

    v22[0] = "'silc.call' op requires attribute 'mesh'";
    v23 = 259;
    mlir::emitError(a2, v22, &v24);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
    if (v24)
    {
      mlir::InFlightDiagnostic::report(&v24);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v31;
        v17 = __p;
        if (v31 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v31 = v15;
        operator delete(v17);
      }

      v10 = v28;
      if (!v28)
      {
        goto LABEL_47;
      }

      v18 = v29;
      v12 = v28;
      if (v29 == v28)
      {
LABEL_46:
        v29 = v10;
        operator delete(v12);
LABEL_47:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v6;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v10);
LABEL_45:
      v12 = v28;
      goto LABEL_46;
    }
  }

  else
  {
    v22[0] = "'silc.call' op requires attribute 'callee'";
    v23 = 259;
    mlir::emitError(a2, v22, &v24);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
    if (v24)
    {
      mlir::InFlightDiagnostic::report(&v24);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v31;
        v9 = __p;
        if (v31 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v31 = v7;
        operator delete(v9);
      }

      v10 = v28;
      if (!v28)
      {
        goto LABEL_47;
      }

      v11 = v29;
      v12 = v28;
      if (v29 == v28)
      {
        goto LABEL_46;
      }

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
      goto LABEL_45;
    }
  }

  return v6;
}

uint64_t mlir::silc::SilcSPMDCallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v34 = v6;
  if (!v6)
  {
    a3(v37, a4);
    if (v37[0])
    {
      LODWORD(v35) = 3;
      *(&v35 + 1) = "expected DictionaryAttr to set properties";
      v36 = 41;
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
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }
    }

    if (v47 != 1)
    {
      return 0;
    }

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

    v19 = v42;
    if (!v42)
    {
      goto LABEL_51;
    }

    v29 = v43;
    v21 = v42;
    if (v43 == v42)
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

  v8 = mlir::DictionaryAttr::get(&v34, "callee", 6uLL);
  if (v8)
  {
    v9 = v8;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v37[0] = v10;
    if (!v10 || (mlir::SymbolRefAttr::getNestedReferences(v37), v11))
    {
      a3(v37, a4);
      if (v37[0])
      {
        LODWORD(v35) = 3;
        v36 = 51;
        if (v39 >= v40)
        {
          if (v38 > &v35 || v38 + 24 * v39 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v38 + 24 * v39;
        v13 = v35;
        *(v12 + 2) = v36;
        *v12 = v13;
        ++v39;
        if (v37[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v35, v9);
          if (v39 >= v40)
          {
            if (v38 > &v35 || v38 + 24 * v39 <= &v35)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v38 + 24 * v39;
          v15 = v35;
          *(v14 + 2) = v36;
          *v14 = v15;
          ++v39;
          if (v37[0])
          {
            mlir::InFlightDiagnostic::report(v37);
          }
        }
      }

      if ((v47 & 1) == 0)
      {
        return 0;
      }

      if (v46 != &v47)
      {
        free(v46);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v45;
        v18 = __p;
        if (v45 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v45 = v16;
        operator delete(v18);
      }

      v19 = v42;
      if (!v42)
      {
LABEL_51:
        if (v38 != &v41)
        {
          free(v38);
        }

        return 0;
      }

      v20 = v43;
      v21 = v42;
      if (v43 == v42)
      {
LABEL_50:
        v43 = v19;
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
      v21 = v42;
      goto LABEL_50;
    }

    *a1 = v9;
  }

  v33 = mlir::DictionaryAttr::get(&v34, "mesh", 4uLL);
  if (v33)
  {
    a1[1] = v33;
  }

  return 1;
}

uint64_t mlir::silc::SilcSPMDCallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "callee", 6, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "mesh", 4, v7);
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

unint64_t mlir::silc::SilcSPMDCallOp::computePropertiesHash(void *a1)
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

unint64_t mlir::silc::SilcSPMDCallOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 4)
  {
    if (a4 == 6 && *a3 == 1819042147 && *(a3 + 4) == 25957)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1752393069)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::silc::SilcSPMDCallOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4)
  {
    if (*a2 == 1752393069)
    {
      result[1] = a4;
    }
  }

  else if (a3 == 6 && *a2 == 1819042147 && *(a2 + 4) == 25957)
  {
    v11[3] = v4;
    v11[4] = v5;
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      v11[0] = v7;
      if (v7)
      {
        v8 = result;
        mlir::SymbolRefAttr::getNestedReferences(v11);
        result = v8;
        if (v10)
        {
          v7 = 0;
        }

        else
        {
          v7 = a4;
        }
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

void mlir::silc::SilcSPMDCallOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "callee", 6uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "mesh", 4uLL, v5);
  }
}

BOOL mlir::silc::SilcSPMDCallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v8, "callee", 6, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v9, "mesh", 4, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v9 = *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a1 : 0;
  v28 = v9;
  if (v9)
  {
    mlir::SymbolRefAttr::getNestedReferences(&v28);
    if (!v10)
    {
      return 1;
    }
  }

  a4(&v28, a5);
  if (v28)
  {
    LODWORD(v25) = 3;
    *(&v25 + 1) = "attribute '";
    v26 = 11;
    if (v31 >= v32)
    {
      if (v30 > &v25 || v30 + 24 * v31 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v30 + 24 * v31;
    v12 = v25;
    *(v11 + 2) = v26;
    *v11 = v12;
    ++v31;
    if (v28)
    {
      v27 = 261;
      *&v25 = a2;
      *(&v25 + 1) = a3;
      mlir::Diagnostic::operator<<(&v29, &v25);
      if (v28)
      {
        LODWORD(v25) = 3;
        *(&v25 + 1) = "' failed to satisfy constraint: flat symbol reference attribute";
        v26 = 63;
        if (v31 >= v32)
        {
          if (v30 > &v25 || v30 + 24 * v31 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v30 + 24 * v31;
        v14 = v25;
        *(v13 + 2) = v26;
        *v13 = v14;
        ++v31;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v37;
      v18 = __p;
      if (v37 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v37 = v16;
      operator delete(v18);
    }

    v19 = v34;
    if (v34)
    {
      v20 = v35;
      v21 = v34;
      if (v35 != v34)
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
        v21 = v34;
      }

      v35 = v19;
      operator delete(v21);
    }

    if (v30 != &v33)
    {
      free(v30);
    }
  }

  return v15;
}

uint64_t mlir::silc::SilcSPMDCallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, *(a2 + 256)))
  {
    return (*(*a1 + 48))(a1, v3 + 8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::silc::SilcSPMDCallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::silc::SilcSPMDCallOp::getCallee(mlir::silc::SilcSPMDCallOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::silc::SilcSPMDCallOp::setCallee(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::SymbolRefAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::silc::SilcSPMDCallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a4;
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = a5;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::silc::SilcSPMDCallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a5;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = a6;
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

uint64_t mlir::silc::SilcSPMDCallOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, const llvm::Twine *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::SymbolRefAttr::get(*a1, a4, a5);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a6;
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::silc::SilcSPMDCallOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, const llvm::Twine *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::SymbolRefAttr::get(*a1, a5, a6);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = result;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a7;
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

uint64_t mlir::silc::SilcSPMDCallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::silc::SilcSPMDCallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v60[0] = *this;
      if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v2, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v60) & 1) == 0)
      {
        return 0;
      }

      v60[0] = *this;
      if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(v5, "mesh", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v60) & 1) == 0)
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v7 = *this - 16;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v9 = *v8;
      if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v10 = *this;
        v57 = 261;
        v56[0] = "result";
        v56[1] = 6;
        mlir::Operation::emitOpError(v60, v10, v56);
        if (v60[0])
        {
          LODWORD(v58) = 3;
          *(&v58 + 1) = " #";
          v59 = 2;
          if (v62 >= v63)
          {
            if (v61 > &v58 || v61 + 24 * v62 <= &v58)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v61 + 24 * v62;
          v12 = v58;
          *(v11 + 2) = v59;
          *v11 = v12;
          v13 = ++v62;
          if (v60[0])
          {
            LODWORD(v58) = 5;
            *(&v58 + 1) = 0;
            if (v13 >= v63)
            {
              if (v61 > &v58 || v61 + 24 * v13 <= &v58)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v14 = v61 + 24 * v62;
            v15 = v58;
            *(v14 + 2) = v59;
            *v14 = v15;
            v16 = ++v62;
            if (v60[0])
            {
              LODWORD(v58) = 3;
              *(&v58 + 1) = " must be ranked tensor of any type values, but got ";
              v59 = 51;
              if (v16 >= v63)
              {
                if (v61 > &v58 || v61 + 24 * v16 <= &v58)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v17 = v61 + 24 * v62;
              v18 = v58;
              *(v17 + 2) = v59;
              *v17 = v18;
              ++v62;
              if (v60[0])
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v58, v8);
                if (v62 >= v63)
                {
                  if (v61 > &v58 || v61 + 24 * v62 <= &v58)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v19 = v61 + 24 * v62;
                v20 = v58;
                *(v19 + 2) = v59;
                *v19 = v20;
                ++v62;
              }
            }
          }
        }

        v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
        if (v60[0])
        {
          mlir::InFlightDiagnostic::report(v60);
        }

        if (v70 == 1)
        {
          if (v69 != &v70)
          {
            free(v69);
          }

          v22 = __p;
          if (__p)
          {
            v23 = v68;
            v24 = __p;
            if (v68 != __p)
            {
              do
              {
                v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
              }

              while (v23 != v22);
              v24 = __p;
            }

            v68 = v22;
            operator delete(v24);
          }

          v25 = v65;
          if (v65)
          {
            v26 = v66;
            v27 = v65;
            if (v66 != v65)
            {
              do
              {
                v29 = *--v26;
                v28 = v29;
                *v26 = 0;
                if (v29)
                {
                  MEMORY[0x259C63150](v28, 0x1000C8077774924);
                }
              }

              while (v26 != v25);
              v27 = v65;
            }

            v66 = v25;
            operator delete(v27);
          }

          if (v61 != v64)
          {
            free(v61);
          }
        }

        return v21;
      }

      {
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v9 + 8);
        v47 = *(v9 + 16);
        if (v47)
        {
          goto LABEL_72;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v46 = *(v9 + 8);
        v47 = *(v9 + 16);
        if (v47)
        {
LABEL_72:
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
          goto LABEL_99;
        }
      }

      v47 = 0;
      v48 = v46;
LABEL_99:
      if (v48 != &v46[2 * v47] && *v48 == v45)
      {
        v55 = v48[1];
      }

      else
      {
        v55 = 0;
      }

      v60[0] = v8;
      v60[1] = v55;
      mlir::ShapedType::getElementType(v60);
      return 1;
    }

    v56[0] = "requires attribute 'mesh'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v60);
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    if (v60[0])
    {
      mlir::InFlightDiagnostic::report(v60);
    }

    if (v70 == 1)
    {
      if (v69 != &v70)
      {
        free(v69);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v68;
        v41 = __p;
        if (v68 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v68 = v39;
        operator delete(v41);
      }

      v34 = v65;
      if (!v65)
      {
        goto LABEL_68;
      }

      v42 = v66;
      v36 = v65;
      if (v66 == v65)
      {
LABEL_67:
        v66 = v34;
        operator delete(v36);
LABEL_68:
        if (v61 != v64)
        {
          free(v61);
        }

        return v30;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          MEMORY[0x259C63150](v43, 0x1000C8077774924);
        }
      }

      while (v42 != v34);
LABEL_66:
      v36 = v65;
      goto LABEL_67;
    }
  }

  else
  {
    v56[0] = "requires attribute 'callee'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v60);
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    if (v60[0])
    {
      mlir::InFlightDiagnostic::report(v60);
    }

    if (v70 == 1)
    {
      if (v69 != &v70)
      {
        free(v69);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v68;
        v33 = __p;
        if (v68 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v68 = v31;
        operator delete(v33);
      }

      v34 = v65;
      if (!v65)
      {
        goto LABEL_68;
      }

      v35 = v66;
      v36 = v65;
      if (v66 == v65)
      {
        goto LABEL_67;
      }

      do
      {
        v38 = *--v35;
        v37 = v38;
        *v35 = 0;
        if (v38)
        {
          MEMORY[0x259C63150](v37, 0x1000C8077774924);
        }
      }

      while (v35 != v34);
      goto LABEL_66;
    }
  }

  return v30;
}

uint64_t mlir::silc::SilcSPMDCallOp::parse(mlir::silc::SilcSPMDCallOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v25[16] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v24[0] = v25;
  v24[1] = 0x400000000;
  Inputs = 0;
  v19 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if ((mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(this, &v21, v7) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v21)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v21;
  }

  v23 = 257;
  if (((*(*this + 400))(this, "mesh", 4, v22) & 1) == 0 || ((*(*this + 136))(this) & 1) == 0 || ((*(*this + 440))(this, &v20, 0) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v20)
  {
    v9 = *(a2 + 32);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 8) = v20;
  }

  if ((*(*this + 280))(this) & 1) != 0 && (v10 = (*(*this + 40))(this), ((*(*this + 720))(this, v24, 0, 1, 0xFFFFFFFFLL)) && ((*(*this + 296))(this) & 1) != 0 && (v17 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (v11 = *(a2 + 1), v22[0] = this, v22[1] = &v17, v22[2] = a2, mlir::silc::SilcSPMDCallOp::verifyInherentAttrs(v11, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcSPMDCallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v22)) && ((*(*this + 104))(this) & 1) != 0 && (v22[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(this, v22)))
  {
    Inputs = mlir::FunctionType::getInputs(v22);
    v19 = v12;
    Results = mlir::FunctionType::getResults(v22);
    mlir::OperationState::addTypes(a2, Results, v14);
    v15 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v24, &Inputs, v10, a2 + 16) & 1;
  }

  else
  {
LABEL_21:
    v15 = 0;
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  return v15;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllGatherOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12ShardingAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::ShardingAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllGatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllReduceOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17ReductionKindAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::ReductionKindAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllReduceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::detail::SilcAllSliceOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::silc::SilcAllSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcMeshOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcMeshOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::silc::detail::SilcMeshOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::silc::detail::SilcMeshOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}