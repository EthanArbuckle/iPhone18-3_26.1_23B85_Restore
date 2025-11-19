uint64_t collapseBranch(mlir::Block **a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (*(*(v4 + 5) + 8) != (v4 + 32))
  {
    return 0;
  }

  Terminator = mlir::Block::getTerminator(v4);
  if (!Terminator || *(*(Terminator + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    return 0;
  }

  v10 = *(*a1 + 6);
  v11 = *(*a1 + 7);
  if (v10 != v11)
  {
    v12 = *(*a1 + 6);
    do
    {
      v13 = *v12;
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v13[2] != Terminator)
        {
          return 0;
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  v14 = *(Terminator + 44);
  v15 = *(((Terminator + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v15 == *a1)
  {
    return 0;
  }

  if ((v14 & 0x800000) == 0)
  {
    if (v10 != v11)
    {
      goto LABEL_30;
    }

    v17 = 0;
    v16 = 0;
LABEL_33:
    *a1 = v15;
    mlir::ValueRange::ValueRange(&v23, v16, v17);
    goto LABEL_34;
  }

  v16 = *(Terminator + 72);
  v17 = *(Terminator + 68);
  if (v10 == v11)
  {
    goto LABEL_33;
  }

  if (v17)
  {
    v18 = (v16 + 24);
    do
    {
      v19 = *v18;
      if ((~*(*v18 + 8) & 7) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
      }

      if (v20 && *(v20 + 16) == *a1)
      {
        v19 = mlir::ValueRange::dereference_iterator(a2, *(v20 + 24));
      }

      v21 = *(a3 + 8);
      if (v21 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v21) = v19;
      v22 = *(a3 + 8) + 1;
      *(a3 + 8) = v22;
      v18 += 4;
      --v17;
    }

    while (v17);
    goto LABEL_31;
  }

LABEL_30:
  v22 = *(a3 + 8);
LABEL_31:
  *a1 = v15;
  mlir::ValueRange::ValueRange(&v23, *a3, v22);
LABEL_34:
  *a2 = v23;
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v20[25] + 8 * v21++) = v11;
  mlir::OperationState::addOperands(v20, v12, v13);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

uint64_t **mlir::detail::Interface<mlir::ShapedType,mlir::Type,mlir::detail::ShapedTypeInterfaceTraits,mlir::Type,mlir::TypeTrait::TraitBase>::Interface<mlir::VectorType,(void *)0>(uint64_t **result, uint64_t *a2)
{
  *result = a2;
  if (!a2)
  {
    result[1] = 0;
    return result;
  }

  v2 = *a2;
  {
    v12 = v2;
    v13 = result;
    mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
    result = v13;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v4 = *(v12 + 8);
    v5 = *(v12 + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_15:
    result[1] = 0;
    return result;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_4:
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
  if (v6 == &v4[2 * v5])
  {
    goto LABEL_15;
  }

  if (*v6 == v3)
  {
    result[1] = v6[1];
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(v19, v22, v18);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v22, *a4, *(a4 + 8));
  v12 = v22[0];
  v13 = v22[1];
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v19[25] + 8 * v20++) = v11;
  mlir::OperationState::addOperands(v19, v12, v13);
  v14 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v15;
}

void mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, Context);
  if (v18)
  {
    mlir::OperationState::OperationState(v24, a2, v17);
    v19 = *a3;
    v20 = *a4;
    mlir::ValueRange::ValueRange(v26, *a5, *(a5 + 8));
    v21 = *a6;
    v22 = *(a6 + 8);
    mlir::BlockRange::BlockRange(v25, *a7, *(a7 + 8));
    mlir::cf::SwitchOp::build(a1, v24, v19, v20, v26[0], v26[1], v21, v22, v25[0], v25[1], *a8, *(a8 + 8));
  }

  mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v24, v26, v25);
}

uint64_t foldSwitch(uint64_t a1, uint64_t a2, const void **a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a1 + 64;
  v7 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
  v26 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v27 = v7;
  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v26, v24);
  v31[0] = *v24;
  v31[2] = *&v24[32];
  *&v24[24] = *&v24[16];
  v31[1] = *&v24[24];
  *&v24[8] = *v24;
  *v24 = 0;
  for (i = v25; *&v24[24] != i; ++*&v24[24])
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v24[8], &v28);
    v23 = v29;
    v16 = v28;
    v22 = v28;
    if (v29 <= 0x40)
    {
      if (v28 == *a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (llvm::APInt::equalSlowCase(&v22, a3))
      {
LABEL_12:
        mlir::SuccessorRange::SuccessorRange(&v28, a1);
        mlir::SuccessorRange::SuccessorRange(&v28, a1);
        v17 = *(a1 + 44);
        v18 = v6 + 16 * ((v17 >> 23) & 1);
        v19 = *(v18 + 24);
        if ((v17 & 0x800000) != 0)
        {
          v20 = *(a1 + 72);
        }

        else
        {
          v20 = 0;
        }

        v21 = (*(v18 + 20) + *(v18 + 16));
        v30[0] = v20 + 32 * v21;
        v30[1] = (v19 + v21) - v21;
        mlir::OperandRange::split(v30, *v18, &v28);
        mlir::OperandRangeRange::dereference();
      }

      if (v16)
      {
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }

    ++*v24;
  }

  v9 = *(a1 + 44);
  v10 = v6 + 16 * ((v9 >> 23) & 1);
  *&v31[0] = *(((v10 + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v11 = *(v10 + 16);
  v12 = *(v10 + 20);
  if ((v9 & 0x800000) != 0)
  {
    v13 = *(a1 + 72);
  }

  else
  {
    v13 = 0;
  }

  *v24 = v13 + 32 * v11;
  *&v24[8] = (v12 + v11) - v11;
  v14 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), v31, v24);
  return (*(*a2 + 8))(a2, a1, v14);
}

void mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::ValueRange &,mlir::DenseIntElementsAttr &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v22, a2, v15);
    v17 = *a3;
    v19 = *a5;
    v18 = a5[1];
    mlir::BlockRange::BlockRange(v23, *a7, *(a7 + 8));
    mlir::cf::SwitchOp::build(a1, v22, v17, v19, v18, *a8, *(a8 + 8));
  }

  mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v22, v23, v21);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    *a3 = 0;
    return v14;
  }

  v6 = *a1;
  v19 = 0;
  v18 = -1;
  v17 = 0;
  v16 = -2;
  v7 = 0;
  v8 = v4 - 1;
  v9 = 1;
  v10 = llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(a2) & (v4 - 1);
  v11 = v6 + 16 * v10;
  v12 = *(a2 + 8);
  if (v12 != *(v11 + 8))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v12 > 0x40)
  {
    if (!llvm::APInt::equalSlowCase(a2, v11))
    {
      goto LABEL_7;
    }
  }

  else if (*a2 != *v11)
  {
LABEL_7:
    while (!llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v11, &v18))
    {
      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v11, &v16) && v7 == 0)
      {
        v7 = v11;
      }

      v13 = v10 + v9++;
      v10 = v13 & v8;
      v11 = v6 + 16 * (v13 & v8);
      v12 = *(a2 + 8);
      if (v12 == *(v11 + 8))
      {
        goto LABEL_3;
      }
    }

    v14 = 0;
    if (v7)
    {
      v11 = v7;
    }

    *a3 = v11;
    if (v17 < 0x41)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v14 = 1;
  *a3 = v11;
  if (v17 >= 0x41)
  {
LABEL_13:
    if (v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

LABEL_15:
  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  return v14;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::InsertIntoBucket<llvm::APInt,llvm::detail::DenseSetEmpty&>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v12 = a2;
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a3;
    v5 *= 2;
    goto LABEL_9;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
    v8 = a3;
LABEL_9:
    v9 = a1;
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(a1, v5);
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v9, v8, &v12);
    a1 = v9;
    a3 = v8;
    v10 = *(v9 + 2);
    v3 = v12;
    *(a1 + 2) = v10 + 1;
    v6 = *(v3 + 8);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  *(a1 + 2) = v4 + 1;
  v6 = *(v3 + 8);
  if (v6)
  {
LABEL_4:
    --*(a1 + 3);
    if (v6 >= 0x41 && *v3)
    {
      v7 = a3;
      MEMORY[0x259C63150](*v3, 0x1000C8000313F17);
      a3 = v7;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (*v3 != -1)
  {
    --*(a1 + 3);
  }

LABEL_12:
  *v3 = *a3;
  *(v3 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  return v3;
}

BOOL llvm::DenseMapInfo<llvm::APInt,void>::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    return llvm::APInt::equalSlowCase(a1, a2);
  }

  return *a1 == *a2;
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[16 * v14];
      v16 = result + 16;
      v17 = v14;
      do
      {
        *(v16 - 2) = 0;
        *(v16 + 2) = 0;
        *(v16 - 2) = -1;
        *v16 = -1;
        v16 += 32;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[16 * v11];
    do
    {
      *(v15 + 2) = 0;
      *v15 = -1;
      v15 += 16;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::moveFromOldBuckets(uint64_t result, llvm::APInt *this, llvm::APInt *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v16 = 0;
  v15 = -1;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 16 * v6;
    do
    {
      v9 = v16;
      *(v7 + 2) = v16;
      if (v9 > 0x40)
      {
        llvm::APInt::initSlowCase(v7, &v15);
      }

      *v7 = v15;
      v7 = (v7 + 16);
      v8 -= 16;
    }

    while (v8);
    if (v16 >= 0x41)
    {
      result = v15;
      if (v15)
      {
        result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }
    }
  }

  v16 = 0;
  v15 = -1;
  v14 = 0;
  v13 = -2;
  if (this != a3)
  {
    while (1)
    {
      v10 = *(this + 2);
      if (v10 == v16)
      {
        if (v10 > 0x40)
        {
          result = llvm::APInt::equalSlowCase(this, &v15);
          if (result)
          {
            goto LABEL_23;
          }
        }

        else if (*this == v15)
        {
          goto LABEL_12;
        }
      }

      if (v10 != v14)
      {
        goto LABEL_25;
      }

      if (v10 > 0x40)
      {
        if (llvm::APInt::equalSlowCase(this, &v13))
        {
LABEL_23:
          result = *this;
          if (*this)
          {
            result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          }

          goto LABEL_12;
        }

LABEL_25:
        v12 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v5, this, &v12);
        v11 = v12;
        if (*(v12 + 8) >= 0x41u)
        {
          result = *v12;
          if (*v12)
          {
            result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          }
        }

        *v11 = *this;
        *(v11 + 8) = *(this + 2);
        *(this + 2) = 0;
        ++*(v5 + 8);
        goto LABEL_12;
      }

      if (*this != v13)
      {
        goto LABEL_25;
      }

LABEL_12:
      this = (this + 16);
      if (this == a3)
      {
        if (v14 >= 0x41)
        {
          result = v13;
          if (v13)
          {
            result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
          }
        }

        break;
      }
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      return MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::doFind<llvm::APInt>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = *a1;
  v13 = 0;
  v12 = -1;
  v5 = v2 - 1;
  v6 = 1;
  v7 = llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(a2) & (v2 - 1);
  v8 = v4 + 16 * v7;
  v9 = *(a2 + 8);
  if (v9 != *(v8 + 8))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9 > 0x40)
  {
    if (!llvm::APInt::equalSlowCase(a2, v8))
    {
      goto LABEL_7;
    }
  }

  else if (*a2 != *v8)
  {
LABEL_7:
    while (!llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v8, &v12))
    {
      v10 = v7 + v6++;
      v7 = v10 & v5;
      v8 = v4 + 16 * (v10 & v5);
      v9 = *(a2 + 8);
      if (v9 == *(v8 + 8))
      {
        goto LABEL_3;
      }
    }

    v8 = 0;
  }

  if (v13 >= 0x41 && v12)
  {
    MEMORY[0x259C63150](v12, 0x1000C8000313F17);
  }

  return v8;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 3 && (*a3 == 29549 ? (v7 = *(a3 + 2) == 103) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 3 && *result == 29549 && *(result + 2) == 103)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "msg", 3uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::cf::AssertOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::AssertOp>,mlir::OpTrait::ZeroResults<mlir::cf::AssertOp>,mlir::OpTrait::ZeroSuccessors<mlir::cf::AssertOp>,mlir::OpTrait::OneOperand<mlir::cf::AssertOp>,mlir::OpTrait::OpInvariants<mlir::cf::AssertOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::AssertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::AssertOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::writeProperties;
  {
    v7 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  {
    mlir::mps::AssignVariableOp::getEffects();
    v3 = a3;
  }

  v6 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(v3, &v6);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v35;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  v29 = v1;
  v36 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v29;
  a1 = v36;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v30 = v1;
  v37 = a1;
  v24 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v24;
  v1 = v30;
  a1 = v37;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = v1;
  v38 = a1;
  v25 = v2;
  v20 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v20;
  v2 = v25;
  v1 = v31;
  a1 = v38;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

LABEL_35:
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_36;
  }

LABEL_34:
  v32 = v1;
  v39 = a1;
  v26 = v2;
  v17 = v4;
  v21 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v4 = v17;
  v3 = v21;
  v2 = v26;
  v1 = v32;
  a1 = v39;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_35;
  }

LABEL_7:
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_36:
  v34 = v1;
  v41 = a1;
  v28 = v2;
  v19 = v4;
  v23 = v3;
  v14 = v6;
  v16 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v6 = v14;
  v5 = v16;
  v4 = v19;
  v3 = v23;
  v2 = v28;
  v1 = v34;
  a1 = v41;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::cf::AssertOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::cf::AssertOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorOperands;
  v2[1] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorBlockArgument;
  v2[2] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorForOperands;
  v2[3] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::areTypesCompatible;
  {
    v8 = v2;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::cf::BranchOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorBlockArgument(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v6 = a2 + 64;
  for (i = 24; ; i += 32)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v8 = *(a2 + 68);
    }

    else
    {
      v8 = 0;
    }

    mlir::MutableOperandRange::MutableOperandRange(v17, a2, 0, v8, 0, 0);
    mlir::SuccessorOperands::SuccessorOperands(v14, v17);
    if (v18 != v19)
    {
      free(v18);
    }

    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v14, a3, *(((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + i));
    v11 = v10;
    if (v15 != &v16)
    {
      free(v15);
    }

    if (v11)
    {
      break;
    }

    if (!--v3)
    {
      v13 = 0;
      return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v13;
    }
  }

  v13 = BranchSuccessorArgument;
  return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v13;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BranchOpInterface::Trait<Empty>]";
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

uint64_t mlir::detail::BranchOpInterfaceTrait<mlir::cf::BranchOp>::verifyTrait(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v4 = *(a1 + 68);
    }

    else
    {
      v4 = 0;
    }

    mlir::MutableOperandRange::MutableOperandRange(v10, a1, 0, v4, 0, 0);
    mlir::SuccessorOperands::SuccessorOperands(v7, v10);
    if (v11 != v12)
    {
      free(v11);
    }

    v5 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v7);
    if (v8 != &v9)
    {
      free(v8);
    }

    if ((v5 & 1) == 0)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 != 19)
  {
    if (a4 != 21)
    {
      return 0;
    }

    v6 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    if (!v6 || *(a3 + 13) != 0x73657A69735F746ELL)
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

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v8);
  mlir::cf::CondBranchOp::setInherentAttr(v5 + 64, Value, v7, a4);
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

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));

  mlir::cf::CondBranchOp::getPropertiesAsAttr(Context);
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
  v3 = __ROR8__(v2 + 12, 12);
  v4 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 47))) ^ v2) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((-348639895 * ((-348639895 * (v3 ^ (((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 32) >> 15) ^ (-348639895 * (*a2 ^ 0xED558CCD ^ v3)))) ^ (((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 32) >> 15))) ^ v2) + 8) ^ v4);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::writeProperties;
  {
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorOperands;
  v3[1] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorBlockArgument;
  v3[2] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorForOperands;
  v3[3] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::areTypesCompatible;
  {
    v9 = v3;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSpeculatability;
  {
    v10 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v6 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v7 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    mlir::Attribute::getContext((a2 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorBlockArgument(uint64_t a1, uint64_t a2)
{
  v3[9] = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v3[0] = a2;
    mlir::cf::CondBranchOp::getSuccessorOperands(v3, 0);
  }

  return 0;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorForOperands(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = 0;
  }

  v12 = v3;
  if (v4 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v12, &v10);
  v7 = v11;
  if (v11 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v10) == v7 - 1)
    {
      goto LABEL_9;
    }
  }

  else if (v10 == 1)
  {
LABEL_9:
    v8 = 24;
    goto LABEL_12;
  }

  v8 = 56;
LABEL_12:
  result = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v8);
  if (v7 >= 0x41)
  {
    if (v10)
    {
      v9 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v8);
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      return v9;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::cf::CondBranchOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyNSuccessors(a1, 2) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) || !mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL))
  {
    return 0;
  }

  mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(a1, &v5);
  return v5;
}

uint64_t mlir::op_definition_impl::verifyTrait<mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>>(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = a1;
  if (*(a1 + 40))
  {
    mlir::cf::CondBranchOp::getSuccessorOperands(v2, 0);
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::foldHook()
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  if (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v5 = v6[0];
      if ((v7 & 2) != 0)
      {
        v5 = v6;
      }

      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v1, v2, v3, v4);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::printAssembly(uint64_t a1, Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v5, a2, a3, a4, a5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::cf::SwitchOp::setInherentAttr(v5 + 64, Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "case_operand_segments", 0x15uLL, v6);
  }

  v9 = *(v7 + 8);
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "case_values", 0xBuLL, v9);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::get(a3, **(a2 + 96));
  result = 0;
  if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v9) & 1) != 0)
  {
    v10 = mlir::NamedAttrList::get(a3, *(*(a2 + 96) + 8));
    if (!v10 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v10, "case_values", 11, a4, a5) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
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

void mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::cf::SwitchOp::getPropertiesAsAttr(Context, v4);
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
  if (*a3 != *a2)
  {
    return 0;
  }

  if (*(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a3 + 16) == *(a2 + 16) && *(a3 + 24) == *(a2 + 24);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::SwitchOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = HIDWORD(a2[1]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = *(a2 + 20);
  v9 = __ROR8__(v8 + 12, 12);
  v10 = 0x9DDFEA08EB382D69 * (a2[2] ^ 0xFF51AFD7ED558CCDLL ^ v9);
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v4;
  v12[1] = v7;
  v12[2] = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47))) ^ v8;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, 0, v13, &v13[2] + 8);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::writeProperties;
  {
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorOperands;
  v3[1] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorBlockArgument;
  v3[2] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorForOperands;
  v3[3] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::areTypesCompatible;
  {
    v9 = v3;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::cf::SwitchOp>::getSpeculatability;
  {
    v10 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v6 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v7 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::SwitchOp>::getSuccessorBlockArgument(uint64_t a1, uint64_t a2)
{
  v3[9] = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v3[0] = a2;
    mlir::cf::SwitchOp::getSuccessorOperands(v3, 0);
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNSuccessors<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::cf::SwitchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::cf::SwitchOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) && (v6 = a1, mlir::cf::SwitchOp::verifyInvariantsImpl(&v6)) && (mlir::op_definition_impl::verifyTrait<mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>>(a1) & 1) != 0)
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::op_definition_impl::verifyTrait<mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>>(uint64_t a1)
{
  v2[9] = *MEMORY[0x277D85DE8];
  v2[0] = a1;
  if (*(a1 + 40))
  {
    mlir::cf::SwitchOp::getSuccessorOperands(v2, 0);
  }

  return 1;
}

void anonymous namespace::ControlFlowInlinerInterface::~ControlFlowInlinerInterface(_anonymous_namespace_::ControlFlowInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *>(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  {
    v9 = a1;
    mlir::mps::AssignVariableOp::getEffects();
    a1 = v9;
  }

  *&v10 = v2;
  *(&v10 + 1) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *v11 = 0;
  *&v11[8] = 0;
  *&v11[13] = 0;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    if (v4 > &v10 || v4 + 40 * v3 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = v4 + 40 * *(a1 + 8);
  v6 = v10;
  v7 = *v11;
  *(v5 + 32) = *&v11[16];
  *v5 = v6;
  *(v5 + 16) = v7;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

void anonymous namespace::SimplifyConstCondBranchPred::~SimplifyConstCondBranchPred(_anonymous_namespace_::SimplifyConstCondBranchPred *this)
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

uint64_t anonymous namespace::SimplifyConstCondBranchPred::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (!DefiningOp)
  {
    goto LABEL_31;
  }

  v6 = DefiningOp;
  LODWORD(v42) = 1;
  v40 = &v41;
  v41 = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, DefiningOp))
  {
    v7 = *(*(*(v6 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v9 = v8 || v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v9 || v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = mlir::detail::constant_int_value_binder::match(&v40, v44);
      v12 = v42;
      if (v11)
      {
        if (v42 >= 0x41)
        {
          if (v12 - llvm::APInt::countLeadingZerosSlowCase(&v41) > 0x40)
          {
            if (v41)
            {
              MEMORY[0x259C63150](v41, 0x1000C8000313F17);
            }

            goto LABEL_28;
          }

          v13 = v41;
        }

        else
        {
          v13 = &v41;
        }

        v14 = *v13 != 0;
        if (v12 >= 0x41)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = 0;
        if (v42 >= 0x41)
        {
          goto LABEL_24;
        }
      }

LABEL_27:
      if (v14)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }
  }

  v14 = 0;
  if (v42 < 0x41)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!v41)
  {
    goto LABEL_27;
  }

  MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  if (v14)
  {
LABEL_28:
    v15 = *(a2 + 44);
    v16 = a2 + 16 * ((v15 >> 23) & 1);
    v44 = *(((v16 + 64 + ((v15 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v17 = *(v16 + 64);
    v18 = *(v16 + 68);
    if ((v15 & 0x800000) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    v20 = (v18 + v17);
    v21 = (v19 + 32 * v17);
LABEL_62:
    v41 = v21;
    v42 = v20 - v17;
    v38 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v44, &v41);
    (*(*a3 + 8))(a3, a2, v38);
    return 1;
  }

LABEL_31:
  v39 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v39);
  if (!result)
  {
    return result;
  }

  v23 = result;
  LODWORD(v42) = 1;
  v40 = &v41;
  v41 = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, result) && ((v24 = *(*(*(v23 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v24 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v25 = v24 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v25 = 1), !v25 ? (v26 = v24 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v26 = 1), !v26 ? (v27 = v24 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v27 = 1), v27))
  {
    v28 = mlir::detail::constant_int_value_binder::match(&v40, v44);
    v29 = v42;
    if (v28)
    {
      if (v42 >= 0x41)
      {
        if (v29 - llvm::APInt::countLeadingZerosSlowCase(&v41) > 0x40)
        {
          result = v41;
          if (v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
            return 0;
          }

          return result;
        }

        v30 = v41;
      }

      else
      {
        v30 = &v41;
      }

      v31 = *v30 == 0;
      if (v29 < 0x41)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v31 = 0;
      if (v42 < 0x41)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v31 = 0;
    if (v42 < 0x41)
    {
      goto LABEL_58;
    }
  }

  if (!v41)
  {
LABEL_58:
    if (v31)
    {
      goto LABEL_59;
    }

    return 0;
  }

  MEMORY[0x259C63150](v41, 0x1000C8000313F17);
  if (v31)
  {
LABEL_59:
    v32 = *(a2 + 44);
    v33 = (a2 + 16 * ((v32 >> 23) & 1));
    v44 = *(((v33 + ((v32 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 56);
    v34 = v33[16];
    v35 = v33[17];
    v36 = v33[18];
    if ((v32 & 0x800000) != 0)
    {
      v37 = *(a2 + 72);
    }

    else
    {
      v37 = 0;
    }

    v17 = (v35 + v34);
    v20 = (v36 + v17);
    v21 = (v37 + 32 * v17);
    goto LABEL_62;
  }

  return 0;
}

void anonymous namespace::SimplifyPassThroughCondBranch::~SimplifyPassThroughCondBranch(_anonymous_namespace_::SimplifyPassThroughCondBranch *this)
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

uint64_t mlir::OpBuilder::create<mlir::cf::CondBranchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::ValueRange &,mlir::Block *&,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v24[38] = *MEMORY[0x277D85DE8];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::CondBranchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::ValueRange &,mlir::Block *&,mlir::ValueRange &>(v24, v23, v22);
  }

  mlir::OperationState::OperationState(v24, a2, v15);
  mlir::cf::CondBranchOp::build(v17, v24, *a3, *a5, *(a5 + 8), *a7, *(a7 + 8), *a4, *a6);
  v18 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v19;
}

void anonymous namespace::SimplifyCondBranchIdenticalSuccessors::~SimplifyCondBranchIdenticalSuccessors(_anonymous_namespace_::SimplifyCondBranchIdenticalSuccessors *this)
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

uint64_t anonymous namespace::SimplifyCondBranchIdenticalSuccessors::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = (a2 + 16 * ((v3 >> 23) & 1) + 64);
  v5 = (v4 + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 24);
  v35 = v6;
  if (v6 != *(v5 + 56))
  {
    return 0;
  }

  v10 = *v4;
  v11 = *(a2 + 16 * ((v3 >> 23) & 1) + 68);
  if ((v3 & 0x800000) != 0)
  {
    v12 = *(a2 + 72);
    v13 = (v11 + v10);
    v14 = v12 + 32 * v10;
  }

  else
  {
    v12 = 0;
    v13 = (v11 + v10);
    v14 = 32 * v10;
  }

  v15 = v13 - v10;
  v34[0] = v14;
  v34[1] = v13 - v10;
  v16 = *(a2 + 16 * ((v3 >> 23) & 1) + 72);
  v17 = (v16 + v13);
  if (v13 - v10 == v17 - v13)
  {
    if (!v11)
    {
LABEL_10:
      v21 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v35, v34);
      (*(*a3 + 8))(a3, a2, v21);
      return 1;
    }

    v18 = (v12 + 32 * v13 + 24);
    v19 = (v14 + 24);
    v20 = v15;
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

  if (mlir::Block::getUniquePredecessor(v6) != *(a2 + 16))
  {
    return 0;
  }

  v36 = v38;
  v37 = 0x800000000;
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v33 = *(*(a2 + 72) + 24);
  if (v11 && v16)
  {
    v22 = (v14 + 24);
    v23 = (v12 + 32 * v13 + 24);
    v24 = v15 - 1;
    v25 = ~v13 + v17;
    do
    {
      v26 = *v22;
      v27 = *v23;
      v31 = v26;
      v32 = v27;
      if (v26 != v27)
      {
        v26 = mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Value &,mlir::Value &>((a3 + 8), *(a2 + 24), &v33, &v31, &v32) - 16;
      }

      if (v37 >= HIDWORD(v37))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v36 + v37) = v26;
      LODWORD(v37) = v37 + 1;
      v28 = v25-- != 0;
      v29 = v28;
      v28 = v24-- != 0;
      if (!v28)
      {
        break;
      }

      v22 += 4;
      v23 += 4;
    }

    while ((v29 & 1) != 0);
  }

  v30 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>((a3 + 8), *(a2 + 24), &v35, &v36);
  (*(*a3 + 8))(a3, a2, v30);
  if (v36 != v38)
  {
    free(v36);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,llvm::SmallVector<mlir::Value,8u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(v19, v22, v18);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v22, *a4, *(a4 + 8));
  v12 = v22[0];
  v13 = v22[1];
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v19[25] + 8 * v20++) = v11;
  mlir::OperationState::addOperands(v19, v12, v13);
  v14 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v15;
}

void anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::~SimplifyCondBranchFromCondBranchOnSameCondition(_anonymous_namespace_::SimplifyCondBranchFromCondBranchOnSameCondition *this)
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

uint64_t anonymous namespace::SimplifyCondBranchFromCondBranchOnSameCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  result = mlir::Block::getSinglePredecessor(v5);
  if (result)
  {
    Terminator = mlir::Block::getTerminator(result);
    if (Terminator)
    {
      v8 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = *(a2 + 72);
      if (*(v9 + 24) == *(*(Terminator + 72) + 24))
      {
        v10 = (a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8;
        if (v5 == *(((Terminator + ((*(Terminator + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24))
        {
          v15 = *(v10 + 24);
          v11 = *(a2 + 80);
          v12 = (*(a2 + 84) + v11);
        }

        else
        {
          v15 = *(v10 + 56);
          v11 = (*(a2 + 84) + *(a2 + 80));
          v12 = (*(a2 + 88) + v11);
        }

        v14[0] = v9 + 32 * v11;
        v14[1] = v12 - v11;
        v13 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v15, v14);
        (*(*a3 + 8))(a3, a2, v13);
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

void anonymous namespace::CondBranchTruthPropagation::~CondBranchTruthPropagation(_anonymous_namespace_::CondBranchTruthPropagation *this)
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

uint64_t anonymous namespace::CondBranchTruthPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  I1Type = mlir::Builder::getI1Type(a3 + 1);
  v5 = a2 + 64;
  SinglePredecessor = mlir::Block::getSinglePredecessor(*(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  v7 = *(a2 + 44);
  if (SinglePredecessor && (v8 = **(*(a2 + 72) + 24)) != 0)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *v8;
      v12 = v8[2];
      if (*(v12 + 16) == *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
      {
        if (!v10)
        {
          v13 = *(a2 + 24);
          BoolAttr = mlir::Builder::getBoolAttr(a3 + 1, 1);
          v10 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerType,mlir::BoolAttr>((a3 + 1), v13, &I1Type, &BoolAttr) - 16);
          v12 = v8[2];
        }

        ((*a3)[5])(a3, v12);
        v14 = v8[1];
        if (v14)
        {
          v15 = *v8;
          *v14 = *v8;
          if (v15)
          {
            v15[1] = v14;
          }
        }

        v8[3] = v10;
        v8[1] = v10;
        v16 = *v10;
        *v8 = *v10;
        if (v16)
        {
          *(v16 + 8) = v8;
        }

        *v10 = v8;
        ((*a3)[6])(a3, v12);
        v9 = 1;
      }

      v8 = v11;
    }

    while (v11);
    v7 = *(a2 + 44);
  }

  else
  {
    v9 = 0;
  }

  if (mlir::Block::getSinglePredecessor(*(((v5 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56)))
  {
    v17 = **(*(a2 + 72) + 24);
    if (v17)
    {
      v18 = 0;
      do
      {
        v19 = *v17;
        v20 = v17[2];
        if (*(v20 + 16) == *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56))
        {
          if (!v18)
          {
            v21 = *(a2 + 24);
            BoolAttr = mlir::Builder::getBoolAttr(a3 + 1, 0);
            v18 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerType,mlir::BoolAttr>((a3 + 1), v21, &I1Type, &BoolAttr) - 16);
            v20 = v17[2];
          }

          ((*a3)[5])(a3, v20);
          v22 = v17[1];
          if (v22)
          {
            v23 = *v17;
            *v22 = *v17;
            if (v23)
            {
              v23[1] = v22;
            }
          }

          v17[3] = v18;
          v17[1] = v18;
          v24 = *v18;
          *v17 = *v18;
          if (v24)
          {
            *(v24 + 8) = v17;
          }

          *v18 = v17;
          ((*a3)[6])(a3, v20);
          v9 = 1;
        }

        v17 = v19;
      }

      while (v19);
    }
  }

  return v9 & 1;
}

void *mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(llvm::LogicalResult (*)(mlir::cf::SwitchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(llvm::LogicalResult (*)(mlir::cf::SwitchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::cf::detail::AssertOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

void *mlir::RewritePatternSet::add<mlir::cf::AssertOp>(llvm::LogicalResult (*)(mlir::cf::AssertOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::AssertOp>(llvm::LogicalResult (*)(mlir::cf::AssertOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::RewritePatternSet::add<mlir::cf::BranchOp>(llvm::LogicalResult (*)(mlir::cf::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::cf::BranchOp>(llvm::LogicalResult (*)(mlir::cf::BranchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

const char *llvm::getTypeName<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties]";
  v6 = 106;
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
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void OUTLINED_FUNCTION_14_12(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = (a12 + (a1 << 6));
  *v13 = v13 + 2;
  v13[1] = v12;
}

void OUTLINED_FUNCTION_18_4(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v1;
  v4 = *(v3 + 8);
  *(v2 + 24) = *v3;
  *(v2 + 32) = v4;
}

BOOL OUTLINED_FUNCTION_22_10()
{
  v5 = *v0;
  v6 = *(*v3 + 8) & 0xFFFFFFFFFFFFFFF8;

  return mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps1(v5, v6, v2, 7, v1);
}

void mlir::arith::ConstantOp::getAsmResultNames(mlir::arith::ConstantOp *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  v38[4] = *MEMORY[0x277D85DE8];
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

  v35 = v7;
  if (v7)
  {
    v8 = v5 & 0xFFFFFFFFFFFFFFF8;
    if (*(*(v5 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v9 = v5 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v9 = 0;
    }

    v34 = v9;
    if (v9 && mlir::IntegerType::getWidth(&v34) == 1)
    {
      if (*(*a1 + 36))
      {
        v10 = *a1 - 16;
      }

      else
      {
        v10 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
      Int = mlir::IntegerAttr::getInt(&v35);
      if (Int)
      {
        v13 = 4;
      }

      else
      {
        v13 = 5;
      }

      if (Int)
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      a2(a3, NextResultAtOffset, v14, v13);
    }

    else
    {
      v36 = v38;
      v37 = xmmword_25736B040;
      v27 = 2;
      v31 = 0;
      v32 = 1;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v26 = &unk_2868A3F88;
      v33 = &v36;
      llvm::raw_ostream::SetBufferAndMode(&v26, 0, 0, 0);
      v15 = v30;
      if (v30 >= v29)
      {
        v16 = llvm::raw_ostream::write(&v26, 99);
      }

      else
      {
        ++v30;
        *v15 = 99;
        v16 = &v26;
      }

      mlir::IntegerAttr::getValue(&v35, &v24);
      llvm::APInt::print(&v24, v16, 1);
      if (v25 >= 0x41 && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

      if (v34)
      {
        v19 = v30;
        if (v30 >= v29)
        {
          v20 = llvm::raw_ostream::write(&v26, 95);
        }

        else
        {
          ++v30;
          *v19 = 95;
          v20 = &v26;
        }

        v24 = v8;
        mlir::Type::print(&v24, v20);
      }

      if (*(*a1 + 36))
      {
        v21 = *a1 - 16;
      }

      else
      {
        v21 = 0;
      }

      v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
      a2(a3, v22, *v33, v33[1]);
      llvm::raw_ostream::~raw_ostream(&v26);
      if (v36 != v38)
      {
        free(v36);
      }
    }
  }

  else
  {
    if (*(*a1 + 36))
    {
      v17 = *a1 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);

    a2(a3, v18, "cst", 3);
  }
}

BOOL mlir::arith::ConstantOp::verify(mlir::arith::ConstantOp *this)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  v63 = v3;
  if (mlir::TypedAttr::getType(&ValueAttr) != v2)
  {
    v59 = 257;
    mlir::OpState::emitOpError(this, v58, &ValueAttr);
    if (ValueAttr)
    {
      LODWORD(v60) = 3;
      *(&v60 + 1) = "value type ";
      v61 = 11;
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v64 + 24 * v65;
      v17 = v60;
      *(v16 + 2) = v61;
      *v16 = v17;
      ++v65;
    }

    v57[0] = mlir::arith::ConstantOp::getValueAttr(this);
    v57[1] = v18;
    Type = mlir::TypedAttr::getType(v57);
    if (ValueAttr)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v60, Type);
      if (v65 >= v66)
      {
        if (v64 > &v60 || v64 + 24 * v65 <= &v60)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v64 + 24 * v65;
      v21 = v60;
      *(v20 + 2) = v61;
      *v20 = v21;
      v22 = ++v65;
      if (ValueAttr)
      {
        LODWORD(v60) = 3;
        *(&v60 + 1) = " must match return type: ";
        v61 = 25;
        if (v22 >= v66)
        {
          if (v64 > &v60 || v64 + 24 * v22 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v64 + 24 * v65;
        v24 = v60;
        *(v23 + 2) = v61;
        *v23 = v24;
        ++v65;
        if (ValueAttr)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v60, v2);
          if (v65 >= v66)
          {
            if (v64 > &v60 || v64 + 24 * v65 <= &v60)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v25 = v64 + 24 * v65;
          v26 = v60;
          *(v25 + 2) = v61;
          *v25 = v26;
          ++v65;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
    if (ValueAttr)
    {
      mlir::InFlightDiagnostic::report(&ValueAttr);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v71;
        v29 = __p;
        if (v71 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v71 = v27;
        operator delete(v29);
      }

      v30 = v68;
      if (!v68)
      {
        goto LABEL_109;
      }

      v31 = v69;
      v32 = v68;
      if (v69 == v68)
      {
        goto LABEL_108;
      }

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
      goto LABEL_107;
    }

    return v12;
  }

  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ValueAttr = v2;
    if (mlir::IntegerType::getSignedness(&ValueAttr))
    {
      v58[0] = "integer return type must be signless";
      v59 = 259;
      mlir::OpState::emitOpError(this, v58, &ValueAttr);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
      if (ValueAttr)
      {
        mlir::InFlightDiagnostic::report(&ValueAttr);
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v71;
          v46 = __p;
          if (v71 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v71 = v44;
          operator delete(v46);
        }

        v30 = v68;
        if (!v68)
        {
          goto LABEL_109;
        }

        v47 = v69;
        v32 = v68;
        if (v69 == v68)
        {
LABEL_108:
          v69 = v30;
          operator delete(v32);
LABEL_109:
          if (v64 != &v67)
          {
            free(v64);
          }

          return v12;
        }

        do
        {
          v49 = *--v47;
          v48 = v49;
          *v47 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v47 != v30);
LABEL_107:
        v32 = v68;
        goto LABEL_108;
      }

      return v12;
    }
  }

  v4 = mlir::arith::ConstantOp::getValueAttr(this);
  v5 = *v4;
  v6 = *(*v4 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    goto LABEL_8;
  }

  {
    v35 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v36 = *(v5 + 8);
    v37 = *(v5 + 16);
    if (!v37)
    {
      goto LABEL_91;
    }
  }

  else
  {
    mlir::memref::GlobalOp::verify();
    v35 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v36 = *(v5 + 8);
    v37 = *(v5 + 16);
    if (!v37)
    {
      goto LABEL_91;
    }
  }

  v38 = v36;
  v39 = v37;
  do
  {
    v40 = v39 >> 1;
    v41 = &v38[2 * (v39 >> 1)];
    v43 = *v41;
    v42 = v41 + 2;
    v39 += ~(v39 >> 1);
    if (v43 < v35)
    {
      v38 = v42;
    }

    else
    {
      v39 = v40;
    }
  }

  while (v39);
  if (v38 != &v36[2 * v37] && *v38 == v35 && v38[1])
  {
LABEL_8:
    if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    *&v60 = v8;
    if (!v8)
    {
      return 1;
    }

    ScalableDims = mlir::VectorType::getScalableDims(&v60);
    v11 = v10;
    v12 = 1;
    v13 = memchr(ScalableDims, 1, v10);
    if (!v13 || v13 == &ScalableDims[v11])
    {
      return v12;
    }

    v14 = mlir::arith::ConstantOp::getValueAttr(this);
    v15 = mlir::DenseElementsAttr::classof(v14) ? v14 : 0;
    ValueAttr = v15;
    if (v15)
    {
      if (mlir::DenseElementsAttr::isSplat(&ValueAttr))
      {
        return 1;
      }
    }

    v58[0] = "intializing scalable vectors with elements attribute is not supported unless it's a vector splat";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &ValueAttr);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
    if (ValueAttr)
    {
      mlir::InFlightDiagnostic::report(&ValueAttr);
    }

    if (v73 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v63);
    }

    return v12;
  }

LABEL_91:
  v58[0] = "value must be an integer, float, or elements attribute";
  v59 = 259;
  mlir::OpState::emitOpError(this, v58, &ValueAttr);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&ValueAttr);
  if (ValueAttr)
  {
    mlir::InFlightDiagnostic::report(&ValueAttr);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v71;
      v52 = __p;
      if (v71 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v71 = v50;
      operator delete(v52);
    }

    v30 = v68;
    if (!v68)
    {
      goto LABEL_109;
    }

    v53 = v69;
    v32 = v68;
    if (v69 == v68)
    {
      goto LABEL_108;
    }

    do
    {
      v55 = *--v53;
      v54 = v55;
      *v53 = 0;
      if (v55)
      {
        MEMORY[0x259C63150](v54, 0x1000C8077774924);
      }
    }

    while (v53 != v30);
    goto LABEL_107;
  }

  return v12;
}

uint64_t mlir::arith::ConstantOp::isBuildableWith(uint64_t *a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  v19[0] = result;
  v19[1] = v5;
  if (!result)
  {
    return result;
  }

  if (mlir::TypedAttr::getType(v19) != a2)
  {
    return 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = a2;
    if (mlir::IntegerType::getSignedness(&v18))
    {
      return 0;
    }
  }

  v6 = *a1;
  v7 = *(v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    return 1;
  }

  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    if (v11)
    {
      goto LABEL_13;
    }

    return 0;
  }

  mlir::memref::GlobalOp::verify();
  v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  if (!v11)
  {
    return 0;
  }

LABEL_13:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    return 0;
  }

  return v12[1] != 0;
}

uint64_t mlir::arith::ConstantOp::materialize(mlir::OpBuilder *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!mlir::arith::ConstantOp::isBuildableWith(a2, a3))
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v7 = *a2;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v7;
    mlir::arith::ConstantOp::materialize();
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_16;
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
    v18 = v11[1];
    goto LABEL_17;
  }

LABEL_16:
  v18 = 0;
LABEL_17:
  v20[0] = a2;
  v20[1] = v18;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(a1, a4, v20);
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantOp::build(a1, v15, *a3, a3[1]);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::arith::ConstantIntOp::build(uint64_t **this, mlir::OpBuilder *a2, mlir::OperationState *a3, int a4)
{
  IntegerType = mlir::Builder::getIntegerType(this, a4);
  IntegerAttr = mlir::Builder::getIntegerAttr(this, IntegerType, a3);
  if (!IntegerAttr)
  {
    goto LABEL_14;
  }

  v9 = *IntegerAttr;
  {
    v19 = IntegerAttr;
    mlir::arith::ConstantOp::materialize();
    IntegerAttr = v19;
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_4:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_14;
  }

  v20 = v13[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IntegerAttr, a2, IntegerType, IntegerAttr, v20);
}

void mlir::arith::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 256);
  if (!v5)
  {
    operator new();
  }

  *v5 = a4;
  v5[1] = a5;
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

void mlir::arith::ConstantIntOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, a4, a3);
  if (!IntegerAttr)
  {
    goto LABEL_14;
  }

  v7 = *IntegerAttr;
  {
    v18 = v7;
    v19 = IntegerAttr;
    mlir::arith::ConstantOp::materialize();
    IntegerAttr = v19;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v18 + 8);
    v10 = *(v18 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IntegerAttr, a2, a4, IntegerAttr, v17);
}

BOOL mlir::arith::ConstantIntOp::classof(_BOOL8 this, mlir::Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v4[1] = v2;
      v4[2] = v3;
      v4[0] = *(this - 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::Type::isSignlessInteger(v4);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void mlir::arith::ConstantFloatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FloatAttr = mlir::Builder::getFloatAttr(a1, a4, a3);
  if (!FloatAttr)
  {
    goto LABEL_14;
  }

  v7 = *FloatAttr;
  {
    v18 = v7;
    v19 = FloatAttr;
    mlir::arith::ConstantOp::materialize();
    FloatAttr = v19;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v18 + 8);
    v10 = *(v18 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:

  mlir::arith::ConstantOp::build(FloatAttr, a2, a4, FloatAttr, v17);
}

BOOL mlir::arith::ConstantFloatOp::classof(_BOOL8 this, Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v2 = *(*(*(this - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
      {
        return 1;
      }

      if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
      {
        return 1;
      }

      if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
      {
        return 1;
      }

      if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
      {
        return 1;
      }

      if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
      {
        return 1;
      }

      if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
      {
        return 1;
      }

      else
      {
        this = 1;
        if (v2 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
        {
          return v2 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void mlir::arith::ConstantIndexOp::build(mlir::IndexType **this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  IndexType = mlir::Builder::getIndexType(this, a2);
  IndexAttr = mlir::Builder::getIndexAttr(this, a3);
  if (!IndexAttr)
  {
    goto LABEL_14;
  }

  v8 = *IndexAttr;
  {
    v18 = IndexAttr;
    mlir::arith::ConstantOp::materialize();
    IndexAttr = v18;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    goto LABEL_14;
  }

  v19 = v12[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IndexAttr, a2, IndexType, IndexAttr, v19);
}

BOOL mlir::arith::ConstantIndexOp::classof(_BOOL8 this, mlir::Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v4[1] = v2;
      v4[2] = v3;
      v4[0] = *(this - 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::Type::isIndex(v4);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t mlir::arith::AddIOp::fold(uint64_t *a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 48) + 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  LODWORD(v72) = 1;
  v71 = 0;
  v63 = &v71;
  v5 = mlir::detail::constant_int_value_binder::match(&v63, v4);
  v6 = v72;
  if (v5)
  {
    if (v72 < 0x41)
    {
      v7 = v71 == 0;
      goto LABEL_11;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&v71) > 0x40)
    {
      if (v71)
      {
        MEMORY[0x259C63150](v71, 0x1000C8000313F17);
      }

      goto LABEL_16;
    }

    v7 = *v71 == 0;
  }

  else
  {
    v7 = 0;
    if (v72 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!v71)
  {
LABEL_11:
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  MEMORY[0x259C63150](v71, 0x1000C8000313F17);
  if (v7)
  {
LABEL_12:
    v8 = *(*a1 + 72);
    return *(v8 + 24) | 4;
  }

LABEL_16:
  v71 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v71);
  if (DefiningOp)
  {
    v11 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v12 = *(DefiningOp + 72);
      if (*(*(v11 + 72) + 56) == *(v12 + 56))
      {
        return *(v12 + 24) | 4;
      }
    }
  }

  else
  {
    v11 = *a1;
  }

  v71 = *(*(v11 + 72) + 56);
  v13 = mlir::Value::getDefiningOp(&v71);
  if (v13)
  {
    if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v8 = *(v13 + 72);
      if (*(*(*a1 + 72) + 24) == *(v8 + 56))
      {
        return *(v8 + 24) | 4;
      }
    }
  }

  v14 = *(a2 + 48);
  v15 = *v14;
  if (*v14 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v17 = v14 + 1;
  v16 = v14[1];
  if (v16 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = v14[1];
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v15)
  {
    v71 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v72 = v18;
    if (v71)
    {
      Type = mlir::TypedAttr::getType(&v71);
      v15 = *v17;
      if (*v17)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  Type = 0;
  v15 = *v17;
  if (*v17)
  {
LABEL_31:
    v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v71 = v15;
    v72 = v20;
    if (!v15)
    {
      return v15 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_36;
  }

LABEL_35:
  v71 = v15;
  v72 = 0;
  if (!v15)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_36:
  v21 = mlir::TypedAttr::getType(&v71);
  v15 = 0;
  if (!Type || !v21 || v21 != Type)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v70 = Type;
  v22 = *v14;
  if (*v14 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = *v14;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v23 = *v17;
  if (!*v17)
  {
    goto LABEL_87;
  }

  v24 = *(*v23 + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = *v17;
  }

  else
  {
    v15 = 0;
  }

  if (!v22 || v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v24 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v14))
    {
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    v71 = v27;
    if (v27 && mlir::DenseElementsAttr::isSplat(&v71) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v14 + 1))
    {
      v28 = v14[1];
      v56 = *v14;
      v53 = v28;
      v29 = mlir::DenseElementsAttr::getType(&v56);
      if (v29 == mlir::DenseElementsAttr::getType(&v53))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v56, &v63);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v59);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v63, &v59);
        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x259C63150](v59, 0x1000C8000313F17);
        }

        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x259C63150](v63, 0x1000C8000313F17);
        }

        if (v73 == 1)
        {
          v30 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
          v15 = mlir::DenseElementsAttr::get(v30, v31, &v71, 1);
          if ((v73 & 1) == 0)
          {
            return v15 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_58;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v14) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v14 + 1))
    {
      v68 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v14);
      v69 = v32;
      v67[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v14 + 1);
      v67[1] = v33;
      v34 = mlir::ElementsAttr::getType(&v68);
      if (v34 == mlir::ElementsAttr::getType(v67))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v63);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v67, &v59);
        if (v66 == 1 && v62 == 1)
        {
          LOWORD(v56) = v63;
          if (v63 == 1)
          {
            v57 = v64;
          }

          else
          {
            (*(*v64 + 16))(&v57);
          }

          v58 = v65;
          LOWORD(v53) = v59;
          if (v59 == 1)
          {
            v54 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v54);
          }

          v55 = v61;
          v71 = &v73;
          v72 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v71, NumElements);
          v39 = mlir::ElementsAttr::getNumElements(v68, v69);
          if (v39)
          {
            v40 = v39;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v56, &v48);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v46);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v50, &v48, &v46);
              if (v47 >= 0x41 && v46)
              {
                MEMORY[0x259C63150](v46, 0x1000C8000313F17);
              }

              if (v49 >= 0x41 && v48)
              {
                MEMORY[0x259C63150](v48, 0x1000C8000313F17);
              }

              if (v52 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v71, &v50);
              if ((v52 & 1) != 0 && v51 >= 0x41 && v50)
              {
                MEMORY[0x259C63150](v50, 0x1000C8000313F17);
              }

              ++v58;
              ++v55;
              if (!--v40)
              {
                goto LABEL_116;
              }
            }

            v43 = 0;
          }

          else
          {
LABEL_116:
            v41 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
            v43 = mlir::DenseElementsAttr::get(v41, v42, v71, v72);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v71);
          if ((v53 & 1) == 0)
          {
            v44 = v54;
            v54 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v15 = v43;
          if ((v56 & 1) == 0)
          {
            v45 = v57;
            v57 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
              v15 = v43;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v35 = v60;
          v60 = 0;
          if (v35)
          {
            v36 = v15;
            (*(*v35 + 8))(v35);
            v15 = v36;
          }
        }

        if (v66 != 1)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v63)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v37 = v64;
        v64 = 0;
        if (!v37)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v26 = v15;
        (*(*v37 + 8))(v37);
LABEL_61:
        v15 = v26;
        return v15 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_87:
    v15 = 0;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v56 = *v14;
  v53 = v23;
  v25 = mlir::IntegerAttr::getType(&v56);
  if (v25 != mlir::IntegerAttr::getType(&v53))
  {
    goto LABEL_87;
  }

  mlir::IntegerAttr::getValue(&v56, &v63);
  mlir::IntegerAttr::getValue(&v53, &v59);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v63, &v59);
  if (v60 >= 0x41 && v59)
  {
    MEMORY[0x259C63150](v59, 0x1000C8000313F17);
  }

  if (v64 >= 0x41 && v63)
  {
    MEMORY[0x259C63150](v63, 0x1000C8000313F17);
  }

  if (v73 != 1)
  {
    goto LABEL_87;
  }

  v15 = mlir::IntegerAttr::get(v70, &v71);
  if (v73)
  {
LABEL_58:
    if (v72 < 0x41 || !v71)
    {
      return v15 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v26 = v15;
    MEMORY[0x259C63150](v71, 0x1000C8000313F17);
    goto LABEL_61;
  }

  return v15 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::AddUIExtendedOp::getShapeForUnroll(mlir::arith::AddUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v11 = v3;
  if (v3)
  {
    Shape = mlir::VectorType::getShape(&v11);
    v6 = v4;
    __src = v14;
    v13 = 0x400000000;
    if (v4 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4)
    {
      memcpy(v14, Shape, 8 * v4);
      v7 = v13;
      v8 = __src;
    }

    else
    {
      v7 = 0;
      v8 = v14;
    }

    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    v9 = v7 + v6;
    LODWORD(v13) = v9;
    if (v9 && &__src != a2)
    {
      if (v8 == v14)
      {
        if (v9 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, v8, 8 * v9);
        v8 = __src;
        *(a2 + 8) = v9;
      }

      else
      {
        *a2 = v8;
        v10 = HIDWORD(v13);
        *(a2 + 8) = v9;
        *(a2 + 12) = v10;
        __src = v14;
        HIDWORD(v13) = 0;
        v8 = v14;
      }

      LODWORD(v13) = 0;
    }

    *(a2 + 48) = 1;
    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::arith::AddUIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0) + 8);
  v74 = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v74);
  if (!DefiningOp)
  {
    goto LABEL_34;
  }

  v10 = DefiningOp;
  DWORD2(v88) = 1;
  *&v88 = 0;
  v77 = &v88;
  v80 = 0;
  v90 = &v80;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v90, DefiningOp))
  {
    v11 = *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v13 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v15 = mlir::detail::constant_int_value_binder::match(&v77, v80);
      v16 = DWORD2(v88);
      if (v15)
      {
        if (DWORD2(v88) < 0x41)
        {
          v17 = v88 == 0;
          goto LABEL_28;
        }

        if (v16 - llvm::APInt::countLeadingZerosSlowCase(&v88) > 0x40)
        {
          if (v88)
          {
            MEMORY[0x259C63150](v88, 0x1000C8000313F17);
          }

          goto LABEL_34;
        }

        v17 = *v88 == 0;
      }

      else
      {
        v17 = 0;
        if (DWORD2(v88) < 0x41)
        {
          goto LABEL_28;
        }
      }

LABEL_23:
      if (!v88)
      {
        goto LABEL_28;
      }

      MEMORY[0x259C63150](v88, 0x1000C8000313F17);
      if (v17)
      {
        goto LABEL_29;
      }

LABEL_34:
      v23 = *(a2 + 40);
      v24 = *v23;
      if (*v23 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_97;
      }

      v26 = v23 + 1;
      v25 = v23[1];
      if (v25 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v24 = v23[1];
        goto LABEL_97;
      }

      if (v24)
      {
        *&v88 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v23);
        *(&v88 + 1) = v27;
        if (v88)
        {
          Type = mlir::TypedAttr::getType(&v88);
          result = *v26;
          if (*v26)
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v88 = 0uLL;
      }

      Type = 0;
      result = *v26;
      if (*v26)
      {
LABEL_41:
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
        *&v88 = result;
        *(&v88 + 1) = v29;
        if (!result)
        {
          return result;
        }

        goto LABEL_46;
      }

LABEL_45:
      v88 = result;
      if (!result)
      {
        return result;
      }

LABEL_46:
      v30 = mlir::TypedAttr::getType(&v88);
      result = 0;
      if (!Type || !v30 || v30 != Type)
      {
        return result;
      }

      v87 = Type;
      v31 = *v23;
      if (*v23 && *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v24 = *v23;
        goto LABEL_97;
      }

      v32 = *v26;
      if (*v26)
      {
        v33 = *(*v32 + 136);
        if (v33 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v24 = *v26;
        }

        else
        {
          v24 = 0;
        }

        if (!v31 || v33 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          goto LABEL_97;
        }

        if (v33 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v77 = *v23;
          v74 = v32;
          v34 = mlir::IntegerAttr::getType(&v77);
          if (v34 == mlir::IntegerAttr::getType(&v74))
          {
            mlir::IntegerAttr::getValue(&v77, &v80);
            mlir::IntegerAttr::getValue(&v74, &v90);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v88, &v80, &v90);
            if (v91 >= 0x41 && v90)
            {
              MEMORY[0x259C63150](v90, 0x1000C8000313F17);
            }

            if (v81 >= 0x41 && v80)
            {
              MEMORY[0x259C63150](v80, 0x1000C8000313F17);
            }

            if (v89 == 1)
            {
              v24 = mlir::IntegerAttr::get(v87, &v88);
              if ((v89 & 1) == 0)
              {
                goto LABEL_97;
              }

LABEL_68:
              if (DWORD2(v88) >= 0x41 && v88)
              {
                MEMORY[0x259C63150](v88, 0x1000C8000313F17);
              }

              goto LABEL_97;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v23))
          {
            v35 = v31;
          }

          else
          {
            v35 = 0;
          }

          *&v88 = v35;
          if (v35 && mlir::DenseElementsAttr::isSplat(&v88) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v23 + 1))
          {
            v36 = v23[1];
            v77 = *v23;
            v74 = v36;
            v37 = mlir::DenseElementsAttr::getType(&v77);
            if (v37 == mlir::DenseElementsAttr::getType(&v74))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v77, &v80);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v90);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v88, &v80, &v90);
              if (v91 >= 0x41 && v90)
              {
                MEMORY[0x259C63150](v90, 0x1000C8000313F17);
              }

              if (v81 >= 0x41 && v80)
              {
                MEMORY[0x259C63150](v80, 0x1000C8000313F17);
              }

              if (v89 == 1)
              {
                v38 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
                v24 = mlir::DenseElementsAttr::get(v38, v39, &v88, 1);
                if ((v89 & 1) == 0)
                {
                  goto LABEL_97;
                }

                goto LABEL_68;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v23) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v23 + 1))
          {
            v85 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v23);
            v86 = v40;
            v84[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v23 + 1);
            v84[1] = v41;
            v42 = mlir::ElementsAttr::getType(&v85);
            if (v42 == mlir::ElementsAttr::getType(v84))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v85, &v80);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v84, &v90);
              if (v83 == 1 && v93 == 1)
              {
                LOWORD(v77) = v80;
                if (v80 == 1)
                {
                  v78 = v81;
                }

                else
                {
                  (*(*v81 + 16))(&v78);
                }

                v79 = v82;
                LOWORD(v74) = v90;
                if (v90 == 1)
                {
                  v75 = v91;
                }

                else
                {
                  (*(*v91 + 16))(&v75);
                }

                v76 = v92;
                *&v88 = &v89;
                *(&v88 + 1) = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&v88, NumElements);
                v56 = mlir::ElementsAttr::getNumElements(v85, v86);
                if (v56)
                {
                  v57 = v56;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v77, &v69);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v74, &v67);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v69, &v67);
                    if (v68 >= 0x41 && v67)
                    {
                      MEMORY[0x259C63150](v67, 0x1000C8000313F17);
                    }

                    if (v70 >= 0x41 && v69)
                    {
                      MEMORY[0x259C63150](v69, 0x1000C8000313F17);
                    }

                    if (v73 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v88, &v71);
                    if ((v73 & 1) != 0 && v72 >= 0x41 && v71)
                    {
                      MEMORY[0x259C63150](v71, 0x1000C8000313F17);
                    }

                    ++v79;
                    ++v76;
                    if (!--v57)
                    {
                      goto LABEL_136;
                    }
                  }

                  v24 = 0;
                }

                else
                {
LABEL_136:
                  v58 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
                  v24 = mlir::DenseElementsAttr::get(v58, v59, v88, DWORD2(v88));
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v88);
                if ((v74 & 1) == 0)
                {
                  v60 = v75;
                  v75 = 0;
                  if (v60)
                  {
                    (*(*v60 + 8))(v60);
                  }
                }

                if ((v77 & 1) == 0)
                {
                  v61 = v78;
                  v78 = 0;
                  if (v61)
                  {
                    (*(*v61 + 8))(v61);
                  }
                }
              }

              else
              {
                v24 = 0;
              }

              if (v93 == 1 && (v90 & 1) == 0)
              {
                v53 = v91;
                v91 = 0;
                if (v53)
                {
                  (*(*v53 + 8))(v53);
                }
              }

              if (v83 == 1 && (v80 & 1) == 0)
              {
                v54 = v81;
                v81 = 0;
                if (v54)
                {
                  (*(*v54 + 8))(v54);
                }
              }

LABEL_97:
              if (!v24)
              {
                return 0;
              }

              v90 = v24;
              v91 = **(a2 + 40);
              v43 = *v24;
              {
                v44 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
                v45 = *(v43 + 8);
                v46 = *(v43 + 16);
                if (!v46)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                mlir::arith::AddUIExtendedOp::fold();
                v44 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
                v45 = *(v43 + 8);
                v46 = *(v43 + 16);
                if (!v46)
                {
                  goto LABEL_147;
                }
              }

              v47 = v45;
              v48 = v46;
              do
              {
                v49 = v48 >> 1;
                v50 = &v47[2 * (v48 >> 1)];
                v52 = *v50;
                v51 = v50 + 2;
                v48 += ~(v48 >> 1);
                if (v52 < v44)
                {
                  v47 = v51;
                }

                else
                {
                  v48 = v49;
                }
              }

              while (v48);
              if (v47 != &v45[2 * v46] && *v47 == v44)
              {
                v62 = v47[1];
LABEL_149:
                v77 = v24;
                v78 = v62;
                v74 = mlir::TypedAttr::getType(&v77);
                Context = mlir::Type::getContext(&v74);
                v64 = mlir::IntegerType::get(Context, 1, 0);
                v80 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v74);
                v81 = v65;
                if (v80)
                {
                  LOBYTE(v88) = 0;
                  v89 = 0;
                  v66 = mlir::ShapedType::cloneWith(&v80, &v88, v64);
                }

                else
                {
                  if (*(*v74 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
                  {
LABEL_153:
                    *&v88 = calculateUnsignedOverflow;
                    result = mlir::constFoldBinaryOpConditional<mlir::IntegerAttr,llvm::APInt,void,mlir::Attribute mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,void,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&)>(llvm::ArrayRef<mlir::Attribute>,mlir::Type,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&) &&)::{lambda(llvm::APInt,llvm::APInt)#1}>(&v90, 2, v64, &v88);
                    if (!result)
                    {
                      return result;
                    }

                    v19 = v24 & 0xFFFFFFFFFFFFFFFBLL;
                    v20 = *(a3 + 8);
                    if (v20 < *(a3 + 12))
                    {
                      goto LABEL_30;
                    }

LABEL_155:
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v66 = mlir::UnrankedTensorType::get(v64);
                }

                v64 = v66;
                goto LABEL_153;
              }

LABEL_147:
              v62 = 0;
              goto LABEL_149;
            }
          }
        }
      }

      v24 = 0;
      goto LABEL_97;
    }
  }

  v17 = 0;
  if (DWORD2(v88) >= 0x41)
  {
    goto LABEL_23;
  }

LABEL_28:
  if (!v17)
  {
    goto LABEL_34;
  }

LABEL_29:
  *&v88 = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::Builder::getZeroAttr(&v88, (v8 & 0xFFFFFFFFFFFFFFF8));
  v19 = *(*(*a1 + 72) + 24) | 4;
  v20 = *(a3 + 8);
  if (v20 >= *(a3 + 12))
  {
    goto LABEL_155;
  }

LABEL_30:
  *(*a3 + 8 * v20) = v19;
  v21 = *(a3 + 12);
  v22 = *(a3 + 8) + 1;
  *(a3 + 8) = v22;
  if (v22 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v22) = result & 0xFFFFFFFFFFFFFFFBLL;
  ++*(a3 + 8);
  return 1;
}

uint64_t getI1SameShape(void *a1)
{
  v8 = a1;
  Context = mlir::Type::getContext(&v8);
  v2 = mlir::IntegerType::get(Context, 1, 0);
  v7[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v8);
  v7[1] = v3;
  if (v7[0])
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    return mlir::ShapedType::cloneWith(v7, &v5, v2);
  }

  else
  {
    result = v2;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return mlir::UnrankedTensorType::get(v2);
    }
  }

  return result;
}

uint64_t calculateUnsignedOverflow@<X0>(const llvm::APInt *a1@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::APInt::compare(a1, a2);
  *(a3 + 8) = 1;
  *a3 = result >> 31;
  return result;
}

uint64_t mlir::arith::SubIOp::fold(uint64_t *a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  v6 = *(*(a2 + 48) + 8);
  if (v6)
  {
    LODWORD(v77) = 1;
    Context = 0;
    p_Context = &Context;
    v7 = mlir::detail::constant_int_value_binder::match(&p_Context, v6);
    v8 = v77;
    if (v7)
    {
      if (v77 < 0x41)
      {
        v9 = Context == 0;
LABEL_11:
        v13 = *a1;
        if (v9)
        {
          v14 = *(*(v13 + 72) + 24);
          return v14 | 4;
        }

        v4 = *(*(v13 + 72) + 24);
        goto LABEL_15;
      }

      if (v8 - llvm::APInt::countLeadingZerosSlowCase(&Context) >= 0x41)
      {
        v9 = 0;
        v12 = Context;
        if (!Context)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = *Context == 0;
    }

    else
    {
      v9 = 0;
      if (v77 < 0x41)
      {
        goto LABEL_11;
      }
    }

    v12 = Context;
    if (!Context)
    {
      goto LABEL_11;
    }

LABEL_10:
    MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    goto LABEL_11;
  }

LABEL_15:
  Context = v4;
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    goto LABEL_17;
  }

  v22 = *(*(*a1 + 72) + 56);
  v23 = *(DefiningOp + 72);
  v14 = *(v23 + 56);
  v24 = *(v23 + 24);
  if (v22 != v14)
  {
    if (v22 == v24)
    {
      return v14 | 4;
    }

LABEL_17:
    v16 = *(a2 + 48);
    ZeroAttr = *v16;
    if (*v16 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    v18 = v16 + 1;
    v17 = v16[1];
    if (v17 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = v16[1];
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (ZeroAttr)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      v77 = v19;
      if (Context)
      {
        Type = mlir::TypedAttr::getType(&Context);
        ZeroAttr = *v18;
        if (*v18)
        {
          goto LABEL_24;
        }

LABEL_33:
        Context = ZeroAttr;
        v77 = 0;
        if (ZeroAttr)
        {
          goto LABEL_34;
        }

        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      Context = 0;
      v77 = 0;
    }

    Type = 0;
    ZeroAttr = *v18;
    if (*v18)
    {
LABEL_24:
      ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      Context = ZeroAttr;
      v77 = v21;
      if (!ZeroAttr)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_34:
      v25 = mlir::TypedAttr::getType(&Context);
      ZeroAttr = 0;
      if (!Type || !v25 || v25 != Type)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v75 = Type;
      v26 = *v16;
      if (*v16 && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        ZeroAttr = *v16;
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v27 = *v18;
      if (*v18)
      {
        v28 = *(*v27 + 136);
        if (v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          ZeroAttr = *v18;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (!v26 || v28 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v28 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v61 = *v16;
          v58 = v27;
          v29 = mlir::IntegerAttr::getType(&v61);
          if (v29 == mlir::IntegerAttr::getType(&v58))
          {
            mlir::IntegerAttr::getValue(&v61, &p_Context);
            mlir::IntegerAttr::getValue(&v58, &v64);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &p_Context, &v64);
            if (v65 >= 0x41 && v64)
            {
              MEMORY[0x259C63150](v64, 0x1000C8000313F17);
            }

            if (v69 >= 0x41 && p_Context)
            {
              MEMORY[0x259C63150](p_Context, 0x1000C8000313F17);
            }

            if (v78 == 1)
            {
              ZeroAttr = mlir::IntegerAttr::get(v75, &Context);
              if ((v78 & 1) == 0 || v77 < 0x41 || !Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v30 = ZeroAttr;
              v31 = Context;
LABEL_59:
              MEMORY[0x259C63150](v31, 0x1000C8000313F17);
LABEL_60:
              ZeroAttr = v30;
              return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v16))
          {
            v32 = v26;
          }

          else
          {
            v32 = 0;
          }

          Context = v32;
          if (v32 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v16 + 1))
          {
            v33 = v16[1];
            v61 = *v16;
            v58 = v33;
            v34 = mlir::DenseElementsAttr::getType(&v61);
            if (v34 == mlir::DenseElementsAttr::getType(&v58))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v61, &p_Context);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v58, &v64);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &p_Context, &v64);
              if (v65 >= 0x41 && v64)
              {
                MEMORY[0x259C63150](v64, 0x1000C8000313F17);
              }

              if (v69 >= 0x41 && p_Context)
              {
                MEMORY[0x259C63150](p_Context, 0x1000C8000313F17);
              }

              if (v78 == 1)
              {
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v75);
                ZeroAttr = mlir::DenseElementsAttr::get(v35, v36, &Context, 1);
                if ((v78 & 1) == 0 || v77 < 0x41)
                {
                  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
                }

                v30 = ZeroAttr;
                v31 = Context;
                if (!Context)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16 + 1))
          {
            v73 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16);
            v74 = v37;
            v72[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16 + 1);
            v72[1] = v38;
            v39 = mlir::ElementsAttr::getType(&v73);
            if (v39 == mlir::ElementsAttr::getType(v72))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v73, &p_Context);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v72, &v64);
              if (v71 == 1 && v67 == 1)
              {
                LOWORD(v61) = p_Context;
                if (p_Context == 1)
                {
                  v62 = v69;
                }

                else
                {
                  (*(*v69 + 16))(&v62);
                }

                v63 = v70;
                LOWORD(v58) = v64;
                if (v64 == 1)
                {
                  v59 = v65;
                }

                else
                {
                  (*(*v65 + 16))(&v59);
                }

                v60 = v66;
                Context = &v78;
                v77 = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v73, v74);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
                v41 = mlir::ElementsAttr::getNumElements(v73, v74);
                if (v41)
                {
                  v42 = v41;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v61, &v53);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v58, &v51);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v55, &v53, &v51);
                    if (v52 >= 0x41 && v51)
                    {
                      MEMORY[0x259C63150](v51, 0x1000C8000313F17);
                    }

                    if (v54 >= 0x41 && v53)
                    {
                      MEMORY[0x259C63150](v53, 0x1000C8000313F17);
                    }

                    if (v57 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v55);
                    if ((v57 & 1) != 0 && v56 >= 0x41 && v55)
                    {
                      MEMORY[0x259C63150](v55, 0x1000C8000313F17);
                    }

                    ++v63;
                    ++v60;
                    if (!--v42)
                    {
                      goto LABEL_111;
                    }
                  }

                  v45 = 0;
                }

                else
                {
LABEL_111:
                  v43 = llvm::cast<mlir::ShapedType,mlir::Type>(&v75);
                  v45 = mlir::DenseElementsAttr::get(v43, v44, Context, v77);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                if ((v58 & 1) == 0)
                {
                  v46 = v59;
                  v59 = 0;
                  if (v46)
                  {
                    (*(*v46 + 8))(v46);
                  }
                }

                if ((v61 & 1) == 0)
                {
                  v47 = v62;
                  v62 = 0;
                  if (v47)
                  {
                    (*(*v47 + 8))(v47);
                  }
                }

                ZeroAttr = v45;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (v67 == 1 && (v64 & 1) == 0)
              {
                v48 = v65;
                v65 = 0;
                if (v48)
                {
                  v49 = ZeroAttr;
                  (*(*v48 + 8))(v48);
                  ZeroAttr = v49;
                }
              }

              if (v71 != 1)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (p_Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v50 = v69;
              v69 = 0;
              if (!v50)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v30 = ZeroAttr;
              (*(*v50 + 8))(v50);
              goto LABEL_60;
            }
          }
        }
      }

      ZeroAttr = 0;
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_33;
  }

  return v24 | 4;
}

uint64_t mlir::arith::MulIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v63 = &v73;
  v6 = mlir::detail::constant_int_value_binder::match(&v63, v4);
  v7 = v74;
  if (v6)
  {
    if (v74 < 0x41)
    {
      v8 = v73 == 0;
      goto LABEL_11;
    }

    if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v73) > 0x40)
    {
      if (v73)
      {
        MEMORY[0x259C63150](v73, 0x1000C8000313F17);
      }

      goto LABEL_15;
    }

    v8 = *v73 == 0;
  }

  else
  {
    v8 = 0;
    if (v74 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!v73)
  {
LABEL_11:
    if (v8)
    {
      return *(*(*a1 + 72) + 56) | 4;
    }

    goto LABEL_15;
  }

  MEMORY[0x259C63150](v73, 0x1000C8000313F17);
  if (v8)
  {
    return *(*(*a1 + 72) + 56) | 4;
  }

LABEL_15:
  v3 = *(a2 + 48);
  v10 = v3[1];
  if (v10)
  {
    LODWORD(v74) = 1;
    v73 = 0;
    v63 = &v73;
    v11 = mlir::detail::constant_int_value_binder::match(&v63, v10);
    v12 = v74;
    if (v11)
    {
      if (v74 < 0x41)
      {
        v13 = v73 == 1;
        goto LABEL_22;
      }

      if (v12 - llvm::APInt::countLeadingZerosSlowCase(&v73) > 0x40)
      {
        if (v73)
        {
          MEMORY[0x259C63150](v73, 0x1000C8000313F17);
        }

LABEL_28:
        v3 = *(a2 + 48);
        goto LABEL_29;
      }

      v13 = *v73 == 1;
    }

    else
    {
      v13 = 0;
      if (v74 < 0x41)
      {
        goto LABEL_22;
      }
    }

    if (v73)
    {
      MEMORY[0x259C63150](v73, 0x1000C8000313F17);
    }

LABEL_22:
    if (v13)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_28;
  }

LABEL_29:
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v16 = v3 + 1;
  v15 = v3[1];
  if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v14 = v3[1];
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v14)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    v74 = v17;
    if (v73)
    {
      Type = mlir::TypedAttr::getType(&v73);
      v14 = *v16;
      if (*v16)
      {
        goto LABEL_36;
      }

LABEL_40:
      v73 = v14;
      v74 = 0;
      if (!v14)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  Type = 0;
  v14 = *v16;
  if (!*v16)
  {
    goto LABEL_40;
  }

LABEL_36:
  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  v73 = v14;
  v74 = v19;
  if (!v14)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_41:
  v20 = mlir::TypedAttr::getType(&v73);
  v14 = 0;
  if (!Type || !v20 || v20 != Type)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v70 = Type;
  v21 = *v3;
  if (!*v3 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v22 = *v16;
    if (*v16)
    {
      v23 = *(*v22 + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v21 || v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v53 = *v3;
        v50 = v22;
        v30 = mlir::IntegerAttr::getType(&v53);
        if (v30 == mlir::IntegerAttr::getType(&v50))
        {
          mlir::IntegerAttr::getValue(&v53, &v59);
          mlir::IntegerAttr::getValue(&v50, &v56);
          llvm::APInt::operator*(&v59, &v56, &v63);
          LODWORD(v74) = v64;
          v73 = v63;
          v75 = 1;
          if (v57 >= 0x41 && v56)
          {
            MEMORY[0x259C63150](v56, 0x1000C8000313F17);
          }

          if (v60 >= 0x41 && v59)
          {
            MEMORY[0x259C63150](v59, 0x1000C8000313F17);
          }

          v14 = mlir::IntegerAttr::get(v70, &v73);
          goto LABEL_80;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v25 = v21;
        }

        else
        {
          v25 = 0;
        }

        v73 = v25;
        if (v25 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v26 = v3[1];
          v53 = *v3;
          v50 = v26;
          v27 = mlir::DenseElementsAttr::getType(&v53);
          if (v27 == mlir::DenseElementsAttr::getType(&v50))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v59);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
            llvm::APInt::operator*(&v59, &v56, &v63);
            LODWORD(v74) = v64;
            v73 = v63;
            v75 = 1;
            if (v57 >= 0x41 && v56)
            {
              MEMORY[0x259C63150](v56, 0x1000C8000313F17);
            }

            if (v60 >= 0x41 && v59)
            {
              MEMORY[0x259C63150](v59, 0x1000C8000313F17);
            }

            v28 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
            v14 = mlir::DenseElementsAttr::get(v28, v29, &v73, 1);
LABEL_80:
            if ((v75 & 1) == 0 || v74 < 0x41 || !v73)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v14;
            MEMORY[0x259C63150](v73, 0x1000C8000313F17);
            goto LABEL_84;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v68 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v69 = v32;
          v67[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v67[1] = v33;
          v34 = mlir::ElementsAttr::getType(&v68);
          if (v34 == mlir::ElementsAttr::getType(v67))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v63);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v67, &v59);
            if (v66 == 1 && v62 == 1)
            {
              LOWORD(v56) = v63;
              if (v63 == 1)
              {
                v57 = v64;
              }

              else
              {
                (*(*v64 + 16))(&v57);
              }

              v58 = v65;
              LOWORD(v53) = v59;
              if (v59 == 1)
              {
                v54 = v60;
              }

              else
              {
                (*(*v60 + 16))(&v54);
              }

              v55 = v61;
              v73 = &v75;
              v74 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
              v39 = mlir::ElementsAttr::getNumElements(v68, v69);
              if (v39)
              {
                v40 = v39;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v56, &v48);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v46);
                  llvm::APInt::operator*(&v48, &v46, &v71);
                  v51 = v72;
                  v50 = v71;
                  v52 = 1;
                  if (v47 >= 0x41 && v46)
                  {
                    MEMORY[0x259C63150](v46, 0x1000C8000313F17);
                  }

                  if (v49 >= 0x41 && v48)
                  {
                    MEMORY[0x259C63150](v48, 0x1000C8000313F17);
                  }

                  if (v52 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v50);
                  if ((v52 & 1) != 0 && v51 >= 0x41 && v50)
                  {
                    MEMORY[0x259C63150](v50, 0x1000C8000313F17);
                  }

                  ++v58;
                  ++v55;
                  if (!--v40)
                  {
                    goto LABEL_121;
                  }
                }

                v43 = 0;
              }

              else
              {
LABEL_121:
                v41 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
                v43 = mlir::DenseElementsAttr::get(v41, v42, v73, v74);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
              if ((v53 & 1) == 0)
              {
                v44 = v54;
                v54 = 0;
                if (v44)
                {
                  (*(*v44 + 8))(v44);
                }
              }

              v14 = v43;
              if ((v56 & 1) == 0)
              {
                v45 = v57;
                v57 = 0;
                if (v45)
                {
                  (*(*v45 + 8))(v45);
                  v14 = v43;
                }
              }
            }

            else
            {
              v14 = 0;
            }

            if (v62 == 1 && (v59 & 1) == 0)
            {
              v35 = v60;
              v60 = 0;
              if (v35)
              {
                v36 = v14;
                (*(*v35 + 8))(v35);
                v14 = v36;
              }
            }

            if (v66 != 1)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v63)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v37 = v64;
            v64 = 0;
            if (!v37)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v14;
            (*(*v37 + 8))(v37);
LABEL_84:
            v14 = v31;
            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v14 = 0;
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v14 = *v3;
  return v14 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::MulIOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, void *), uint64_t a3)
{
  v39[4] = *MEMORY[0x277D85DE8];
  if (*(*(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if ((v6 = *(*a1 + 72), v7 = *(v6 + 24), v27 = *(v6 + 56), v35 = 0, v36 = &v35, v37 = v7, (DefiningOp = mlir::Value::getDefiningOp(&v37)) != 0) && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v36, DefiningOp) && (v9 = mlir::Value::getDefiningOp(&v27)) != 0 && (v37 = *(*(v9 + 48) + 8), Value = mlir::StringAttr::getValue(&v37), v11 == 13) && (*Value == 0x762E726F74636576 ? (v12 = *(Value + 5) == 0x656C616373762E72) : (v12 = 0), v12) || (v13 = *(*a1 + 72), v14 = *(v13 + 56), v27 = *(v13 + 24), v36 = &v35, v37 = v14, (v15 = mlir::Value::getDefiningOp(&v37)) != 0) && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v36, v15) && (v16 = mlir::Value::getDefiningOp(&v27)) != 0 && (v37 = *(*(v16 + 48) + 8), v17 = mlir::StringAttr::getValue(&v37), v18 == 13) && (*v17 == 0x762E726F74636576 ? (v19 = *(v17 + 5) == 0x656C616373762E72) : (v19 = 0), v19))
    {
      v37 = v39;
      v38 = xmmword_25736B040;
      v28 = 2;
      v32 = 0;
      v33 = 1;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v27 = &unk_2868A3F88;
      v34 = &v37;
      llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
      v20 = v31;
      if (v31 >= v30)
      {
        v21 = llvm::raw_ostream::write(&v27, 99);
      }

      else
      {
        ++v31;
        *v20 = 99;
        v21 = &v27;
      }

      Int = mlir::IntegerAttr::getInt(&v35);
      v23 = llvm::raw_ostream::operator<<(v21, Int);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 > 6uLL)
      {
        *(v24 + 3) = 1701601635;
        *v24 = 1668511327;
        *(v23 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v23, "_vscale", 7uLL);
      }

      if (*(*a1 + 36))
      {
        v25 = *a1 - 16;
      }

      else
      {
        v25 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
      a2(a3, NextResultAtOffset, *v34, v34[1]);
      llvm::raw_ostream::~raw_ostream(&v27);
      if (v37 != v39)
      {
        free(v37);
      }
    }
  }
}

void mlir::arith::MulSIExtendedOp::getShapeForUnroll(mlir::arith::MulSIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v11 = v3;
  if (v3)
  {
    Shape = mlir::VectorType::getShape(&v11);
    v6 = v4;
    __src = v14;
    v13 = 0x400000000;
    if (v4 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4)
    {
      memcpy(v14, Shape, 8 * v4);
      v7 = v13;
      v8 = __src;
    }

    else
    {
      v7 = 0;
      v8 = v14;
    }

    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    v9 = v7 + v6;
    LODWORD(v13) = v9;
    if (v9 && &__src != a2)
    {
      if (v8 == v14)
      {
        if (v9 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, v8, 8 * v9);
        v8 = __src;
        *(a2 + 8) = v9;
      }

      else
      {
        *a2 = v8;
        v10 = HIDWORD(v13);
        *(a2 + 8) = v9;
        *(a2 + 12) = v10;
        __src = v14;
        HIDWORD(v13) = 0;
        v8 = v14;
      }

      LODWORD(v13) = 0;
    }

    *(a2 + 48) = 1;
    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::arith::MulSIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = v5[1];
  if (!v6)
  {
LABEL_16:
    v14 = *v5;
    if (*v5 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_79;
    }

    v16 = v5 + 1;
    v15 = v5[1];
    if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v5[1];
      goto LABEL_79;
    }

    if (v14)
    {
      v107 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5);
      v108 = v17;
      if (v107)
      {
        Type = mlir::TypedAttr::getType(&v107);
        result = *v16;
        if (*v16)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    Type = 0;
    result = *v16;
    if (*v16)
    {
LABEL_23:
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
      v107 = result;
      v108 = v20;
      if (!result)
      {
        return result;
      }

      goto LABEL_28;
    }

LABEL_27:
    v107 = result;
    v108 = 0;
    if (!result)
    {
      return result;
    }

LABEL_28:
    v21 = mlir::TypedAttr::getType(&v107);
    result = 0;
    if (!Type || !v21 || v21 != Type)
    {
      return result;
    }

    v104 = Type;
    v22 = *v5;
    if (*v5 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = *v5;
      goto LABEL_79;
    }

    v23 = *v16;
    if (*v16)
    {
      v24 = *(*v23 + 136);
      if (v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v22 || v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_79;
      }

      if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v86 = *v5;
        v83 = v23;
        v32 = mlir::IntegerAttr::getType(&v86);
        if (v32 == mlir::IntegerAttr::getType(&v83))
        {
          mlir::IntegerAttr::getValue(&v86, &v92);
          mlir::IntegerAttr::getValue(&v83, &v89);
          llvm::APInt::operator*(&v92, &v89, &v96);
          LODWORD(v108) = v97;
          v107 = v96;
          v109[0] = 1;
          if (v90 >= 0x41 && v89)
          {
            MEMORY[0x259C63150](v89, 0x1000C8000313F17);
          }

          if (v93 >= 0x41 && v92)
          {
            MEMORY[0x259C63150](v92, 0x1000C8000313F17);
          }

          v31 = mlir::IntegerAttr::get(v104, &v107);
          goto LABEL_67;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v5))
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        v107 = v26;
        if (v26 && mlir::DenseElementsAttr::isSplat(&v107) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v27 = v5[1];
          v86 = *v5;
          v83 = v27;
          v28 = mlir::DenseElementsAttr::getType(&v86);
          if (v28 == mlir::DenseElementsAttr::getType(&v83))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v86, &v92);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v83, &v89);
            llvm::APInt::operator*(&v92, &v89, &v96);
            LODWORD(v108) = v97;
            v107 = v96;
            v109[0] = 1;
            if (v90 >= 0x41 && v89)
            {
              MEMORY[0x259C63150](v89, 0x1000C8000313F17);
            }

            if (v93 >= 0x41 && v92)
            {
              MEMORY[0x259C63150](v92, 0x1000C8000313F17);
            }

            v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
            v31 = mlir::DenseElementsAttr::get(v29, v30, &v107, 1);
LABEL_67:
            v14 = v31;
            if ((v109[0] & 1) != 0 && v108 >= 0x41 && v107)
            {
              MEMORY[0x259C63150](v107, 0x1000C8000313F17);
            }

            goto LABEL_79;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v102 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5);
          v103 = v33;
          v100 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5 + 1);
          v101 = v34;
          v35 = mlir::ElementsAttr::getType(&v102);
          if (v35 == mlir::ElementsAttr::getType(&v100))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v102, &v96);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v100, &v92);
            if (v99 == 1 && v95 == 1)
            {
              LOWORD(v89) = v96;
              if (v96 == 1)
              {
                v90 = v97;
              }

              else
              {
                (*(*v97 + 16))(&v90);
              }

              v91 = v98;
              LOWORD(v86) = v92;
              if (v92 == 1)
              {
                v87 = v93;
              }

              else
              {
                (*(*v93 + 16))(&v87);
              }

              v88 = v94;
              v107 = v109;
              v108 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v102, v103);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v107, NumElements);
              v62 = mlir::ElementsAttr::getNumElements(v102, v103);
              if (v62)
              {
                v63 = v62;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v89, &v81);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v86, &v79);
                  llvm::APInt::operator*(&v81, &v79, &v105);
                  v84 = v106;
                  v83 = v105;
                  v85 = 1;
                  if (v80 >= 0x41 && v79)
                  {
                    MEMORY[0x259C63150](v79, 0x1000C8000313F17);
                  }

                  if (v82 >= 0x41 && v81)
                  {
                    MEMORY[0x259C63150](v81, 0x1000C8000313F17);
                  }

                  if (v85 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v107, &v83);
                  if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
                  {
                    MEMORY[0x259C63150](v83, 0x1000C8000313F17);
                  }

                  ++v91;
                  ++v88;
                  if (!--v63)
                  {
                    goto LABEL_177;
                  }
                }

                v14 = 0;
              }

              else
              {
LABEL_177:
                v64 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
                v14 = mlir::DenseElementsAttr::get(v64, v65, v107, v108);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v107);
              if ((v86 & 1) == 0)
              {
                v66 = v87;
                v87 = 0;
                if (v66)
                {
                  (*(*v66 + 8))(v66);
                }
              }

              if ((v89 & 1) == 0)
              {
                v67 = v90;
                v90 = 0;
                if (v67)
                {
                  (*(*v67 + 8))(v67);
                }
              }
            }

            else
            {
              v14 = 0;
            }

            if (v95 == 1 && (v92 & 1) == 0)
            {
              v59 = v93;
              v93 = 0;
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }

            if (v99 == 1 && (v96 & 1) == 0)
            {
              v60 = v97;
              v97 = 0;
              if (v60)
              {
                (*(*v60 + 8))(v60);
              }
            }

LABEL_79:
            if (!v14)
            {
              return 0;
            }

            v36 = *(a2 + 40);
            v37 = *v36;
            if (*v36 && *(*v37 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_143;
            }

            v39 = v36 + 1;
            v38 = v36[1];
            if (v38 && *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v37 = v36[1];
              goto LABEL_143;
            }

            if (v37)
            {
              v107 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v37);
              v108 = v40;
              if (v107)
              {
                v41 = mlir::TypedAttr::getType(&v107);
                v37 = *v39;
                if (*v39)
                {
                  goto LABEL_87;
                }

                goto LABEL_92;
              }
            }

            else
            {
              v107 = 0;
              v108 = 0;
            }

            v41 = 0;
            v37 = *v39;
            if (*v39)
            {
LABEL_87:
              v37 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v37);
              v107 = v37;
              v108 = v42;
              if (!v37)
              {
                goto LABEL_143;
              }

              goto LABEL_93;
            }

LABEL_92:
            v107 = v37;
            v108 = 0;
            if (!v37)
            {
LABEL_143:
              v57 = v14 & 0xFFFFFFFFFFFFFFFBLL;
              v58 = *(a3 + 8);
              if (v58 >= *(a3 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*a3 + 8 * v58) = v57;
              v12 = *(a3 + 12);
              v13 = *(a3 + 8) + 1;
              *(a3 + 8) = v13;
              v10 = v37 & 0xFFFFFFFFFFFFFFFBLL;
              goto LABEL_145;
            }

LABEL_93:
            v43 = mlir::TypedAttr::getType(&v107);
            v37 = 0;
            if (!v41 || !v43 || v43 != v41)
            {
              goto LABEL_143;
            }

            v104 = v41;
            v44 = *v36;
            if (*v36 && *(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v37 = *v36;
              goto LABEL_143;
            }

            v45 = *v39;
            if (*v39)
            {
              v46 = *(*v45 + 136);
              if (v46 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                v37 = *v39;
              }

              else
              {
                v37 = 0;
              }

              if (!v44 || v46 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_143;
              }

              if (v46 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v86 = *v36;
                v83 = v45;
                v47 = mlir::IntegerAttr::getType(&v86);
                if (v47 == mlir::IntegerAttr::getType(&v83))
                {
                  mlir::IntegerAttr::getValue(&v86, &v92);
                  mlir::IntegerAttr::getValue(&v83, &v89);
                  llvm::APIntOps::mulhs(&v92, &v89, &v96);
                  LODWORD(v108) = v97;
                  v107 = v96;
                  v109[0] = 1;
                  if (v90 >= 0x41 && v89)
                  {
                    MEMORY[0x259C63150](v89, 0x1000C8000313F17);
                  }

                  if (v93 >= 0x41 && v92)
                  {
                    MEMORY[0x259C63150](v92, 0x1000C8000313F17);
                  }

                  v37 = mlir::IntegerAttr::get(v104, &v107);
                  if ((v109[0] & 1) == 0)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_114;
                }
              }

              else
              {
                if (mlir::DenseElementsAttr::classof(*v36))
                {
                  v49 = v44;
                }

                else
                {
                  v49 = 0;
                }

                v107 = v49;
                if (v49 && mlir::DenseElementsAttr::isSplat(&v107) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v36 + 1))
                {
                  v50 = v36[1];
                  v86 = *v36;
                  v83 = v50;
                  v51 = mlir::DenseElementsAttr::getType(&v86);
                  if (v51 == mlir::DenseElementsAttr::getType(&v83))
                  {
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v86, &v92);
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v83, &v89);
                    llvm::APIntOps::mulhs(&v92, &v89, &v96);
                    LODWORD(v108) = v97;
                    v107 = v96;
                    v109[0] = 1;
                    if (v90 >= 0x41 && v89)
                    {
                      MEMORY[0x259C63150](v89, 0x1000C8000313F17);
                    }

                    if (v93 >= 0x41 && v92)
                    {
                      MEMORY[0x259C63150](v92, 0x1000C8000313F17);
                    }

                    v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
                    v37 = mlir::DenseElementsAttr::get(v52, v53, &v107, 1);
                    if ((v109[0] & 1) == 0)
                    {
                      goto LABEL_143;
                    }

LABEL_114:
                    if (v108 < 0x41 || !v107)
                    {
                      goto LABEL_143;
                    }

                    v48 = v37;
                    MEMORY[0x259C63150](v107, 0x1000C8000313F17);
                    goto LABEL_117;
                  }
                }

                else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v36) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v36 + 1))
                {
                  v102 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v36);
                  v103 = v54;
                  v100 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v36 + 1);
                  v101 = v55;
                  v56 = mlir::ElementsAttr::getType(&v102);
                  if (v56 == mlir::ElementsAttr::getType(&v100))
                  {
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v102, &v96);
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v100, &v92);
                    if (v99 == 1 && v95 == 1)
                    {
                      LOWORD(v89) = v96;
                      if (v96 == 1)
                      {
                        v90 = v97;
                      }

                      else
                      {
                        (*(*v97 + 16))(&v90);
                      }

                      v91 = v98;
                      LOWORD(v86) = v92;
                      if (v92 == 1)
                      {
                        v87 = v93;
                      }

                      else
                      {
                        (*(*v93 + 16))(&v87);
                      }

                      v88 = v94;
                      v107 = v109;
                      v108 = 0x400000000;
                      v68 = mlir::ElementsAttr::getNumElements(v102, v103);
                      llvm::SmallVectorImpl<llvm::APInt>::reserve(&v107, v68);
                      v69 = mlir::ElementsAttr::getNumElements(v102, v103);
                      if (v69)
                      {
                        v70 = v69;
                        while (1)
                        {
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v89, &v81);
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v86, &v79);
                          llvm::APIntOps::mulhs(&v81, &v79, &v105);
                          v84 = v106;
                          v83 = v105;
                          v85 = 1;
                          if (v80 >= 0x41 && v79)
                          {
                            MEMORY[0x259C63150](v79, 0x1000C8000313F17);
                          }

                          if (v82 >= 0x41 && v81)
                          {
                            MEMORY[0x259C63150](v81, 0x1000C8000313F17);
                          }

                          if (v85 != 1)
                          {
                            break;
                          }

                          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v107, &v83);
                          if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
                          {
                            MEMORY[0x259C63150](v83, 0x1000C8000313F17);
                          }

                          ++v91;
                          ++v88;
                          if (!--v70)
                          {
                            goto LABEL_205;
                          }
                        }

                        v73 = 0;
                      }

                      else
                      {
LABEL_205:
                        v71 = llvm::cast<mlir::ShapedType,mlir::Type>(&v104);
                        v73 = mlir::DenseElementsAttr::get(v71, v72, v107, v108);
                      }

                      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v107);
                      if ((v86 & 1) == 0)
                      {
                        v74 = v87;
                        v87 = 0;
                        if (v74)
                        {
                          (*(*v74 + 8))(v74);
                        }
                      }

                      if ((v89 & 1) == 0)
                      {
                        v75 = v90;
                        v90 = 0;
                        if (v75)
                        {
                          (*(*v75 + 8))(v75);
                        }
                      }

                      v37 = v73;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    if (v95 == 1 && (v92 & 1) == 0)
                    {
                      v76 = v93;
                      v93 = 0;
                      if (v76)
                      {
                        v77 = v37;
                        (*(*v76 + 8))(v76);
                        v37 = v77;
                      }
                    }

                    if (v99 != 1)
                    {
                      goto LABEL_143;
                    }

                    if (v96)
                    {
                      goto LABEL_143;
                    }

                    v78 = v97;
                    v97 = 0;
                    if (!v78)
                    {
                      goto LABEL_143;
                    }

                    v48 = v37;
                    (*(*v78 + 8))(v78);
LABEL_117:
                    v37 = v48;
                    goto LABEL_143;
                  }
                }
              }
            }

            v37 = 0;
            goto LABEL_143;
          }
        }
      }
    }

    v14 = 0;
    goto LABEL_79;
  }

  LODWORD(v108) = 1;
  v107 = 0;
  v96 = &v107;
  v7 = mlir::detail::constant_int_value_binder::match(&v96, v6);
  v8 = v108;
  if (v7)
  {
    if (v108 < 0x41)
    {
      v9 = v107 == 0;
      goto LABEL_8;
    }

    if (v8 - llvm::APInt::countLeadingZerosSlowCase(&v107) > 0x40)
    {
      if (v107)
      {
        MEMORY[0x259C63150](v107, 0x1000C8000313F17);
      }

      goto LABEL_15;
    }

    v9 = *v107 == 0;
  }

  else
  {
    v9 = 0;
    if (v108 < 0x41)
    {
      goto LABEL_8;
    }
  }

  if (v107)
  {
    MEMORY[0x259C63150](v107, 0x1000C8000313F17);
  }

LABEL_8:
  if (!v9)
  {
LABEL_15:
    v5 = *(a2 + 40);
    goto LABEL_16;
  }

  v10 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
  v11 = *(a3 + 8);
  if (v11 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v11) = v10;
  v12 = *(a3 + 12);
  v13 = *(a3 + 8) + 1;
  *(a3 + 8) = v13;
LABEL_145:
  if (v13 >= v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v13) = v10;
  ++*(a3 + 8);
  return 1;
}

void mlir::arith::MulUIExtendedOp::getShapeForUnroll(mlir::arith::MulUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v11 = v3;
  if (v3)
  {
    Shape = mlir::VectorType::getShape(&v11);
    v6 = v4;
    __src = v14;
    v13 = 0x400000000;
    if (v4 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4)
    {
      memcpy(v14, Shape, 8 * v4);
      v7 = v13;
      v8 = __src;
    }

    else
    {
      v7 = 0;
      v8 = v14;
    }

    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    v9 = v7 + v6;
    LODWORD(v13) = v9;
    if (v9 && &__src != a2)
    {
      if (v8 == v14)
      {
        if (v9 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, v8, 8 * v9);
        v8 = __src;
        *(a2 + 8) = v9;
      }

      else
      {
        *a2 = v8;
        v10 = HIDWORD(v13);
        *(a2 + 8) = v9;
        *(a2 + 12) = v10;
        __src = v14;
        HIDWORD(v13) = 0;
        v8 = v14;
      }

      LODWORD(v13) = 0;
    }

    *(a2 + 48) = 1;
    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

uint64_t mlir::arith::MulUIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = v5[1];
  if (!v6)
  {
    goto LABEL_28;
  }

  LODWORD(v114) = 1;
  Context = 0;
  v102 = &Context;
  v8 = mlir::detail::constant_int_value_binder::match(&v102, v6);
  v9 = v114;
  if (!v8)
  {
    v10 = 0;
    if (v114 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  if (v114 < 0x41)
  {
    v10 = Context == 0;
    goto LABEL_20;
  }

  if (v9 - llvm::APInt::countLeadingZerosSlowCase(&Context) < 0x41)
  {
    v10 = *Context == 0;
LABEL_6:
    v11 = Context;
    if (Context)
    {
      goto LABEL_7;
    }

LABEL_20:
    v5 = *(a2 + 40);
    v12 = v5[1];
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (v12)
    {
      LODWORD(v114) = 1;
      Context = 0;
      v102 = &Context;
      v13 = mlir::detail::constant_int_value_binder::match(&v102, v12);
      v14 = v114;
      if (v13)
      {
        if (v114 < 0x41)
        {
          v15 = Context == 1;
          goto LABEL_17;
        }

        if (v14 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
        {
          if (Context)
          {
            MEMORY[0x259C63150](Context, 0x1000C8000313F17);
          }

LABEL_27:
          v5 = *(a2 + 40);
          goto LABEL_28;
        }

        v15 = *Context == 1;
      }

      else
      {
        v15 = 0;
        if (v114 < 0x41)
        {
          goto LABEL_17;
        }
      }

      if (Context)
      {
        MEMORY[0x259C63150](Context, 0x1000C8000313F17);
      }

LABEL_17:
      if (v15)
      {
        Context = mlir::Attribute::getContext((*a1 + 24));
        ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        v17 = *(*(*a1 + 72) + 24) | 4;
LABEL_156:
        v64 = *(a3 + 8);
        if (v64 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v64) = v17;
        v20 = *(a3 + 12);
        v21 = *(a3 + 8) + 1;
        *(a3 + 8) = v21;
        v18 = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_158;
      }

      goto LABEL_27;
    }

LABEL_28:
    v22 = *v5;
    if (*v5 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_91;
    }

    v24 = v5 + 1;
    v23 = v5[1];
    if (v23 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v22 = v5[1];
      goto LABEL_91;
    }

    if (v22)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5);
      v114 = v25;
      if (Context)
      {
        Type = mlir::TypedAttr::getType(&Context);
        result = *v24;
        if (*v24)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }
    }

    else
    {
      Context = 0;
      v114 = 0;
    }

    Type = 0;
    result = *v24;
    if (*v24)
    {
LABEL_35:
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
      Context = result;
      v114 = v28;
      if (!result)
      {
        return result;
      }

      goto LABEL_40;
    }

LABEL_39:
    Context = result;
    v114 = 0;
    if (!result)
    {
      return result;
    }

LABEL_40:
    v29 = mlir::TypedAttr::getType(&Context);
    result = 0;
    if (!Type || !v29 || v29 != Type)
    {
      return result;
    }

    v110 = Type;
    v30 = *v5;
    if (*v5 && *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v22 = *v5;
      goto LABEL_91;
    }

    v31 = *v24;
    if (*v24)
    {
      v32 = *(*v31 + 136);
      if (v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v22 = *v24;
      }

      else
      {
        v22 = 0;
      }

      if (!v30 || v32 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_91;
      }

      if (v32 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v92 = *v5;
        v89 = v31;
        v40 = mlir::IntegerAttr::getType(&v92);
        if (v40 == mlir::IntegerAttr::getType(&v89))
        {
          mlir::IntegerAttr::getValue(&v92, &v98);
          mlir::IntegerAttr::getValue(&v89, &v95);
          llvm::APInt::operator*(&v98, &v95, &v102);
          LODWORD(v114) = v103;
          Context = v102;
          v115[0] = 1;
          if (v96 >= 0x41 && v95)
          {
            MEMORY[0x259C63150](v95, 0x1000C8000313F17);
          }

          if (v99 >= 0x41 && v98)
          {
            MEMORY[0x259C63150](v98, 0x1000C8000313F17);
          }

          v39 = mlir::IntegerAttr::get(v110, &Context);
          goto LABEL_79;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v5))
        {
          v34 = v30;
        }

        else
        {
          v34 = 0;
        }

        Context = v34;
        if (v34 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v35 = v5[1];
          v92 = *v5;
          v89 = v35;
          v36 = mlir::DenseElementsAttr::getType(&v92);
          if (v36 == mlir::DenseElementsAttr::getType(&v89))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v92, &v98);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v89, &v95);
            llvm::APInt::operator*(&v98, &v95, &v102);
            LODWORD(v114) = v103;
            Context = v102;
            v115[0] = 1;
            if (v96 >= 0x41 && v95)
            {
              MEMORY[0x259C63150](v95, 0x1000C8000313F17);
            }

            if (v99 >= 0x41 && v98)
            {
              MEMORY[0x259C63150](v98, 0x1000C8000313F17);
            }

            v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
            v39 = mlir::DenseElementsAttr::get(v37, v38, &Context, 1);
LABEL_79:
            v22 = v39;
            if ((v115[0] & 1) != 0 && v114 >= 0x41 && Context)
            {
              MEMORY[0x259C63150](Context, 0x1000C8000313F17);
            }

            goto LABEL_91;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v108 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5);
          v109 = v41;
          v106 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5 + 1);
          v107 = v42;
          v43 = mlir::ElementsAttr::getType(&v108);
          if (v43 == mlir::ElementsAttr::getType(&v106))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v108, &v102);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v106, &v98);
            if (v105 == 1 && v101 == 1)
            {
              LOWORD(v95) = v102;
              if (v102 == 1)
              {
                v96 = v103;
              }

              else
              {
                (*(*v103 + 16))(&v96);
              }

              v97 = v104;
              LOWORD(v92) = v98;
              if (v98 == 1)
              {
                v93 = v99;
              }

              else
              {
                (*(*v99 + 16))(&v93);
              }

              v94 = v100;
              Context = v115;
              v114 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v108, v109);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
              v68 = mlir::ElementsAttr::getNumElements(v108, v109);
              if (v68)
              {
                v69 = v68;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v95, &v87);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v92, &v85);
                  llvm::APInt::operator*(&v87, &v85, &v111);
                  v90 = v112;
                  v89 = v111;
                  v91 = 1;
                  if (v86 >= 0x41 && v85)
                  {
                    MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                  }

                  if (v88 >= 0x41 && v87)
                  {
                    MEMORY[0x259C63150](v87, 0x1000C8000313F17);
                  }

                  if (v91 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v89);
                  if ((v91 & 1) != 0 && v90 >= 0x41 && v89)
                  {
                    MEMORY[0x259C63150](v89, 0x1000C8000313F17);
                  }

                  ++v97;
                  ++v94;
                  if (!--v69)
                  {
                    goto LABEL_190;
                  }
                }

                v22 = 0;
              }

              else
              {
LABEL_190:
                v70 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
                v22 = mlir::DenseElementsAttr::get(v70, v71, Context, v114);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
              if ((v92 & 1) == 0)
              {
                v72 = v93;
                v93 = 0;
                if (v72)
                {
                  (*(*v72 + 8))(v72);
                }
              }

              if ((v95 & 1) == 0)
              {
                v73 = v96;
                v96 = 0;
                if (v73)
                {
                  (*(*v73 + 8))(v73);
                }
              }
            }

            else
            {
              v22 = 0;
            }

            if (v101 == 1 && (v98 & 1) == 0)
            {
              v65 = v99;
              v99 = 0;
              if (v65)
              {
                (*(*v65 + 8))(v65);
              }
            }

            if (v105 == 1 && (v102 & 1) == 0)
            {
              v66 = v103;
              v103 = 0;
              if (v66)
              {
                (*(*v66 + 8))(v66);
              }
            }

LABEL_91:
            if (!v22)
            {
              return 0;
            }

            v44 = *(a2 + 40);
            ZeroAttr = *v44;
            if (*v44 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_155;
            }

            v46 = v44 + 1;
            v45 = v44[1];
            if (v45 && *(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              ZeroAttr = v44[1];
              goto LABEL_155;
            }

            if (ZeroAttr)
            {
              Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
              v114 = v47;
              if (Context)
              {
                v48 = mlir::TypedAttr::getType(&Context);
                ZeroAttr = *v46;
                if (*v46)
                {
                  goto LABEL_99;
                }

                goto LABEL_104;
              }
            }

            else
            {
              Context = 0;
              v114 = 0;
            }

            v48 = 0;
            ZeroAttr = *v46;
            if (*v46)
            {
LABEL_99:
              ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
              Context = ZeroAttr;
              v114 = v49;
              if (!ZeroAttr)
              {
                goto LABEL_155;
              }

              goto LABEL_105;
            }

LABEL_104:
            Context = ZeroAttr;
            v114 = 0;
            if (!ZeroAttr)
            {
LABEL_155:
              v17 = v22 & 0xFFFFFFFFFFFFFFFBLL;
              goto LABEL_156;
            }

LABEL_105:
            v50 = mlir::TypedAttr::getType(&Context);
            ZeroAttr = 0;
            if (!v48 || !v50 || v50 != v48)
            {
              goto LABEL_155;
            }

            v110 = v48;
            v51 = *v44;
            if (*v44 && *(*v51 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              ZeroAttr = *v44;
              goto LABEL_155;
            }

            v52 = *v46;
            if (*v46)
            {
              v53 = *(*v52 + 136);
              if (v53 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                ZeroAttr = *v46;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (!v51 || v53 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_155;
              }

              if (v53 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v51 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v92 = *v44;
                v89 = v52;
                v54 = mlir::IntegerAttr::getType(&v92);
                if (v54 == mlir::IntegerAttr::getType(&v89))
                {
                  mlir::IntegerAttr::getValue(&v92, &v98);
                  mlir::IntegerAttr::getValue(&v89, &v95);
                  llvm::APIntOps::mulhu(&v98, &v95, &v102);
                  LODWORD(v114) = v103;
                  Context = v102;
                  v115[0] = 1;
                  if (v96 >= 0x41 && v95)
                  {
                    MEMORY[0x259C63150](v95, 0x1000C8000313F17);
                  }

                  if (v99 >= 0x41 && v98)
                  {
                    MEMORY[0x259C63150](v98, 0x1000C8000313F17);
                  }

                  ZeroAttr = mlir::IntegerAttr::get(v110, &Context);
                  if ((v115[0] & 1) == 0)
                  {
                    goto LABEL_155;
                  }

                  goto LABEL_126;
                }
              }

              else
              {
                if (mlir::DenseElementsAttr::classof(*v44))
                {
                  v56 = v51;
                }

                else
                {
                  v56 = 0;
                }

                Context = v56;
                if (v56 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v44 + 1))
                {
                  v57 = v44[1];
                  v92 = *v44;
                  v89 = v57;
                  v58 = mlir::DenseElementsAttr::getType(&v92);
                  if (v58 == mlir::DenseElementsAttr::getType(&v89))
                  {
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v92, &v98);
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v89, &v95);
                    llvm::APIntOps::mulhu(&v98, &v95, &v102);
                    LODWORD(v114) = v103;
                    Context = v102;
                    v115[0] = 1;
                    if (v96 >= 0x41 && v95)
                    {
                      MEMORY[0x259C63150](v95, 0x1000C8000313F17);
                    }

                    if (v99 >= 0x41 && v98)
                    {
                      MEMORY[0x259C63150](v98, 0x1000C8000313F17);
                    }

                    v59 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
                    ZeroAttr = mlir::DenseElementsAttr::get(v59, v60, &Context, 1);
                    if ((v115[0] & 1) == 0)
                    {
                      goto LABEL_155;
                    }

LABEL_126:
                    if (v114 < 0x41 || !Context)
                    {
                      goto LABEL_155;
                    }

                    v55 = ZeroAttr;
                    MEMORY[0x259C63150](Context, 0x1000C8000313F17);
                    goto LABEL_129;
                  }
                }

                else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v44) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v44 + 1))
                {
                  v108 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v44);
                  v109 = v61;
                  v106 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v44 + 1);
                  v107 = v62;
                  v63 = mlir::ElementsAttr::getType(&v108);
                  if (v63 == mlir::ElementsAttr::getType(&v106))
                  {
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v108, &v102);
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v106, &v98);
                    if (v105 == 1 && v101 == 1)
                    {
                      LOWORD(v95) = v102;
                      if (v102 == 1)
                      {
                        v96 = v103;
                      }

                      else
                      {
                        (*(*v103 + 16))(&v96);
                      }

                      v97 = v104;
                      LOWORD(v92) = v98;
                      if (v98 == 1)
                      {
                        v93 = v99;
                      }

                      else
                      {
                        (*(*v99 + 16))(&v93);
                      }

                      v94 = v100;
                      Context = v115;
                      v114 = 0x400000000;
                      v74 = mlir::ElementsAttr::getNumElements(v108, v109);
                      llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, v74);
                      v75 = mlir::ElementsAttr::getNumElements(v108, v109);
                      if (v75)
                      {
                        v76 = v75;
                        while (1)
                        {
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v95, &v87);
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v92, &v85);
                          llvm::APIntOps::mulhu(&v87, &v85, &v111);
                          v90 = v112;
                          v89 = v111;
                          v91 = 1;
                          if (v86 >= 0x41 && v85)
                          {
                            MEMORY[0x259C63150](v85, 0x1000C8000313F17);
                          }

                          if (v88 >= 0x41 && v87)
                          {
                            MEMORY[0x259C63150](v87, 0x1000C8000313F17);
                          }

                          if (v91 != 1)
                          {
                            break;
                          }

                          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v89);
                          if ((v91 & 1) != 0 && v90 >= 0x41 && v89)
                          {
                            MEMORY[0x259C63150](v89, 0x1000C8000313F17);
                          }

                          ++v97;
                          ++v94;
                          if (!--v76)
                          {
                            goto LABEL_218;
                          }
                        }

                        v79 = 0;
                      }

                      else
                      {
LABEL_218:
                        v77 = llvm::cast<mlir::ShapedType,mlir::Type>(&v110);
                        v79 = mlir::DenseElementsAttr::get(v77, v78, Context, v114);
                      }

                      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                      if ((v92 & 1) == 0)
                      {
                        v80 = v93;
                        v93 = 0;
                        if (v80)
                        {
                          (*(*v80 + 8))(v80);
                        }
                      }

                      if ((v95 & 1) == 0)
                      {
                        v81 = v96;
                        v96 = 0;
                        if (v81)
                        {
                          (*(*v81 + 8))(v81);
                        }
                      }

                      ZeroAttr = v79;
                    }

                    else
                    {
                      ZeroAttr = 0;
                    }

                    if (v101 == 1 && (v98 & 1) == 0)
                    {
                      v82 = v99;
                      v99 = 0;
                      if (v82)
                      {
                        v83 = ZeroAttr;
                        (*(*v82 + 8))(v82);
                        ZeroAttr = v83;
                      }
                    }

                    if (v105 != 1)
                    {
                      goto LABEL_155;
                    }

                    if (v102)
                    {
                      goto LABEL_155;
                    }

                    v84 = v103;
                    v103 = 0;
                    if (!v84)
                    {
                      goto LABEL_155;
                    }

                    v55 = ZeroAttr;
                    (*(*v84 + 8))(v84);
LABEL_129:
                    ZeroAttr = v55;
                    goto LABEL_155;
                  }
                }
              }
            }

            ZeroAttr = 0;
            goto LABEL_155;
          }
        }
      }
    }

    v22 = 0;
    goto LABEL_91;
  }

  v10 = 0;
  v11 = Context;
  if (!Context)
  {
    goto LABEL_20;
  }

LABEL_7:
  MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  v5 = *(a2 + 40);
  v12 = v5[1];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_21:
  v18 = v12 & 0xFFFFFFFFFFFFFFFBLL;
  v19 = *(a3 + 8);
  if (v19 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v19) = v18;
  v20 = *(a3 + 12);
  v21 = *(a3 + 8) + 1;
  *(a3 + 8) = v21;
LABEL_158:
  if (v21 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v21) = v18;
  ++*(a3 + 8);
  return 1;
}