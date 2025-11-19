uint64_t mlir::LLVM::MemcpyOp::rewire(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v54[8] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v44 = *a1;
  if (*(a3 + 8))
  {
    v8 = *a3;
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = v8 + 24 * v9;
      v11 = 24 * v9;
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 += 24;
        v11 -= 24;
        if (!v11)
        {
          v8 = v10;
          break;
        }
      }
    }

    v41 = *(a2 + 6);
    if (v41)
    {
      v12 = 0;
      v40 = *(*v8 + 8);
      v36 = *a2;
      v37 = *(*(v5 + 72) + 24);
      if (*a2 == v37)
      {
        v13 = 56;
      }

      else
      {
        v13 = 24;
      }

      v35 = v13;
      do
      {
        v43 = mlir::IntegerAttr::get(v40, v12);
        if (llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v43))
        {
          v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v43);
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = *a3 + 24 * *(a3 + 16);
          }

          __src = 4;
          if (*(v43 + 24) > 0x40u)
          {
            operator new[]();
          }

          v48 = (*(v43 + 16) << 35) | 4;
          v45[0] = v46;
          v45[1] = 0x600000000;
          llvm::SmallVectorImpl<mlir::LLVM::GEPArg>::append<mlir::LLVM::GEPArg const*,void>(v45, &__src, v49);
          v16 = *(v5 + 24);
          v17 = *(**v16 + 32);
          LODWORD(__src) = 0;
          __src = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v17, &__src);
          v42 = *(*(v5 + 72) + v35);
          v18 = mlir::OpBuilder::create<mlir::LLVM::GEPOp,mlir::LLVM::LLVMPointerType,mlir::Type const&,mlir::detail::TypedValue<mlir::LLVM::LLVMPointerType>,llvm::SmallVector<mlir::LLVM::GEPArg,6u> &>(a4, v16, &__src, a2 + 1, &v42, v45);
          v19 = *(v15 + 8);
          v20 = *(v15 + 16);
          if (v36 == v37)
          {
            v21 = *(v15 + 8);
          }

          else
          {
            v21 = (v18 - 16);
          }

          if (v36 == v37)
          {
            v22 = (v18 - 16);
          }

          else
          {
            v22 = *(v15 + 8);
          }

          IsVolatile = mlir::LLVM::MemcpyOp::getIsVolatile(&v44);
          v24 = *(v5 + 24);
          v25 = *(*(*(v5 + 72) + 88) + 8);
          TypeSize = mlir::DataLayout::getTypeSize(a5, v20);
          if (v26)
          {
          }

          __src = mlir::IntegerAttr::get((v25 & 0xFFFFFFFFFFFFFFF8), TypeSize);
          v28 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(a4, v24, &__src);
          v29 = *(v5 + 24);
          v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::MemcpyOp>(a4, *(**v29 + 32));
          __src = v29;
          v48 = v30;
          v49[0] = v50;
          v49[1] = 0x400000000;
          v50[4] = v51;
          v50[5] = 0x400000000;
          v51[4] = v52;
          v51[5] = 0x400000000;
          v52[8] = 4;
          v52[9] = v53;
          v52[10] = 0x100000000;
          v53[1] = v54;
          v53[2] = 0x100000000;
          v54[1] = 0;
          v54[2] = 0;
          v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v54[4] = 0;
          v54[6] = 0;
          v31 = 592;
          if (IsVolatile)
          {
            v31 = 600;
          }

          mlir::LLVM::MemcpyOp::build(v30, &__src, v21, v22, (v28 - 16), *(**a4 + v31), 0, 0, 0, 0);
          v32 = mlir::Operation::create(&__src);
          mlir::OpBuilder::insert(a4, v32);
          mlir::OperationState::~OperationState(&__src);
          if (v45[0] != v46)
          {
            free(v45[0]);
          }
        }

        ++v12;
      }

      while (v41 != v12);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL mlir::LLVM::MemcpyInlineOp::canUsesBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v15 = v5;
  if (*(*(v5 + 72) + 24) == *(*(v5 + 72) + 56))
  {
    return 0;
  }

  if (mlir::LLVM::MemcpyInlineOp::getIsVolatile(&v15))
  {
    return 0;
  }

  v10 = v9;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v13 = TypeSize;
  if (v12)
  {
  }

  return v8 == v13;
}

BOOL mlir::LLVM::MemcpyInlineOp::ensureOnlySafeAccesses(mlir::DataLayout **a1, uint64_t *a2)
{
  v3 = *a1;
  mlir::DataLayout::closest(*a1, v11);
  {
    v6 = v4;
    TypeSize = mlir::DataLayout::getTypeSize(v11, a2[1]);
    if (v7)
    {
    }

    v9 = v6 <= TypeSize;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x25F891030](v11[17], 8);
  MEMORY[0x25F891030](v11[14], 8);
  MEMORY[0x25F891030](v11[11], 8);
  MEMORY[0x25F891030](v11[8], 8);
  MEMORY[0x25F891030](v11[5], 8);
  return v9;
}

uint64_t mlir::LLVM::MemcpyInlineOp::canRewire(uint64_t *a1, uint64_t a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v27 = *a1;
  if (mlir::LLVM::MemcpyInlineOp::getIsVolatile(&v27))
  {
    return 0;
  }

  v9 = **(a2 + 8);
  v10 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  (*v11)(v25);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x25F891030](v25[0], 8);
  result = areAllIndicesI32(a2);
  if (!result)
  {
    return result;
  }

  v15 = v14;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v18 = TypeSize;
  if (v17)
  {
  }

  if (v13 != v18)
  {
    return 0;
  }

  if (*(*(v8 + 72) + 56) != *a2)
  {
    return 1;
  }

  v19 = std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>>(a2 + 16);
  v21 = *(a2 + 16) + 16 * *(a2 + 32);
  if (v21 == v19)
  {
    return 1;
  }

  v22 = v19;
  v23 = v20;
  do
  {
    v24 = *v22;
    v22 += 2;
    llvm::SmallPtrSetImpl<mlir::Attribute>::insert(a3, v24, v25);
    while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v22 += 2;
    }

    result = 1;
  }

  while (v22 != v21);
  return result;
}

uint64_t mlir::LLVM::MemcpyInlineOp::rewire(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v60[8] = *MEMORY[0x277D85DE8];
  v43 = *a1;
  v45 = *a1;
  if (*(a3 + 8))
  {
    v6 = *a3;
    v7 = *(a3 + 16);
    if (v7)
    {
      v8 = v6 + 24 * v7;
      v9 = 24 * v7;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v6 += 24;
        v9 -= 24;
        if (!v9)
        {
          v6 = v8;
          break;
        }
      }
    }

    v41 = *(a2 + 6);
    if (v41)
    {
      v10 = 0;
      v36 = *a2;
      v37 = *(*(v43 + 72) + 24);
      v40 = *(*v6 + 8);
      v11 = 56;
      if (*a2 != v37)
      {
        v11 = 24;
      }

      v35 = v11;
      do
      {
        v44 = mlir::IntegerAttr::get(v40, v10);
        if (llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v44))
        {
          v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v44);
          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = *a3 + 24 * *(a3 + 16);
          }

          __src = 4;
          if (*(v44 + 24) > 0x40u)
          {
            operator new[]();
          }

          v54 = (*(v44 + 16) << 35) | 4;
          v51[0] = v52;
          v51[1] = 0x600000000;
          llvm::SmallVectorImpl<mlir::LLVM::GEPArg>::append<mlir::LLVM::GEPArg const*,void>(v51, &__src, v55);
          v14 = *(v43 + 24);
          v15 = *(**v14 + 32);
          LODWORD(__src) = 0;
          __src = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v15, &__src);
          v50[0] = *(*(v43 + 72) + v35);
          v16 = mlir::OpBuilder::create<mlir::LLVM::GEPOp,mlir::LLVM::LLVMPointerType,mlir::Type const&,mlir::detail::TypedValue<mlir::LLVM::LLVMPointerType>,llvm::SmallVector<mlir::LLVM::GEPArg,6u> &>(a4, v14, &__src, a2 + 1, v50, v51);
          v17 = *(v13 + 8);
          v18 = *(v13 + 16);
          if (v36 == v37)
          {
            v19 = *(v13 + 8);
          }

          else
          {
            v19 = (v16 - 16);
          }

          if (v36 == v37)
          {
            v20 = (v16 - 16);
          }

          else
          {
            v20 = *(v13 + 8);
          }

          IsVolatile = mlir::LLVM::MemcpyInlineOp::getIsVolatile(&v45);
          v22 = *(v43 + 88 + 16 * ((*(v43 + 44) >> 23) & 1));
          if (*(v22 + 24) > 0x40u)
          {
            operator new[]();
          }

          v23 = mlir::IntegerType::get(*(***(v43 + 24) + 32), *(v22 + 24), 0);
          v24 = *(v43 + 24);
          TypeSize = mlir::DataLayout::getTypeSize(a5, v18);
          v27 = TypeSize;
          if (v26)
          {
          }

          v28 = mlir::IntegerAttr::get(v23, v27);
          v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::MemcpyInlineOp,void>::id, *(**v24 + 32));
          if ((v30 & 1) == 0)
          {
            v49 = 1283;
            v48[2] = "llvm.intr.memcpy.inline";
            v48[3] = 23;
            v47 = 259;
            llvm::operator+(v48, &v46, v50);
            llvm::report_fatal_error(v50, 1);
          }

          __src = v24;
          v54 = v29;
          v55[0] = v56;
          v55[1] = 0x400000000;
          v56[4] = v57;
          v56[5] = 0x400000000;
          v57[4] = v58;
          v57[5] = 0x400000000;
          v58[8] = 4;
          v58[9] = v59;
          v58[10] = 0x100000000;
          v59[1] = v60;
          v59[2] = 0x100000000;
          v60[1] = 0;
          v60[2] = 0;
          v60[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v60[4] = 0;
          v60[6] = 0;
          v31 = 592;
          if (IsVolatile)
          {
            v31 = 600;
          }

          mlir::LLVM::MemcpyInlineOp::build(v29, &__src, v19, v20, v28, *(**a4 + v31), 0, 0, 0, 0);
          v32 = mlir::Operation::create(&__src);
          mlir::OpBuilder::insert(a4, v32);
          mlir::OperationState::~OperationState(&__src);
          if (v51[0] != v52)
          {
            free(v51[0]);
          }
        }

        ++v10;
      }

      while (v41 != v10);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL mlir::LLVM::MemmoveOp::canUsesBeRemoved(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v15 = v5;
  if (*(*(v5 + 72) + 24) == *(*(v5 + 72) + 56))
  {
    return 0;
  }

  if (mlir::LLVM::MemmoveOp::getIsVolatile(&v15))
  {
    return 0;
  }

  v10 = v9;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v13 = TypeSize;
  if (v12)
  {
  }

  return v8 == v13;
}

BOOL mlir::LLVM::MemmoveOp::ensureOnlySafeAccesses(mlir::DataLayout **a1, uint64_t *a2)
{
  v3 = *a1;
  mlir::DataLayout::closest(*a1, v11);
  {
    v6 = v4;
    TypeSize = mlir::DataLayout::getTypeSize(v11, a2[1]);
    if (v7)
    {
    }

    v9 = v6 <= TypeSize;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x25F891030](v11[17], 8);
  MEMORY[0x25F891030](v11[14], 8);
  MEMORY[0x25F891030](v11[11], 8);
  MEMORY[0x25F891030](v11[8], 8);
  MEMORY[0x25F891030](v11[5], 8);
  return v9;
}

uint64_t mlir::LLVM::MemmoveOp::canRewire(uint64_t *a1, uint64_t a2, llvm::SmallPtrSetImplBase *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v27 = *a1;
  if (mlir::LLVM::MemmoveOp::getIsVolatile(&v27))
  {
    return 0;
  }

  v9 = **(a2 + 8);
  v10 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  (*v11)(v25);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x25F891030](v25[0], 8);
  result = areAllIndicesI32(a2);
  if (!result)
  {
    return result;
  }

  v15 = v14;
  TypeSize = mlir::DataLayout::getTypeSize(a5, *(a2 + 8));
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v18 = TypeSize;
  if (v17)
  {
  }

  if (v13 != v18)
  {
    return 0;
  }

  if (*(*(v8 + 72) + 56) != *a2)
  {
    return 1;
  }

  v19 = std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>>(a2 + 16);
  v21 = *(a2 + 16) + 16 * *(a2 + 32);
  if (v21 == v19)
  {
    return 1;
  }

  v22 = v19;
  v23 = v20;
  do
  {
    v24 = *v22;
    v22 += 2;
    llvm::SmallPtrSetImpl<mlir::Attribute>::insert(a3, v24, v25);
    while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v22 += 2;
    }

    result = 1;
  }

  while (v22 != v21);
  return result;
}

uint64_t mlir::LLVM::MemmoveOp::rewire(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v59[8] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v44 = *a1;
  if (*(a3 + 8))
  {
    v8 = *a3;
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = v8 + 24 * v9;
      v11 = 24 * v9;
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 += 24;
        v11 -= 24;
        if (!v11)
        {
          v8 = v10;
          break;
        }
      }
    }

    v42 = *(a2 + 6);
    if (v42)
    {
      v12 = 0;
      v37 = *a2;
      v38 = *(*(v5 + 72) + 24);
      v41 = *(*v8 + 8);
      v13 = 56;
      if (*a2 != v38)
      {
        v13 = 24;
      }

      v36 = v13;
      do
      {
        v43 = mlir::IntegerAttr::get(v41, v12);
        if (llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v43))
        {
          v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(a3, &v43);
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = *a3 + 24 * *(a3 + 16);
          }

          __src = 4;
          if (*(v43 + 24) > 0x40u)
          {
            operator new[]();
          }

          v53 = (*(v43 + 16) << 35) | 4;
          v50[0] = v51;
          v50[1] = 0x600000000;
          llvm::SmallVectorImpl<mlir::LLVM::GEPArg>::append<mlir::LLVM::GEPArg const*,void>(v50, &__src, v54);
          v16 = *(v5 + 24);
          v17 = *(**v16 + 32);
          LODWORD(__src) = 0;
          __src = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v17, &__src);
          v49[0] = *(*(v5 + 72) + v36);
          v18 = mlir::OpBuilder::create<mlir::LLVM::GEPOp,mlir::LLVM::LLVMPointerType,mlir::Type const&,mlir::detail::TypedValue<mlir::LLVM::LLVMPointerType>,llvm::SmallVector<mlir::LLVM::GEPArg,6u> &>(a4, v16, &__src, a2 + 1, v49, v50);
          v19 = *(v15 + 8);
          v20 = *(v15 + 16);
          if (v37 == v38)
          {
            v21 = *(v15 + 8);
          }

          else
          {
            v21 = (v18 - 16);
          }

          if (v37 == v38)
          {
            v22 = (v18 - 16);
          }

          else
          {
            v22 = *(v15 + 8);
          }

          IsVolatile = mlir::LLVM::MemmoveOp::getIsVolatile(&v44);
          v24 = *(v5 + 24);
          v25 = *(*(*(v5 + 72) + 88) + 8);
          TypeSize = mlir::DataLayout::getTypeSize(a5, v20);
          if (v26)
          {
          }

          __src = mlir::IntegerAttr::get((v25 & 0xFFFFFFFFFFFFFFF8), TypeSize);
          v28 = mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(a4, v24, &__src);
          v29 = *(v5 + 24);
          v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::MemmoveOp,void>::id, *(**v29 + 32));
          if ((v31 & 1) == 0)
          {
            v48 = 1283;
            v47[2] = "llvm.intr.memmove";
            v47[3] = 17;
            v46 = 259;
            llvm::operator+(v47, &v45, v49);
            llvm::report_fatal_error(v49, 1);
          }

          __src = v29;
          v53 = v30;
          v54[0] = v55;
          v54[1] = 0x400000000;
          v55[4] = v56;
          v55[5] = 0x400000000;
          v56[4] = v57;
          v56[5] = 0x400000000;
          v57[8] = 4;
          v57[9] = v58;
          v57[10] = 0x100000000;
          v58[1] = v59;
          v58[2] = 0x100000000;
          v59[1] = 0;
          v59[2] = 0;
          v59[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v59[4] = 0;
          v59[6] = 0;
          v32 = 592;
          if (IsVolatile)
          {
            v32 = 600;
          }

          mlir::LLVM::MemmoveOp::build(v30, &__src, v21, v22, (v28 - 16), *(**a4 + v32), 0, 0, 0, 0);
          v33 = mlir::Operation::create(&__src);
          mlir::OpBuilder::insert(a4, v33);
          mlir::OperationState::~OperationState(&__src);
          if (v50[0] != v51)
          {
            free(v50[0]);
          }
        }

        ++v12;
      }

      while (v42 != v12);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::LLVM::LLVMStructType::getSubelementIndexMap@<X0>(mlir::LLVM::LLVMStructType *this@<X0>, uint64_t a2@<X8>)
{
  v4 = mlir::IntegerType::get(*(***this + 32), 32, 0);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v5 = *this;
  v6 = *(*this + 24);
  if ((v6 & 1) == 0)
  {
    v7 = (v5 + 8);
    v8 = v6 >> 2;
    if (v6 >> 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v7 = (v5 + 16);
  v8 = *(v5 + 28) >> 3;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  v10 = *v7;
  v11 = 8 * v8;
  do
  {
    v17 = mlir::IntegerAttr::get(v4, v9);
    v18 = *(v10 + 8 * v9);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::try_emplace<mlir::Type>(&v19, &v17, &v18, &v16);
    ++v9;
    v11 -= 8;
  }

  while (v11);
  v12 = v19;
  v13 = v20;
  v14 = v21;
LABEL_8:
  *a2 = v12;
  v19 = 0;
  v20 = 0;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  v21 = 0;
  *(a2 + 24) = 1;
  return MEMORY[0x25F891030](0, 8);
}

uint64_t mlir::LLVM::LLVMStructType::getTypeAtIndex(uint64_t *a1, uint64_t a2)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  v11 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v3[2] & 0x3FFFFFFF) != 0x20)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v11);
  v6 = *a1;
  v7 = *(*a1 + 24);
  if (v7)
  {
    v8 = (v6 + 16);
    v9 = *(v6 + 28) >> 3;
    if (Int < 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v6 + 8);
    v9 = v7 >> 2;
    if (Int < 0)
    {
      return 0;
    }
  }

  if ((Int & 0x7FFFFFFFu) < v9)
  {
    return *(*v8 + 8 * (Int & 0x7FFFFFFF));
  }

  return 0;
}

uint64_t mlir::LLVM::LLVMArrayType::getSubelementIndexMap@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*this + 16);
  if (v3 < 0x11)
  {
    v4 = this;
    v5 = mlir::IntegerType::get(*(***this + 32), 32, 0);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v3)
    {
      v6 = v5;
      for (i = 0; i != v3; ++i)
      {
        v8 = mlir::IntegerAttr::get(v6, i);
        v9 = *(*v4 + 8);
        v14 = v8;
        v15 = v9;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::try_emplace<mlir::Type>(&v16, &v14, &v15, &v13);
      }

      v10 = v16;
      v11 = v17;
      v12 = v18;
    }

    else
    {
      v12 = 0;
      v10 = 0;
      v11 = 0;
    }

    *a2 = v10;
    v16 = 0;
    v17 = 0;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    v18 = 0;
    *(a2 + 24) = 1;
    return MEMORY[0x25F891030](0, 8);
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return this;
}

uint64_t mlir::LLVM::LLVMArrayType::getTypeAtIndex(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  v7 = v2;
  if (v2 && (v3 = *(v2 + 8), *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && (v3[2] & 0x3FFFFFFF) == 0x20 && (Int = mlir::IntegerAttr::getInt(&v7), (Int & 0x80000000) == 0) && *(*a1 + 16) > (Int & 0x7FFFFFFF))
  {
    return *(*a1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DestructurableTypeInterface>();
      mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[46];
}

uint64_t llvm::getTypeName<mlir::DestructurableTypeInterface>()
{
  {
    llvm::getTypeName<mlir::DestructurableTypeInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DestructurableTypeInterface>();
    *algn_27FC1B188 = v1;
  }

  return llvm::getTypeName<mlir::DestructurableTypeInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestructurableTypeInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestructurableTypeInterface]";
  v6 = 95;
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

uint64_t castSameSizedTypes(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a3;
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v5 == a4)
  {
    return a3;
  }

  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id && *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    return mlir::OpBuilder::createOrFold<mlir::LLVM::AddrSpaceCastOp,mlir::Type &,mlir::Value &>(a1, a2, &v11, &v12);
  }

  v10 = castToSameSizedInt(a1, a2, a3, a5);

  return castIntValueToSameSizedType(a1, a2, v10, a4);
}

uint64_t castToSameSizedInt(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v4 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    TypeSizeInBits = mlir::DataLayout::getTypeSizeInBits(a4, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
    }

    v11 = mlir::IntegerType::get(*a1, TypeSizeInBits, 0);
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
      return mlir::OpBuilder::createOrFold<mlir::LLVM::PtrToIntOp,mlir::IntegerType &,mlir::Value &>(a1, a2, &v11, &v12);
    }

    else
    {
      return mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::IntegerType &,mlir::Value &>(a1, a2, &v11, &v12);
    }
  }

  return a3;
}

void *isBigEndian(const mlir::DataLayout *a1)
{
  result = mlir::DataLayout::getEndianness(a1);
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && result[3] == 3)
    {
      v2 = result[2];
      v3 = *v2;
      v4 = *(v2 + 2);
      return (v3 == 26978 && v4 == 103);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v6;
  v16[2] = &v17;
  v16[3] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v7 = *a3;
  v8 = *v7;
  v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  v15 = (*v10)(v10, v7);
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(v16) = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &v15, v16);
  v11 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t castIntValueToSameSizedType(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a3;
  if ((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8) != a4)
  {
    if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
      return mlir::OpBuilder::createOrFold<mlir::LLVM::IntToPtrOp,mlir::Type &,mlir::Value &>(a1, a2, &v6, &v7);
    }

    else
    {
      return mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::Type &,mlir::Value &>(a1, a2, &v6, &v7);
    }
  }

  return a3;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::AddrSpaceCastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::AddrSpaceCastOp,mlir::Type &,mlir::Value &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::AddrSpaceCastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::AddrSpaceCastOp,void>::id, *(**a3 + 32));
  if ((v11 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "llvm.addrspacecast";
    v25[3] = 18;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = a3;
  v27[1] = v10;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  mlir::LLVM::AddrSpaceCastOp::build(a1, v27, *a4, *a5);
  v12 = mlir::Operation::create(v27);
  v13 = v12;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *(a1 + 3);
    *(v12 + 2) = v14;
    *(v12 + 8) = -1;
    v16 = *v15;
    *v12 = *v15;
    *(v12 + 1) = v15;
    *(v16 + 1) = v12;
    *v15 = v12;
  }

  if ((mlir::OpBuilder::tryFold(a1, v12, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v13 + 2))
    {
      *(v13 + 2) = 0;
      v18 = *v13;
      v17 = *(v13 + 1);
      *v17 = *v13;
      *(v18 + 8) = v17;
      *v13 = 0;
      *(v13 + 1) = 0;
    }

    mlir::Operation::destroy(v13);
  }

  else
  {
    v19 = *(v13 + 9);
    if (v19)
    {
      v20 = (v13 - 16);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v20, 0, v20, v19);
    if (*(a1 + 2))
    {
      v21 = *(a1 + 1);
      if (v21)
      {
        (*(*v21 + 16))(v21, v13, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v27);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::PtrToIntOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::PtrToIntOp,mlir::IntegerType &,mlir::Value &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::IntegerType &,mlir::Value &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::PtrToIntOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::PtrToIntOp,void>::id, *(**a3 + 32));
  if ((v11 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "llvm.ptrtoint";
    v25[3] = 13;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = a3;
  v27[1] = v10;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  mlir::LLVM::PtrToIntOp::build(a1, v27, *a4, *a5);
  v12 = mlir::Operation::create(v27);
  v13 = v12;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *(a1 + 3);
    *(v12 + 2) = v14;
    *(v12 + 8) = -1;
    v16 = *v15;
    *v12 = *v15;
    *(v12 + 1) = v15;
    *(v16 + 1) = v12;
    *v15 = v12;
  }

  if ((mlir::OpBuilder::tryFold(a1, v12, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v13 + 2))
    {
      *(v13 + 2) = 0;
      v18 = *v13;
      v17 = *(v13 + 1);
      *v17 = *v13;
      *(v18 + 8) = v17;
      *v13 = 0;
      *(v13 + 1) = 0;
    }

    mlir::Operation::destroy(v13);
  }

  else
  {
    v19 = *(v13 + 9);
    if (v19)
    {
      v20 = (v13 - 16);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v20, 0, v20, v19);
    if (*(a1 + 2))
    {
      v21 = *(a1 + 1);
      if (v21)
      {
        (*(*v21 + 16))(v21, v13, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v27);
  v22 = *MEMORY[0x277D85DE8];
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::BitcastOp>(*(**a3 + 32));
  v22[0] = a3;
  v22[1] = v10;
  v22[2] = v23;
  v22[3] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::LLVM::BitcastOp::build(a1, v22, *a4, *a5);
  v11 = mlir::Operation::create(v22);
  v12 = v11;
  v13 = *(a1 + 2);
  if (v13)
  {
    v14 = *(a1 + 3);
    *(v11 + 2) = v13;
    *(v11 + 8) = -1;
    v15 = *v14;
    *v11 = *v14;
    *(v11 + 1) = v14;
    *(v15 + 1) = v11;
    *v14 = v11;
  }

  if ((mlir::OpBuilder::tryFold(a1, v11, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v12 + 2))
    {
      *(v12 + 2) = 0;
      v17 = *v12;
      v16 = *(v12 + 1);
      *v16 = *v12;
      *(v17 + 8) = v16;
      *v12 = 0;
      *(v12 + 1) = 0;
    }

    mlir::Operation::destroy(v12);
  }

  else
  {
    v18 = *(v12 + 9);
    if (v18)
    {
      v19 = (v12 - 16);
    }

    else
    {
      v19 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v19, 0, v19, v18);
    if (*(a1 + 2))
    {
      v20 = *(a1 + 1);
      if (v20)
      {
        (*(*v20 + 16))(v20, v12, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v22);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::BitcastOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::BitcastOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "llvm.bitcast";
    v5[3] = 12;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ZExtOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::ZExtOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.zext";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ShlOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::ShlOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.shl";
    v6[3] = 8;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::OrOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::OrOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.or";
    v6[3] = 7;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::IntToPtrOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::IntToPtrOp,mlir::Type &,mlir::Value &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::Type &,mlir::Value &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::IntToPtrOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::IntToPtrOp,void>::id, *(**a3 + 32));
  if ((v11 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "llvm.inttoptr";
    v25[3] = 13;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = a3;
  v27[1] = v10;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  mlir::LLVM::IntToPtrOp::build(a1, v27, *a4, *a5);
  v12 = mlir::Operation::create(v27);
  v13 = v12;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *(a1 + 3);
    *(v12 + 2) = v14;
    *(v12 + 8) = -1;
    v16 = *v15;
    *v12 = *v15;
    *(v12 + 1) = v15;
    *(v16 + 1) = v12;
    *v15 = v12;
  }

  if ((mlir::OpBuilder::tryFold(a1, v12, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v13 + 2))
    {
      *(v13 + 2) = 0;
      v18 = *v13;
      v17 = *(v13 + 1);
      *v17 = *v13;
      *(v18 + 8) = v17;
      *v13 = 0;
      *(v13 + 1) = 0;
    }

    mlir::Operation::destroy(v13);
  }

  else
  {
    v19 = *(v13 + 9);
    if (v19)
    {
      v20 = (v13 - 16);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v20, 0, v20, v19);
    if (*(a1 + 2))
    {
      v21 = *(a1 + 1);
      if (v21)
      {
        (*(*v21 + 16))(v21, v13, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v27);
  v22 = *MEMORY[0x277D85DE8];
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::BitcastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v27[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::BitcastOp>(*(**a3 + 32));
  v22[0] = a3;
  v22[1] = v10;
  v22[2] = v23;
  v22[3] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[4] = v25;
  v24[5] = 0x400000000;
  v25[8] = 4;
  v25[9] = v26;
  v25[10] = 0x100000000;
  v26[1] = v27;
  v26[2] = 0x100000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v27[4] = 0;
  v27[6] = 0;
  mlir::LLVM::BitcastOp::build(a1, v22, *a4, *a5);
  v11 = mlir::Operation::create(v22);
  v12 = v11;
  v13 = *(a1 + 2);
  if (v13)
  {
    v14 = *(a1 + 3);
    *(v11 + 2) = v13;
    *(v11 + 8) = -1;
    v15 = *v14;
    *v11 = *v14;
    *(v11 + 1) = v14;
    *(v15 + 1) = v11;
    *v14 = v11;
  }

  if ((mlir::OpBuilder::tryFold(a1, v11, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v12 + 2))
    {
      *(v12 + 2) = 0;
      v17 = *v12;
      v16 = *(v12 + 1);
      *v16 = *v12;
      *(v17 + 8) = v16;
      *v12 = 0;
      *(v12 + 1) = 0;
    }

    mlir::Operation::destroy(v12);
  }

  else
  {
    v18 = *(v12 + 9);
    if (v18)
    {
      v19 = (v12 - 16);
    }

    else
    {
      v19 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v19, 0, v19, v18);
    if (*(a1 + 2))
    {
      v20 = *(a1 + 1);
      if (v20)
      {
        (*(*v20 + 16))(v20, v12, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v22);
  v21 = *MEMORY[0x277D85DE8];
}

BOOL isSupportedTypeForConversion(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
  {
    return 0;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
  {
    return 0;
  }

  if (v1 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    return 1;
  }

  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + v5);
  v7 = memchr(*(a1 + 32), 1, v5);
  return !v7 || v7 == v6;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::LLVM::LShrOp,mlir::Value &,mlir::LLVM::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::LLVM::LShrOp,mlir::Value &,mlir::LLVM::ConstantOp &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

char *mlir::OpBuilder::create<mlir::LLVM::TruncOp,mlir::IntegerType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::TruncOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::LLVM::TruncOp::build(a1, v13, *a3, *a4, 0);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::TruncOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::LShrOp,mlir::Value &,mlir::LLVM::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::LShrOp,void>::id, *(**a3 + 32));
  if ((v11 & 1) == 0)
  {
    v26 = 1283;
    v25[2] = "llvm.lshr";
    v25[3] = 9;
    v24 = 259;
    llvm::operator+(v25, &v23, v27);
    llvm::report_fatal_error(v27, 1);
  }

  v27[0] = a3;
  v27[1] = v10;
  v27[2] = v28;
  v27[3] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[8] = 4;
  v30[9] = v31;
  v30[10] = 0x100000000;
  v31[1] = v32;
  v31[2] = 0x100000000;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v32[4] = 0;
  v32[6] = 0;
  mlir::LLVM::LShrOp::build(a1, v27, *a4, *a5 - 16, 0);
  v12 = mlir::Operation::create(v27);
  v13 = v12;
  v14 = *(a1 + 2);
  if (v14)
  {
    v15 = *(a1 + 3);
    *(v12 + 2) = v14;
    *(v12 + 8) = -1;
    v16 = *v15;
    *v12 = *v15;
    *(v12 + 1) = v15;
    *(v16 + 1) = v12;
    *v15 = v12;
  }

  if ((mlir::OpBuilder::tryFold(a1, v12, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v13 + 2))
    {
      *(v13 + 2) = 0;
      v18 = *v13;
      v17 = *(v13 + 1);
      *v17 = *v13;
      *(v18 + 8) = v17;
      *v13 = 0;
      *(v13 + 1) = 0;
    }

    mlir::Operation::destroy(v13);
  }

  else
  {
    v19 = *(v13 + 9);
    if (v19)
    {
      v20 = (v13 - 16);
    }

    else
    {
      v20 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v20, 0, v20, v19);
    if (*(a1 + 2))
    {
      v21 = *(a1 + 1);
      if (v21)
      {
        (*(*v21 + 16))(v21, v13, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v27);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::TruncOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::TruncOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.trunc";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::MemorySlot>::append<mlir::MemorySlot const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::DbgValueOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::DbgValueOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.intr.dbg.value";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void *llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::copyFrom(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x25F891030](*a1, 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    buffer = llvm::allocate_buffer((16 * v5), 8uLL);
    *a1 = buffer;
    *(a1 + 8) = *(a2 + 8);
    v7 = *a2;
    v8 = 16 * *(a1 + 16);

    return memcpy(buffer, v7, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::AllocaOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.alloca";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 24 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 24 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 24 * v3;
      v16 = v4;
      do
      {
        v17 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::LookupBucketFor<mlir::Attribute>(*a1, *(a1 + 16), v17, &v24);
          v18 = v24;
          *v24 = *v16;
          *(v18 + 1) = *(v16 + 8);
          ++*(a1 + 8);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = 24 * v19 - 24;
    v22 = vdupq_n_s64(v21 / 0x18);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_25D0A0500)));
      if (v23.i8[0])
      {
        *result = -4096;
      }

      if (v23.i8[4])
      {
        result[3] = -4096;
      }

      v20 += 2;
      result += 6;
    }

    while (((v21 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v20);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::doFind<mlir::Attribute>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::doFind<mlir::Attribute>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (*a1 + 24 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v3 + 24 * v5);
      v7 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<mlir::MemorySlot,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

void mlir::OpBuilder::createOrFold<mlir::LLVM::GEPOp,mlir::Type,mlir::IntegerType &,mlir::Value const&,llvm::ArrayRef<mlir::LLVM::GEPArg>,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, unsigned __int8 *a8)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::GEPOp>(a1, *(**a3 + 32));
  v28[0] = a3;
  v28[1] = v16;
  v28[2] = v29;
  v28[3] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[4] = v31;
  v30[5] = 0x400000000;
  v31[8] = 4;
  v31[9] = v32;
  v31[10] = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  mlir::LLVM::GEPOp::build(a1, v28, *a4, *a5, *a6, *a7, *(a7 + 8), *a8, 0, 0);
  v17 = mlir::Operation::create(v28);
  v18 = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(a1 + 24);
    *(v17 + 2) = v19;
    *(v17 + 8) = -1;
    v21 = *v20;
    *v17 = *v20;
    *(v17 + 1) = v20;
    *(v21 + 1) = v17;
    *v20 = v17;
  }

  if ((mlir::OpBuilder::tryFold(a1, v17, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v18 + 2))
    {
      *(v18 + 2) = 0;
      v23 = *v18;
      v22 = *(v18 + 1);
      *v22 = *v18;
      *(v23 + 8) = v22;
      *v18 = 0;
      *(v18 + 1) = 0;
    }

    mlir::Operation::destroy(v18);
  }

  else
  {
    v24 = *(v18 + 9);
    if (v24)
    {
      v25 = (v18 - 16);
    }

    else
    {
      v25 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v25, 0, v25, v24);
    if (*(a1 + 16))
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        (*(*v26 + 16))(v26, v18, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v28);
  v27 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::LLVM::ZExtOp,mlir::IntegerType &,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ZExtOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = &v18;
  v17[1] = 0x400000000;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v14 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v19, &__src, v16);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::ZExtOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

char *mlir::OpBuilder::create<mlir::LLVM::ConstantOp,mlir::IntegerType &,unsigned long long &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::LLVM::ConstantOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::LLVM::ShlOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ShlOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::LLVM::ShlOp::build(a1, v13, *a3, *a4, 0);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::ShlOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::OpBuilder::create<mlir::LLVM::OrOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::OrOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::LLVM::OrOp::build(a1, v13, *a3, *a4, 0);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::OrOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

unint64_t anonymous namespace::getStaticMemIntrLen<mlir::LLVM::MemsetOp>(uint64_t a1)
{
  v10 = 1;
  v1 = *(*(a1 + 72) + 88);
  v8 = &v9;
  v9 = 0;
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = (v3 + 120);
    if (v3 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = (v1 + 16 * v2 + 16);
  }

  if (!mlir::detail::constant_int_value_binder::match(&v8, v4))
  {
    if (v10 < 0x41)
    {
LABEL_14:
      v5 = 0;
      v6 = 0;
      return v6 | v5;
    }

LABEL_12:
    if (v9)
    {
      MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }

    goto LABEL_14;
  }

  if (v10 > 0x40)
  {
    goto LABEL_12;
  }

  v5 = v9 & 0xFFFFFFFFFFFFFF00;
  v6 = v9;
  return v6 | v5;
}

uint64_t areAllIndicesI32(uint64_t a1)
{
  v2 = mlir::IntegerType::get(*(**(*(*a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 32), 32, 0);
  v3 = std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>>(a1 + 16);
  v5 = *(a1 + 16) + 16 * *(a1 + 32);
  if (v5 == v3)
  {
    return 1;
  }

  while (*(**v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v2 == *(*v3 + 8))
  {
    do
    {
      v3 += 2;
    }

    while (v3 != v4 && (*v3 | 0x1000) == 0xFFFFFFFFFFFFF000);
    if (v3 == v5)
    {
      return 1;
    }
  }

  return 0;
}

void *std::begin[abi:nn200100]<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>>(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[2 * v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 16 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      result += 2;
      v6 -= 16;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::getStaticMemIntrLen<mlir::LLVM::MemsetInlineOp>(uint64_t a1)
{
  v1 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 88);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

char *mlir::OpBuilder::create<mlir::LLVM::LoadOp,mlir::Type const&,mlir::detail::TypedValue<mlir::LLVM::LLVMPointerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::LoadOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  *&v18[8] = 0u;
  v19 = &mlir::detail::TypeIDResolver<void,void>::id;
  v20 = 0;
  v21 = 0;
  mlir::LLVM::LoadOp::build(a1, v13, *a3, *a4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::LoadOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::LoadOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::LoadOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.load";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

unint64_t anonymous namespace::getStaticMemIntrLen<mlir::LLVM::MemcpyOp>(uint64_t a1)
{
  v10 = 1;
  v1 = *(*(a1 + 72) + 88);
  v8 = &v9;
  v9 = 0;
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = (v3 + 120);
    if (v3 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = (v1 + 16 * v2 + 16);
  }

  if (!mlir::detail::constant_int_value_binder::match(&v8, v4))
  {
    if (v10 < 0x41)
    {
LABEL_14:
      v5 = 0;
      v6 = 0;
      return v6 | v5;
    }

LABEL_12:
    if (v9)
    {
      MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }

    goto LABEL_14;
  }

  if (v10 > 0x40)
  {
    goto LABEL_12;
  }

  v5 = v9 & 0xFFFFFFFFFFFFFF00;
  v6 = v9;
  return v6 | v5;
}

char *mlir::OpBuilder::create<mlir::LLVM::StoreOp,mlir::Value &,mlir::detail::TypedValue<mlir::LLVM::LLVMPointerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::StoreOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  *&v18[8] = 0u;
  v19 = &mlir::detail::TypeIDResolver<void,void>::id;
  v20 = 0;
  v21 = 0;
  mlir::LLVM::StoreOp::build(a1, v13, *a3, *a4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::StoreOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::StoreOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::StoreOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.store";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::LLVM::GEPOp,mlir::LLVM::LLVMPointerType,mlir::Type const&,mlir::detail::TypedValue<mlir::LLVM::LLVMPointerType>,llvm::SmallVector<mlir::LLVM::GEPArg,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::GEPOp>(a1, *(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::LLVM::GEPOp::build(a1, v17, *a3, *a4, *a5, *a6, *(a6 + 8), 0, 0, 0);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::GEPOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void llvm::SmallVectorImpl<mlir::LLVM::GEPArg>::append<mlir::LLVM::GEPArg const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::MemcpyOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::MemcpyOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "llvm.intr.memcpy";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t anonymous namespace::getStaticMemIntrLen<mlir::LLVM::MemcpyInlineOp>(uint64_t a1)
{
  v1 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 88);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

unint64_t anonymous namespace::getStaticMemIntrLen<mlir::LLVM::MemmoveOp>(uint64_t a1)
{
  v10 = 1;
  v1 = *(*(a1 + 72) + 88);
  v8 = &v9;
  v9 = 0;
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = (v3 + 120);
    if (v3 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = (v1 + 16 * v2 + 16);
  }

  if (!mlir::detail::constant_int_value_binder::match(&v8, v4))
  {
    if (v10 < 0x41)
    {
LABEL_14:
      v5 = 0;
      v6 = 0;
      return v6 | v5;
    }

LABEL_12:
    if (v9)
    {
      MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }

    goto LABEL_14;
  }

  if (v10 > 0x40)
  {
    goto LABEL_12;
  }

  v5 = v9 & 0xFFFFFFFFFFFFFF00;
  v6 = v9;
  return v6 | v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::try_emplace<mlir::Type>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::InsertIntoBucketImpl<mlir::Attribute>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::LookupBucketFor<mlir::Attribute>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::InsertIntoBucketImpl<mlir::Attribute>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>,mlir::Attribute,mlir::Type,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Type>>::LookupBucketFor<mlir::Attribute>(a1, v19, &v28);
          *v28 = *v19;
          v28[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0xFFFFFFFFFFFFFFFLL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0xFFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 16;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v27.i8[0])
      {
        *(v26 - 2) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 4;
    }

    while (v24 != v21);
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::LLVMArrayType,mlir::Type,mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::detail::TypeUniquer,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getChecked<mlir::Type,unsigned long long>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = a5;
  v20 = a4;
  v9 = *(*a4 + 136);
  if (v9 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    v10 = *(*a4 + 136);
    if (v10 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID())
    {
      v11 = *(*a4 + 136);
      if (v11 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID())
      {
        v12 = *(*a4 + 136);
        if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id && v12 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID() && *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
        {
          goto LABEL_12;
        }
      }
    }
  }

  a1(&v23, a2);
  if (v23)
  {
    mlir::Diagnostic::operator<<<29ul>(&v24, "invalid array element type: ");
    if (v23)
    {
      v21 = 4;
      v22 = a4;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
      v14 = v25 + 24 * v26;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v26;
    }
  }

  v16 = v27;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  if (v16)
  {
    result = 0;
  }

  else
  {
LABEL_12:
    result = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMArrayType,mlir::Type &,unsigned long long &>(a3, &v20, &v19);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LLVMArrayType::parse(mlir::LLVM::LLVMArrayType *this, mlir::AsmParser *a2)
{
  v13[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  v3 = (*(*this + 40))(this);
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_8;
  }

  v10[0] = 0;
  if ((mlir::AsmParser::parseInteger<unsigned long long>(this, v10) & 1) == 0)
  {
    v8 = (*(*this + 40))(this);
    v11 = 259;
    (*(*this + 24))(v13, this, v8, v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    goto LABEL_8;
  }

  v4 = v10[0];
  v11 = 257;
  if (((*(*this + 400))(this, "x", 1, v10) & 1) == 0)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  (*(*this + 40))(this);
  result = dispatchParse(this, 1);
  if (result)
  {
    v6 = result;
    if ((*(*this + 168))(this))
    {
      v7 = *(*(*this + 32))(this);
      v12 = v3;
      v10[0] = this;
      v10[1] = &v12;
      result = mlir::detail::StorageUserBase<mlir::LLVM::LLVMArrayType,mlir::Type,mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::detail::TypeUniquer,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getChecked<mlir::Type,unsigned long long>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM13LLVMArrayTypeEJPNS1_11MLIRContextENS1_4TypeEyEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v10, v7, v6, v4);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::LLVMArrayType::print(mlir::LLVM::LLVMArrayType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 16);
  v7 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v7, v6, 0, 0, 0);
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
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "x", 1uLL);
  }

  else
  {
    *v11 = 120;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v15 = *(v12 + 4);
  if (v15 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v15 + 1;
    *v15 = 32;
  }

  dispatchPrint(a2, *(*this + 8), v13, v14);
  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::LLVMFunctionType,mlir::Type,mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::Type,llvm::ArrayRef<mlir::Type>,BOOL>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7)
{
  v7 = a4;
  v33 = *MEMORY[0x277D85DE8];
  *(&v24 + 1) = a6;
  v25 = a4;
  *&v24 = a5;
  v23 = a7;
  v11 = *(*a4 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id || (v13 = a5, v11 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID()) || (v14 = *(*v7 + 136), v14 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID()))
  {
    a1(&v28, a2);
    if (!v28)
    {
      goto LABEL_14;
    }

    mlir::Diagnostic::operator<<<31ul>(v29, "invalid function result type: ");
    goto LABEL_12;
  }

  if (!a6)
  {
LABEL_16:
    result = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFunctionType,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(a3, &v25, &v24, &v23);
    goto LABEL_17;
  }

  v15 = 8 * a6;
  while (1)
  {
    v7 = *v13;
    v16 = *(**v13 + 136);
    if (v16 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID() || *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
    {
      break;
    }

    ++v13;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_16;
    }
  }

  a1(&v28, a2);
  if (v28)
  {
    mlir::Diagnostic::operator<<<33ul>(v29, "invalid function argument type: ");
LABEL_12:
    if (v28)
    {
      v26 = 4;
      v27 = v7;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
      v18 = v30 + 24 * v31;
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++v31;
    }
  }

LABEL_14:
  v20 = v32;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

  result = 0;
LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LLVMFunctionType::parse(mlir::LLVM::LLVMFunctionType *this, mlir::AsmParser *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  v3 = (*(*this + 40))(this);
  LOBYTE(v18) = 0;
  v21 = 0;
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*this + 40))(this);
  v4 = dispatchParse(this, 1);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  v6 = (*(*this + 40))(this);
  v18 = v20;
  v19 = 0x600000000;
  v21 = 1;
  if ((*(*this + 304))(this))
  {
    v7 = 0;
  }

  else if ((*(*this + 352))(this))
  {
    if (((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_21;
    }

    v7 = 1;
  }

  else
  {
    v10 = dispatchParse(this, 1);
    if (!v10)
    {
      goto LABEL_21;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v18, v10);
    if ((*(*this + 128))(this))
    {
      do
      {
        v7 = (*(*this + 352))(this);
        if (v7)
        {
          break;
        }

        v11 = dispatchParse(this, 1);
        if (!v11)
        {
          goto LABEL_21;
        }

        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v18, v11);
      }

      while (((*(*this + 128))(this) & 1) != 0);
    }

    else
    {
      v7 = 0;
    }

    if (((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ((v21 & 1) == 0)
  {
    v14[0] = "custom parser failed to parse parameter 'params'";
    v15 = 259;
    (*(*this + 24))(v17, this, v6, v14);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    goto LABEL_21;
  }

  if (((*(*this + 168))(this) & 1) == 0)
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v8 = *(*(*this + 32))(this);
  v16 = v3;
  v14[0] = this;
  v14[1] = &v16;
  v9 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMFunctionType,mlir::Type,mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::Type,llvm::ArrayRef<mlir::Type>,BOOL>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM16LLVMFunctionTypeEJPNS1_11MLIRContextENS1_4TypeENS_8ArrayRefISC_EEbEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v14, v8, v5, v18, v19, v7 & 1);
LABEL_22:
  if (v21 == 1 && v18 != v20)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::raw_ostream *mlir::LLVM::LLVMFunctionType::print(mlir::LLVM::LLVMFunctionType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v7 = *(v4 + 4);
  if (*(v4 + 3) == v7)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v7 = 60;
    ++*(v4 + 4);
  }

  dispatchPrint(a2, *(*this + 8), v5, v6);
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++*(v8 + 4);
  }

  v10 = (*(*a2 + 16))(a2);
  v13 = *(v10 + 4);
  if (*(v10 + 3) == v13)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++*(v10 + 4);
  }

  v14 = *this;
  v15 = *(*this + 24);
  v16 = *(v14 + 32);
  if (v15)
  {
    v17 = *(v14 + 16);
    dispatchPrint(a2, *v17, v11, v12);
    if (v15 == 1)
    {
      if (!v16)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    v18 = v17 + 1;
    v19 = 8 * v15 - 8;
    do
    {
      v20 = (*(*a2 + 16))(a2);
      v23 = *(v20 + 4);
      if (*(v20 + 3) - v23 > 1uLL)
      {
        *v23 = 8236;
        *(v20 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v20, ", ", 2uLL);
      }

      v24 = *v18++;
      dispatchPrint(a2, v24, v21, v22);
      v19 -= 8;
    }

    while (v19);
    if (v16)
    {
LABEL_22:
      v25 = (*(*a2 + 16))(a2);
      v26 = *(v25 + 4);
      if (*(v25 + 3) - v26 > 1uLL)
      {
        *v26 = 8236;
        *(v25 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      goto LABEL_25;
    }
  }

  else if (v16)
  {
LABEL_25:
    v27 = (*(*a2 + 16))(a2);
    v28 = *(v27 + 4);
    if ((*(v27 + 3) - v28) > 2)
    {
      *(v28 + 2) = 46;
      *v28 = 11822;
      *(v27 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v27, "...", 3uLL);
    }
  }

LABEL_28:
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 41);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 41;
  }

  result = (*(*a2 + 16))(a2);
  v32 = *(result + 4);
  if (*(result + 3) == v32)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v32 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LLVMPointerType::parse(mlir::LLVM::LLVMPointerType *this, mlir::AsmParser *a2)
{
  v12[26] = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  if ((*(*this + 160))(this))
  {
    v10[0] = 0;
    v3 = mlir::AsmParser::parseInteger<unsigned int>(this, v10);
    v4 = *this;
    if ((v3 & 1) == 0)
    {
      v8 = (*(v4 + 40))(this);
      v11 = 259;
      (*(*this + 24))(v12, this, v8, v10);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
LABEL_8:
      result = 0;
      goto LABEL_9;
    }

    v5 = v10[0];
    if (((*(v4 + 168))(this) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*this + 32))(this);
  v10[0] = v5;
  result = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v6, v10);
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::LLVMPointerType::print(llvm::raw_ostream *this, mlir::AsmPrinter *a2)
{
  if (*(*this + 8))
  {
    v3 = this;
    v4 = (*(*a2 + 16))(a2);
    v5 = *(v4 + 4);
    if (*(v4 + 3) == v5)
    {
      llvm::raw_ostream::write(v4, "<", 1uLL);
    }

    else
    {
      *v5 = 60;
      ++*(v4 + 4);
    }

    v6 = *(*v3 + 8);
    if (v6)
    {
      v7 = (*(*a2 + 16))(a2);
      write_unsigned<unsigned long long>(v7, v6, 0, 0, 0);
    }

    this = (*(*a2 + 16))(a2);
    v8 = *(this + 4);
    if (*(this + 3) == v8)
    {

      return llvm::raw_ostream::write(this, ">", 1uLL);
    }

    else
    {
      *v8 = 62;
      ++*(this + 4);
    }
  }

  return this;
}

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::LLVMFixedVectorType,mlir::Type,mlir::LLVM::detail::LLVMFixedVectorTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::Type,unsigned int>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v8 = a4;
  v7 = a5;
  if (mlir::LLVM::LLVMFixedVectorType::verify(a1, a2, a4, a5))
  {
    return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFixedVectorType,mlir::Type &,unsigned int &>(a3, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::LLVM::LLVMFixedVectorType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    a1(&v10, a2);
    if (v10)
    {
      mlir::Diagnostic::operator<<<47ul>(v11, "the number of vector elements must be positive");
    }

    goto LABEL_9;
  }

  v6 = *(*a3 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id && v6 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID())
  {
    a1(&v10, a2);
    if (v10)
    {
      mlir::Diagnostic::operator<<<28ul>(v11, "invalid vector element type");
    }

LABEL_9:
    v7 = v11[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

llvm::raw_ostream *mlir::LLVM::LLVMFixedVectorType::print(mlir::LLVM::LLVMFixedVectorType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 16);
  v7 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v7, v6, 0, 0, 0);
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
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "x", 1uLL);
  }

  else
  {
    *v11 = 120;
    ++*(v10 + 4);
  }

  v12 = (*(*a2 + 16))(a2);
  v15 = *(v12 + 4);
  if (v15 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v15 + 1;
    *v15 = 32;
  }

  dispatchPrint(a2, *(*this + 8), v13, v14);
  result = (*(*a2 + 16))(a2);
  v17 = *(result + 4);
  if (*(result + 3) == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::LLVMScalableVectorType,mlir::Type,mlir::LLVM::detail::LLVMScalableVectorTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::Type,unsigned int>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, _DWORD *a4, int a5)
{
  v8 = a4;
  v7 = a5;
  if (mlir::LLVM::LLVMScalableVectorType::verify(a1, a2, a4, a5))
  {
    return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMScalableVectorType,mlir::Type &,unsigned int &>(a3, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::LLVM::LLVMScalableVectorType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, _DWORD *a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    a1(&v9, a2);
    if (v9)
    {
      mlir::Diagnostic::operator<<<47ul>(v10, "the number of vector elements must be positive");
    }

    goto LABEL_8;
  }

  if (!mlir::LLVM::LLVMScalableVectorType::isValidElementType(a3))
  {
    a1(&v9, a2);
    if (v9)
    {
      mlir::Diagnostic::operator<<<28ul>(v10, "invalid vector element type");
    }

LABEL_8:
    v6 = v10[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

llvm::raw_ostream *mlir::LLVM::LLVMScalableVectorType::print(mlir::LLVM::LLVMScalableVectorType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "?", 1uLL);
  }

  else
  {
    *v7 = 63;
    ++*(v6 + 4);
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
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "x", 1uLL);
  }

  else
  {
    *v11 = 120;
    ++*(v10 + 4);
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

  v14 = *(*this + 16);
  v15 = (*(*a2 + 16))(a2);
  write_unsigned<unsigned long long>(v15, v14, 0, 0, 0);
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
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "x", 1uLL);
  }

  else
  {
    *v19 = 120;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, " ", 1uLL);
  }

  else
  {
    *v21 = 32;
    ++*(v20 + 4);
  }

  v22 = (*(*a2 + 16))(a2);
  v25 = *(v22 + 4);
  if (v25 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v25 + 1;
    *v25 = 32;
  }

  dispatchPrint(a2, *(*this + 8), v23, v24);
  result = (*(*a2 + 16))(a2);
  v27 = *(result + 4);
  if (*(result + 3) == v27)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v27 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LLVMTargetExtType::parse(mlir::LLVM::LLVMTargetExtType *this, mlir::AsmParser *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  (*(*this + 32))(this, a2);
  (*(*this + 40))(this);
  LOBYTE(v18[0]) = 0;
  v20 = 0;
  LOBYTE(v36[0]) = 0;
  v38 = 0;
  LOBYTE(v32) = 0;
  v35 = 0;
  if (((*(*this + 152))(this) & 1) == 0)
  {
    goto LABEL_26;
  }

  mlir::FieldParser<std::string,std::string>::parse(this, &__p);
  v3 = std::__optional_storage_base<std::string,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<std::string,false>>(v18, &__p);
  if (v40[8] == 1 && (v40[7] & 0x80000000) != 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v4 = *this;
  if ((v20 & 1) == 0)
  {
    v12 = (*(v4 + 40))(this, v3);
    v41 = 259;
    (*(*this + 24))(v31, this, v12, &__p);
    p_p = v31;
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(p_p);
    goto LABEL_26;
  }

  if ((*(v4 + 128))(this, v3))
  {
    (*(*this + 40))(this);
    if (v38 == 1 && v36[0] != v37)
    {
      free(v36[0]);
    }

    v36[0] = v37;
    v36[1] = 0x600000000;
    v38 = 1;
    if (v35 == 1 && v32 != v34)
    {
      free(v32);
    }

    v32 = v34;
    v33 = 0xC00000000;
    v35 = 1;
    LOBYTE(v24[0]) = 1;
    v26 = this;
    v27 = &v32;
    v28[0] = v24;
    v28[1] = v36;
    if (((*(*this + 392))(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseExtTypeParams(mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<unsigned int> &)::$_0>, &v26, 0, 0) & 1) == 0)
    {
      v17 = (*(*this + 40))(this);
      v29[0] = "failed to parse parameter list for target extension type";
      v30[8] = 259;
      (*(*this + 24))(&__p, this, v17, v29);
      p_p = &__p;
      goto LABEL_25;
    }
  }

  if (((*(*this + 168))(this) & 1) == 0)
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v5 = *(*(*this + 32))(this);
  if (v19 >= 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v18[0];
  }

  if (v19 >= 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v18[1];
  }

  v29[0] = v30;
  v29[1] = 0x600000000;
  std::optional<llvm::SmallVector<mlir::Type,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::Type,6u>>(v36, v29, &__p);
  v8 = 0;
  v9 = __p.n128_u64[0];
  v10 = __p.n128_u32[2];
  v24[0] = v25;
  v24[1] = 0xC00000000;
  v26 = v28;
  v27 = 0xC00000000;
  if (v35 == 1)
  {
    v11 = v28;
    if (v33)
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&v26, &v32);
      v11 = v26;
      v8 = v27;
    }
  }

  else
  {
    v11 = v28;
  }

  *&v23 = v6;
  *(&v23 + 1) = v7;
  *&v22 = v9;
  *(&v22 + 1) = v10;
  v21[0] = v11;
  v21[1] = v8;
  v14 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMTargetExtType,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(v5, &v23, &v22, v21);
  if (v26 != v28)
  {
    free(v26);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (__p.n128_u64[0] != v40)
  {
    free(__p.n128_u64[0]);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

LABEL_27:
  if (v35 == 1 && v32 != v34)
  {
    free(v32);
  }

  if (v38 == 1 && v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v20 == 1 && v19 < 0)
  {
    operator delete(v18[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

llvm::raw_ostream *mlir::LLVM::LLVMTargetExtType::print(mlir::LLVM::LLVMTargetExtType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  if (!*(*this + 32) && !*(*this + 48))
  {
    goto LABEL_31;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
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

  v10 = *this;
  v11 = *(*this + 32);
  v12 = v10[5];
  v13 = v10[6];
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v14 = v10[3];
  (*(*a2 + 32))(a2, *v14);
  if (v11 != 1)
  {
    v15 = v14 + 1;
    v16 = 8 * v11 - 8;
    do
    {
      v17 = (*(*a2 + 16))(a2);
      v18 = *(v17 + 4);
      if (*(v17 + 3) - v18 > 1uLL)
      {
        *v18 = 8236;
        *(v17 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v17, ", ", 2uLL);
      }

      v19 = *v15++;
      (*(*a2 + 32))(a2, v19);
      v16 -= 8;
    }

    while (v16);
  }

  if (v13)
  {
    v20 = (*(*a2 + 16))(a2);
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

LABEL_25:
    v22 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v22, *v12, 0, 0, 0);
    if (v13 != 1)
    {
      v23 = v12 + 1;
      v24 = 4 * v13 - 4;
      do
      {
        v25 = (*(*a2 + 16))(a2);
        v26 = *(v25 + 4);
        if (*(v25 + 3) - v26 > 1uLL)
        {
          *v26 = 8236;
          *(v25 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v25, ", ", 2uLL);
        }

        v27 = (*(*a2 + 16))(a2);
        v28 = *v23++;
        write_unsigned<unsigned long long>(v27, v28, 0, 0, 0);
        v24 -= 4;
      }

      while (v24);
    }
  }

LABEL_31:
  result = (*(*a2 + 16))(a2);
  v30 = *(result + 4);
  if (*(result + 3) == v30)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v30 = 62;
    ++*(result + 4);
  }

  return result;
}

unint64_t mlir::LLVM::LLVMArrayType::getTypeSize(uint64_t a1, uint64_t a2)
{
  TypeSize = mlir::DataLayout::getTypeSize(a2, *(*a1 + 8));
  TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(a2, *(*a1 + 8));
  return (TypeABIAlignment + TypeSize - 1) / TypeABIAlignment * TypeABIAlignment * *(*a1 + 16);
}

uint64_t mlir::LLVM::LLVMFunctionType::clone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v7 = mlir::TypeRange::dereference_iterator(a4, 0);
  v15 = v17;
  v16 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(&v15, a2, 0, a2, a3);
  v8 = *(*a1 + 32);
  *(&v13 + 1) = v16;
  v14 = v7;
  *&v13 = v15;
  v12 = v8;
  v9 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFunctionType,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(*(**v7 + 32), &v14, &v13, &v12);
  if (v15 != v17)
  {
    free(v15);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::LLVM::extractPointerSpecValue(uint64_t a1, unsigned int a2)
{
  v11 = a1;
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = (*(*(a1 + 16) + 24))(*(a1 + 16));
  if (v5)
  {
    v6 = 8 * v5;
    v7 = 1;
    do
    {
      v8 = *v4++;
      v7 *= v8;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 1;
  }

  if (v7 <= v2)
  {
    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v11, &v12);
  if (v13)
  {
    v9 = 0;
  }

  else
  {
    v9 = v14 + v2;
  }

  return *(v12 + 8 * v9);
}

unint64_t mlir::LLVM::LLVMPointerType::getTypeSizeInBits(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = getPointerDataLayoutEntry(a3, a4, *a1, 0);
  if ((v7 & 1) == 0)
  {
    v8 = *(***a1 + 32);
    v10 = 0;
    v9 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v8, &v10);
    return mlir::DataLayout::getTypeSizeInBits(a2, v9);
  }

  return result;
}

unint64_t getPointerDataLayoutEntry(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v6 = a1;
  v7 = &a1[2 * a2];
  while (1)
  {
    v8 = *v6;
    v9 = v6[1];
    if (((*v9)(v9, *v6) & 4) == 0 && *(((*v9)(v9, v8) & 0xFFFFFFFFFFFFFFF8) + 8) == *(a3 + 8))
    {
      break;
    }

    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  v15 = v9[1](v9, v8);
  if (v15)
  {
    v16 = v15;
    PointerSpecValue = mlir::LLVM::extractPointerSpecValue(v15, a4);
    if (a4 == 3 && (v18 & 1) == 0)
    {
      PointerSpecValue = mlir::LLVM::extractPointerSpecValue(v16, 0);
    }

    v19 = a4 == 3 || a4 == 0;
    v20 = 3;
    if (v19)
    {
      v20 = 0;
    }

    v12 = PointerSpecValue >> v20;
    v13 = v12 & 0xFFFFFFFFFFFFFF00;
    v12 = v12;
  }

  else
  {
LABEL_6:
    v10 = a4 == 3 || a4 == 0;
    v11 = 8;
    if (v10)
    {
      v11 = 64;
    }

    if (*(a3 + 8))
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    v13 = 0;
  }

  return v13 | v12;
}

BOOL mlir::LLVM::LLVMStructType::isValidElementType(uint64_t a1)
{
  v2 = *(*a1 + 136);
  if (v2 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    return 0;
  }

  v3 = *(*a1 + 136);
  if (v3 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID())
  {
    return 0;
  }

  v4 = *(*a1 + 136);
  if (v4 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID())
  {
    return 0;
  }

  v5 = *(*a1 + 136);
  return v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id && v5 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID();
}

uint64_t mlir::LLVM::LLVMStructType::setBody(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = **(***a1 + 32);
  v9 = *a1;
  v8[0] = &v9;
  v8[1] = v7;
  v8[2] = &v6;
  return mlir::detail::StorageUniquerImpl::mutate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id, v9, llvm::function_ref<llvm::LogicalResult ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<llvm::LogicalResult mlir::StorageUniquer::mutate<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::ArrayRef<mlir::Type> &,BOOL &>(mlir::TypeID,mlir::LLVM::detail::LLVMStructTypeStorage *,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::detail::StorageUserBase<mlir::LLVM::LLVMStructType,mlir::Type,mlir::LLVM::detail::LLVMStructTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getChecked<llvm::ArrayRef<mlir::Type>,BOOL>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, char a6)
{
  *&v9 = a4;
  *(&v9 + 1) = a5;
  v8 = a6;
  if (mlir::LLVM::LLVMStructType::verifyInvariants(a1, a2, a4, a5))
  {
    return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::ArrayRef<mlir::Type> &,BOOL &>(a3, &v9, &v8);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LLVMStructType::verifyInvariants(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = 8 * a4;
    while (1)
    {
      v8 = *a3;
      if (!mlir::LLVM::LLVMStructType::isValidElementType(*a3))
      {
        break;
      }

      ++a3;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    a1(&v17, a2);
    if (v17)
    {
      mlir::Diagnostic::operator<<<38ul>(&v18, "invalid LLVM structure element type: ");
      if (v17)
      {
        v15 = 4;
        v16 = v8;
        v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
        v11 = v19 + 24 * v20;
        v12 = *v10;
        *(v11 + 16) = *(v10 + 16);
        *v11 = v12;
        ++v20;
      }
    }

    v9 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  else
  {
LABEL_5:
    v9 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t mlir::LLVM::LLVMStructType::getTypeSizeInBits(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if ((v5 & 1) == 0)
  {
    v6 = (v4 + 8);
    v7 = v5 >> 2;
    if (v5 >> 2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v9 = 0;
    v12 = 1;
    return 8 * (v12 + v9 - 1) / v12 * v12;
  }

  v6 = (v4 + 16);
  v7 = *(v4 + 28) >> 3;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  v8 = 0;
  v9 = 0;
  v10 = *v6;
  v11 = 8 * v7;
  v12 = 1;
  do
  {
    v13 = *(*a1 + 24);
    if (v13)
    {
      v13 = *(*a1 + 28);
    }

    v14 = *v10;
    if ((v13 & 2) != 0)
    {
      TypeABIAlignment = 1;
    }

    else
    {
      TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(a2, *v10);
    }

    v8 &= 1u;
    TypeSize = mlir::DataLayout::getTypeSize(a2, v14);
    v9 = TypeSize + (v9 + TypeABIAlignment - 1) / TypeABIAlignment * TypeABIAlignment;
    if (TypeSize)
    {
      v8 = v17;
    }

    if (TypeABIAlignment > v12)
    {
      v12 = TypeABIAlignment;
    }

    ++v10;
    v11 -= 8;
  }

  while (v11);
  return 8 * (v12 + v9 - 1) / v12 * v12;
}

uint64_t calculateStructAlignment(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a4 + 24);
  if (!a5)
  {
    v10 = *(a4 + 24);
    if (v9)
    {
      v10 = *(a4 + 28);
    }

    if ((v10 & 2) != 0)
    {
      return 1;
    }
  }

  if (v9)
  {
    v11 = (a4 + 16);
    v12 = *(a4 + 28) >> 3;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_17:
    v15 = 1;
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v11 = (a4 + 8);
  v12 = v9 >> 2;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *v11;
  v14 = 8 * v12;
  v15 = 1;
  do
  {
    v16 = *v13++;
    TypeABIAlignment = mlir::DataLayout::getTypeABIAlignment(a1, v16);
    if (TypeABIAlignment > v15)
    {
      v15 = TypeABIAlignment;
    }

    v14 -= 8;
  }

  while (v14);
  if (a3)
  {
LABEL_12:
    v18 = 16 * a3;
    for (i = a2; ; i += 2)
    {
      v20 = *i;
      if (((*i[1])() & 4) == 0)
      {
        break;
      }

      v18 -= 16;
      if (!v18)
      {
        return v15;
      }
    }

    goto LABEL_19;
  }

LABEL_18:
  i = a2;
LABEL_19:
  if (i != &a2[2 * a3])
  {
    v21 = *i;
    v22 = (*(i[1] + 8))();
    v32 = v22;
    if (a5 == 1 && (v23 = *(v22 + 8), v24 = (*(*(v22 + 16) + 24))(*(v22 + 16)), v25))
    {
      v26 = 8 * v25;
      v27 = 1;
      do
      {
        v28 = *v24++;
        v27 *= v28;
        v26 -= 8;
      }

      while (v26);
      v29 = v27 > 1;
    }

    else
    {
      v29 = 0;
    }

    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v32, &v33);
    if (v34)
    {
      v30 = 0;
    }

    else
    {
      v30 = v35 + v29;
    }

    if (*(v33 + 8 * v30) >> 3 > v15)
    {
      return *(v33 + 8 * v30) >> 3;
    }
  }

  return v15;
}

BOOL mlir::LLVM::LLVMScalableVectorType::isValidElementType(_DWORD *a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return a1[2] >> 30 == 0;
  }

  else
  {
    if (mlir::LLVM::isCompatibleFloatingPointType(a1))
    {
      return 1;
    }

    return *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
  }
}

BOOL mlir::LLVM::isCompatibleFloatingPointType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v1 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID();
}

BOOL mlir::LLVM::LLVMTargetExtType::supportsMemOps(mlir::LLVM::LLVMTargetExtType *this)
{
  v1 = *(*this + 16);
  if (v1 < 6)
  {
    return 0;
  }

  v2 = *(*this + 8);
  if (*v2 == 1919512691 && *(v2 + 2) == 11894)
  {
    return 1;
  }

  if (v1 != 15)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *(v2 + 7);
  return v4 == 0x2E34366863726161 && v5 == 0x746E756F6376732ELL;
}

BOOL mlir::LLVM::isCompatibleOuterType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
  {
    return result;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID())
  {
    return 1;
  }

  v7 = *(*a1 + 136);
  if (v7 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID())
  {
    return 1;
  }

  v8 = *(*a1 + 136);
  if (v8 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID())
  {
    return 1;
  }

  v9 = *(*a1 + 136);
  result = 1;
  if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    return result;
  }

  if (v9 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID())
  {
    return 1;
  }

  v10 = *(*a1 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
  {
    return result;
  }

  if (v10 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    return 1;
  }

  v11 = *(*a1 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMX86AMXType,void>::id)
  {
    return 1;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return *(a1 + 8) >> 30 == 0;
  }

  else
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }

    return *(a1 + 16) == 1;
  }
}

uint64_t mlir::LLVM::LLVMDialect::isCompatibleType(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(*(**a1 + 32), "llvm", 4, a4);
  if (LoadedDialect)
  {
    v6 = mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::get((LoadedDialect + 104));

    return isCompatibleImpl(a1, v6);
  }

  else
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v8 = isCompatibleImpl(a1, v9);
    MEMORY[0x25F891030](v9[0], 8);
    return v8;
  }
}

uint64_t isCompatibleImpl(uint64_t a1, uint64_t a2)
{
  v32 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>,mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>::LookupBucketFor<mlir::Type>(*a2, *(a2 + 16), a1, &v32))
  {
    return 1;
  }

  v5 = v32;
  v6 = *(a2 + 16);
  v33 = v32;
  v7 = *(a2 + 8);
  if (4 * v7 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v7 - *(a2 + 12) > v6 >> 3)
  {
    goto LABEL_6;
  }

  llvm::DenseMap<mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>::grow(a2, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>,mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>::LookupBucketFor<mlir::Type>(*a2, *(a2 + 16), a1, &v33);
  v7 = *(a2 + 8);
  v5 = v33;
LABEL_6:
  *(a2 + 8) = v7 + 1;
  if (*v5 != -4096)
  {
    --*(a2 + 12);
  }

  *v5 = a1;
  v8 = *(*a1 + 136);
  if (a1 && v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    v9 = *(a1 + 24);
    if ((v9 & 1) == 0)
    {
      v10 = (a1 + 8);
      v11 = v9 >> 2;
      if (!v11)
      {
        return 1;
      }

      goto LABEL_27;
    }

    v10 = (a1 + 16);
    v11 = *(a1 + 28) >> 3;
    if (v11)
    {
LABEL_27:
      v16 = *v10;
      v17 = 8 * v11;
      while ((isCompatibleImpl(*v16, a2) & 1) != 0)
      {
        ++v16;
        v17 -= 8;
        if (!v17)
        {
          return 1;
        }
      }

      goto LABEL_49;
    }

    return 1;
  }

  if (a1 && v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
  {
    if (isCompatibleImpl(*(a1 + 8), a2))
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        v13 = *(a1 + 16);
        v14 = 8 * v12;
        while ((isCompatibleImpl(*v13, a2) & 1) != 0)
        {
          ++v13;
          result = 1;
          v14 -= 8;
          if (!v14)
          {
            return result;
          }
        }

        goto LABEL_49;
      }

      return 1;
    }
  }

  else if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!(*(a1 + 8) >> 30))
    {
      return 1;
    }
  }

  else
  {
    if (a1 && v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      if (*(a1 + 16) != 1)
      {
        goto LABEL_49;
      }

      v15 = *(a1 + 24);
    }

    else
    {
      if (v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
      {
        return 1;
      }

      if (a1 && v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
      {
        v18 = *(a1 + 32);
        if (v18)
        {
          v19 = *(a1 + 24);
          v20 = 8 * v18;
          while ((isCompatibleImpl(*v19, a2) & 1) != 0)
          {
            ++v19;
            result = 1;
            v20 -= 8;
            if (!v20)
            {
              return result;
            }
          }

          goto LABEL_49;
        }

        return 1;
      }

      if ((!a1 || v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id) && (!a1 || v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id) && (!a1 || v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id))
      {
        result = 1;
        if (v8 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
        {
          return result;
        }

        if (v8 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID())
        {
          return 1;
        }

        v26 = *(*a1 + 136);
        if (v26 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID())
        {
          return 1;
        }

        v27 = *(*a1 + 136);
        if (v27 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID())
        {
          return 1;
        }

        v28 = *(*a1 + 136);
        if (v28 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID())
        {
          return 1;
        }

        v29 = *(*a1 + 136);
        if (v29 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID() || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMX86AMXType,void>::id)
        {
          return 1;
        }

        goto LABEL_49;
      }

      v15 = *(a1 + 8);
    }

    if (isCompatibleImpl(v15, a2))
    {
      return 1;
    }
  }

LABEL_49:
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = *a2;
    v23 = v21 - 1;
    v24 = (v21 - 1) & ((a1 >> 4) ^ (a1 >> 9));
    v25 = *(*a2 + 8 * v24);
    if (v25 == a1)
    {
LABEL_51:
      result = 0;
      *(v22 + 8 * v24) = -8192;
      *(a2 + 8) = vadd_s32(*(a2 + 8), 0x1FFFFFFFFLL);
      return result;
    }

    v30 = 1;
    while (v25 != -4096)
    {
      v31 = v24 + v30++;
      v24 = v31 & v23;
      v25 = *(v22 + 8 * v24);
      if (v25 == a1)
      {
        goto LABEL_51;
      }
    }
  }

  return 0;
}

uint64_t mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::get(uint64_t *a1)
{
  StaticCache = mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::getStaticCache();
  v4 = *a1;
  result = **llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::operator[](StaticCache, &v4);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    llvm::SmallVectorImpl<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner>::emplace_back<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer &>(*a1);
  }

  return result;
}

BOOL mlir::LLVM::isCompatibleVectorType(void *a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
  {
    return 1;
  }

  if (v1 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || a1[2] != 1)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = *(*v4 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      return v5 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
    }

    return 1;
  }

  return v4[2] >> 30 == 0;
}

uint64_t mlir::LLVM::getVectorNumElements(void *a1)
{
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = &v4[v5];
    v7 = 1;
    v8 = memchr(v4, 1, v5);
    if (v8)
    {
      v9 = v8 == v6;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    v11 = a1[2];
    if (v11)
    {
      v12 = a1[1];
      v13 = 8 * v11;
      v14 = 1;
      do
      {
        v15 = *v12++;
        v14 *= v15;
        v13 -= 8;
      }

      while (v13);
      v7 = v14;
    }

    if (v10)
    {
      return v7 | 0x100000000;
    }

    else
    {
      return v7;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    return *(a1 + 4);
  }

  else
  {
    return *(a1 + 4) | 0x100000000;
  }
}

BOOL mlir::LLVM::isScalableVectorType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    return 0;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
  {
    return 1;
  }

  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + v2);
  v4 = memchr(*(a1 + 32), 1, v2);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

uint64_t mlir::LLVM::getVectorType(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = *(*a1 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    mlir::isValidVectorTypeElementType(a1);
  }

  else
  {
    v7 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID();
    mlir::isValidVectorTypeElementType(a1);
    if (v6 != v7)
    {
      v10 = a2;
      LOBYTE(v9) = a3;
      return mlir::VectorType::get(&v10, 1uLL, a1, &v9, 1);
    }
  }

  v10 = a1;
  v9 = a2;
  if (a3)
  {
    return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMScalableVectorType,mlir::Type &,unsigned int &>(*(**a1 + 32), &v10, &v9);
  }

  else
  {
    return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFixedVectorType,mlir::Type &,unsigned int &>(*(**a1 + 32), &v10, &v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM13LLVMArrayTypeEJPNS1_11MLIRContextENS1_4TypeEyEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM16LLVMFunctionTypeEJPNS1_11MLIRContextENS1_4TypeENS_8ArrayRefISC_EEbEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseExtTypeParams(mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<unsigned int> &)::$_0>(uint64_t a1)
{
  v4 = 0;
  v5 = *a1;
  v2 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned int>(unsigned int &)::{lambda(llvm::APInt &)#1}>(v5, &v4, &v5);
  if (v2 & 0x100) != 0 && (v2)
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(*(a1 + 8), v4);
    **(a1 + 16) = 0;
    return 1;
  }

  if (**(a1 + 16) == 1)
  {
    result = dispatchParse(*a1, 1);
    if (!result)
    {
      return result;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(*(a1 + 24), result);
    return 1;
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>,mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>::LookupBucketFor<mlir::Type>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>,mlir::Type,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseSetPair<mlir::Type>>::LookupBucketFor<mlir::Type>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMArrayType,mlir::Type,unsigned long long>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v4 = *a2;
  v5 = *a3;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail20LLVMArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_13LLVMArrayTypeEJNS1_4TypeEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v14[1] = v9;
  v12 = v4;
  v13 = v5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,unsigned long long>(__dst, __dst, v16, v4, &v13);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMArrayTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::Type,unsigned long long>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMArrayTypeStorage *)>,mlir::TypeID,mlir::Type,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMArrayTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::Type,unsigned long long>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMArrayTypeStorage *)>,mlir::TypeID,mlir::Type,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,unsigned long long>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, uint64_t *a5)
{
  v11 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v12 = v11;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long long>(a1, &v12, v8, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v9, a3);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMArrayTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::Type,unsigned long long>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMArrayTypeStorage *)>,mlir::TypeID,mlir::Type,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail20LLVMArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_13LLVMArrayTypeEJNS1_4TypeEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMArrayType,mlir::Type &,unsigned long long &>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v4 = *a2;
  v5 = *a3;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail20LLVMArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_13LLVMArrayTypeEJRNS1_4TypeERyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v14[1] = v9;
  v12 = v4;
  v13 = v5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,unsigned long long>(__dst, __dst, v16, v4, &v13);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMArrayTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::Type &,unsigned long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMArrayTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMArrayTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::Type &,unsigned long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMArrayTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMArrayTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::Type &,unsigned long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMArrayTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail20LLVMArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_13LLVMArrayTypeEJRNS1_4TypeERyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFunctionType,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(void *a1, uint64_t *a2, __int128 *a3, char *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id;
  v10[1] = &v11;
  v11 = a1;
  v5 = *a2;
  v6 = *a4;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LLVMFunctionTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_16LLVMFunctionTypeEJRNS1_4TypeERNS_8ArrayRefISD_EERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v16[1] = v10;
  v13 = v5;
  v14 = *a3;
  v15[0] = v6;
  memset(v18, 0, sizeof(v18));
  v19 = 0xFF51AFD7ED558CCDLL;
  v17 = ((v5 >> 4) ^ (v5 >> 9));
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>,BOOL>(&v17, 0, v18, &v18[3] + 1, &v14, v15);
  v12 = &v13;
  v17 = &v13;
  *&v18[0] = v16;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMFunctionTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFunctionTypeStorage *)>,mlir::TypeID,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMFunctionTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFunctionTypeStorage *)>,mlir::TypeID,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMFunctionTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFunctionTypeStorage *)>,mlir::TypeID,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1)
  {
    v3 = *(a2 + 24);
    if (v3 == v2[2])
    {
      if (!v3)
      {
        return *(a2 + 32) == *(v2 + 24);
      }

      v4 = *(a2 + 16);
      v5 = v2[1];
      v6 = 8 * v3;
      while (*v4 == *v5)
      {
        ++v4;
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          return *(a2 + 32) == *(v2 + 24);
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMFunctionTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFunctionTypeStorage *)>,mlir::TypeID,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = *(*a1 + 24);
  v6 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, (*a1)[1], (*a1)[2]);
  v8 = v7;
  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v9 = 0;
  *(v9 + 8) = v4;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v5;
  v10 = a1[1];
  if (*v10)
  {
    (*v10)(v10[1], v9);
  }

  return v9;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LLVMFunctionTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_16LLVMFunctionTypeEJRNS1_4TypeERNS_8ArrayRefISD_EERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(void *a1, unsigned int *a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *(v2 + 384);
  v4 = *a2;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22LLVMPointerTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15LLVMPointerTypeEJRjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v7;
  v11 = v4;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v4 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v4 ^ 0xFF51AFD7ED558CCDLL)));
  v10 = &v11;
  v9[0] = &v11;
  v9[1] = v12;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id, -348639895 * ((v5 >> 47) ^ v5), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMPointerTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMPointerTypeStorage,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMPointerTypeStorage *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMPointerTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMPointerTypeStorage,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMPointerTypeStorage *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMPointerTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMPointerTypeStorage,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMPointerTypeStorage *)>,mlir::TypeID,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail22LLVMPointerTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15LLVMPointerTypeEJRjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, int *a5)
{
  v11 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v12 = v11;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v12, v8, a3, *a5);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v12, v9, a3);
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFixedVectorType,mlir::Type &,unsigned int &>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v4 = *a2;
  v5 = *a3;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26LLVMFixedVectorTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_19LLVMFixedVectorTypeEJRNS1_4TypeERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v14[1] = v9;
  v12 = v4;
  v13 = v5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,unsigned int>(__dst, __dst, v16, v4, &v13);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMFixedVectorTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFixedVectorTypeStorage,mlir::Type &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFixedVectorTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMFixedVectorTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFixedVectorTypeStorage,mlir::Type &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFixedVectorTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMFixedVectorTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMFixedVectorTypeStorage,mlir::Type &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMFixedVectorTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 2);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26LLVMFixedVectorTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_19LLVMFixedVectorTypeEJRNS1_4TypeERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMScalableVectorType,mlir::Type &,unsigned int &>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v4 = *a2;
  v5 = *a3;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29LLVMScalableVectorTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_22LLVMScalableVectorTypeEJRNS1_4TypeERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v14[1] = v9;
  v12 = v4;
  v13 = v5;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,unsigned int>(__dst, __dst, v16, v4, &v13);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMScalableVectorTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMScalableVectorTypeStorage,mlir::Type &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMScalableVectorTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMScalableVectorTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMScalableVectorTypeStorage,mlir::Type &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMScalableVectorTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMScalableVectorTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMScalableVectorTypeStorage,mlir::Type &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMScalableVectorTypeStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 2);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29LLVMScalableVectorTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_22LLVMScalableVectorTypeEJRNS1_4TypeERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMTargetExtType,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(void *a1, __int128 *a2, __int128 *a3, unint64_t *a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v11[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id;
  v11[1] = &v12;
  v12 = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24LLVMTargetExtTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_17LLVMTargetExtTypeEJNS_9StringRefENS_8ArrayRefINS1_4TypeEEENSE_IjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v17[1] = v11;
  v5 = *a3;
  v14 = *a2;
  v15 = v5;
  v16 = *a4;
  memset(v21, 0, 56);
  memset(v20, 0, sizeof(v20));
  v21[7] = 0xFF51AFD7ED558CCDLL;
  v18 = llvm::hashing::detail::hash_combine_range_impl<char const>(v14, v14 + *(&v14 + 1), a3, a4);
  v19 = llvm::hashing::detail::hash_combine_range_impl<mlir::Type const*>(v15, (v15 + 8 * *(&v15 + 1)), v6, v7);
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<unsigned int>>(&v18, 0, v20, v21, &v16);
  v13 = &v14;
  v18 = &v14;
  v19 = v17;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMTargetExtTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMTargetExtTypeStorage,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMTargetExtTypeStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMTargetExtTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMTargetExtTypeStorage,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMTargetExtTypeStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMTargetExtTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMTargetExtTypeStorage,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMTargetExtTypeStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && (!v3 || !memcmp(*(a2 + 8), *v2, v3)))
  {
    v5 = *(a2 + 32);
    if (v5 == *(v2 + 24))
    {
      if (v5)
      {
        v6 = *(a2 + 24);
        v7 = *(v2 + 16);
        v8 = 8 * v5;
        while (*v6 == *v7)
        {
          ++v6;
          ++v7;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v9 = *(a2 + 48);
        if (v9 == *(v2 + 40))
        {
          return memcmp(*(a2 + 40), *(v2 + 32), 4 * v9) == 0;
        }
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMTargetExtTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMTargetExtTypeStorage,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMTargetExtTypeStorage *)>,mlir::TypeID,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, **a1, *(*a1 + 8));
  v10 = v9;
  v11 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, v4, v5);
  v13 = v12;
  if (v6)
  {
    v14 = 4 * v6;
    v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 4 * v6, 2);
    v16 = v15;
    do
    {
      v17 = *v7++;
      *v16++ = v17;
      v14 -= 4;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 56, 3);
  *v18 = 0;
  v18[1] = v8;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = v6;
  v19 = *(a1 + 8);
  if (*v19)
  {
    (*v19)(*(v19 + 8), v18);
  }

  return v18;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24LLVMTargetExtTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_17LLVMTargetExtTypeEJNS_9StringRefENS_8ArrayRefINS1_4TypeEEENSE_IjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t mlir::LLVM::detail::LLVMStructTypeStorage::Key::hashValue(mlir::LLVM::detail::LLVMStructTypeStorage::Key *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 32) == 1)
  {
    v1 = *(this + 1);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = v1;
    v7 = 0u;
    v14 = 0;
    v15 = 0xFF51AFD7ED558CCDLL;
    LODWORD(v7) = 1;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef>(&v7, 0, (&v7 + 4), &v11, &v6);
  }

  else
  {
    if (*(this + 33))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    v4 = *this;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = v4;
    v7 = 0u;
    v14 = 0;
    v15 = 0xFF51AFD7ED558CCDLL;
    LODWORD(v7) = v3;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Type>>(&v7, 0, (&v7 + 4), &v11, &v6);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::detail::LLVMStructTypeStorage::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5 = v3 >> 2;
  if (v3)
  {
    if (*(a2 + 32) == 1 && *(a2 + 24) == v5)
    {
      if (v3 >= 4)
      {
        return memcmp(*(a2 + 16), v4, v5) == 0;
      }

      return 1;
    }

    return 0;
  }

  result = 0;
  if ((*(a2 + 32) & 1) != 0 || *(a2 + 33) != ((v3 >> 1) & 1))
  {
    return result;
  }

  if (*(a2 + 8) != v5)
  {
    return 0;
  }

  if (v3 < 4)
  {
    return 1;
  }

  v7 = *a2;
  v8 = 8 * v5 - 8;
  do
  {
    v10 = *v4++;
    v9 = v10;
    v11 = *v7++;
    result = v11 == v9;
    v12 = v11 != v9 || v8 == 0;
    v8 -= 8;
  }

  while (!v12);
  return result;
}

unint64_t mlir::LLVM::detail::LLVMStructTypeStorage::construct(unint64_t *a1, uint64_t a2)
{
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  if (*(a2 + 32))
  {
    v5 = mlir::StorageUniquer::StorageAllocator::copyInto(a1, *(a2 + 16), *(a2 + 24));
    v6 = *(a2 + 34);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = 0;
    v8 = (4 * v7) | 1;
    if (v6)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *(v4 + 28) = v9 | v6;
  }

  else
  {
    v5 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a1, *a2, *(a2 + 8));
    v11 = *(a2 + 33);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v8 = v12 | (4 * v10);
  }

  *(v4 + 8) = v5;
  *(v4 + 24) = v8;
  return v4;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::StringRef &,BOOL &>(void *a1, __int128 *a2, char *a3)
{
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v4 = *a3;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LLVMStructTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_14LLVMStructTypeEJRNS_9StringRefERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v15[1] = v7;
  v11[0] = 0;
  v11[1] = 0;
  v12 = *a2;
  v13 = 1;
  v14 = v4;
  v5 = mlir::LLVM::detail::LLVMStructTypeStorage::Key::hashValue(v11);
  v9[0] = v11;
  v9[1] = v15;
  v10 = v11;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::StringRef &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,llvm::StringRef &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::StringRef &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,llvm::StringRef &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::StringRef &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,llvm::StringRef &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::LLVM::detail::LLVMStructTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LLVMStructTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_14LLVMStructTypeEJRNS_9StringRefERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::ArrayRef<mlir::Type> &,BOOL &>(void *a1, __int128 *a2, char *a3)
{
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v4 = *a3;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LLVMStructTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_14LLVMStructTypeEJRNS_8ArrayRefINS1_4TypeEEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v17[1] = v7;
  v11 = *a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v4;
  v16 = 0;
  v5 = mlir::LLVM::detail::LLVMStructTypeStorage::Key::hashValue(&v11);
  v9[0] = &v11;
  v9[1] = v17;
  v10 = &v11;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::ArrayRef<mlir::Type> &,BOOL &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::LLVM::detail::LLVMStructTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LLVMStructTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_14LLVMStructTypeEJRNS_8ArrayRefINS1_4TypeEEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<llvm::LogicalResult mlir::StorageUniquer::mutate<mlir::LLVM::detail::LLVMStructTypeStorage,llvm::ArrayRef<mlir::Type> &,BOOL &>(mlir::TypeID,mlir::LLVM::detail::LLVMStructTypeStorage *,llvm::ArrayRef<mlir::Type> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  if ((*(v2 + 24) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = *v5;
  v7 = v5[1];
  v8 = *a1[2];
  v9 = *(v2 + 28);
  if ((v9 & 4) != 0)
  {
    result = 0;
    if ((v9 & 1) == 0 && v7 == v9 >> 3)
    {
      if (v9 >= 8)
      {
        v13 = *(v2 + 16);
        v14 = 8 * v7;
        while (*v6 == *v13)
        {
          ++v6;
          ++v13;
          v14 -= 8;
          if (!v14)
          {
            return ((*(v2 + 28) & 2) == 0) ^ v8;
          }
        }

        return 0;
      }

      return ((*(v2 + 28) & 2) == 0) ^ v8;
    }
  }

  else
  {
    v10 = v9 & 0xFFFFFFF9;
    if (*a1[2])
    {
      v11 = 6;
    }

    else
    {
      v11 = 4;
    }

    *(v2 + 28) = v10 | v11;
    *(v2 + 16) = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Type>(a2, v6, v7);
    *(v2 + 28) = *(v2 + 28) & 7 | (8 * v12);
    return 1;
  }

  return result;
}

uint64_t mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::getStaticCache()
{
  {
    v2 = mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::getStaticCache(void)::cache(&mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::getStaticCache(void)::cache);
    *v2 = 1;
    v2[1] = -4096;
    v2[6] = -4096;
    v2[11] = -4096;
    v2[16] = -4096;
    _tlv_atexit(mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::CacheType::~CacheType, v2);
  }

  return mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::getStaticCache(void)::cache(&mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::getStaticCache(void)::cache);
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::operator[](int *a1, void *a2)
{
  v5 = 0;
  if ((llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(a1, a2, &v5) & 1) == 0)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(a1, v5, a2);
  }

  return v5 + 1;
}

void llvm::SmallVectorImpl<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner>::emplace_back<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer &>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 12))
  {
    v1 = *a1;
    mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::Owner();
  }

  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer &>(a1);
}

void mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::CacheType::clearExpiredEntries(int *a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v8 = &v3[10 * v5];
    if (!v2)
    {
LABEL_16:
      v6 = *(a1 + 1);
      v9 = a1[4];
      goto LABEL_17;
    }

LABEL_13:
    v10 = a1 + 42;
    goto LABEL_18;
  }

  if (v2)
  {
    v6 = a1 + 2;
    v8 = a1 + 42;
    goto LABEL_8;
  }

  v6 = *(a1 + 1);
  v7 = a1[4];
  v8 = &v6[10 * v7];
  if (v7)
  {
LABEL_8:
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v8)
      {
        v4 = v8;
        break;
      }
    }

    if ((*a1 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v4 = *(a1 + 1);
LABEL_17:
  v10 = &v6[10 * v9];
LABEL_18:
  if (v4 != v10)
  {
    do
    {
        ;
      }

      v12 = atomic_load((*(v4 + 1) + 8));
      if ((v12 & 1) == 0)
      {
        v13 = *(v4 + 4);
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        v14 = *(v4 + 2);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        *v4 = -8192;
        v15 = a1[1] + 1;
        *a1 -= 2;
        a1[1] = v15;
      }

      v4 = i;
    }

    while (i != v10);
  }
}

uint64_t mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 1u)
  {
    v6 = (a1 + 8);
    if (v2)
    {
      v9 = (a1 + 168);
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v9 = (v7 + 40 * v8);
      if (!v8)
      {
        v12 = 0;
        v4 = *(a1 + 8);
        goto LABEL_18;
      }

      v6 = *(a1 + 8);
    }

    v10 = *a1 & 1;
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 5;
      if (v4 == v9)
      {
        v4 = v9;
        break;
      }
    }
  }

  else
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = (a1 + 168);
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = (v3 + 40 * v5);
    }

    v9 = (v3 + 40 * v5);
    v10 = *a1;
  }

  v6 = (a1 + 8);
  if (v10)
  {
    v11 = (a1 + 168);
    goto LABEL_19;
  }

  v7 = *(a1 + 8);
  v12 = *(a1 + 16);
LABEL_18:
  v11 = (v7 + 40 * v12);
LABEL_19:
  if (v4 != v11)
  {
    v34 = v6;
    do
    {
      v13 = v4[4];
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = v14;
          v16 = v4[3];
          if (v16)
          {
            v17 = *v4[1];
            std::recursive_mutex::lock((v16 + 40));
            v18 = *v16;
            v19 = *(v16 + 8);
            v20 = *v16 + 24 * v19;
            v21 = *v16;
            if (v19)
            {
              v22 = 24 * v19;
              v21 = *v16;
              while (*v21 != v17)
              {
                v21 += 24;
                v22 -= 24;
                if (!v22)
                {
                  v21 = *v16 + 24 * v19;
                  break;
                }
              }
            }

            if (v21 + 24 != v20)
            {
              do
              {
                v23 = *(v21 + 24);
                *(v21 + 24) = 0;
                std::unique_ptr<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::reset[abi:nn200100](v21, v23);
                v24 = *(v21 + 32);
                *(v21 + 32) = 0;
                *(v21 + 40) = 0;
                v25 = *(v21 + 16);
                *(v21 + 8) = v24;
                if (v25)
                {
                  std::__shared_weak_count::__release_weak(v25);
                }

                v26 = v21 + 48;
                v21 += 24;
              }

              while (v26 != v20);
              LODWORD(v19) = *(v16 + 8);
              v18 = *v16;
            }

            v27 = v19 - 1;
            *(v16 + 8) = v27;
            mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::~Owner((v18 + 24 * v27));
            std::recursive_mutex::unlock((v16 + 40));
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      do
      {
        v4 += 5;
      }

      while (v4 != v9 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v4 != v11);
    v2 = *a1;
    v6 = v34;
  }

  if (v2)
  {
    v29 = a1 + 8;
    v28 = 4;
  }

  else
  {
    v28 = *(a1 + 16);
    if (!v28)
    {
      goto LABEL_52;
    }

    v29 = *(a1 + 8);
  }

  v30 = (v29 + 16);
  v31 = 40 * v28;
  do
  {
    if ((*(v30 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v32 = v30[2];
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      if (*v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v30);
      }
    }

    v30 += 5;
    v31 -= 40;
  }

  while (v31);
  v2 = *a1;
LABEL_52:
  if ((v2 & 1) == 0)
  {
    MEMORY[0x25F891030](*v6, 8);
  }

  return a1;
}

void *std::unique_ptr<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    MEMORY[0x25F891030](*v2, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 40 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(int *a1, void *a2, void *a3)
{
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::InsertIntoBucketImpl<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(a1, a3, a2);
  *v4 = *a3;
  *(v4 + 3) = 0u;
  *(v4 + 1) = 0u;
  operator new();
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::InsertIntoBucketImpl<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(int *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(a1, a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

void llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::moveFromOldBuckets(a1, v6, v6 + 40 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = a1 + v8;
    v11 = *(a1 + v8 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v11;
      *(v9 + 8) = *(v10 + 16);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v9 + 24) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      v9 += 40;
    }

    v8 += 40;
  }

  while (v8 != 160);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 8);
    v9 = (a1 + 168);
  }

  else
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *(a1 + 8);
    v9 = &v8[40 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 40;
  v12 = vdupq_n_s64(v11 / 0x28);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 5) = -4096;
    }

    v10 += 2;
    v8 += 80;
  }

  while (((v11 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v10);
LABEL_18:
  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState *>(a1, a2, &v17);
      *v17 = *a2;
      v14 = v17;
      *(v17 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(v14 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *a1 += 2;
      v15 = *(a2 + 32);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = *(a2 + 16);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

    a2 += 40;
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E98358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Observer &>(uint64_t a1)
{
  v3 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v3);
  v2 = *(a1 + 8);
  mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::Owner();
}

void *llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner,false>::moveElementsForGrow(void *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *result;
    v4 = *result + 24 * v2;
    do
    {
      v5 = *v3;
      *v3 = 0;
      *a2 = v5;
      *(a2 + 16) = *(v3 + 2);
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      a2 += 24;
      v3 = (v3 + 24);
    }

    while (v3 != v4);
    v6 = *(result + 2);
    if (v6)
    {
      v7 = -24 * v6;
      result = (*result + 24 * v6 - 24);
      do
      {
        result = mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::~Owner(result) - 3;
        v7 += 24;
      }

      while (v7);
    }
  }

  return result;
}

void mlir::Dialect::addType<mlir::LLVM::LLVMArrayType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMArrayType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id);
}

void mlir::Dialect::addType<mlir::LLVM::LLVMFunctionType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMFunctionType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id);
}

void mlir::Dialect::addType<mlir::LLVM::LLVMStructType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMStructType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id);
}

void mlir::Dialect::addType<mlir::LLVM::LLVMPointerType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMPointerType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id);
}

void mlir::Dialect::addType<mlir::LLVM::LLVMFixedVectorType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMFixedVectorType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id);
}

void mlir::Dialect::addType<mlir::LLVM::LLVMScalableVectorType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMScalableVectorType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id);
}

void mlir::Dialect::addType<mlir::LLVM::LLVMTargetExtType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMTargetExtType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id);
}

uint64_t mlir::Dialect::addType<mlir::LLVM::LLVMX86AMXType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::LLVM::LLVMX86AMXType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMX86AMXType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::LLVM::LLVMX86AMXType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMX86AMXType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractType::get<mlir::LLVM::LLVMArrayType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = v14;
  v13[1] = 0x300000000;
  v4 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  *v4 = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getTypeSize;
  v4[1] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getTypeSizeInBits;
  v4[2] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getABIAlignment;
  v4[3] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getPreferredAlignment;
  v4[4] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getIndexBitwidth;
  v4[5] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::areCompatible;
  v4[6] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::verifyEntries;
  v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v13, v5, v4);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = mlir::detail::DestructurableTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getSubelementIndexMap;
  v6[1] = mlir::detail::DestructurableTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getTypeAtIndex;
  v7 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v13, v7, v6);
  *&v11 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMArrayType,mlir::Type,mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::detail::TypeUniquer,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v12 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v13, &v11, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM13LLVMArrayTypeES2_NSD_6detail20LLVMArrayTypeStorageENSB_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v10, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM13LLVMArrayTypeES2_NSC_6detail20LLVMArrayTypeStorageENSA_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v9, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id, "llvm.array", 10);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v11);
  mlir::detail::InterfaceMap::~InterfaceMap(v13);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMArrayType>::getTypeSizeInBits(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  TypeSize = mlir::LLVM::LLVMArrayType::getTypeSize(&v6, a3);
  if (v3)
  {
  }

  return 8 * TypeSize;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::LLVMArrayType,mlir::Type,mlir::LLVM::detail::LLVMArrayTypeStorage,mlir::detail::TypeUniquer,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC21F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21F58))
  {
    v1 = llvm::getTypeName<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>>();
    _MergedGlobals_40 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC21F58);
  }

  return _MergedGlobals_40;
}

uint64_t llvm::getTypeName<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC21F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21F70))
  {
    qword_27FC21F60 = llvm::detail::getTypeNameImpl<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>>();
    *algn_27FC21F68 = v1;
    __cxa_guard_release(&qword_27FC21F70);
  }

  return qword_27FC21F60;
}

const char *llvm::detail::getTypeNameImpl<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DataLayoutTypeInterface::Trait<Empty>]";
  v6 = 105;
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

uint64_t mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC21F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21F80))
  {
    v1 = llvm::getTypeName<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>>();
    qword_27FC21F78 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC21F80);
  }

  return qword_27FC21F78;
}

uint64_t llvm::getTypeName<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC21F98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21F98))
  {
    qword_27FC21F88 = llvm::detail::getTypeNameImpl<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>>();
    unk_27FC21F90 = v1;
    __cxa_guard_release(&qword_27FC21F98);
  }

  return qword_27FC21F88;
}

const char *llvm::detail::getTypeNameImpl<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DestructurableTypeInterface::Trait<Empty>]";
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

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM13LLVMArrayTypeES2_NSD_6detail20LLVMArrayTypeStorageENSB_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM13LLVMArrayTypeES2_NSC_6detail20LLVMArrayTypeStorageENSA_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  v7 = *(a2 + 16);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMArrayType,mlir::Type &,unsigned long long &>(*(**v5 + 32), &v8, &v7);
}

void mlir::AbstractType::get<mlir::LLVM::LLVMFunctionType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMFunctionType,mlir::Type,mlir::LLVM::detail::LLVMFunctionTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LLVMFunctionTypeES2_NSD_6detail23LLVMFunctionTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LLVMFunctionTypeES2_NSC_6detail23LLVMFunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id, "llvm.func", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LLVMFunctionTypeES2_NSD_6detail23LLVMFunctionTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = a2[2];
  v9 = a2[3];
  if (a2[1])
  {
    result = a5(a6);
  }

  if (v9)
  {
    v11 = 8 * v9;
    do
    {
      if (*v8)
      {
        result = a5(a6);
      }

      ++v8;
      v11 -= 8;
    }

    while (v11);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16LLVMFunctionTypeES2_NSC_6detail23LLVMFunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10 = *a5;
  v8 = a5 + 1;
  v9 = v10;
  if (a6 - 1 < v6)
  {
    v6 = a6 - 1;
  }

  v14 = v9;
  *&v13 = v8;
  *(&v13 + 1) = v6;
  v12 = v7;
  return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFunctionType,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(*(**v9 + 32), &v14, &v13, &v12);
}

void mlir::AbstractType::get<mlir::LLVM::LLVMStructType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = v14;
  v13[1] = 0x300000000;
  v4 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  *v4 = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getTypeSize;
  v4[1] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getTypeSizeInBits;
  v4[2] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getABIAlignment;
  v4[3] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getPreferredAlignment;
  v4[4] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getIndexBitwidth;
  v4[5] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::areCompatible;
  v4[6] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::verifyEntries;
  v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v13, v5, v4);
  v6 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v6 = mlir::detail::DestructurableTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getSubelementIndexMap;
  v6[1] = mlir::detail::DestructurableTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getTypeAtIndex;
  v7 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v13, v7, v6);
  *&v11 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMStructType,mlir::Type,mlir::LLVM::detail::LLVMStructTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v12 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v13, &v11, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LLVMStructTypeES2_NSD_6detail21LLVMStructTypeStorageENSB_11TypeUniquerEJNS1_9TypeTrait9IsMutableENS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v10, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LLVMStructTypeES2_NSC_6detail21LLVMStructTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait9IsMutableENS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v9, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id, "llvm.struct", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v11);
  mlir::detail::InterfaceMap::~InterfaceMap(v13);
  v8 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::getTypeSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  TypeSizeInBits = mlir::LLVM::LLVMStructType::getTypeSizeInBits(&v5, a3);
  if (TypeSizeInBits)
  {
    return ((TypeSizeInBits - (TypeSizeInBits != 0)) >> 3) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::areCompatible(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a6)
  {
    return 1;
  }

  v6 = a5;
  v9 = &a5[2 * a6];
  v10 = 16 * a4;
  v11 = &a3[2 * a4];
  while (1)
  {
    v12 = *v6;
    v13 = v6[1];
    if (((*v13)(v13, *v6) & 4) == 0)
    {
      if (a4)
      {
        v14 = v10;
        v15 = a3;
        while (1)
        {
          v16 = *v15;
          if (((*v15[1])() & 4) == 0)
          {
            break;
          }

          v15 += 2;
          v14 -= 16;
          if (!v14)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v15 = a3;
      }

      if (v15 != v11)
      {
        v17 = *v15;
        v23 = (*(v15[1] + 8))();
        mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v23, &v24);
        v18 = (v25 & 1) != 0 ? 0 : v26;
        v19 = *(v24 + 8 * v18);
        v23 = v13[1](v13, v12);
        mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v23, &v24);
        v20 = (v25 & 1) != 0 ? 0 : v26;
        v21 = *(v24 + 8 * v20);
        if (v19 < v21 || v19 % v21)
        {
          return 0;
        }
      }
    }

LABEL_19:
    v6 += 2;
    if (v6 == v9)
    {
      return 1;
    }
  }
}

uint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMStructType>::verifyEntries(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
LABEL_31:
    v36 = 1;
    goto LABEL_44;
  }

  v6 = a3;
  v7 = &a3[2 * a4];
  while (1)
  {
    v8 = *v6;
    v9 = v6[1];
    if (((*v9)(v9, *v6) & 4) != 0)
    {
      goto LABEL_30;
    }

    v10 = (*v9)(v9, v8);
    v11 = v9[1](v9, v8);
    if (!mlir::DenseIntElementsAttr::classof(v11) || v11 == 0)
    {
      break;
    }

    v13 = v11[1];
    v14 = (*(v11[2] + 24))();
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = 8 * v15;
    v17 = 1;
    do
    {
      v18 = *v14++;
      v17 *= v18;
      v16 -= 8;
    }

    while (v16);
    if (v17 != 2)
    {
LABEL_15:
      v19 = v11[1];
      v20 = (*(v11[2] + 24))();
      if (v21)
      {
        v22 = 8 * v21;
        v23 = 1;
        do
        {
          v24 = *v20++;
          v23 *= v24;
          v22 -= 8;
        }

        while (v22);
        if (v23 != 1)
        {
          break;
        }
      }
    }

    v25 = v11[1];
    v26 = (*(v11[2] + 8))();
    if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v26[2] & 0x3FFFFFFF) != 0x40)
    {
      v48 = 257;
      emitDiag(a5, 2, &v46, &v49);
      if (!v49)
      {
        goto LABEL_43;
      }

      mlir::Diagnostic::operator<<<26ul>(v50, "expected i64 entries for ");
LABEL_41:
      if (v49)
      {
        LODWORD(v46) = 4;
        v47 = v10 & 0xFFFFFFFFFFFFFFF8;
        v41 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v52, &v46, 1);
        v42 = v52 + 24 * v53;
        v43 = *v41;
        *(v42 + 16) = *(v41 + 16);
        *v42 = v43;
        ++v53;
      }

      goto LABEL_43;
    }

    if ((*((v10 & 0xFFFFFFFFFFFFFFF8) + 24) & 0xFFFFFFFD) != 0)
    {
      v48 = 257;
      emitDiag(a5, 2, &v46, &v49);
      if (!v49)
      {
        goto LABEL_43;
      }

      mlir::Diagnostic::operator<<<40ul>(v50, "unexpected layout attribute for struct ");
      goto LABEL_41;
    }

    v27 = v11[1];
    v28 = (*(v11[2] + 24))();
    if (v29)
    {
      v30 = 8 * v29;
      v31 = 1;
      do
      {
        v32 = *v28++;
        v31 *= v32;
        v30 -= 8;
      }

      while (v30);
      if (v31 != 1)
      {
        v46 = v11;
        mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v46, &v49);
        v33 = (v50[0] & 1) != 0 ? 0 : v51;
        v34 = *(v49 + 8 * v33);
        v46 = v11;
        mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(&v46, &v49);
        v35 = (v50[0] & 1) != 0 ? 0 : v51 + 1;
        if (v34 > *(v49 + 8 * v35))
        {
          v48 = 257;
          emitDiag(a5, 2, &v46, &v49);
          if (v49)
          {
            mlir::Diagnostic::operator<<<73ul>(v50, "preferred alignment is expected to be at least as large as ABI alignment");
          }

          goto LABEL_43;
        }
      }
    }

LABEL_30:
    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_31;
    }
  }

  v48 = 257;
  emitDiag(a5, 2, &v46, &v49);
  if (v49)
  {
    mlir::Diagnostic::operator<<<31ul>(v50, "expected layout attribute for ");
  }

  v37 = (*v9)(v9, v8);
  if (v49)
  {
    LODWORD(v46) = 4;
    v47 = v37 & 0xFFFFFFFFFFFFFFF8;
    v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v52, &v46, 1);
    v39 = v52 + 24 * v53;
    v40 = *v38;
    *(v39 + 16) = *(v38 + 16);
    *v39 = v40;
    ++v53;
    if (v49)
    {
      mlir::Diagnostic::operator<<<61ul>(v50, " to be a dense integer elements attribute of 1 or 2 elements");
    }
  }

LABEL_43:
  v36 = v54 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_44:
  v44 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::LLVMStructType,mlir::Type,mlir::LLVM::detail::LLVMStructTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestructurableTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[2] = v2;
  do
  {
    v4 = v8[v3];
  }

  while (v4 != a1 && v3++ != 2);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LLVMStructTypeES2_NSD_6detail21LLVMStructTypeStorageENSB_11TypeUniquerEJNS1_9TypeTrait9IsMutableENS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = *(a2 + 24);
  if (v8)
  {
    v12 = *(a2 + 28);
    if (v12 >= 8)
    {
      v13 = *(a2 + 16);
      v14 = 8 * (v12 >> 3);
      do
      {
        if (*v13)
        {
          result = a5(a6);
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
    }
  }

  else if (v8 >= 4)
  {
    v9 = *(a2 + 8);
    v10 = 8 * (v8 >> 2);
    do
    {
      if (*v9)
      {
        result = a5(a6);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LLVMStructTypeES2_NSC_6detail21LLVMStructTypeStorageENSA_11TypeUniquerEJNS1_9TypeTrait9IsMutableENS1_23DataLayoutTypeInterface5TraitENS1_27DestructurableTypeInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a2[6];
  if (v6)
  {
    return 0;
  }

  v7 = (v6 >> 1) & 1;
  v8 = *(**a2 + 32);
  v14 = v8;
  if (a6 >= v6 >> 2)
  {
    v9 = v6 >> 2;
  }

  else
  {
    v9 = a6;
  }

  v10 = *v8;
  v13[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id;
  v13[1] = &v14;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LLVMStructTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_14LLVMStructTypeEJRNS4_3KeyEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v21[1] = v13;
  v17[0] = a5;
  v17[1] = v9;
  v17[2] = 0;
  v17[3] = 0;
  v18 = 0;
  v19 = v7;
  v20 = 0;
  v11 = mlir::LLVM::detail::LLVMStructTypeStorage::Key::hashValue(v17);
  v15[0] = v17;
  v15[1] = v21;
  v16 = v17;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 384), &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,mlir::LLVM::detail::LLVMStructTypeStorage::Key &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,mlir::LLVM::detail::LLVMStructTypeStorage::Key &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,mlir::LLVM::detail::LLVMStructTypeStorage::Key &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,mlir::LLVM::detail::LLVMStructTypeStorage::Key &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LLVMStructTypeStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LLVMStructTypeStorage,mlir::LLVM::detail::LLVMStructTypeStorage::Key &>(llvm::function_ref<void ()(mlir::LLVM::detail::LLVMStructTypeStorage *)>,mlir::TypeID,mlir::LLVM::detail::LLVMStructTypeStorage::Key &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::LLVM::detail::LLVMStructTypeStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LLVMStructTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_14LLVMStructTypeEJRNS4_3KeyEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::LLVM::LLVMPointerType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  *v4 = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getTypeSize;
  v4[1] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getTypeSizeInBits;
  v4[2] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getABIAlignment;
  v4[3] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getPreferredAlignment;
  v4[4] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getIndexBitwidth;
  v4[5] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::areCompatible;
  v4[6] = mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::verifyEntries;
  v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMPointerType,mlir::Type,mlir::LLVM::detail::LLVMPointerTypeStorage,mlir::detail::TypeUniquer,mlir::DataLayoutTypeInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractType::AbstractType(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15LLVMPointerTypeES2_NSD_6detail22LLVMPointerTypeStorageENSB_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v8, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15LLVMPointerTypeES2_NSC_6detail22LLVMPointerTypeStorageENSA_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id, "llvm.ptr", 8);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getTypeSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a2;
  TypeSizeInBits = mlir::LLVM::LLVMPointerType::getTypeSizeInBits(&v7, a3, a4, a5);
  if (TypeSizeInBits)
  {
    return ((TypeSizeInBits - (TypeSizeInBits != 0)) >> 3) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getABIAlignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = getPointerDataLayoutEntry(a4, a5, a2, 1u);
  if ((v8 & 1) == 0)
  {
    v9 = *(**a2 + 32);
    v11 = 0;
    v10 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, &v11);
    return mlir::DataLayout::getTypeABIAlignment(a3, v10);
  }

  return result;
}

unint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getPreferredAlignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = getPointerDataLayoutEntry(a4, a5, a2, 2u);
  if ((v8 & 1) == 0)
  {
    v9 = *(**a2 + 32);
    v11 = 0;
    v10 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, &v11);
    return mlir::DataLayout::getTypePreferredAlignment(a3, v10);
  }

  return result;
}

unint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::getIndexBitwidth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = getPointerDataLayoutEntry(a4, a5, a2, 3u);
  if ((v8 & 1) == 0)
  {
    v9 = *(**a2 + 32);
    v11 = 0;
    v10 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, &v11);
    return mlir::DataLayout::getTypeIndexBitwidth(a3, v10);
  }

  return result;
}

uint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::areCompatible(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (!a6)
  {
    return 1;
  }

  v6 = a5;
  v9 = &a5[2 * a6];
  v30 = 16 * a4;
  v10 = &a3[2 * a4];
  while (1)
  {
    v11 = *v6;
    v12 = v6[1];
    if (((*v12)(v12, *v6) & 4) == 0)
    {
      v13 = (*v12)(v12, v11);
      if (a4)
      {
        v14 = v13 & 0xFFFFFFFFFFFFFFF8;
        v15 = v30;
        v16 = a3;
        while (1)
        {
          v17 = *v16;
          v18 = (*v16[1])();
          if ((v18 & 4) == 0 && (v18 & 0xFFFFFFFFFFFFFFF8) != 0 && *((v18 & 0xFFFFFFFFFFFFFFF8) + 8) == *(v14 + 8))
          {
            break;
          }

          v16 += 2;
          v15 -= 16;
          if (!v15)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v16 = a3;
      }

      if (v16 == v10)
      {
LABEL_14:
        if (a4)
        {
          v21 = a3;
          do
          {
            while (1)
            {
              v22 = *v21;
              v23 = (*v21[1])();
              if ((v23 & 4) == 0 && (v23 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                break;
              }

              v21 += 2;
              if (v21 == v10)
              {
                goto LABEL_25;
              }
            }

            v21 += 2;
            if (*((v23 & 0xFFFFFFFFFFFFFFF8) + 8))
            {
              v24 = v21 == v10;
            }

            else
            {
              v24 = 1;
            }
          }

          while (!v24);
        }

LABEL_25:
        v20 = 8;
        PointerSpecValue = 64;
      }

      else
      {
        PointerSpecValue = mlir::LLVM::extractPointerSpecValue(*v16, 0);
        v20 = mlir::LLVM::extractPointerSpecValue(*v16, 1u);
      }

      v25 = v12[1](v12, v11);
      v26 = mlir::LLVM::extractPointerSpecValue(v25, 0);
      v27 = mlir::LLVM::extractPointerSpecValue(v25, 1u);
      v28 = PointerSpecValue == v26 && v20 >= v27;
      if (!v28 || v20 % v27)
      {
        return 0;
      }
    }

    v6 += 2;
    if (v6 == v9)
    {
      return 1;
    }
  }
}

uint64_t mlir::detail::DataLayoutTypeInterfaceInterfaceTraits::Model<mlir::LLVM::LLVMPointerType>::verifyEntries(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
LABEL_21:
    v32 = 1;
    goto LABEL_32;
  }

  v6 = a3;
  v7 = &a3[2 * a4];
  while (1)
  {
    v8 = *v6;
    v9 = v6[1];
    if (((*v9)(v9, *v6) & 4) != 0)
    {
      goto LABEL_20;
    }

    v10 = (*v9)(v9, v8);
    v11 = v9[1](v9, v8);
    if (!mlir::DenseIntElementsAttr::classof(v11) || v11 == 0)
    {
      break;
    }

    v13 = v11[1];
    v14 = (*(v11[2] + 24))();
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = 8 * v15;
    v17 = 1;
    do
    {
      v18 = *v14++;
      v17 *= v18;
      v16 -= 8;
    }

    while (v16);
    if (v17 != 3)
    {
LABEL_15:
      v19 = v11[1];
      v20 = (*(v11[2] + 24))();
      if (!v21)
      {
        break;
      }

      v22 = 8 * v21;
      v23 = 1;
      do
      {
        v24 = *v20++;
        v23 *= v24;
        v22 -= 8;
      }

      while (v22);
      if (v23 != 4)
      {
        break;
      }
    }

    v25 = v11[1];
    v26 = (*(v11[2] + 8))();
    if (*(*v26 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v26[2] & 0x3FFFFFFF) != 0x40)
    {
      v43 = 257;
      emitDiag(a5, 2, &v41, &v44);
      if (v44)
      {
        mlir::Diagnostic::operator<<<29ul>(v45, "expected i64 parameters for ");
        if (v44)
        {
          v41 = 4;
          v42 = v10 & 0xFFFFFFFFFFFFFFF8;
          v36 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v46, &v41, 1);
          v37 = v46 + 24 * v47;
          v38 = *v36;
          *(v37 + 16) = *(v36 + 16);
          *v37 = v38;
          ++v47;
        }
      }

      goto LABEL_31;
    }

    PointerSpecValue = mlir::LLVM::extractPointerSpecValue(v11, 1u);
    v29 = v28;
    v31 = PointerSpecValue <= mlir::LLVM::extractPointerSpecValue(v11, 2u);
    if ((v29 & 1) != 0 && (v30 & v31 & 1) == 0)
    {
      v43 = 257;
      emitDiag(a5, 2, &v41, &v44);
      if (v44)
      {
        mlir::Diagnostic::operator<<<73ul>(v45, "preferred alignment is expected to be at least as large as ABI alignment");
      }

      goto LABEL_31;
    }

LABEL_20:
    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_21;
    }
  }

  v43 = 257;
  emitDiag(a5, 2, &v41, &v44);
  if (v44)
  {
    mlir::Diagnostic::operator<<<31ul>(v45, "expected layout attribute for ");
    if (v44)
    {
      v41 = 4;
      v42 = v10 & 0xFFFFFFFFFFFFFFF8;
      v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v46, &v41, 1);
      v34 = v46 + 24 * v47;
      v35 = *v33;
      *(v34 + 16) = *(v33 + 16);
      *v34 = v35;
      ++v47;
      if (v44)
      {
        mlir::Diagnostic::operator<<<63ul>(v45, " to be a dense integer elements attribute with 3 or 4 elements");
      }
    }
  }

LABEL_31:
  v32 = v48 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
LABEL_32:
  v39 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::LLVMPointerType,mlir::Type,mlir::LLVM::detail::LLVMPointerTypeStorage,mlir::detail::TypeUniquer,mlir::DataLayoutTypeInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::DataLayoutTypeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DataLayoutTypeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15LLVMPointerTypeES2_NSC_6detail22LLVMPointerTypeStorageENSA_11TypeUniquerEJNS1_23DataLayoutTypeInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, _DWORD *a2)
{
  v2 = *(**a2 + 32);
  v4 = a2[2];
  return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v2, &v4);
}

void mlir::AbstractType::get<mlir::LLVM::LLVMFixedVectorType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMFixedVectorType,mlir::Type,mlir::LLVM::detail::LLVMFixedVectorTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19LLVMFixedVectorTypeES2_NSD_6detail26LLVMFixedVectorTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19LLVMFixedVectorTypeES2_NSC_6detail26LLVMFixedVectorTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id, "llvm.fixed_vec", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19LLVMFixedVectorTypeES2_NSD_6detail26LLVMFixedVectorTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19LLVMFixedVectorTypeES2_NSC_6detail26LLVMFixedVectorTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  v8 = *a5;
  v7 = v5;
  return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFixedVectorType,mlir::Type &,unsigned int &>(*(**v8 + 32), &v8, &v7);
}

void mlir::AbstractType::get<mlir::LLVM::LLVMScalableVectorType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMScalableVectorType,mlir::Type,mlir::LLVM::detail::LLVMScalableVectorTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22LLVMScalableVectorTypeES2_NSD_6detail29LLVMScalableVectorTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22LLVMScalableVectorTypeES2_NSC_6detail29LLVMScalableVectorTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id, "llvm.scalable_vec", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22LLVMScalableVectorTypeES2_NSD_6detail29LLVMScalableVectorTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22LLVMScalableVectorTypeES2_NSC_6detail29LLVMScalableVectorTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  v8 = *a5;
  v7 = v5;
  return mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMScalableVectorType,mlir::Type &,unsigned int &>(*(**v8 + 32), &v8, &v7);
}

void mlir::AbstractType::get<mlir::LLVM::LLVMTargetExtType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMTargetExtType,mlir::Type,mlir::LLVM::detail::LLVMTargetExtTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LLVMTargetExtTypeES2_NSD_6detail24LLVMTargetExtTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LLVMTargetExtTypeES2_NSC_6detail24LLVMTargetExtTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id, "llvm.target", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LLVMTargetExtTypeES2_NSD_6detail24LLVMTargetExtTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v6 = *(a2 + 32);
  if (v6)
  {
    v9 = *(a2 + 24);
    v10 = 8 * v6;
    do
    {
      if (*v9)
      {
        result = a5(a6);
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17LLVMTargetExtTypeES2_NSC_6detail24LLVMTargetExtTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v21[0] = *(a2 + 8);
  v21[1] = v8;
  v22 = *(a2 + 40);
  if (a6 >= DWORD2(v8))
  {
    v9 = DWORD2(v8);
  }

  else
  {
    v9 = a6;
  }

  v10 = v22;
  v31 = &v32 + 2;
  *&v32 = 0xC00000000;
  if (*(&v22 + 1))
  {
    v11 = 4 * *(&v22 + 1);
    do
    {
      v12 = *v10;
      if (v32 >= DWORD1(v32))
      {
        llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v31, v12);
      }

      else
      {
        v31[v32] = v12;
        LODWORD(v32) = v32 + 1;
      }

      ++v10;
      v11 -= 4;
    }

    while (v11);
    v26 = &v27 + 8;
    *&v27 = 0xC00000000;
    if (v32)
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&v26, &v31);
    }
  }

  else
  {
    v26 = &v27 + 8;
    *&v27 = 0xC00000000;
  }

  if (v31 != (&v32 + 8))
  {
    free(v31);
  }

  v31 = v21;
  *&v32 = a5;
  *(&v32 + 1) = v9;
  v33 = v35;
  v34 = 0xC00000000;
  if (v27)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v33, &v26);
  }

  if (v26 != &v27 + 8)
  {
    free(v26);
  }

  v13 = *(**a2 + 32);
  v14 = v31;
  v26 = v31;
  v27 = v32;
  v28 = v30;
  v29 = 0xC00000000;
  if (v34)
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v28, &v33);
    v14 = v26;
    v15 = v28;
    v16 = v29;
  }

  else
  {
    v16 = 0;
    v15 = v30;
  }

  v17 = *v14;
  v24 = v27;
  v25 = v17;
  v23[0] = v15;
  v23[1] = v16;
  v18 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMTargetExtType,llvm::StringRef,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<unsigned int>>(v13, &v25, &v24, v23);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void mlir::AbstractType::get<mlir::LLVM::LLVMX86AMXType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMX86AMXType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LLVMX86AMXTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14LLVMX86AMXTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMX86AMXType,void>::id, "llvm.x86_amx", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::LLVM::LLVMX86AMXType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM14LLVMX86AMXTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4LLVM14LLVMX86AMXTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

llvm::raw_ostream *mlir::LLVM::LLVMStructType::print(mlir::LLVM::LLVMStructType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *(*this + 24);
  if (v6)
  {
    v7 = (*(*a2 + 104))(a2);
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 34);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 34;
    }

    v11 = *(*this + 8);
    v12 = *(*this + 24) >> 2;
    v13 = (*(*a2 + 16))(a2);
    llvm::raw_ostream::operator<<(v13, v11, v12);
    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 34);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 34;
    }

    result = (*(*a2 + 16))(a2);
    if ((v7 & 1) == 0)
    {
      v18 = *(result + 4);
      if (v18 >= *(result + 3))
      {

        return llvm::raw_ostream::write(result, 62);
      }

      else
      {
        *(result + 4) = v18 + 1;
        *v18 = 62;
      }

      return result;
    }

    v17 = *(result + 4);
    if (*(result + 3) - v17 > 1uLL)
    {
      *v17 = 8236;
      *(result + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(result, ", ", 2uLL);
    }

    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  v19 = *(*this + 24);
  if ((v19 & 1) != 0 && (v19 = *(*this + 28), (v19 & 5) != 4))
  {
    result = (*(*a2 + 16))(a2);
    v22 = *(result + 4);
    if (*(result + 3) - v22 > 6uLL)
    {
      *(v22 + 3) = 1046836593;
      *v22 = 1902211183;
      *(result + 4) += 7;
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(result, "opaque>", 7uLL);
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    if ((v19 & 2) != 0)
    {
      v20 = (*(*a2 + 16))(a2);
      v21 = *(v20 + 4);
      if (*(v20 + 3) - v21 > 6uLL)
      {
        *(v21 + 3) = 543450475;
        *v21 = 1801675120;
        *(v20 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v20, "packed ", 7uLL);
      }
    }

    v23 = (*(*a2 + 16))(a2);
    v24 = *(v23 + 4);
    if (v24 >= *(v23 + 3))
    {
      llvm::raw_ostream::write(v23, 40);
    }

    else
    {
      *(v23 + 4) = v24 + 1;
      *v24 = 40;
    }

    v25 = *this;
    v26 = *(*this + 24);
    if (v26)
    {
      v27 = (v25 + 16);
      v28 = *(v25 + 28) >> 3;
    }

    else
    {
      v27 = (v25 + 8);
      v28 = v26 >> 2;
    }

    v29 = *v27;
    v30 = (*(*a2 + 16))(a2);
    if (v28)
    {
      v33 = v30;
      dispatchPrint(a2, *v29, v31, v32);
      if (v28 != 1)
      {
        v36 = v29 + 1;
        v37 = 8 * v28 - 8;
        do
        {
          v38 = *(v33 + 4);
          if (*(v33 + 3) - v38 > 1uLL)
          {
            *v38 = 8236;
            *(v33 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v33, ", ", 2uLL);
          }

          v39 = *v36++;
          dispatchPrint(a2, v39, v34, v35);
          v37 -= 8;
        }

        while (v37);
      }
    }

    v40 = (*(*a2 + 16))(a2);
    v41 = *(v40 + 4);
    if (v41 >= *(v40 + 3))
    {
      llvm::raw_ostream::write(v40, 41);
    }

    else
    {
      *(v40 + 4) = v41 + 1;
      *v41 = 41;
    }

    result = (*(*a2 + 16))(a2);
    v42 = *(result + 4);
    if (v42 >= *(result + 3))
    {
      result = llvm::raw_ostream::write(result, 62);
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      *(result + 4) = v42 + 1;
      *v42 = 62;
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (v10)
  {
    v43 = *(*v10 + 112);

    return v43(v10);
  }

  return result;
}

llvm::raw_ostream *mlir::LLVM::detail::printType(uint64_t a1, mlir::AsmPrinter *a2)
{
  if (a1)
  {
    v4 = *(*a1 + 136);
    if (v4 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
    {
      v5 = *(*a1 + 136);
      if (v5 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID())
      {
        v10 = "ppc_fp128";
        v11 = 9;
        goto LABEL_30;
      }

      v6 = *(*a1 + 136);
      if (v6 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID())
      {
        v10 = "token";
      }

      else
      {
        v7 = *(*a1 + 136);
        if (v7 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID())
        {
          v8 = *(*a1 + 136);
          if (v8 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID())
          {
            v10 = "metadata";
            v11 = 8;
            goto LABEL_30;
          }

          v9 = *(*a1 + 136);
          if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
          {
            if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
            {
              v10 = "vec";
              v11 = 3;
              if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
              {
                goto LABEL_30;
              }

              if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
              {
                if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
                {
                  v10 = "struct";
                  v11 = 6;
                }

                else
                {
                  if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
                  {
                    v10 = "target";
                  }

                  else
                  {
                    v10 = "x86_amx";
                  }

                  if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
                  {
                    v11 = 6;
                  }

                  else
                  {
                    v11 = 7;
                  }
                }

                goto LABEL_30;
              }

              v10 = "array";
              goto LABEL_29;
            }

            v10 = "ptr";
            v11 = 3;
LABEL_30:
            v14 = (*(*a2 + 16))(a2);
            result = llvm::raw_ostream::operator<<(v14, v10, v11);
            v15 = *(*a1 + 136);
            if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMPointerType::print(&v16, a2);
            }

            else if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMArrayType::print(&v16, a2);
            }

            else if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMFixedVectorType::print(&v16, a2);
            }

            else if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMScalableVectorType::print(&v16, a2);
            }

            else if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMFunctionType::print(&v16, a2);
            }

            else if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMTargetExtType::print(&v16, a2);
            }

            else if (v15 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
            {
              v16 = a1;
              return mlir::LLVM::LLVMStructType::print(&v16, a2);
            }

            return result;
          }

          v10 = "func";
LABEL_24:
          v11 = 4;
          goto LABEL_30;
        }

        v10 = "label";
      }

LABEL_29:
      v11 = 5;
      goto LABEL_30;
    }

    v10 = "void";
    goto LABEL_24;
  }

  result = (*(*a2 + 16))(a2);
  v13 = *(result + 4);
  if (*(result + 3) - v13 > 0xCuLL)
  {
    qmemcpy(v13, "<<NULL-TYPE>>", 13);
    *(result + 4) += 13;
  }

  else
  {

    return llvm::raw_ostream::write(result, "<<NULL-TYPE>>", 0xDuLL);
  }

  return result;
}

uint64_t trySetStructBody(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a1;
  if (a3)
  {
    v11 = 8 * a3;
    v12 = a2;
    while (1)
    {
      v13 = *v12;
      if (!mlir::LLVM::LLVMStructType::isValidElementType(*v12))
      {
        break;
      }

      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v20 = 257;
    (*(*a5 + 24))(&v24, a5, a6, v19);
    if (v24)
    {
      mlir::Diagnostic::operator<<<38ul>(v25, "invalid LLVM structure element type: ");
      if (v24)
      {
        v22 = 4;
        v23 = v13;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
        v16 = v26 + 24 * v27;
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++v27;
      }
    }

    goto LABEL_12;
  }

LABEL_5:
  if ((mlir::LLVM::LLVMStructType::setBody(&v21, a2, a3, a4) & 1) == 0)
  {
    v20 = 257;
    (*(*a5 + 24))(&v24, a5, a6, v19);
    if (v24)
    {
      mlir::Diagnostic::operator<<<51ul>(v25, "identified type already used with a different body");
    }

LABEL_12:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    result = 0;
    goto LABEL_13;
  }

  result = v21;
LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::detail::parseType(mlir::AsmParser *a1)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 40))(a1);
  v3 = dispatchParse(a1, 0);
  v4 = v3;
  if (v3 && !mlir::LLVM::isCompatibleOuterType(v3))
  {
    v7[16] = 257;
    (*(*a1 + 24))(&v8, a1, v2, v7);
    if (v8)
    {
      mlir::Diagnostic::operator<<<34ul>(v9, "unexpected type, expected keyword");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t dispatchParse(mlir::AsmParser *a1, char a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v39 = 0;
  v40 = v4;
  v5 = (*(*a1 + 552))(a1, &v39);
  if ((v5 & 0x100) != 0)
  {
    if (v5)
    {
      if (a2)
      {
        result = v39;
        goto LABEL_72;
      }

      v38 = 257;
      (*(*a1 + 24))(&v41, a1, v4, &v36);
      if (v41)
      {
        mlir::Diagnostic::operator<<<34ul>(&v42, "unexpected type, expected keyword");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    }

    result = 0;
    goto LABEL_72;
  }

  v36 = 0;
  v37 = 0;
  v6 = mlir::AsmParser::parseKeyword(a1, &v36);
  result = 0;
  if (v6)
  {
    v8 = *(*(*a1 + 32))(a1);
    v34 = &v35;
    v35 = v8;
    if (v37 == 4)
    {
      v9 = *v36;
      v33 = &v35;
      if (v9 != 1684631414)
      {
        v31 = &v35;
        v32 = &v35;
        v29 = a1;
        v30 = &v35;
        if (*v36 != 1668183398)
        {
LABEL_6:
          v27 = a1;
          v28 = a1;
          v25 = a1;
          v26 = a1;
          goto LABEL_7;
        }

        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_5>;
        v12 = &v29;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_5>;
        goto LABEL_52;
      }

      v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_0>;
      v12 = &v34;
      goto LABEL_48;
    }

    v33 = &v35;
    if (v37 == 9)
    {
      if (*v36 == 0x323170665F637070 && *(v36 + 8) == 56)
      {
        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_1>;
        v12 = &v33;
LABEL_48:
        LOBYTE(v13) = v11;
        v32 = &v35;
LABEL_49:
        v31 = &v35;
LABEL_50:
        v30 = &v35;
LABEL_51:
        v29 = a1;
LABEL_52:
        v28 = a1;
LABEL_53:
        v27 = a1;
LABEL_54:
        v26 = a1;
        goto LABEL_55;
      }

      v31 = &v35;
      v32 = &v35;
      v29 = a1;
      v30 = &v35;
      v27 = a1;
      v28 = a1;
      v25 = a1;
      v26 = a1;
      v24 = a1;
LABEL_70:
      v23 = &v35;
LABEL_71:
      v41 = a1;
      v42 = &v40;
      v43 = &v36;
      result = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_12>(&v41);
      goto LABEL_72;
    }

    v32 = &v35;
    if (v37 == 5)
    {
      if (*v36 == 1701539700 && *(v36 + 4) == 110)
      {
        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_2>;
        v12 = &v32;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_2>;
        goto LABEL_49;
      }

      v31 = &v35;
      if (*v36 == 1700946284 && *(v36 + 4) == 108)
      {
        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_3>;
        v12 = &v31;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_3>;
        goto LABEL_50;
      }

      v29 = a1;
      v30 = &v35;
      v27 = a1;
      v28 = a1;
      v26 = a1;
      if (*v36 == 1634890337 && *(v36 + 4) == 121)
      {
        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_8>;
        v12 = &v26;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_8>;
LABEL_55:
        v25 = a1;
LABEL_56:
        v24 = a1;
LABEL_57:
        v23 = &v35;
LABEL_58:
        v41 = a1;
        v42 = &v40;
        v43 = &v36;
        result = ((v11 & 0xFFFFFFFFFFFFFF00 | v13))(v12);
        goto LABEL_72;
      }
    }

    else
    {
      v30 = &v35;
      v31 = &v35;
      if (v37 == 8)
      {
        if (*v36 != 0x617461646174656DLL)
        {
          v29 = a1;
          goto LABEL_6;
        }

        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_4>;
        v12 = &v30;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_4>;
        goto LABEL_51;
      }

      v28 = a1;
      v29 = a1;
      if (v37 != 3)
      {
        v26 = a1;
        v27 = a1;
        v25 = a1;
        if (v37 != 6)
        {
LABEL_7:
          v23 = &v35;
          v24 = a1;
          if (v37 != 7)
          {
            goto LABEL_71;
          }

          if (*v36 != 1597388920 || *(v36 + 3) != 2020434271)
          {
            goto LABEL_71;
          }

          v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_11>;
          v12 = &v23;
          v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_11>;
          goto LABEL_58;
        }

        if (*v36 == 1970435187 && *(v36 + 2) == 29795)
        {
          v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_9>;
          v12 = &v25;
          v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_9>;
          goto LABEL_56;
        }

        v24 = a1;
        if (*v36 == 1735549300 && *(v36 + 2) == 29797)
        {
          v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_10>;
          v12 = &v24;
          v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_10>;
          goto LABEL_57;
        }

        goto LABEL_70;
      }

      if (*v36 == 29808 && *(v36 + 2) == 114)
      {
        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_6>;
        v12 = &v28;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_6>;
        goto LABEL_53;
      }

      v27 = a1;
      if (*v36 == 25974 && *(v36 + 2) == 99)
      {
        v11 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_7>;
        v12 = &v27;
        v13 = llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_7>;
        goto LABEL_54;
      }

      v26 = a1;
    }

    v24 = a1;
    v25 = a1;
    goto LABEL_70;
  }

LABEL_72:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dispatchPrint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (!mlir::LLVM::LLVMDialect::isCompatibleType(a2, a2, a3, a4) || (v6 = *a2, *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || (v7 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v6 + 8, v7)) || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v8 = *(*a1 + 32);

    return v8(a1, a2);
  }

  else
  {

    return mlir::LLVM::detail::printType(a2, a1);
  }
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID();
  v3 = *(*v1 + 384);
  v5 = v2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v3 + 232), &v5);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_1>(uint64_t **a1)
{
  v1 = **a1;
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID();
  v3 = *(*v1 + 384);
  v5 = v2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v3 + 232), &v5);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_2>(uint64_t **a1)
{
  v1 = **a1;
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID();
  v3 = *(*v1 + 384);
  v5 = v2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v3 + 232), &v5);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_3>(uint64_t **a1)
{
  v1 = **a1;
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMLabelType,void>::resolveTypeID();
  v3 = *(*v1 + 384);
  v5 = v2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v3 + 232), &v5);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_4>(uint64_t **a1)
{
  v1 = **a1;
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMMetadataType,void>::resolveTypeID();
  v3 = *(*v1 + 384);
  v5 = v2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v3 + 232), &v5);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_7>(mlir::AsmParser **a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v17 = v19;
  v18 = 0x200000000;
  v2 = (*(*v1 + 40))(v1);
  if (((*(*v1 + 152))(v1) & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = (*(*v1 + 40))(v1);
  if (((*(*v1 + 600))(v1, &v17, 1, 1) & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = (*(*v1 + 40))(v1);
  v5 = dispatchParse(v1, 1);
  v14 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  if (((*(*v1 + 168))(v1) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v18 - 3) < 0xFFFFFFFE || (v18 == 2) != (*v17 == 0x8000000000000000))
  {
    goto LABEL_7;
  }

  if (v18 == 2)
  {
    v10 = v17[1];
    if (v10 == 0x8000000000000000)
    {
LABEL_7:
      v13 = 257;
      (*(*v1 + 24))(&v15, v1, v3, v12);
      if (v15)
      {
        mlir::Diagnostic::operator<<<58ul>(v16, "expected '? x <integer> x <type>' or '<integer> x <type>'");
      }

LABEL_9:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_10:
      v7 = 0;
      goto LABEL_11;
    }

    v12[0] = v2;
    v15 = v1;
    v16[0] = v12;
    v11 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMScalableVectorType,mlir::Type,mlir::LLVM::detail::LLVMScalableVectorTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::Type,unsigned int>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM22LLVMScalableVectorTypeEJRNS1_4TypeERxEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v15, *(**v6 + 32), v6, v10);
  }

  else
  {
    if (mlir::Type::isSignlessIntOrFloat(&v14))
    {
      v13 = 257;
      (*(*v1 + 24))(&v15, v1, v4, v12);
      if (v15)
      {
        mlir::Diagnostic::operator<<<67ul>(v16, "cannot use !llvm.vec for built-in primitives, use 'vector' instead");
      }

      goto LABEL_9;
    }

    v12[0] = v2;
    v15 = v1;
    v16[0] = v12;
    v11 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMFixedVectorType,mlir::Type,mlir::LLVM::detail::LLVMFixedVectorTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::Type,unsigned int>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM19LLVMFixedVectorTypeEJRNS1_4TypeERxEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &v15, *(**v6 + 32), v6, *v17);
  }

  v7 = v11;
LABEL_11:
  if (v17 != v19)
  {
    free(v17);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM22LLVMScalableVectorTypeEJRNS1_4TypeERxEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4LLVM19LLVMFixedVectorTypeEJRNS1_4TypeERxEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_9>(mlir::AsmParser **a1)
{
  v42[24] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*(**a1 + 40))(*a1);
  v3 = (*(*v1 + 48))(v1, v2);
  if (((*(*v1 + 152))(v1) & 1) == 0)
  {
    v9 = 0;
    goto LABEL_35;
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  v4 = (*(*v1 + 264))(v1, &__p);
  if (v4)
  {
    v5 = (*(*v1 + 40))(v1);
    if ((*(*v1 + 176))(v1))
    {
      v6 = *(**v3 + 32);
      v7 = SHIBYTE(v39);
      p_p = &__p;
      if (v39 < 0)
      {
        p_p = __p;
      }

      if (v39 < 0)
      {
        v7 = v38;
      }

      *&v41 = p_p;
      *(&v41 + 1) = v7;
      LOBYTE(v35[0]) = 0;
      v9 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::StringRef &,BOOL &>(v6, &v41, v35);
      if (((*(*v1 + 624))(v1, v9) & 1) == 0)
      {
        goto LABEL_33;
      }

      (*(*v1 + 632))(v1);
      *&v35[0] = "struct without a body only allowed in a recursive struct";
      v36 = 259;
      (*(*v1 + 24))(&v41, v1, v5, v35);
      goto LABEL_31;
    }

    if (((*(*v1 + 120))(v1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v10 = (*(*v1 + 40))(v1);
  if ((*(*v1 + 408))(v1, "opaque", 6))
  {
    if (v4)
    {
      if ((*(*v1 + 168))(v1))
      {
        v11 = SHIBYTE(v39);
        v12 = &__p;
        if (v39 < 0)
        {
          v12 = __p;
        }

        v13 = *(**v3 + 32);
        if (v39 < 0)
        {
          v11 = v38;
        }

        *&v41 = v12;
        *(&v41 + 1) = v11;
        LOBYTE(v35[0]) = 1;
        v14 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::StringRef &,BOOL &>(v13, &v41, v35);
        if (*(v14 + 24))
        {
          v9 = v14;
          if ((*(v14 + 28) & 5) != 4)
          {
            goto LABEL_33;
          }
        }

        v15 = "redeclaring defined struct as opaque";
        goto LABEL_30;
      }

LABEL_32:
      v9 = 0;
      goto LABEL_33;
    }

    v15 = "only identified structs can be opaque";
LABEL_30:
    *&v35[0] = v15;
    v36 = 259;
    (*(*v1 + 24))(&v41, v1, v10, v35);
LABEL_31:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    goto LABEL_32;
  }

  if (v4)
  {
    v16 = *(**v3 + 32);
    v17 = SHIBYTE(v39);
    v18 = &__p;
    if (v39 < 0)
    {
      v18 = __p;
    }

    if (v39 < 0)
    {
      v17 = v38;
    }

    *&v41 = v18;
    *(&v41 + 1) = v17;
    LOBYTE(v35[0]) = 0;
    v19 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::StringRef &,BOOL &>(v16, &v41, v35);
    v20 = v1;
    if (((*(*v1 + 624))(v1, v19) & 1) == 0)
    {
      v15 = "identifier already used for an enclosing struct";
      goto LABEL_30;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = (*(*v1 + 408))(v1, "packed", 6);
  if (((*(*v1 + 280))(v1) & 1) == 0)
  {
    goto LABEL_46;
  }

  if (((*(*v1 + 304))(v1) & 1) == 0)
  {
    *&v41 = v42;
    *(&v41 + 1) = 0x400000000;
    v28 = (*(*v1 + 40))(v1);
    do
    {
      v29 = dispatchParse(v1, 1);
      if (!v29)
      {
        goto LABEL_61;
      }

      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v41, v29);
    }

    while (((*(*v1 + 128))(v1) & 1) != 0);
    if (((*(*v1 + 296))(v1) & 1) == 0 || ((*(*v1 + 168))(v1) & 1) == 0)
    {
LABEL_61:
      v9 = 0;
      goto LABEL_62;
    }

    if (v4)
    {
      v30 = *(**v3 + 32);
      v31 = SHIBYTE(v39);
      v32 = &__p;
      if (v39 < 0)
      {
        v32 = __p;
      }

      if (v39 < 0)
      {
        v31 = v38;
      }

      *&v35[0] = v32;
      *(&v35[0] + 1) = v31;
      v40 = 0;
      v33 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::StringRef &,BOOL &>(v30, v35, &v40);
      v34 = trySetStructBody(v33, v41, DWORD2(v41), v23 & 1, v1, v28);
    }

    else
    {
      *&v35[0] = v3;
      v34 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMStructType,mlir::Type,mlir::LLVM::detail::LLVMStructTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getChecked<llvm::ArrayRef<mlir::Type>,BOOL>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LLVMStructType::parse(mlir::AsmParser &)::$_5>, v35, *(**v3 + 32), v41, DWORD2(v41), v23 & 1);
    }

    v9 = v34;
LABEL_62:
    if (v41 != v42)
    {
      free(v41);
    }

    goto LABEL_47;
  }

  if (((*(*v1 + 168))(v1) & 1) == 0)
  {
LABEL_46:
    v9 = 0;
LABEL_47:
    if (v20 && (v4 & 1) != 0)
    {
      (*(*v20 + 632))(v20);
    }

    goto LABEL_33;
  }

  if (v4)
  {
    v24 = *(**v3 + 32);
    v25 = SHIBYTE(v39);
    v26 = &__p;
    if (v39 < 0)
    {
      v26 = __p;
    }

    if (v39 < 0)
    {
      v25 = v38;
    }

    *&v41 = v26;
    *(&v41 + 1) = v25;
    LOBYTE(v35[0]) = 0;
    v27 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::StringRef &,BOOL &>(v24, &v41, v35);
    v9 = trySetStructBody(v27, 0, 0, v23 & 1, v1, v10);
    goto LABEL_47;
  }

  *&v41 = v3;
  v9 = mlir::detail::StorageUserBase<mlir::LLVM::LLVMStructType,mlir::Type,mlir::LLVM::detail::LLVMStructTypeStorage,mlir::detail::TypeUniquer,mlir::TypeTrait::IsMutable,mlir::DataLayoutTypeInterface::Trait,mlir::DestructurableTypeInterface::Trait>::getChecked<llvm::ArrayRef<mlir::Type>,BOOL>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LLVMStructType::parse(mlir::AsmParser &)::$_3>, &v41, *(**v3 + 32), 0, 0, v23 & 1);
LABEL_33:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_11>(uint64_t a1)
{
  v1 = *(***a1 + 384);
  v3 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMX86AMXType,void>::id;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v1 + 232), &v3);
}

uint64_t llvm::function_ref<mlir::Type ()(void)>::callback_fn<dispatchParse(mlir::AsmParser &,BOOL)::$_12>(void **a1)
{
  v6[25] = *MEMORY[0x277D85DE8];
  v2 = *a1[1];
  (*(**a1 + 24))(&v5);
  if (v5)
  {
    mlir::Diagnostic::operator<<<20ul>(v6, "unknown LLVM type: ");
  }

  mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v5, a1[2]);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v5);
  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LLVMStructType::parse(mlir::AsmParser &)::$_3>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LLVMStructType::parse(mlir::AsmParser &)::$_5>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

const char *llvm::dwarf::TagString(llvm::dwarf *this)
{
  v1 = this;
  if (this <= 16640)
  {
    result = 0;
    switch(v1)
    {
      case 0:
        result = "DW_TAG_null";
        break;
      case 1:
        result = "DW_TAG_array_type";
        break;
      case 2:
        result = "DW_TAG_class_type";
        break;
      case 3:
        result = "DW_TAG_entry_point";
        break;
      case 4:
        result = "DW_TAG_enumeration_type";
        break;
      case 5:
        result = "DW_TAG_formal_parameter";
        break;
      case 6:
      case 7:
      case 9:
      case 12:
      case 14:
      case 20:
      case 62:
        return result;
      case 8:
        result = "DW_TAG_imported_declaration";
        break;
      case 10:
        result = "DW_TAG_label";
        break;
      case 11:
        result = "DW_TAG_lexical_block";
        break;
      case 13:
        result = "DW_TAG_member";
        break;
      case 15:
        result = "DW_TAG_pointer_type";
        break;
      case 16:
        result = "DW_TAG_reference_type";
        break;
      case 17:
        result = "DW_TAG_compile_unit";
        break;
      case 18:
        result = "DW_TAG_string_type";
        break;
      case 19:
        result = "DW_TAG_structure_type";
        break;
      case 21:
        result = "DW_TAG_subroutine_type";
        break;
      case 22:
        result = "DW_TAG_typedef";
        break;
      case 23:
        result = "DW_TAG_union_type";
        break;
      case 24:
        result = "DW_TAG_unspecified_parameters";
        break;
      case 25:
        result = "DW_TAG_variant";
        break;
      case 26:
        result = "DW_TAG_common_block";
        break;
      case 27:
        result = "DW_TAG_common_inclusion";
        break;
      case 28:
        result = "DW_TAG_inheritance";
        break;
      case 29:
        result = "DW_TAG_inlined_subroutine";
        break;
      case 30:
        result = "DW_TAG_module";
        break;
      case 31:
        result = "DW_TAG_ptr_to_member_type";
        break;
      case 32:
        result = "DW_TAG_set_type";
        break;
      case 33:
        result = "DW_TAG_subrange_type";
        break;
      case 34:
        result = "DW_TAG_with_stmt";
        break;
      case 35:
        result = "DW_TAG_access_declaration";
        break;
      case 36:
        result = "DW_TAG_base_type";
        break;
      case 37:
        result = "DW_TAG_catch_block";
        break;
      case 38:
        result = "DW_TAG_const_type";
        break;
      case 39:
        result = "DW_TAG_constant";
        break;
      case 40:
        result = "DW_TAG_enumerator";
        break;
      case 41:
        result = "DW_TAG_file_type";
        break;
      case 42:
        result = "DW_TAG_friend";
        break;
      case 43:
        result = "DW_TAG_namelist";
        break;
      case 44:
        result = "DW_TAG_namelist_item";
        break;
      case 45:
        result = "DW_TAG_packed_type";
        break;
      case 46:
        result = "DW_TAG_subprogram";
        break;
      case 47:
        result = "DW_TAG_template_type_parameter";
        break;
      case 48:
        result = "DW_TAG_template_value_parameter";
        break;
      case 49:
        result = "DW_TAG_thrown_type";
        break;
      case 50:
        result = "DW_TAG_try_block";
        break;
      case 51:
        result = "DW_TAG_variant_part";
        break;
      case 52:
        result = "DW_TAG_variable";
        break;
      case 53:
        result = "DW_TAG_volatile_type";
        break;
      case 54:
        result = "DW_TAG_dwarf_procedure";
        break;
      case 55:
        result = "DW_TAG_restrict_type";
        break;
      case 56:
        result = "DW_TAG_interface_type";
        break;
      case 57:
        result = "DW_TAG_namespace";
        break;
      case 58:
        result = "DW_TAG_imported_module";
        break;
      case 59:
        result = "DW_TAG_unspecified_type";
        break;
      case 60:
        result = "DW_TAG_partial_unit";
        break;
      case 61:
        result = "DW_TAG_imported_unit";
        break;
      case 63:
        result = "DW_TAG_condition";
        break;
      case 64:
        result = "DW_TAG_shared_type";
        break;
      case 65:
        result = "DW_TAG_type_unit";
        break;
      case 66:
        result = "DW_TAG_rvalue_reference_type";
        break;
      case 67:
        result = "DW_TAG_template_alias";
        break;
      case 68:
        result = "DW_TAG_coarray_type";
        break;
      case 69:
        result = "DW_TAG_generic_subrange";
        break;
      case 70:
        result = "DW_TAG_dynamic_type";
        break;
      case 71:
        result = "DW_TAG_atomic_type";
        break;
      case 72:
        result = "DW_TAG_call_site";
        break;
      case 73:
        result = "DW_TAG_call_site_parameter";
        break;
      case 74:
        result = "DW_TAG_skeleton_unit";
        break;
      case 75:
        result = "DW_TAG_immutable_type";
        break;
      default:
        v4 = v1 == 16513;
        v5 = "DW_TAG_MIPS_loop";
        goto LABEL_59;
    }

    return result;
  }

  if (this <= 17150)
  {
    if (this > 16648)
    {
      switch(this)
      {
        case 16896:
          result = "DW_TAG_APPLE_property";
          break;
        case 16897:
          result = "DW_TAG_SUN_function_template";
          break;
        case 16898:
          result = "DW_TAG_SUN_class_template";
          break;
        case 16899:
          result = "DW_TAG_SUN_struct_template";
          break;
        case 16900:
          result = "DW_TAG_SUN_union_template";
          break;
        case 16901:
          result = "DW_TAG_SUN_indirect_inheritance";
          break;
        case 16902:
          result = "DW_TAG_SUN_codeflags";
          break;
        case 16903:
          result = "DW_TAG_SUN_memop_info";
          break;
        case 16904:
          result = "DW_TAG_SUN_omp_child_func";
          break;
        case 16905:
          result = "DW_TAG_SUN_rtti_descriptor";
          break;
        case 16906:
          result = "DW_TAG_SUN_dtor_info";
          break;
        case 16907:
          result = "DW_TAG_SUN_dtor";
          break;
        case 16908:
          result = "DW_TAG_SUN_f90_interface";
          break;
        case 16909:
          result = "DW_TAG_SUN_fortran_vax_structure";
          break;
        default:
          v14 = "DW_TAG_GNU_call_site";
          v15 = 16649;
          v16 = this == 16650;
          v17 = "DW_TAG_GNU_call_site_parameter";
          goto LABEL_53;
      }

      return result;
    }

    if (this > 16644)
    {
      if (this <= 16646)
      {
        v6 = 16645;
        v7 = "DW_TAG_GNU_EINCL";
        v8 = this == 16646;
        v9 = "DW_TAG_GNU_template_template_param";
        goto LABEL_47;
      }

      v14 = "DW_TAG_GNU_template_parameter_pack";
      v15 = 16647;
      v16 = this == 16648;
      v17 = "DW_TAG_GNU_formal_parameter_pack";
    }

    else
    {
      if (this <= 16642)
      {
        v6 = 16641;
        v7 = "DW_TAG_format_label";
        v8 = this == 16642;
        v9 = "DW_TAG_function_template";
LABEL_47:
        if (!v8)
        {
          v9 = 0;
        }

        if (this == v6)
        {
          return v7;
        }

        else
        {
          return v9;
        }
      }

      v14 = "DW_TAG_class_template";
      v15 = 16643;
      v16 = this == 16644;
      v17 = "DW_TAG_GNU_BINCL";
    }

LABEL_53:
    if (!v16)
    {
      v17 = 0;
    }

    if (this == v15)
    {
      return v14;
    }

    else
    {
      return v17;
    }
  }

  if (this <= 32774)
  {
    if (this <= 20752)
    {
      if (this <= 20736)
      {
        v14 = "DW_TAG_SUN_hi";
        v15 = 17151;
        v16 = this == 17152;
        v17 = "DW_TAG_LLVM_ptrauth_type";
        goto LABEL_53;
      }

      if (this == 20737)
      {
        return "DW_TAG_ALTIUM_circ_type";
      }

      if (this == 20738)
      {
        return "DW_TAG_ALTIUM_mwa_circ_type";
      }

      v4 = this == 20739;
      v5 = "DW_TAG_ALTIUM_rev_carry_type";
      goto LABEL_59;
    }

    if (this > 32771)
    {
      if (this == 32772)
      {
        return "DW_TAG_GHS_namespace";
      }

      if (this == 32773)
      {
        return "DW_TAG_GHS_using_namespace";
      }

      v4 = this == 32774;
      v5 = "DW_TAG_GHS_using_declaration";
      goto LABEL_59;
    }

    v10 = 20753;
    v11 = "DW_TAG_ALTIUM_rom";
    v12 = this == 24576;
    v13 = "DW_TAG_LLVM_annotation";
  }

  else
  {
    if (this > 40991)
    {
      if (this <= 45057)
      {
        if (this == 40992)
        {
          return "DW_TAG_PGI_interface_block";
        }

        v3 = "DW_TAG_BORLAND_Delphi_string";
        if (this != 45057)
        {
          v3 = 0;
        }

        if (this == 45056)
        {
          return "DW_TAG_BORLAND_property";
        }

        else
        {
          return v3;
        }
      }

      if (this == 45058)
      {
        return "DW_TAG_BORLAND_Delphi_dynamic_array";
      }

      if (this == 45059)
      {
        return "DW_TAG_BORLAND_Delphi_set";
      }

      v4 = this == 45060;
      v5 = "DW_TAG_BORLAND_Delphi_variant";
LABEL_59:
      if (v4)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    if (this <= 34661)
    {
      v6 = 32775;
      v7 = "DW_TAG_GHS_template_templ_param";
      v8 = this == 34661;
      v9 = "DW_TAG_UPC_shared_type";
      goto LABEL_47;
    }

    if (this == 34662)
    {
      return "DW_TAG_UPC_strict_type";
    }

    v10 = 34663;
    v11 = "DW_TAG_UPC_relaxed";
    v12 = this == 40960;
    v13 = "DW_TAG_PGI_kanji_type";
  }

  if (!v12)
  {
    v13 = 0;
  }

  if (this == v10)
  {
    return v11;
  }

  else
  {
    return v13;
  }
}