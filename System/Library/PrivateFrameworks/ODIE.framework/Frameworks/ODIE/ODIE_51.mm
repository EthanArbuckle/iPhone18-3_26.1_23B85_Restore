uint64_t llvm::filter_iterator_base<mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>,mlir::ODIE::Compiler::Interfaces::BaseCollapseAndHoistAllocationsModel<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>::collapseAndHoistAllocationsHook(mlir::Operation*,mlir::RewriterBase &)::{lambda(void)#1}::operator()(void)::{lambda(mlir::detail::op_iterator<mlir::ODIE::Compiler::Exec::AllocOp,llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>,false,false>>)#1},std::bidirectional_iterator_tag>::findNextValid(uint64_t *a1)
{
  result = *a1;
  while (result != a1[4])
  {
    v3 = (a1[3])();
    result = mlir::Operation::hasAttr(v3, a1[8], a1[9]);
    if (result)
    {
      break;
    }

    v4 = a1[1];
    result = *(*a1 + 8);
    *a1 = result;
    if (result != v4)
    {
      do
      {
        v5 = (a1[2])();
        result = *a1;
        if (v5)
        {
          break;
        }

        result = *(result + 8);
        *a1 = result;
      }

      while (result != a1[1]);
    }
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::find(uint64_t a1, void *a2)
{
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::doFind<mlir::Attribute>(a1, a2);
  v4 = *a1;
  if (result)
  {
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
    }
  }

  else if (v4)
  {
    return (a1 + 296);
  }

  else
  {
    return (*(a1 + 8) + 72 * *(a1 + 16));
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::doFind<mlir::Attribute>(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  if (*a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 0;
    }

    v2 = *(a1 + 8);
  }

  v4 = v3 - 1;
  v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & v4;
  result = (v2 + 72 * v5);
  v7 = *result;
  if (*a2 != *result)
  {
    v8 = 1;
    while (v7 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      result = (v2 + 72 * v5);
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocViewOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocViewOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.alloc_view";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>,mlir::Attribute,llvm::SmallVector<long long,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<long long,6u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 72 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 72;
      v2 -= 72;
    }

    while (v2);
  }
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::destroyAll(uint64_t a1)
{
  if (*a1)
  {
    v2 = a1 + 8;
    v1 = 4;
  }

  else
  {
    v1 = *(a1 + 16);
    if (!v1)
    {
      return;
    }

    v2 = *(a1 + 8);
  }

  v3 = 72 * v1;
  v4 = (v2 + 24);
  do
  {
    if ((*(v4 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v5 = *(v4 - 2);
      if (v4 != v5)
      {
        free(v5);
      }
    }

    v4 += 9;
    v3 -= 72;
  }

  while (v3);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(uint64_t a1, void *a2, void *a3)
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
  v7 = (v3 + 72 * v6);
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
      v7 = (v3 + 72 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::InsertIntoBucketImpl<mlir::Attribute>(int *a1, void *a2, void *a3)
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

  llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v9);
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

void llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::grow(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v2 > 4)
    {
      *(a1 + 8) = llvm::allocate_buffer((72 * v2), 8uLL);
      *(a1 + 16) = v2;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(a1, v7, v7 + 72 * v8);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v9 = 0;
  v10 = v16;
  do
  {
    v11 = a1 + v9;
    v12 = *(a1 + v9 + 8);
    if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v10 = v12;
      v10[1] = v10 + 3;
      v10[2] = 0x600000000;
      if (*(v11 + 24))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=((v10 + 1), v11 + 16);
      }

      v10 += 9;
      v13 = *(v11 + 16);
      if ((a1 + v9 + 32) != v13)
      {
        free(v13);
      }
    }

    v9 += 72;
  }

  while (v9 != 288);
  if (v2 > 4)
  {
    *a1 &= ~1u;
    *(a1 + 8) = llvm::allocate_buffer((72 * v2), 8uLL);
    *(a1 + 16) = v2;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(a1, v16, v10);
  v14 = *MEMORY[0x277D85DE8];
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 8);
    v9 = (a1 + 296);
  }

  else
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(a1 + 8);
    v9 = &v8[72 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 72;
  v12 = vdupq_n_s64(v11 / 0x48);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 9) = -4096;
    }

    v10 += 2;
    v8 += 144;
  }

  while (((v11 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v10);
LABEL_11:
  if (a2 != a3)
  {
    do
    {
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,4u,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>,mlir::Attribute,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Attribute>(a1, v4, &v17);
        *v17 = *v4;
        v14 = v17;
        v17[1] = v17 + 3;
        v15 = (v14 + 1);
        *(v15 + 8) = 0x600000000;
        if (*(v4 + 16))
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v15, v4 + 8);
        }

        *a1 += 2;
        v16 = *(v4 + 8);
        if ((v4 + 24) != v16)
        {
          free(v16);
        }
      }

      v4 += 72;
    }

    while (v4 != a3);
  }
}

void *mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::Exec::ExecDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::Exec::ExecDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::Exec::ExecDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::Exec::ExecDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Exec::CopyElision::runOnOperation(mlir::ODIE::Compiler::Exec::CopyElision *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  operator new();
}

void mlir::ODIE::Compiler::Exec::CopyElision::~CopyElision(mlir::ODIE::Compiler::Exec::CopyElision *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

BOOL mlir::OperationPass<mlir::func::FuncOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(v2 + 24);
  if (v3 != *(a1 + 24))
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(v2 + 16), *(a1 + 16), v3) == 0;
  }

  return 1;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::CopyElision>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern::~MoveCopiesToDefinitionPattern(mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(a2 + 72) + 24);
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
        goto LABEL_10;
      }
    }

    else
    {
      v10 = v7 + 16 * v8 + 16;
    }

    if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
    {
      if (v6 == 6)
      {
        v6 = (*(v5 + 16) + 6);
      }

      v14 = *(v10 + 44);
      v15 = *(((v10 + 64 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v10 + 40) + 8);
      if (v15)
      {
        v16 = v15 - 8;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(*(v16 + 32) + 72) + 32 * v6;
      if ((v14 & 0x800000) != 0)
      {
        v18 = *(v10 + 72);
        v19 = *(v10 + 68);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v20 = *(v17 + 24);
      v32 = &v34;
      *v33 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v32, v18, 0, v18, v19);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v32, *(*(a2 + 72) + 56));
      (*(*a3 + 40))(a3, v10);
      v21 = *(v10 + 44);
      if ((v21 & 0x800000) != 0)
      {
        mlir::detail::OperandStorage::setOperands((v10 + 64), v10, v32 & 0xFFFFFFFFFFFFFFF9, v33[0]);
        v21 = *(v10 + 44);
      }

      v22 = ((v10 + 64 + 16 * ((v21 >> 23) & 1) + ((v21 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v10 + 40);
      v23 = *(*(a2 + 72) + 56);
      v24 = *(v23 + 8);
      if ((~*(v23 + 8) & 7) != 0)
      {
        v25 = *(*(a2 + 72) + 56);
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        goto LABEL_29;
      }

      v26 = *(v25 + 8) & 7;
      if (v26 == 6)
      {
        v27 = v25 + 24 * *(v25 + 16) + 120;
        if (!v27)
        {
LABEL_29:
          v28 = (v23 + 32);
          goto LABEL_32;
        }
      }

      else
      {
        v27 = v25 + 16 * v26 + 16;
      }

      v28 = (v27 + 24);
LABEL_32:
      v29 = *v28;
      v30 = *(v22 + 8);
      if (v30)
      {
        v31 = v30 - 8;
      }

      else
      {
        v31 = 0;
      }

      mlir::Block::addArgument(v31);
    }
  }

LABEL_10:
  v35 = "Already at def location";
  v36 = 259;
  v32 = &v35;
  v11 = a3[2];
  if (v11 && v11[2] == 1)
  {
    (*(*v11 + 88))(v11, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::CopyOp &>(mlir::ODIE::Compiler::Exec::CopyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v32);
  }

  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CopyOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CopyOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.copy";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::MoveCopiesToDefinitionPattern]";
  v6 = 119;
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

void mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult::~ElideCopyOfCallResult(mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8);
  if ((v6 & 7) == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(*(a2 + 72) + 24);
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_7:
      v11 = "arg";
      v12 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  v13 = *(v10 + 48);
  if (*(v13 + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v14 = *(v13 + 8);
    v11 = *(v14 + 16);
    v12 = *(v14 + 24);
LABEL_11:
    v38 = 1283;
    v36 = v11;
    v37 = v12;
    v33 = &v34;
    v34 = "Can't handle copy source value: ";
    v15 = *(a3 + 16);
    if (!v15 || v15[2] != 1)
    {
      goto LABEL_15;
    }

    v16 = *(a2 + 24);
    v17 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::CopyOp &>(mlir::ODIE::Compiler::Exec::CopyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
LABEL_14:
    (*(*v15 + 88))(v15, v16, v17, &v33);
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v32 = v10;
  if ((v6 & 7) == 6)
  {
    v21 = *(v5 + 16) + 6;
  }

  else
  {
    v21 = v6 & 7;
  }

  if (*(*(*(*(v10 + 96) + 8) + 8 * v21) + 8) == 2)
  {
    v22 = "Found <return> intent - illegal to replace";
    goto LABEL_31;
  }

  v23 = *(*(v10 + 72) + 32 * *(v10 + 104) + 32 * v21 + 24);
  if ((~*(v23 + 8) & 7) != 0)
  {
    v24 = *(*(v10 + 72) + 32 * *(v10 + 104) + 32 * v21 + 24);
  }

  else
  {
    v24 = 0;
  }

  if (!v24 || (*(v24 + 8) & 7) == 6 && v24 + 24 * *(v24 + 16) == -120 || (v25 = *v23) == 0 || *v25)
  {
    v22 = "Unsafe to remove the copy";
LABEL_31:
    v34 = v22;
    v38 = 259;
    v33 = &v34;
    v15 = *(a3 + 16);
    if (!v15 || v15[2] != 1)
    {
      goto LABEL_15;
    }

    v16 = *(v10 + 24);
    v17 = llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::Exec::CallOp &>(mlir::ODIE::Compiler::Exec::CallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>;
    goto LABEL_14;
  }

  mlir::ODIE::Compiler::Exec::CallOp::getOutputsMutable(&v32, &v34);
  v26 = (*(v34 + 9) + 32 * (v35 + v21));
  v27 = *(*(a2 + 72) + 56);
  v28 = v26[1];
  if (v28)
  {
    v29 = *v26;
    *v28 = *v26;
    if (v29)
    {
      *(v29 + 8) = v26[1];
    }
  }

  v26[3] = v27;
  v26[1] = v27;
  v30 = *v27;
  *v26 = *v27;
  if (v30)
  {
    *(v30 + 8) = v26;
  }

  *v27 = v26;
  if (v36 != &v38)
  {
    free(v36);
  }

  v31 = v10 - 24 * (v21 - 5) - 96;
  if (v21 <= 5)
  {
    v31 = v10 - 16 * (v21 + 1);
  }

  v34 = v31;
  v18 = 1;
  (**a3)(a3, a2, &v34, 1);
LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(mlir::ODIE::Compiler::Exec::CallOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 88 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ElideCopyOfCallResult]";
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

void mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg::~ElideCopyOfBlockArg(mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg::matchAndRewrite(int a1, mlir::Operation *a2, void (***a3)(void, mlir::Operation *, uint64_t ***, uint64_t))
{
  v5 = *(a2 + 9);
  v6 = *(v5 + 24);
  v22 = v6;
  if ((~*(v6 + 2) & 7) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ((v7[1] & 7) != 6 || &v7[3 * v7[2]] != -120))
  {
    return 0;
  }

  v8 = **(v5 + 56);
  if (!v8)
  {
    return 0;
  }

  if (*v8)
  {
    return 0;
  }

  v11 = *(a2 - 2);
  if (!v11 || *v11)
  {
    return 0;
  }

  v12 = v11[2];
  if (!v12 || *(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    return 0;
  }

  v14 = *(v12 + 44);
  v15 = *(v12 + 16 * ((v14 >> 23) & 1) + 88);
  if ((v14 & 0x800000) != 0)
  {
    v16 = *(v12 + 72);
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  if (v15)
  {
    for (i = (v16 + 24); *i != (a2 - 16); i += 4)
    {
      v9 = 0;
      if (v15 == ++v17)
      {
        return v9;
      }
    }
  }

  if (v17 == v15)
  {
    return 0;
  }

  v19 = *v6;
  if (*v6)
  {
    while (1)
    {
      v20 = v19[2];
      if (v20 != a2 && !mlir::Operation::isBeforeInBlock(v19[2], a2))
      {
        v21 = mlir::Operation::isBeforeInBlock(v20, v12);
        v9 = 0;
        if (v20 == v12 || v21)
        {
          break;
        }
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v9 = 1;
    (**a3)(a3, a2, &v22, 1);
  }

  return v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ElideCopyOfBlockArg]";
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

uint64_t mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion::runOnOperation(mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion *this)
{
  v238 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  *&v216 = *(this + 6);
  v151 = *(mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(&v216) + 24);
  v183[0] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v183[1] = 0;
  v182 = &unk_286E76228;
  v4 = *(v2 + 40);
  v3 = *(v2 + 44);
  v184 = 0;
  v185 = 0;
  v5 = v2 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 32 * v4;
  v7 = *(v5 + 64);
  v6 = *(v5 + 72);
  v8 = v5 + 64;
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  while (v6 != v8)
  {
    v9 = v6 - 8;
    if (!v6)
    {
      v9 = 0;
    }

    if (*(v9 + 32) != v9 + 32)
    {
      break;
    }

    v6 = *(v6 + 8);
  }

  if (v6 == v8)
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v10 = v6 - 8;
    if (!v6)
    {
      v10 = 0;
    }

    v11 = *(v10 + 40);
  }

  v218 = v8;
  *&v216 = v8;
  *(&v216 + 1) = v6;
  *(&v217 + 1) = v8;
  *&v217 = v11;
  v219 = mlir::detail::op_filter_iterator<mlir::func::FuncOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v216);
  v178 = v216;
  v179 = v217;
  v180 = v218;
  v181 = v219;
  *&v216 = v8;
  *(&v216 + 1) = v8;
  *&v217 = 0;
  *(&v217 + 1) = v8;
  v218 = v8;
  v219 = mlir::detail::op_filter_iterator<mlir::func::FuncOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v216);
  v12 = v217;
  v173 = v178;
  v174 = v179;
  v175 = v180;
  v176 = v181;
  v177 = mlir::detail::op_iterator<mlir::func::FuncOp,mlir::Region::OpIterator>::unwrap;
  result = v179;
  if (v179 != v217)
  {
    v148 = v217;
LABEL_14:
    v14 = v177();
    Attr = mlir::Operation::getAttr(v14, "exec.has_model_context", 0x16uLL);
    if (!Attr)
    {
      goto LABEL_213;
    }

    if (*(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_213;
    }

    InitFunc = mlir::ODIE::Compiler::Exec::getInitFunc(v151, v14, v16);
    if (!InitFunc)
    {
      goto LABEL_213;
    }

    v18 = InitFunc;
    v20 = *(v14 + 40);
    v19 = *(v14 + 44);
    v150 = v14 + 64;
    v170 = 0;
    v169 = 0u;
    v171 = &v173;
    v172 = 0;
    v166 = 0;
    v165 = 0u;
    v167 = &v169;
    v168 = 0;
    mlir::ODIE::Compiler::Exec::collectInferenceInvariantOps((((v14 + 64 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v20), &v169, &v165);
    if (!v172)
    {
      goto LABEL_208;
    }

    v149 = v14;
    v162 = 0;
    v161 = 0u;
    v163 = &v165;
    v164 = 0;
    v158 = 0;
    v157 = 0u;
    v159 = &v161;
    v160 = 0;
    v21 = v171;
    v22 = v171 + 8 * v172;
    v23 = 8 * v172;
    *&v216 = &v217 + 8;
    *(&v216 + 1) = 16;
    LODWORD(v217) = 0;
    BYTE4(v217) = 1;
    v24 = v171;
    do
    {
      v25 = *v24++;
      llvm::SmallPtrSetImpl<mlir::Operation *>::insert(&v216, v25, v190);
      v23 -= 8;
    }

    while (v23);
    v214 = 0;
    __src = 0;
    v215[0] = 0;
LABEL_21:
    v26 = *v21;
    if ((*(*v21 + 46) & 0x80) != 0)
    {
      v27 = *(v26 + 68);
      if (v27)
      {
        v28 = (*(v26 + 72) + 24);
        do
        {
          v190[0] = *v28;
          v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(&__src, v190);
          if (!v29 || v29 == __src + 8 * v215[0])
          {
            llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(&v161, v190);
          }

          v28 += 4;
          --v27;
        }

        while (v27);
      }
    }

    v30 = *(v26 + 36);
    v31 = v26 - 16;
    if (v30)
    {
      v32 = (v26 - 16);
    }

    else
    {
      v32 = 0;
    }

    if (!v30)
    {
      goto LABEL_55;
    }

    v33 = 0;
    v34 = v32;
    while (1)
    {
      v35 = v32;
      if (v33)
      {
        v36 = *(v26 - 8) & 7;
        v37 = v32;
        v38 = v33;
        if (v36 == 6)
        {
          goto LABEL_37;
        }

        v39 = (5 - v36);
        v35 = v34;
        v38 = v33 - v39;
        if (v33 > v39)
        {
          break;
        }
      }

LABEL_38:
      v210 = v35;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&__src, &v210, v190);
      ++v33;
      v34 -= 16;
      if (v30 == v33)
      {
        v40 = *(v26 + 36);
        if (v40)
        {
          v41 = v26 - 16;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v42 = 0;
          while (1)
          {
            v43 = v41;
            if (!v42)
            {
              goto LABEL_50;
            }

            v44 = *(v26 - 8) & 7;
            v45 = v26 - 16;
            v46 = v42;
            if (v44 == 6)
            {
              goto LABEL_48;
            }

            v47 = (5 - v44);
            v46 = v42 - v47;
            if (v42 > v47)
            {
              break;
            }

            v43 = v31 - 16 * v42;
LABEL_50:
            v190[0] = v43;
            while (1)
            {
              v43 = *v43;
              if (!v43)
              {
                break;
              }

              if (!llvm::SmallPtrSetImplBase::contains_imp(&v216, *(v43 + 16)))
              {
                llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(&v157, v190);
                break;
              }
            }

            if (++v42 == v40)
            {
              goto LABEL_55;
            }
          }

          v45 = v31 - 16 * v47;
LABEL_48:
          v43 = v45 - 24 * v46;
          goto LABEL_50;
        }

LABEL_55:
        v21 += 8;
        if (v21 == v22)
        {
          MEMORY[0x25F891030](__src, 8);
          if ((BYTE4(v217) & 1) == 0)
          {
            free(v216);
          }

          __src = v215;
          v214 = 0x600000000;
          if (v160)
          {
            v48 = v159;
            v49 = 8 * v160;
            do
            {
              v50 = *v48++;
              llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&__src, *(v50 + 8) & 0xFFFFFFFFFFFFFFF8);
              v49 -= 8;
            }

            while (v49);
            if (v214)
            {
              v51 = *(((v18 + 16 * ((*(v18 + 44) >> 23) & 1) + ((*(v18 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 40) + 8);
              if (v51)
              {
                v52 = v51 - 8;
              }

              else
              {
                v52 = 0;
              }

              v53 = *(v52 + 32);
              v184 = *(v53 + 16);
              v185 = v53;
              v54 = *(*(v53 + 72) + 24);
              v202 = v54;
              v200 = 0;
              v199 = 0;
              v201 = 0;
              if (v160)
              {
                v55 = 0;
                v56 = v159;
                v57 = 8 * v160;
                do
                {
                  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](&v199, v56++) = v55++;
                  v57 -= 8;
                }

                while (v57);
                v54 = v202;
              }

              v58 = *(v54 + 8) & 0xFFFFFFFFFFFFFFF8;
              v198 = v58;
              if (*(v58 + 16))
              {
                v59 = *(v58 + 24);
                v60 = *(v58 + 32);
              }

              else
              {
                v59 = 0;
                v60 = 0;
              }

              v210 = v212;
              v211 = 0x600000000;
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v210, v59, &v59[8 * v60]);
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v210, __src, __src + 8 * v214);
              mlir::ODIE::Compiler::Exec::ContextType::setTypes(&v198, v210, v211);
              v190[1] = 0;
              v190[0] = 0;
              v191 = 0;
              v192 = 0;
              v193 = 0;
              v194 = 0;
              v195 = 0;
              v196 = 0;
              v197 = 0;
              if (v172)
              {
                v61 = v171;
                v152 = v171 + 8 * v172;
                v153 = v53;
                while (1)
                {
                  v154 = v61;
                  v62 = *v61;
                  v63 = *v61;
                  while (1)
                  {
                    v64 = *(v63 + 16);
                    if (!v64)
                    {
                      break;
                    }

                    v65 = *(v64 + 24) & 0xFFFFFFFFFFFFFFF8;
                    if (!v65)
                    {
                      break;
                    }

                    v63 = *(v65 + 16);
                    if (!v63)
                    {
                      break;
                    }

                    if (*(*(v63 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
                    {
                      v66 = *(v63 + 44);
                      if ((v66 & 0x800000) != 0)
                      {
                        v67 = *(v63 + 68);
                        if (v67)
                        {
                          v68 = 0;
                          v69 = ((v63 + 16 * ((v66 >> 23) & 1) + ((v66 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v63 + 40);
                          v70 = 8 * v67;
                          v71 = (*(v63 + 72) + 24);
                          do
                          {
                            v72 = *v71;
                            v73 = *(v69 + 8);
                            if (v73)
                            {
                              v74 = v73 - 8;
                            }

                            else
                            {
                              v74 = 0;
                            }

                            v75 = *(*(v74 + 48) + v68);
                            *&v216 = *v71;
                            v76 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v190, &v216);
                            if (v76 && v76 != v190[0] + 16 * v191)
                            {
                              v72 = *(v76 + 8);
                            }

                            *&v216 = v75;
                            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v190, &v216) = v72;
                            v68 += 8;
                            v71 += 4;
                          }

                          while (v70 != v68);
                        }
                      }

                      break;
                    }
                  }

                  v77 = mlir::OpBuilder::clone(v183, v62, v190);
                  v78 = *(v62 + 36);
                  v79 = v78 ? v62 - 16 : 0;
                  if (v78)
                  {
                    break;
                  }

LABEL_112:
                  if ((v153[46] & 0x80) != 0)
                  {
                    mlir::detail::OperandStorage::setOperands((v153 + 64), v153, &v202, 1);
                  }

                  v61 = v154 + 1;
                  if (v154 + 1 == v152)
                  {
                    goto LABEL_115;
                  }
                }

                v80 = 0;
                v155 = v77 - 24;
                v81 = v77 - 4;
                v82 = v79;
                while (2)
                {
                  v83 = v79;
                  if (v80)
                  {
                    v84 = *(v62 - 8) & 7;
                    v85 = v62 - 16;
                    v86 = v80;
                    if (v84 == 6)
                    {
                      goto LABEL_98;
                    }

                    v87 = (5 - v84);
                    v83 = v82;
                    v86 = v80 - v87;
                    if (v80 > v87)
                    {
                      v85 = v79 - 16 * v87;
LABEL_98:
                      v83 = v85 - 24 * v86;
                    }
                  }

                  v186 = v80;
                  v187 = v83;
                  v88 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(&v157, &v187);
                  if (v88 && v88 != v157 + 8 * v158)
                  {
                    v89 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](&v199, &v187);
                    v90 = *(v62 + 24);
                    if (v80 >= 6)
                    {
                      v91 = &v155[-6 * (v80 - 5)];
                    }

                    else
                    {
                      v91 = v81;
                    }

                    IndexAttr = mlir::Builder::getIndexAttr(v183, v89);
                    v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextInsertOp,void>::id, *(**v90 + 32));
                    if ((v94 & 1) == 0)
                    {
                      v208 = 1283;
                      v206 = "exec.context_insert";
                      v147 = 19;
                      goto LABEL_216;
                    }

                    *&v216 = v90;
                    *(&v216 + 1) = v93;
                    *&v217 = &v218;
                    *(&v217 + 1) = 0x400000000;
                    v220 = v222;
                    v221 = 0x400000000;
                    v223 = v225;
                    v224 = 0x400000000;
                    v226 = 4;
                    v227 = &v229;
                    v228 = 0x100000000;
                    v230 = &v232;
                    v231 = 0x100000000;
                    v233 = 0;
                    v234 = 0;
                    v235 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v236 = 0;
                    v237 = 0;
                    mlir::ODIE::Compiler::Exec::ContextInsertOp::build(v183, &v216, v198, v202, v91, IndexAttr);
                    v95 = mlir::Operation::create(&v216);
                    mlir::OpBuilder::insert(v183, v95);
                    v96 = *(*(v95 + 6) + 16);
                    mlir::OperationState::~OperationState(&v216);
                    if (v96 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextInsertOp,void>::id)
                    {
                      v97 = v95;
                    }

                    else
                    {
                      v97 = 0;
                    }

                    v98 = *(v97 + 9);
                    v99 = (v97 - 16);
                    if (!v98)
                    {
                      v99 = 0;
                    }

                    v202 = v99;
                  }

                  ++v80;
                  v81 -= 4;
                  v82 -= 16;
                  if (v78 == v80)
                  {
                    goto LABEL_112;
                  }

                  continue;
                }
              }

LABEL_115:
              v100 = *(((v150 + 16 * ((*(v149 + 44) >> 23) & 1) + ((*(v149 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v149 + 40) + 8);
              if (v100)
              {
                v101 = v100 - 8;
              }

              else
              {
                v101 = 0;
              }

              v189 = **(v101 + 48);
              v186 = 0;
              v187 = 0;
              v188 = 0;
              if (v200)
              {
                if (v201)
                {
                  v102 = 16 * v201;
                  v103 = v199;
                  while ((*v103 | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v103 += 16;
                    v102 -= 16;
                    if (!v102)
                    {
                      goto LABEL_195;
                    }
                  }
                }

                else
                {
                  v103 = v199;
                }

                if (v103 != v199 + 16 * v201)
                {
                  v104 = *v103;
                  v156 = v199 + 16 * v201;
                  while (1)
                  {
                    if ((~*(v104 + 8) & 7) != 0)
                    {
                      v105 = v104;
                    }

                    else
                    {
                      v105 = 0;
                    }

                    v106 = *(v105 + 8) & 7;
                    if (v106 == 6)
                    {
                      v107 = v105 + 24 * *(v105 + 16) + 120;
                    }

                    else
                    {
                      v107 = v105 + 16 * v106 + 16;
                    }

                    v108 = *(v103 + 8);
                    do
                    {
                      v109 = *(v107 + 16);
                      if (v109)
                      {
                        v110 = *(v109 + 24) & 0xFFFFFFFFFFFFFFF8;
                        if (v110)
                        {
                          v107 = *(v110 + 16);
                          if (v107)
                          {
                            continue;
                          }
                        }
                      }

                      v115 = v189;
                      goto LABEL_142;
                    }

                    while (*(*(v107 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id);
                    v111 = *(v103 + 8);
                    v209[0] = 0;
                    v112 = v188;
                    v113 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(0, v188, v107, v209);
                    v114 = v209[0];
                    if ((v113 & 1) == 0)
                    {
                      *&v216 = v209[0];
                      v135 = v187;
                      if (4 * v187 + 4 >= 3 * v112)
                      {
                        v112 *= 2;
                      }

                      else if (v112 + ~v187 - HIDWORD(v187) > v112 >> 3)
                      {
LABEL_172:
                        LODWORD(v187) = v135 + 1;
                        if (*v114 != -4096)
                        {
                          --HIDWORD(v187);
                        }

                        *v114 = v107;
                        v114[1] = 0;
LABEL_175:
                        if ((*(v107 + 46) & 0x80) != 0)
                        {
                          v136 = *(v107 + 68);
                        }

                        else
                        {
                          v136 = 0;
                        }

                        *&v216 = v107;
                        DWORD2(v216) = 0;
                        HIDWORD(v216) = v136;
                        *&v217 = &v218;
                        *(&v217 + 1) = 0x100000000;
                        mlir::MutableOperandRange::append(&v216, &v189, 1);
                        if (v217 != &v218)
                        {
                          free(v217);
                        }

                        if ((~*(v189 + 8) & 7) != 0)
                        {
                          v137 = v189;
                        }

                        else
                        {
                          v137 = 0;
                        }

                        if (v137)
                        {
                          v138 = *(v137 + 8) & 7;
                          if (v138 == 6)
                          {
                            v139 = v137 + 24 * *(v137 + 16) + 120;
                            if (!v139)
                            {
                              goto LABEL_185;
                            }
                          }

                          else
                          {
                            v139 = v137 + 16 * v138 + 16;
                          }

                          v140 = (v139 + 24);
                        }

                        else
                        {
LABEL_185:
                          v140 = (v189 + 32);
                        }

                        v141 = *v140;
                        v142 = *(((v107 + 16 * ((*(v107 + 44) >> 23) & 1) + ((*(v107 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v107 + 40) + 8);
                        if (v142)
                        {
                          v143 = v142 - 8;
                        }

                        else
                        {
                          v143 = 0;
                        }

                        mlir::Block::addArgument(v143);
                      }

                      llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::grow(&v186, v112);
                      llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(v186, v188, v107, &v216);
                      v135 = v187;
                      v114 = v216;
                      goto LABEL_172;
                    }

                    v115 = *(v209[0] + 8);
                    v108 = v111;
                    if (!v115)
                    {
                      goto LABEL_175;
                    }

LABEL_142:
                    v116 = (~*(v104 + 8) & 7) != 0 ? v104 : 0;
                    v117 = *(v116 + 8) & 7;
                    v118 = v117 == 6 ? v116 + 24 * *(v116 + 16) + 120 : v116 + 16 * v117 + 16;
                    v184 = *(v118 + 16);
                    v185 = v118;
                    v119 = *(v104 + 8);
                    v120 = (~*(v104 + 8) & 7) != 0 ? v104 : 0;
                    if (!v120)
                    {
                      break;
                    }

                    v121 = *(v120 + 8) & 7;
                    if (v121 == 6)
                    {
                      v122 = v120 + 24 * *(v120 + 16) + 120;
                      if (!v122)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v122 = v120 + 16 * v121 + 16;
                    }

                    v123 = v115;
                    v124 = (v122 + 24);
LABEL_157:
                    v125 = *v124;
                    v126 = mlir::Builder::getIndexAttr(v183, v108);
                    v127 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextExtractOp,void>::id, *(**v125 + 32));
                    if ((v128 & 1) == 0)
                    {
                      v208 = 1283;
                      v206 = "exec.context_extract";
                      v147 = 20;
LABEL_216:
                      v207 = v147;
                      v204 = 259;
                      llvm::operator+(&v205, &v203, v209);
                      llvm::report_fatal_error(v209, 1);
                    }

                    *&v216 = v125;
                    *(&v216 + 1) = v127;
                    *&v217 = &v218;
                    *(&v217 + 1) = 0x400000000;
                    v220 = v222;
                    v221 = 0x400000000;
                    v223 = v225;
                    v224 = 0x400000000;
                    v226 = 4;
                    v227 = &v229;
                    v228 = 0x100000000;
                    v230 = &v232;
                    v231 = 0x100000000;
                    v233 = 0;
                    v234 = 0;
                    v235 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v236 = 0;
                    v237 = 0;
                    mlir::ODIE::Compiler::Exec::ContextExtractOp::build(v183, &v216, v119 & 0xFFFFFFFFFFFFFFF8, v123, v126);
                    v129 = mlir::Operation::create(&v216);
                    mlir::OpBuilder::insert(v183, v129);
                    v130 = *(*(v129 + 6) + 16);
                    mlir::OperationState::~OperationState(&v216);
                    if (v130 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextExtractOp,void>::id)
                    {
                      v131 = v129;
                    }

                    else
                    {
                      v131 = 0;
                    }

                    v132 = *(v131 + 9);
                    v133 = (v131 - 16);
                    if (v132)
                    {
                      v134 = v133;
                    }

                    else
                    {
                      v134 = 0;
                    }

                    mlir::RewriterBase::replaceAllUsesWith(&v182, v104, v134);
                    for (v103 += 16; ; v103 += 16)
                    {
                      if (v103 == v156)
                      {
                        goto LABEL_195;
                      }

                      v104 = *v103;
                      if ((*v103 | 0x1000) != 0xFFFFFFFFFFFFF000)
                      {
                        break;
                      }
                    }

                    if (v103 == v156)
                    {
                      goto LABEL_195;
                    }
                  }

                  v123 = v115;
                  v124 = (v104 + 32);
                  goto LABEL_157;
                }
              }

LABEL_195:
              if (v172)
              {
                v144 = 8 * v172;
                v145 = v171 - 8;
                do
                {
                  v182[2](&v182, *&v145[v144]);
                  v144 -= 8;
                }

                while (v144);
              }

              MEMORY[0x25F891030](0, 8);
              MEMORY[0x25F891030](v195, 8);
              MEMORY[0x25F891030](v192, 8);
              MEMORY[0x25F891030](v190[0], 8);
              if (v210 != v212)
              {
                free(v210);
              }

              MEMORY[0x25F891030](v199, 8);
            }
          }

          if (__src != v215)
          {
            free(__src);
          }

          v12 = v148;
          if (v159 != &v161)
          {
            free(v159);
          }

          MEMORY[0x25F891030](v157, 8);
          if (v163 != &v165)
          {
            free(v163);
          }

          MEMORY[0x25F891030](v161, 8);
LABEL_208:
          if (v167 != &v169)
          {
            free(v167);
          }

          MEMORY[0x25F891030](v165, 8);
          if (v171 != &v173)
          {
            free(v171);
          }

          MEMORY[0x25F891030](v169, 8);
LABEL_213:
          mlir::Region::OpIterator::operator++(&v173);
          llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v173);
          result = v174;
          if (v174 == v12)
          {
            goto LABEL_214;
          }

          goto LABEL_14;
        }

        goto LABEL_21;
      }
    }

    v37 = &v32[-16 * v39];
LABEL_37:
    v35 = &v37[-24 * v38];
    goto LABEL_38;
  }

LABEL_214:
  v146 = *MEMORY[0x277D85DE8];
  return result;
}

mlir::Region::OpIterator *mlir::ODIE::Compiler::Exec::collectInferenceInvariantOps(mlir::Region::OpIterator *result, uint64_t a2, uint64_t a3)
{
  if (*result != result)
  {
    v29 = v3;
    v30 = v4;
    for (i = *(result + 1); i != result; i = *(i + 1))
    {
      v8 = (i - 8);
      if (!i)
      {
        v8 = 0;
      }

      if (v8[4] != v8 + 4)
      {
        break;
      }
    }

    if (i != result)
    {
      v9 = (i - 8);
      if (!i)
      {
        v9 = 0;
      }

      v10 = v9[5];
      v27[0] = result;
      v27[1] = i;
      for (j = v10; j; v10 = j)
      {
        v25 = v10;
        v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(a2, &v25);
        if (!v11 || v11 == *a2 + 8 * *(a2 + 16))
        {
          v12 = *(*(v10 + 48) + 16);
          if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
          {
            v13 = v10;
          }

          else
          {
            v13 = 0;
          }

          if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>::id)
          {
            v15 = *(v10 + 44);
            if ((v15 & 0x800000) != 0)
            {
              v16 = *(v10 + 68);
              if (v16)
              {
                v17 = 0;
                v18 = (*(v10 + 72) + 24);
                do
                {
                  v19 = *v18;
                  v25 = v17;
                  v26 = v19;
                  v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a3, &v26);
                  if (v20 && v20 != *a3 + 8 * *(a3 + 16))
                  {
                    v21 = *(v10 + 64 + 16 * ((*(v10 + 44) >> 23) & 1) + ((*(v10 + 44) >> 21) & 0x7F8) + 32 * *(v10 + 40) + 8);
                    if (v21)
                    {
                      v22 = v21 - 8;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    v24 = *(*(v22 + 48) + 8 * v17);
                    llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(a3, &v24);
                  }

                  ++v17;
                  v18 += 4;
                }

                while (v16 != v17);
                v15 = *(v10 + 44);
              }
            }

            mlir::ODIE::Compiler::Exec::collectInferenceInvariantOps(((v13 + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v13 + 40), a2, a3);
          }

          else if (mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits>::getInterfaceFor(v10))
          {
            InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits>::getInterfaceFor(v10);
            if (v10)
            {
              if ((*InterfaceFor)(InterfaceFor, v10, a3))
              {
                v25 = v10;
                llvm::SetVector<mlir::Operation *,llvm::SmallVector<mlir::Operation *,0u>,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>>,0u>::insert(a2, &v25);
                if (*(v10 + 36))
                {
                  v23 = v10 - 16;
                }

                else
                {
                  v23 = 0;
                }

                llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>(a3, v23, 0, v23, *(v10 + 36));
              }
            }
          }
        }

        result = mlir::Region::OpIterator::operator++(v27);
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion::~InferenceInvariantCodeMotion(mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v17[9] = v5;
    v17[10] = v6;
    v8 = a3;
    v10 = result;
    v11 = a2 - 16 * a3;
    do
    {
      if (v8)
      {
        if (!a2)
        {
          v13 = 0;
          v14 = v8;
          goto LABEL_10;
        }

        v12 = *(a2 + 8) & 7;
        v13 = a2;
        v14 = v8;
        if (v12 == 6)
        {
          goto LABEL_10;
        }

        v15 = (5 - v12);
        v16 = v11;
        v14 = v8 - v15;
        if (v8 > v15)
        {
          v13 = a2 - 16 * v15;
LABEL_10:
          v16 = v13 - 24 * v14;
        }
      }

      else
      {
        v16 = a2;
      }

      v17[0] = v16;
      result = llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(v10, v17);
      ++v8;
      v11 -= 16;
    }

    while (a5 != v8);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,mlir::ODIE::Compiler::Exec::detail::ConditionallyInferenceInvariantOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[168];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>();
    *algn_27FC19558 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::ConditionallyInferenceInvariantOpInterface]";
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

char *llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::grow(uint64_t a1, int a2)
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
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>,mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value,llvm::DenseMapInfo<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::Exec::IsolatedGroupOp,mlir::Value>>::LookupBucketFor<mlir::ODIE::Compiler::Exec::IsolatedGroupOp>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
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
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::InferenceInvariantCodeMotion>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 72);
  v3 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 4) == 0 && v3)
  {
    do
    {
      v4 = *(v3 + 72);
      v3 = v4 & 0xFFFFFFFFFFFFFFF8;
    }

    while ((v4 & 4) == 0 && v3);
  }

  v5 = *(v1 + 24);
  return mlir::detail::AnalysisMap::getAnalysisImpl<mlir::SymbolTableAnalysis,mlir::ModuleOp>(v1 + 24, v3);
}

uint64_t mlir::detail::AnalysisMap::getAnalysisImpl<mlir::SymbolTableAnalysis,mlir::ModuleOp>(uint64_t a1, std::recursive_mutex **a2)
{
  v11 = mlir::detail::TypeIDResolver<mlir::SymbolTableAnalysis,void>::resolveTypeID();
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::doFind<mlir::TypeID>((a1 + 8), &v11);
  v5 = v4 == *(a1 + 8) + 16 * *(a1 + 24) || v4 == 0;
  v6 = (v4 + 8);
  if (v5)
  {
    v6 = (a1 + 40);
  }

  v7 = *v6;
  if (*(a1 + 40) == v7)
  {
    if (a2)
    {
      v8 = mlir::detail::AnalysisMap::getAnalysisName<mlir::SymbolTableAnalysis>();
      mlir::PassInstrumentor::runBeforeAnalysis(a2, v8, v9, v11, *a1);
    }

    operator new();
  }

  return *(*(a1 + 32) + 16 * v7 + 8) + 8;
}

uint64_t mlir::detail::AnalysisMap::getAnalysisName<mlir::SymbolTableAnalysis>()
{
  {
    llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolTableAnalysis>();
    unk_27FC19580 = v4;
  }

  result = llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name;
  if (unk_27FC19580 >= 6uLL)
  {
    if (*llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name == 1919511661 && *(llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 4) == 14906)
    {
      return llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 6;
    }

    else if (unk_27FC19580 >= 0x17uLL && *llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name == 0x6F6D796E6F6E6128 && *(llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 8) == 0x73656D616E207375 && *(llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 15) == 0x3A3A296563617073)
    {
      return llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name + 23;
    }
  }

  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::SymbolTableAnalysis,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SymbolTableAnalysis>();
      mlir::detail::TypeIDResolver<mlir::SymbolTableAnalysis,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[173];
}

uint64_t llvm::getTypeName<mlir::SymbolTableAnalysis>()
{
  {
    llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolTableAnalysis>();
    unk_27FC19580 = v1;
  }

  return llvm::getTypeName<mlir::SymbolTableAnalysis>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SymbolTableAnalysis>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolTableAnalysis]";
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

uint64_t llvm::MapVector<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>,llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,0u>>::try_emplace<std::unique_ptr<mlir::detail::AnalysisConcept>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = *a2;
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(a1, &v8, &v9, &v10);
  if (v11 != 1)
  {
    return *(a1 + 24) + 16 * *(v10 + 8);
  }

  *(v10 + 8) = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>((a1 + 24), &std::piecewise_construct, &v8, &v7);
  return *(a1 + 24) + 16 * *(a1 + 32) - 16;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(unsigned int *a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v4 = a1[2];
  if (v4 >= a1[3])
  {
    return llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(a1, a2, a3, a4);
  }

  v5 = (*a1 + 16 * v4);
  v6 = *a4;
  *v5 = **a3;
  v7 = *v6;
  *v6 = 0;
  v5[1] = v7;
  v8 = v4 + 1;
  a1[2] = v8;
  return *a1 + 16 * v8 - 16;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID&&>,std::tuple<std::unique_ptr<mlir::detail::AnalysisConcept>&&>>(unsigned int *a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v15 = 0;
  v7 = a1 + 4;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 16, &v15);
  v9 = &v8[2 * a1[2]];
  v10 = *a4;
  *v9 = **a3;
  v11 = *v10;
  *v10 = 0;
  v9[1] = v11;
  llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::moveElementsForGrow(a1, v8);
  v12 = v15;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v13 = a1[2] + 1;
  a1[2] = v13;
  a1[3] = v12;
  return &v8[2 * v13 - 2];
}

unsigned int *llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::detail::AnalysisConcept>>,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    v4 = *result + 16 * v2;
    do
    {
      *a2 = *v3;
      v5 = v3[1];
      v3[1] = 0;
      a2[1] = v5;
      a2 += 2;
      v3 += 2;
    }

    while (v3 != v4);
    v6 = *result - 8;
    v7 = 16 * v2;
    do
    {
      result = *(v6 + v7);
      *(v6 + v7) = 0;
      if (result)
      {
        result = (*(*result + 8))(result, a2);
      }

      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

void *mlir::detail::AnalysisModel<mlir::SymbolTableAnalysis>::~AnalysisModel(void *a1)
{
  *a1 = &unk_286E85D40;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll((a1 + 1));
  MEMORY[0x25F891030](a1[1], 8);
  return a1;
}

void mlir::detail::AnalysisModel<mlir::SymbolTableAnalysis>::~AnalysisModel(void *a1)
{
  *a1 = &unk_286E85D40;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll((a1 + 1));
  MEMORY[0x25F891030](a1[1], 8);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Exec::OutlineAwaitRegions::runOnOperation(mlir::ODIE::Compiler::Exec::OutlineAwaitRegions *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  v5[8] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  *__src = 0u;
  *v7 = 0u;
  v8 = v10;
  v14 = 0;
  v15 = 40;
  v18 = 0;
  v19 = 40;
  v9 = 0x600000000;
  v10[6] = 0;
  v10[7] = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v5[0] = v2;
  v3 = *(mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(v5) + 24);
  v4 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  operator new();
}

void mlir::ODIE::Compiler::Exec::OutlineAwaitRegions::~OutlineAwaitRegions(mlir::ODIE::Compiler::Exec::OutlineAwaitRegions *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::OutlineAwaitRegions>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern::~AsyncAwaitOpPattern(mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a2;
  while (1)
  {
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v8)
    {
      break;
    }

    v6 = *(v8 + 16);
    if (!v6 || *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v9 = *(a2 + 44);
  v10 = (a2 + 64 + 16 * ((v9 >> 23) & 1));
  v11 = *(((v10 + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v11)
  {
    v12 = (v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12[4];
  v14 = *v10;
  if ((v9 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  v16 = v12[7];
  v40 = v12[6];
  v51 = &v53;
  v52 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v51, v15, 0, v15, v14);
  if ((*(v13 + 46) & 0x80) != 0)
  {
    v17 = *(v13 + 72);
    v18 = *(v13 + 68);
    v19 = v17;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

  v48 = &v50;
  v49 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v48, v17, 0, v19, v18);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v51, v48, v48 + 8 * v49);
  v20 = *(a1 + 24);
  *v54 = v48;
  *&v54[8] = v49;
  v41[1] = 0;
  v41[2] = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::TaskType,llvm::ArrayRef<mlir::Type>>((v20 & 0xFFFFFFFFFFFFFFF8), v54);
  __src[8] = &v47;
  __src[9] = 0x600000000;
  v39 = *(a3 + 24);
  *(a3 + 24) = *(v6 + 16);
  *(a3 + 32) = v6;
  v21 = *(a3 + 8);
  *v54 = v51 & 0xFFFFFFFFFFFFFFF9 | 2;
  *&v54[8] = v52;
  __src[0] = (v48 & 0xFFFFFFFFFFFFFFF9 | 2);
  __src[1] = v49;
  v41[0] = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v21, v54, __src);
  v38 = *(a2 + 24);
  v23 = v6;
  while (1)
  {
    v24 = *(v23 + 2);
    if (!v24)
    {
      break;
    }

    v25 = *(v24 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v25)
    {
      break;
    }

    v23 = *(v25 + 16);
    if (!v23 || *(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_22;
    }
  }

  v23 = 0;
LABEL_22:
  mlir::SymbolTable::SymbolTable(__src, v23, v22);
  v26 = *(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 96);
  v28 = *(v26 + 16);
  v27 = *(v26 + 24);
  v45 = 773;
  v44.__r_.__value_.__r.__words[0] = v28;
  v44.__r_.__value_.__l.__size_ = v27;
  v44.__r_.__value_.__r.__words[2] = "::";
  *v54 = &v44;
  *&v54[16] = "await";
  v56 = 770;
  llvm::Twine::str(v54, __p);
  v29 = v43;
  if (v43 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if (v43 < 0)
  {
    v29 = __p[1];
  }

  *v54 = &v55;
  *&v54[8] = xmmword_25D0A05C0;
  llvm::SmallVectorImpl<char>::append<char const*,void>(v54, v30, v29 + v30);
  v31 = 0;
  v32 = *&v54[8];
  while (1)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<false>(v54, v32);
    llvm::SmallVectorTemplateBase<char,true>::push_back(v54, 95);
    std::to_string(&v44, v31);
    size = SHIBYTE(v44.__r_.__value_.__r.__words[2]);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v44;
    }

    else
    {
      v34 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v44.__r_.__value_.__l.__size_;
    }

    llvm::SmallVectorImpl<char>::append<char const*,void>(v54, v34, v34 + size);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    ++v31;
    if (!mlir::SymbolTable::lookup(__src, *v54, *&v54[8]))
    {
      v36 = *(***(v6 + 24) + 32);
      v45 = 261;
      *&v44.__r_.__value_.__l.__data_ = *v54;
      v37 = mlir::StringAttr::get(v36, &v44, v35);
      if (*v54 != &v55)
      {
        free(*v54);
      }

      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      MEMORY[0x25F891030](__src[1], 8);
      *v54 = v37;
      mlir::OpBuilder::create<mlir::func::FuncOp,mlir::StringAttr,mlir::FunctionType &>((a3 + 8), v38, v54, v41);
    }
  }
}

void mlir::OpBuilder::create<mlir::func::FuncOp,mlir::StringAttr,mlir::FunctionType &>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::FuncOp>(a1, *(**a2 + 32));
  v9[0] = a2;
  v9[1] = v8;
  v9[2] = v10;
  v9[3] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[8] = 4;
  v12[9] = v13;
  v12[10] = 0x100000000;
  v13[1] = v14;
  v13[2] = 0x100000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v14[4] = 0;
  v14[6] = 0;
  mlir::func::FuncOp::build(a1, v9, *(*a3 + 16), *(*a3 + 24), *a4, 0, 0);
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::setArgAttr(uint64_t *a1, unsigned int a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(***(*a1 + 24) + 32);
  v11 = 261;
  v10[0] = a3;
  v10[1] = a4;
  v9 = mlir::StringAttr::get(v8, v10, a3);
  mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(*a1, a2, v9, a5);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::UndefOp,mlir::Type &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::UndefOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v12[2] = &v13;
  v12[3] = 0x400000000;
  v14[0] = v15;
  v14[1] = 0x400000000;
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
  v11 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v14, &v11, v12);
  v7 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(mlir::ODIE::Compiler::Exec::AsyncAwaitOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 64);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 64 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::FuncOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "func.func";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[179];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::AwaitableType>();
    unk_27FC195B0 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::Exec::AwaitableType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::AwaitableType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::AwaitableType]";
  v6 = 103;
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

void mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v14[9] = *MEMORY[0x277D85DE8];
  v12 = a1;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  v8 = (*(*(InterfaceFor + 48) + 24))();
  if (v8)
  {
    v9 = *(*(v8 + 8) + 8 * a2);
  }

  else
  {
    v9 = 0;
  }

  mlir::NamedAttrList::NamedAttrList(v13, v9);
  if (mlir::NamedAttrList::set(v13, a3, a4) != a4)
  {
    Dictionary = mlir::NamedAttrList::getDictionary(v13, *(**a4 + 32));
    mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::setArgAttrs(&v12, a2, Dictionary);
  }

  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::setArgAttrs(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::function_interface_impl::setArgAttrs(v5, InterfaceFor, a2, a3);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::UndefOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::UndefOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.undef";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::CallOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "exec.call";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::Exec::AsyncAwaitOpPattern]";
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

uint64_t mlir::ODIE::Compiler::Exec::CreateModelContext::runOnOperation(mlir::ODIE::Compiler::Exec::CreateModelContext *this)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  __src[0] = *(this + 6);
  v3 = *(mlir::AnalysisManager::getAnalysis<mlir::SymbolTableAnalysis,mlir::ModuleOp>(__src) + 24);
  v19[0] = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  v19[1] = 0;
  v20 = 0uLL;
  v18 = &unk_286E76228;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v21 = v23;
  v22 = 0x600000000;
  __src[0] = &v21;
  __src[1] = v16;
  v27 = v3;
  mlir::detail::walk<mlir::ForwardIterator>(v2 & 0xFFFFFFFFFFFFFFF8, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Exec::CreateModelContext::runOnOperation(void)::$_0>, __src, 1);
  if (v22)
  {
    v15 = *v21;
    *__src = *(*(v15 + 64 + 16 * ((*(v15 + 44) >> 23) & 1) + 32) + 16);
    *&v25 = mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::Exec::ContextType,llvm::StringRef &>(v19[0], __src, v4, v5);
    mlir::ODIE::Compiler::Exec::ContextType::setTypes(&v25, 0, 0);
    *&v20 = *(v15 + 16);
    *(&v20 + 1) = v15;
    v28 = v25;
    __src[0] = &v28 + 2;
    __src[1] = 1;
    v24 = v25;
    *&v25 = &v24 + 2;
    *(&v25 + 1) = 1;
    v29[0] = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v19[0], __src, &v25);
    v6 = *(v15 + 24);
    __src[0] = mlir::ODIE::Compiler::Exec::getInitFuncNameAttr(v15, v7, v8);
    mlir::OpBuilder::create<mlir::func::FuncOp,mlir::StringAttr,mlir::FunctionType &>(v19, v6, __src, v29);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v9 = v16[0];
  if (v17)
  {
    v10 = v16[0] + 24;
    v11 = 72 * v17;
    do
    {
      if ((*(v10 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v12 = *(v10 - 16);
        if (v10 != v12)
        {
          free(v12);
        }
      }

      v10 += 72;
      v11 -= 72;
    }

    while (v11);
    v9 = v16[0];
  }

  result = MEMORY[0x25F891030](v9, 8);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::operator[](uint64_t a1, unint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(*a1, *(a1 + 16), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = (v5 + 3);
  v5[2] = 0x600000000;
  return v5 + 1;
}

void mlir::ODIE::Compiler::Exec::CreateModelContext::~CreateModelContext(mlir::ODIE::Compiler::Exec::CreateModelContext *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::Exec::AllocOp,mlir::Type,decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::Exec::AllocOp>(a1, *(**a2 + 32));
  v12[0] = a2;
  v12[1] = v6;
  v12[2] = &v13;
  v12[3] = 0x400000000;
  v14[0] = v15;
  v14[1] = 0x400000000;
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
  v11 = *a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v14, &v11, v12);
  v7 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AllocOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v12);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

mlir::Pass **std::unique_ptr<mlir::ODIE::Compiler::Exec::CreateModelContext>::~unique_ptr[abi:nn200100](mlir::Pass **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Pass::~Pass(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 72 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 72 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

void *llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (!v3)
    {
LABEL_29:

      JUMPOUT(0x25F891030);
    }

    v15 = 72 * v3;
    v16 = v4;
    while (1)
    {
      v17 = *v16;
      if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_28:
      v16 += 72;
      v15 -= 72;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    v29 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::LookupBucketFor<mlir::func::FuncOp>(*a1, *(a1 + 16), v17, &v29);
    v18 = v29;
    *v29 = *v16;
    v19 = v18 + 3;
    v18[1] = v18 + 3;
    v18[2] = 0x600000000;
    v20 = *(v16 + 8);
    if (v16 == v18 || (v21 = *(v16 + 16)) == 0)
    {
LABEL_26:
      ++*(a1 + 8);
      if ((v16 + 24) != v20)
      {
        free(v20);
      }

      goto LABEL_28;
    }

    if ((v16 + 24) != v20)
    {
      v18[1] = v20;
      v22 = *(v16 + 20);
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
      *(v16 + 8) = v16 + 24;
      *(v16 + 20) = 0;
      v20 = (v16 + 24);
LABEL_25:
      *(v16 + 16) = 0;
      goto LABEL_26;
    }

    if (v21 < 7)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v18 + 1), v18 + 3, *(v16 + 16), 8);
      v23 = *(v16 + 16);
      v20 = *(v16 + 8);
      if (!v23)
      {
LABEL_24:
        *(v18 + 4) = v21;
        goto LABEL_25;
      }

      v19 = v18[1];
    }

    memcpy(v19, v20, 8 * v23);
    v20 = *(v16 + 8);
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 72 * v24 - 72;
    v27 = vdupq_n_s64(v26 / 0x48);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[9] = -4096;
      }

      v25 += 2;
      result += 18;
    }

    while (((v26 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::Exec::CreateModelContext::runOnOperation(void)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *(*(a2 + 48) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v26 = v4;
  if (v4)
  {
    Attr = mlir::Operation::getAttr(v4, "exec.coreml_model", 0x11uLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v6 = mlir::Operation::getAttr(v4, "exec.has_model_context", 0x16uLL);
        if (!v6 || *(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v7 = *a1;
          v8 = *(*a1 + 8);
          if (v8 >= *(*a1 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(*a1, (v7 + 16), v8 + 1, 8);
            LODWORD(v8) = *(v7 + 8);
          }

          *(*v7 + 8 * v8) = v4;
          ++*(v7 + 8);
          *(llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>,mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::SmallVector<mlir::ODIE::Compiler::Exec::CallOp,6u>>>::operator[](a1[1], &v26) + 2) = 0;
        }
      }
    }
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::CallOp,void>::id)
  {
    v11 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
    v12 = mlir::SymbolTable::lookup(a1[2], *(v11 + 16), *(v11 + 24));
    if (v12)
    {
      v13 = *(*(v12 + 48) + 16);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id ? v12 : 0;
      if (v13 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        v15 = a1[1];
        v16 = *(v15 + 4);
        if (v16)
        {
          v17 = *v15;
          v18 = 0x9DDFEA08EB382D69 * ((8 * v12 - 0xAE502812AA7333) ^ HIDWORD(v12));
          v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v18 >> 47) ^ v18);
          v20 = (v16 - 1) & (-348639895 * ((v19 >> 47) ^ v19));
          v21 = (v17 + 72 * v20);
          v22 = *v21;
          if (*v21 == v12)
          {
LABEL_21:
            if (v21 != (v17 + 72 * v16))
            {
              v23 = *(v21 + 4);
              if (v23 >= *(v21 + 5))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod((v21 + 1), v21 + 3, v23 + 1, 8);
                LODWORD(v23) = *(v21 + 4);
              }

              *(v21[1] + 8 * v23) = a2;
              ++*(v21 + 4);
            }
          }

          else
          {
            v24 = 1;
            while (v22 != -4096)
            {
              v25 = v20 + v24++;
              v20 = v25 & (v16 - 1);
              v21 = (v17 + 72 * v20);
              v22 = *v21;
              if (*v21 == v14)
              {
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

void mlir::func::FuncDialect::~FuncDialect(mlir::func::FuncDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::func::CallOp,mlir::func::FuncOp,mlir::func::ReturnOp>(uint64_t a1)
{
  v5 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
  v6 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v2 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  v6 = v2;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
  v3 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID();
  v5 = &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
  v6 = v3;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v5, v7);
}

char *mlir::func::FuncDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, const char *a4, uint64_t a5)
{
  v28[8] = *MEMORY[0x277D85DE8];
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !a3[3] && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, *(**a5 + 32));
    if ((v12 & 1) == 0)
    {
      v21 = 1283;
      v19 = "func.constant";
      v20 = 13;
      v16 = 259;
      llvm::operator+(&__src, &v15, v22);
      llvm::report_fatal_error(v22, 1);
    }

    v22[0] = a5;
    v22[1] = v11;
    v22[2] = &v23;
    v22[3] = 0x400000000;
    v24[0] = v25;
    v24[1] = 0x400000000;
    v25[4] = v26;
    v25[5] = 0x400000000;
    v26[8] = 4;
    v26[9] = v27;
    v26[10] = 0x100000000;
    v27[1] = v28;
    v27[2] = 0x100000000;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v28[4] = 0;
    v28[6] = 0;
    __src = a4;
    *mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(v22) = a3;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v24, &__src, v18);
    v13 = mlir::Operation::create(v22);
    mlir::OpBuilder::insert(a2, v13);
    v14 = *(*(v13 + 6) + 16);
    mlir::OperationState::~OperationState(v22);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id)
    {
      result = v13;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::func::CallIndirectOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(mlir::func::CallIndirectOp::getODSOperands(a1, 0) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16);
    v7 = v6 + 120;
    if (v6 == -120)
    {
LABEL_18:
      result = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v7 = v4 + 16 * v5 + 16;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(v7 + 48) + 32))(*(v7 + 48), v8);
  if (result)
  {
    v30 = v32;
    v31 = 0x100000000;
    mlir::Operation::fold(v7, 0, 0, &v30);
    v10 = *(*(*v30 & 0xFFFFFFFFFFFFFFF8) + 136);
    v11 = v10 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || (*v30 & 0xFFFFFFFFFFFFFFF8) == 0;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v12 = *v30 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v12 = 0;
    }

    if (v30 != v32)
    {
      free(v30);
    }

    if (v11)
    {
      goto LABEL_18;
    }

    v14 = *(a1 + 36);
    if (v14)
    {
      v15 = a1 - 16;
    }

    else
    {
      v15 = 0;
    }

    if ((*(a1 + 46) & 0x80) != 0)
    {
      v16 = *(a1 + 72);
      v17 = *(a1 + 68) - 1;
    }

    else
    {
      v16 = 0;
      v17 = -1;
    }

    v18 = *(a1 + 24);
    v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, *(**v18 + 32));
    if ((v20 & 1) == 0)
    {
      v29 = 1283;
      v27 = "func.call";
      v28 = 9;
      v40 = 259;
      llvm::operator+(v26, v39, &v30);
      llvm::report_fatal_error(&v30, 1);
    }

    v30 = v18;
    v31 = v19;
    v32[0] = &v33;
    v32[1] = 0x400000000;
    v34[0] = v35;
    v34[1] = 0x400000000;
    v35[4] = v36;
    v35[5] = 0x400000000;
    v36[8] = 4;
    v36[9] = v37;
    v36[10] = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    v26[0] = v15;
    v26[1] = 0;
    v27 = v15;
    v28 = v14;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v39, v26);
    v21 = v39[0];
    v22 = v39[1];
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v32, (v16 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, 0, (v16 + 32) & 0xFFFFFFFFFFFFFFF9 | 2, v17);
    mlir::OperationState::addAttribute(&v30, "callee", 6, v12);
    llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v34, v21, 0, v21, v22);
    v23 = mlir::Operation::create(&v30);
    mlir::OpBuilder::insert((a2 + 8), v23);
    v24 = *(*(v23 + 6) + 16);
    mlir::OperationState::~OperationState(&v30);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    (*(*a2 + 8))(a2, a1, v25);
    result = 1;
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::func::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  v11 = mlir::StringAttr::get(*a1, v14, a3);
  mlir::OperationState::addAttribute(a2, "sym_name", 8, v11);
  v12 = *(*(*(a2 + 1) + 96) + 8);
  v13 = mlir::TypeAttr::get(a5);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v13);
  *(a2 + 24) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a6, &a6[16 * a7]);
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::func::CallIndirectOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v13, "res_attrs", 9, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<63ul>(v16, "' failed to satisfy constraint: Array of dictionary attributes");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::func::CallIndirectOp::getODSOperands(mlir::func::CallIndirectOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    byte_25D09F950[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    byte_25D09F950[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::func::CallIndirectOp::parse(uint64_t a1, uint64_t a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v24[0] = v25;
  v24[1] = 0x400000000;
  v16[1] = 1;
  v17 = 0;
  v16[0] = &v17;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0 || (v13[0] = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || (v6 = *(a2 + 8), v21 = a1, v22[0] = v13, v22[1] = a2, !mlir::func::CallIndirectOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallIndirectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v21)) || ((*(*a1 + 104))(a1) & 1) == 0 || (v21 = 0, !mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v21)))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v17 = v21;
  v15 = v21;
  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v9 = (*(v21 + 16) + 8 * *(v21 + 8));
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v9, &v9[8 * *(v21 + 12)]);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v16, v4, a2 + 16))
    {
      v10 = *(*v16[0] + 8);
      v21 = *(*v16[0] + 16);
      v22[0] = v10;
      v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(a1, v24, &v21, v5, a2 + 16);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = (*(*a1 + 16))(a1);
  v14 = 257;
  (*(*a1 + 24))(&v21, a1, v7, v13);
  if (v21)
  {
    mlir::Diagnostic::operator<<<41ul>(v22, "'callee' must be function type, but got ");
    if (v21)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v22, &v15);
    }
  }

  v8 = (v23 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
LABEL_17:
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  v19 = a3[1];
  v20 = v6;
  if (v19 == v6)
  {
    if (v6)
    {
      v8 = *a2;
      v9 = *a3;
      v10 = 32 * v6;
      while (((*(*a1 + 728))(a1, v8, *v9, a5) & 1) != 0)
      {
        v8 += 32;
        ++v9;
        v10 -= 32;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_6:
      v11 = 1;
    }
  }

  else
  {
    v18[16] = 257;
    (*(*a1 + 24))(&v21, a1, a4, v18);
    if (v21)
    {
      mlir::Diagnostic::operator<<<48ul>(v22, "number of operands and types do not match: got ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v21, &v20);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " operands and ");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v19);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<7ul>((v14 + 1), " types");
    }

    v11 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::func::CallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v10, "arg_attrs", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v13, "callee", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v16, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v19, "res_attrs", 9, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !a1[3])
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<64ul>(v13, "' failed to satisfy constraint: flat symbol reference attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "no_inline";
        v6[1] = 9;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<47ul>(v9, "' failed to satisfy constraint: unit attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::func::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v16 = 0;
  v17 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v14);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v18, v5))
  {
    goto LABEL_14;
  }

  if (v18)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 8) = v18;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v19, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v15 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v9 = *(a2 + 8), v14[0] = a1, v14[1] = &v15, v14[2] = a2, mlir::func::CallOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v14[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v14)))
  {
    v10 = *(v14[0] + 8);
    v16 = *(v14[0] + 16);
    v17 = v10;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v16 + 8 * v10), (v16 + 8 * v10 + 8 * *(v14[0] + 12)));
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, &v16, v8, a2 + 16);
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::func::ConstantOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::func::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  __src = v17;
  v16 = 0x100000000;
  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = *(a2 + 8);
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = a2;
  if (!mlir::func::ConstantOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12))
  {
    goto LABEL_11;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v12);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v14, v6))
  {
    goto LABEL_11;
  }

  if (v14)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
    *v8 = v14;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v16);
    v9 = 1;
  }

  else
  {
LABEL_11:
    v9 = 0;
  }

  if (__src != v17)
  {
    free(__src);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  *(result + 56) = v2[2];
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 72) = v7;
  *(result + 80) = v6;
  return result;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "function_type";
        v6[1] = 13;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<64ul>(v9, "' failed to satisfy constraint: type attribute of function type");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<49ul>(v13, "' failed to satisfy constraint: string attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::func::ReturnOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::func::ReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v11 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v8) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(v6);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "func.call_indirect", 0x12, a2, &mlir::detail::TypeIDResolver<mlir::func::CallIndirectOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E85F20;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::printAssembly(uint64_t a1, mlir::func::CallIndirectOp *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9)
  {
    v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
    if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
    {
      v7 = *(v4 + 64);
    }

    else
    {
      if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
      {
        goto LABEL_10;
      }

      v7 = *(v4 + 72);
    }

    v8 = v7 & 0xFFFFFFFFFFFFFF00;
    return v8 | v7;
  }

LABEL_10:
  LOBYTE(v7) = 0;
  v8 = 0;
  return v8 | v7;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
    v5 = *(a3 + 16);
    if (*v5 == 0x727474615F677261 && *(v5 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      *(v4 + 64) = v10;
    }

    else
    {
      v7 = *v5;
      v8 = *(v5 + 8);
      if (v7 == 0x727474615F736572 && v8 == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        *(v4 + 72) = v11;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "arg_attrs";
    v14 = 9;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "res_attrs";
    v14 = 9;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v23, a6);
    if (v23)
    {
      mlir::Diagnostic::operator<<<42ul>(v24, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v23, a6);
          if (!v23)
          {
            goto LABEL_4;
          }

          if (!v23)
          {
            goto LABEL_4;
          }

          v21 = 0;
          v22 = v16;
          goto LABEL_18;
        }

        a3[1] = v16;
      }
    }

    result = 1;
    goto LABEL_21;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  a5(&v23, a6);
  if (!v23)
  {
    goto LABEL_4;
  }

  if (!v23)
  {
    goto LABEL_4;
  }

  v21 = 0;
  v22 = v13;
LABEL_18:
  v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
  v18 = v25 + 24 * v26;
  v19 = *v17;
  *(v18 + 16) = *(v17 + 16);
  *v18 = v19;
  ++v26;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  result = 0;
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v20 = v22;
  v21 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v19 = 261;
    v17 = "arg_attrs";
    v18 = 9;
    v9 = mlir::StringAttr::get(v8, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v19 = 261;
    v17 = "res_attrs";
    v18 = 9;
    v12 = mlir::StringAttr::get(v11, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v12, v10);
  }

  v13 = v20;
  if (v21)
  {
    v14 = mlir::DictionaryAttr::get(v3, v20, v21);
    v13 = v20;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v22)
  {
    free(v13);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v11, 0, v11, v12, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 1);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable;
  v2[6] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgAttrsAttr;
  v2[7] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getResAttrsAttr;
  v2[8] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setArgAttrsAttr;
  v2[9] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setResAttrsAttr;
  v2[10] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::removeArgAttrsAttr;
  v2[11] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & 0xFFFFFFFFFFFFFFF8);
  v4 = *(a2 + 72);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    *v5 = *v4;
    if (v6)
    {
      *(v6 + 8) = v4[1];
    }
  }

  v4[3] = v3;
  v7 = *v3;
  *v4 = *v3;
  v4[1] = v3;
  if (v7)
  {
    *(v7 + 8) = v4;
  }

  *v3 = v4;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68) - 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 32;
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = ((*(a1 + 68) - 1) << 32) | 1;
  }

  else
  {
    v2 = 0xFFFFFFFF00000001;
  }

  *a2 = a1;
  a2[1] = v2;
  a2[2] = a2 + 4;
  *&result = 0x100000000;
  a2[3] = 0x100000000;
  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::func::CallIndirectOp *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v32[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::func::CallIndirectOp::getODSOperands(a2, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
  }

  else
  {
    *v11 = 40;
    ++*(v10 + 4);
  }

  v12 = mlir::func::CallIndirectOp::getODSOperands(a2, 1u);
  v14 = v13;
  v15 = (*(*a3 + 16))(a3);
  if (v14)
  {
    v16 = v15;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v17 = v14 - 1;
    if (v17)
    {
      v18 = (v12 + 56);
      do
      {
        v19 = *(v16 + 4);
        if (*(v16 + 3) - v19 > 1uLL)
        {
          *v19 = 8236;
          *(v16 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v20 = *v18;
        v18 += 4;
        (*(*a3 + 160))(a3, v20);
        --v17;
      }

      while (v17);
    }
  }

  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ")", 1uLL);
  }

  else
  {
    *v22 = 41;
    ++*(v21 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, 0);
  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
    ++*(v26 + 4);
  }

  v28 = (*(*a3 + 16))(a3);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = mlir::func::CallIndirectOp::getODSOperands(a2, 0);
  (*(*a3 + 32))(a3, *(*(v30 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    v4 = &a1[4 * ((a1[11] >> 23) & 1)];
    v5 = *(v4 + 8);
    v6 = *(v4 + 9);
    v45 = a1;
    if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v5, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45))
    {
      v45 = a1;
      if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v6, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45))
      {
        ODSOperands = mlir::func::CallIndirectOp::getODSOperands(a1, 0);
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = ODSOperands + 24;
          do
          {
            v12 = *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8;
            v42 = v10;
            if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
            {
              v41 = 261;
              v40[0] = "operand";
              v40[1] = 7;
              mlir::Operation::emitOpError(a1, v40, &v45);
              if (v45)
              {
                mlir::Diagnostic::operator<<<3ul>(v46, " #");
              }

              v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v45, &v42);
              v14 = v13;
              if (*v13)
              {
                mlir::Diagnostic::operator<<<33ul>((v13 + 1), " must be function type, but got ");
                if (*v14)
                {
                  v43 = 4;
                  v44 = v12;
                  v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v43, 1);
                  v16 = v14[3] + 24 * *(v14 + 8);
                  v17 = *v15;
                  *(v16 + 16) = *(v15 + 16);
                  *v16 = v17;
                  ++*(v14 + 8);
                }
              }

              v18 = *(v14 + 200);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
              if (v18)
              {
                goto LABEL_35;
              }
            }

            ++v10;
            v11 += 32;
          }

          while (v9 != v10);
        }

        v19 = a1[9];
        v20 = *(*(mlir::func::CallIndirectOp::getODSOperands(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v21 = *(v20 + 8);
        v22 = mlir::func::CallIndirectOp::getODSOperands(a1, 1u);
        if (v23 != v21)
        {
          goto LABEL_37;
        }

        if (v21)
        {
          v24 = 8 * v21;
          v25 = v22 + 24;
          v26 = *(v20 + 16);
          while (*v26 == (*(*v25 + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            ++v26;
            v25 += 32;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_21;
            }
          }

LABEL_37:
          v39 = "failed to verify that callee input types match argument types";
LABEL_39:
          v40[0] = v39;
          v41 = 259;
          mlir::Operation::emitOpError(a1, v40, &v45);
          v31 = v46[192] ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
          goto LABEL_36;
        }

LABEL_21:
        if (v19)
        {
          v27 = a1 - 4;
        }

        else
        {
          v27 = 0;
        }

        if (*(v20 + 12) != v19)
        {
LABEL_38:
          v39 = "failed to verify that callee result types match result types";
          goto LABEL_39;
        }

        if (!v19)
        {
          v31 = 1;
          goto LABEL_36;
        }

        v28 = 0;
        v29 = 8 * v19;
        v30 = v27;
        v31 = 1;
        while (1)
        {
          v32 = v27;
          if (v28)
          {
            v33 = *(a1 - 1) & 7;
            v34 = a1 - 4;
            v35 = v28;
            if (v33 == 6)
            {
              goto LABEL_31;
            }

            v36 = (5 - v33);
            v32 = v30;
            v35 = v28 - v36;
            if (v28 > v36)
            {
              break;
            }
          }

LABEL_32:
          if (*(*(v20 + 16) + 8 * v21 + 8 * v28) != (*(v32 + 1) & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_38;
          }

          ++v28;
          v30 -= 4;
          v29 -= 8;
          if (!v29)
          {
            goto LABEL_36;
          }
        }

        v34 = &v27[-4 * v36];
LABEL_31:
        v32 = &v34[-6 * v35];
        goto LABEL_32;
      }
    }
  }

LABEL_35:
  v31 = 0;
LABEL_36:
  v37 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "func.call", 9, a2, &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E85FE8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::func::CallOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 6)
  {
    if (*a3 != 1819042147 || *(a3 + 4) != 25957)
    {
      goto LABEL_21;
    }

    v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_24;
  }

  if (a4 == 9)
  {
    if (*a3 != 0x727474615F677261 || *(a3 + 8) != 115)
    {
      if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
      {
        v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_21;
        }

        v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      }
    }

LABEL_24:
    v9 = *v4;
    v10 = v9 & 0xFFFFFFFFFFFFFF00;
    v9 = v9;
    return v10 | v9;
  }

LABEL_21:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 6)
  {
    v12 = *v5;
    v13 = *(v5 + 2);
    if (v12 == 1819042147 && v13 == 25957)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (a4[3])
        {
          v15 = 0;
        }

        else
        {
          v15 = a4;
        }
      }

      else
      {
        v15 = 0;
      }

      v4[9] = v15;
    }
  }

  else if (v6 == 9)
  {
    if (*v5 == 0x727474615F677261 && *(v5 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v4[8] = v16;
    }

    else if (*v5 == 0x6E696C6E695F6F6ELL && *(v5 + 8) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v4[10] = v17;
    }

    else
    {
      v9 = *v5;
      v10 = *(v5 + 8);
      if (v9 == 0x727474615F736572 && v10 == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v4[11] = v18;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v21 = 261;
    v19 = "arg_attrs";
    v20 = 9;
    v9 = mlir::StringAttr::get(v8, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v21 = 261;
    v19 = "callee";
    v20 = 6;
    v12 = mlir::StringAttr::get(v11, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v21 = 261;
    v19 = "no_inline";
    v20 = 9;
    v15 = mlir::StringAttr::get(v14, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v21 = 261;
    v19 = "res_attrs";
    v20 = 9;
    v18 = mlir::StringAttr::get(v17, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }
}

double mlir::RegisteredOperationName::Model<mlir::func::CallOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v28, a6);
        if (!v28)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      *a3 = v14;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "callee", 6uLL);
  if (v17)
  {
    v14 = *(v16 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v14[3])
      {
        a5(&v28, a6);
        if (!v28)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }

      a3[1] = v14;
    }
  }

  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_inline", 9uLL);
  if ((v19 & 1) == 0 || (v14 = *(v18 + 8)) == 0)
  {
LABEL_29:
    v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v24)
    {
      v25 = *(v23 + 8);
      if (v25)
      {
        if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v28, a6);
          if (!v28)
          {
            goto LABEL_4;
          }

          if (!v28)
          {
            goto LABEL_4;
          }

          v26 = 0;
          v27 = v25;
          goto LABEL_27;
        }

        a3[3] = v25;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a3[2] = v14;
    goto LABEL_29;
  }

  a5(&v28, a6);
  if (!v28)
  {
    goto LABEL_4;
  }

LABEL_24:
  mlir::Diagnostic::operator<<<55ul>(v29, v15);
LABEL_25:
  if (v28)
  {
    v26 = 0;
    v27 = v14;
LABEL_27:
    v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
    v21 = v30 + 24 * v31;
    v22 = *v20;
    *(v21 + 16) = *(v20 + 16);
    *v21 = v22;
    ++v31;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  result = 0;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v26 = v28;
  v27 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v25 = 261;
    v23 = "arg_attrs";
    v24 = 9;
    v9 = mlir::StringAttr::get(v8, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v25 = 261;
    v23 = "callee";
    v24 = 6;
    v12 = mlir::StringAttr::get(v11, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v25 = 261;
    v23 = "no_inline";
    v24 = 9;
    v15 = mlir::StringAttr::get(v14, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v25 = 261;
    v23 = "res_attrs";
    v24 = 9;
    v18 = mlir::StringAttr::get(v17, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v18, v16);
  }

  v19 = v26;
  if (v27)
  {
    v20 = mlir::DictionaryAttr::get(v3, v26, v27);
    v19 = v26;
  }

  else
  {
    v20 = 0;
  }

  if (v19 != v28)
  {
    free(v19);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::CallOp>::copyProperties(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hashProperties(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v17 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[3];
  v8 = 8 * a2[2] - 0xAE502812AA7333;
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ ((0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ HIDWORD(a2[2]))));
  v15 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = HIDWORD(v7);
  v11 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v18, 0, v18, v19, &v17, &v16, &v15, &v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  v5 = v4[11];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x800408F261F10uLL);
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable;
  v2[6] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgAttrsAttr;
  v2[7] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getResAttrsAttr;
  v2[8] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setArgAttrsAttr;
  v2[9] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setResAttrsAttr;
  v2[10] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::removeArgAttrsAttr;
  v2[11] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "callee", 6uLL);
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return result & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  result = *(a2 + 72);
  v3 = *(a2 + 68);
  return result;
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::verifySymbolUses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "callee", 6uLL);
  if (!Attr || (v7 = Attr, *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id) || Attr[3])
  {
    v8 = "requires a 'callee' symbol reference attribute";
LABEL_5:
    v39[0] = v8;
    v40 = 259;
    mlir::Operation::emitOpError(a2, v39, &v41);
LABEL_6:
    v9 = v43;
LABEL_7:
    v10 = v9 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    goto LABEL_8;
  }

  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, v6);
  if (!NearestSymbolTable || (v14 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v7)) == 0 || *(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v38 = 257;
    mlir::Operation::emitOpError(a2, v37, &v41);
    if (v41)
    {
      mlir::Diagnostic::operator<<<2ul>(v42, "'");
      if (v41)
      {
        v15 = *(v7[1] + 16);
        v16 = *(v7[1] + 24);
        v40 = 261;
        v39[0] = v15;
        v39[1] = v16;
        mlir::Diagnostic::operator<<(v42, v39);
        if (v41)
        {
          mlir::Diagnostic::operator<<<38ul>(v42, "' does not reference a valid function");
        }
      }
    }

    goto LABEL_6;
  }

  v17 = *(*(v14 + 16 * ((*(v14 + 44) >> 23) & 1) + 72) + 8);
  v18 = *(v17 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v19 = *(a2 + 68);
  }

  else
  {
    v19 = 0;
  }

  if (v18 != v19)
  {
    v8 = "incorrect number of operands for callee";
    goto LABEL_5;
  }

  if (v18)
  {
    v20 = *(a2 + 72);
    v21 = *(v17 + 16);
    if (*v21 != (*(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v22 = 0;
      v23 = 0;
LABEL_27:
      v36 = v22;
      v39[0] = "operand type mismatch: expected operand type ";
      v40 = 259;
      mlir::Operation::emitOpError(a2, v39, &v41);
      v37[0] = *(*(v17 + 16) + 8 * v23);
      if (v41 && (mlir::Diagnostic::operator<<<mlir::Type>(v42, v37), v41))
      {
        mlir::Diagnostic::operator<<<16ul>(v42, ", but provided ");
        v35 = *(*(*(a2 + 72) + 32 * v23 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v41)
        {
          mlir::Diagnostic::operator<<<mlir::Type>(v42, &v35);
          if (v41)
          {
            mlir::Diagnostic::operator<<<21ul>(v42, " for operand number ");
          }
        }
      }

      else
      {
        v35 = *(*(*(a2 + 72) + 32 * v23 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v41, &v36) + 200);
      goto LABEL_7;
    }

    v23 = 0;
    v24 = v21 + 1;
    v25 = (v20 + 56);
    while (v18 - 1 != v23)
    {
      v26 = *v25;
      v25 += 4;
      v27 = v24[v23++];
      if (v27 != (*(v26 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        v22 = v23;
        goto LABEL_27;
      }
    }
  }

  v28 = *(v17 + 12);
  if (v28 != *(a2 + 36))
  {
    v8 = "incorrect number of results for callee";
    goto LABEL_5;
  }

  if (v28)
  {
    v29 = 0;
    v30 = *(v17 + 16) + 8 * v18;
    v31 = a2 + 24;
    v32 = a2 - 16;
    do
    {
      if (v29 >= 6)
      {
        v33 = v31;
      }

      else
      {
        v33 = v32;
      }

      if (*(v30 + 8 * v29) != (*(v33 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        LODWORD(v35) = v29;
        v37[0] = "result type mismatch at index ";
        v38 = 259;
        mlir::Operation::emitOpError(a2, v37, v39);
        v34 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v39, &v35);
        mlir::InFlightDiagnostic::InFlightDiagnostic(&v41, v34);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
        mlir::Diagnostic::attachNote(v42, 0, 0);
      }

      ++v29;
      v32 -= 16;
      v31 -= 24;
    }

    while (v28 != v29);
  }

  v10 = 1;
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[189];
}

uint64_t llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>();
    unk_27FC19600 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::MemRefsNormalizable<Empty>]";
  v6 = 103;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v37[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*a3 + 16))(a3);
  if (v11)
  {
    v14 = v13;
    (*(*a3 + 160))(a3, *(v12 + 24));
    v15 = v11 - 1;
    if (v15)
    {
      v16 = (v12 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a3 + 160))(a3, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v35 = v37;
  v36 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v35, "callee", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, v36);
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

  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++*(v24 + 4);
  }

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v28 = *(a2 + 68);
    v29 = *(a2 + 72);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v34[0] = v29;
  v34[1] = 0;
  v34[2] = v29;
  v34[3] = v28;
  v30 = *(a2 + 36);
  v31 = a2 - 16;
  if (!v30)
  {
    v31 = 0;
  }

  v33[0] = v31;
  v33[1] = 0;
  v33[2] = v31;
  v33[3] = v30;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a3, v34, v33);
  if (v35 != v37)
  {
    free(v35);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_8;
  }

  v4 = &a1[4 * ((a1[11] >> 23) & 1)];
  v7 = *(v4 + 8);
  v5 = *(v4 + 9);
  v6 = v4 + 16;
  if (!v5)
  {
    v13 = "requires attribute 'callee'";
    v14 = 259;
    mlir::Operation::emitOpError(a1, &v13, v15);
    v10 = v16 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    goto LABEL_9;
  }

  v8 = *(v6 + 2);
  v9 = *(v6 + 3);
  v15[0] = a1;
  if (mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v5, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) && (v15[0] = a1, mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v7, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15)) && (v15[0] = a1, mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v9, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15)))
  {
    v15[0] = a1;
    v10 = mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15);
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "func.constant", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E860B0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1970037110 && v6 == 101)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (a4[3])
        {
          v8 = 0;
        }

        else
        {
          v8 = a4;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v12[3])
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_14;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "value";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::verifySymbolUses;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::verifySymbolUses(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(a2 - 8);
  v9 = *(***(a2 + 24) + 32);
  v23 = 261;
  v21 = v6;
  v22[0] = v7;
  v10 = mlir::StringAttr::get(v9, &v21, a3);
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a2, v11);
  if (!NearestSymbolTable || (v13 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v10)) == 0 || *(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v18 = 257;
    mlir::Operation::emitOpError(a2, v17, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<34ul>(v22, "reference to undefined function '");
      if (v21)
      {
        v20 = 261;
        v19[0] = v6;
        v19[1] = v7;
        mlir::Diagnostic::operator<<(v22, v19);
        if (v21)
        {
          mlir::Diagnostic::operator<<<2ul>(v22, "'");
        }
      }
    }

    goto LABEL_11;
  }

  if ((v8 & 0xFFFFFFFFFFFFFFF8) != *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 72) + 8))
  {
    v19[0] = "reference to function with mismatched type";
    v20 = 259;
    mlir::Operation::emitOpError(a2, v19, &v21);
LABEL_11:
    v14 = v24 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    goto LABEL_12;
  }

  v14 = 1;
LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5 < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v5 & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[12] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v30[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v28 = v30;
  v29 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v28, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v28, v29);
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

  (*(*a3 + 48))(a3, *&a2[4 * ((a2[11] >> 23) & 1) + 16]);
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

  v16 = a2[9];
  if (v16)
  {
    v17 = a2 - 4;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    (*(*a3 + 32))(a3, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v16 != 1)
    {
      v18 = v17 - 4;
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

        v22 = *(a2 - 1) & 7;
        v23 = v17;
        v24 = v19;
        if (v22 == 6)
        {
          goto LABEL_25;
        }

        v25 = (5 - v22);
        v26 = v18;
        v24 = v19 - v25;
        if (v19 > v25)
        {
          break;
        }

LABEL_26:
        (*(*a3 + 32))(a3, *(v26 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v19;
        v18 -= 4;
        if (v16 == v19)
        {
          goto LABEL_27;
        }
      }

      v23 = &v17[-4 * v25];
LABEL_25:
      v26 = &v23[-6 * v24];
      goto LABEL_26;
    }
  }

LABEL_27:
  if (v28 != v30)
  {
    free(v28);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v6 = *&a1[4 * ((a1[11] >> 23) & 1) + 16];
    if (v6)
    {
      v12[0] = a1;
      v7 = mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12);
    }

    else
    {
      v10 = "requires attribute 'value'";
      v11 = 259;
      mlir::Operation::emitOpError(a1, &v10, v12);
      v7 = v13 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "func.func", 9, a2, &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86178;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 > 12)
  {
    if (a4 == 13)
    {
      if (*a3 != 0x6E6F6974636E7566 || *(a3 + 5) != 0x657079745F6E6F69)
      {
        goto LABEL_32;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      goto LABEL_35;
    }

    v6 = 0;
    if (a4 == 14)
    {
      if (*a3 != 0x697369765F6D7973 || *(a3 + 6) != 0x7974696C69626973)
      {
        goto LABEL_32;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      goto LABEL_35;
    }
  }

  else
  {
    if (a4 == 8)
    {
      if (*a3 != 0x656D616E5F6D7973)
      {
LABEL_32:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
LABEL_35:
      v12 = *v5;
      v6 = v12 & 0xFFFFFFFFFFFFFF00;
      v4 = v12;
      return v6 | v4;
    }

    v6 = 0;
    if (a4 == 9)
    {
      if (*a3 != 0x727474615F677261 || *(a3 + 8) != 115)
      {
        if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
        {
          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
        }

        else
        {
          if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
          {
            goto LABEL_32;
          }

          v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
        }
      }

      goto LABEL_35;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 > 12)
  {
    if (v6 == 13)
    {
      v17 = *v5;
      v18 = *(v5 + 5);
      if (v17 == 0x6E6F6974636E7566 && v18 == 0x657079745F6E6F69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

        v4[9] = v20;
      }
    }

    else if (v6 == 14)
    {
      v13 = *v5;
      v14 = *(v5 + 6);
      if (v13 == 0x697369765F6D7973 && v14 == 0x7974696C69626973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v4[13] = v22;
      }
    }
  }

  else if (v6 == 8)
  {
    if (*v5 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v4[12] = v16;
    }
  }

  else if (v6 == 9)
  {
    if (*v5 == 0x727474615F677261 && *(v5 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

      v4[8] = v21;
    }

    else if (*v5 == 0x6E696C6E695F6F6ELL && *(v5 + 8) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

      v4[10] = v23;
    }

    else
    {
      v9 = *v5;
      v10 = *(v5 + 8);
      if (v9 == 0x727474615F736572 && v10 == 115)
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
        }

        else
        {
          v12 = 0;
        }

        v4[11] = v12;
      }
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "arg_attrs";
    v26 = 9;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "function_type";
    v26 = 13;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "no_inline";
    v26 = 9;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "res_attrs";
    v26 = 9;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v27 = 261;
    v25 = "sym_name";
    v26 = 8;
    v21 = mlir::StringAttr::get(v20, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v27 = 261;
    v25 = "sym_visibility";
    v26 = 14;
    v24 = mlir::StringAttr::get(v23, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  if (v10)
  {
    v11 = v9[1];
    if (v11)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v11, "arg_attrs", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
  if (v13)
  {
    v14 = v12[1];
    if (v14)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(v14, a4, a5))
      {
        return 0;
      }
    }
  }

  v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
  if (v16)
  {
    v17 = v15[1];
    if (v17)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v17, a4, a5))
      {
        return 0;
      }
    }
  }

  v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
  if (v19)
  {
    v20 = v18[1];
    if (v20)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v20, "res_attrs", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
  if (v22)
  {
    v23 = v21[1];
    if (v23)
    {
      if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v23, "sym_name", 8, a4, a5))
      {
        return 0;
      }
    }
  }

  v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
  return (v25 & 1) == 0 || (v26 = v24[1]) == 0 || mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v26, "sym_visibility", 14, a4, a5);
}

double mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v32, a6);
    if (v32)
    {
      mlir::Diagnostic::operator<<<42ul>(v33, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v32, a6);
        if (v32)
        {
LABEL_29:
          mlir::Diagnostic::operator<<<55ul>(v33, v15);
LABEL_30:
          if (v32)
          {
            LODWORD(v31[0]) = 0;
            v31[1] = v14;
            v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, v31, 1);
            v23 = v34 + 24 * v35;
            v24 = *v22;
            *(v23 + 16) = *(v22 + 16);
            *v23 = v24;
            ++v35;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a3 = v14;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "function_type", 0xDuLL);
  if (v17)
  {
    v14 = *(v16 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a5(&v32, a6);
        if (v32)
        {
          goto LABEL_30;
        }

        goto LABEL_4;
      }

      a3[1] = v14;
    }
  }

  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_inline", 9uLL);
  if ((v19 & 1) == 0 || (v14 = *(v18 + 8)) == 0)
  {
LABEL_24:
    v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v21)
    {
      v14 = *(v20 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v32, a6);
          if (v32)
          {
            goto LABEL_29;
          }

          goto LABEL_4;
        }

        a3[3] = v14;
      }
    }

    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v26)
    {
      v27 = *(v25 + 8);
      v31[0] = v27;
      if (v27)
      {
        if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v32, a6);
          if (!v32)
          {
            goto LABEL_4;
          }

LABEL_44:
          if (v32)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v33, v31);
          }

          goto LABEL_4;
        }

        a3[4] = v27;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_visibility", 0xEuLL);
    if (v29)
    {
      v30 = *(v28 + 8);
      v31[0] = v30;
      if (v30)
      {
        if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v32, a6);
          if (!v32)
          {
            goto LABEL_4;
          }

          goto LABEL_44;
        }

        a3[5] = v30;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a3[2] = v14;
    goto LABEL_24;
  }

  a5(&v32, a6);
  if (v32)
  {
    goto LABEL_29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  result = 0;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v32 = v34;
  v33 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v31 = 261;
    v29 = "arg_attrs";
    v30 = 9;
    v9 = mlir::StringAttr::get(v8, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v31 = 261;
    v29 = "function_type";
    v30 = 13;
    v12 = mlir::StringAttr::get(v11, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v31 = 261;
    v29 = "no_inline";
    v30 = 9;
    v15 = mlir::StringAttr::get(v14, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v31 = 261;
    v29 = "res_attrs";
    v30 = 9;
    v18 = mlir::StringAttr::get(v17, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v31 = 261;
    v29 = "sym_name";
    v30 = 8;
    v21 = mlir::StringAttr::get(v20, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v31 = 261;
    v29 = "sym_visibility";
    v30 = 14;
    v24 = mlir::StringAttr::get(v23, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v24, v22);
  }

  v25 = v32;
  if (v33)
  {
    v26 = mlir::DictionaryAttr::get(v3, v32, v33);
    v25 = v32;
  }

  else
  {
    v26 = 0;
  }

  if (v25 != v34)
  {
    free(v25);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::hashProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v24 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v22 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[5];
  v14 = 8 * a2[4] - 0xAE502812AA7333;
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[4]) ^ ((0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))));
  v20 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v19 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v25, 0, v25, v26, &v24, &v23, &v22, &v21, &v20, &v19);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(mlir::detail::InterfaceMap *a1@<X8>)
{
  *a1 = a1 + 16;
  *(a1 + 1) = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 16))(a3, v4[12]);
  v5 = v4[13];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isDeclaration;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeResAttrsAttr;
  v3 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

unint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion(uint64_t a1, uint64_t a2)
{
  v2 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v2 == v2)
  {
    return 0;
  }

  else
  {
    return ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) + 8);
  result = *(v2 + 16);
  v4 = *(v2 + 8);
  return result;
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) + 8);
  v3 = *(v2 + 12);
  return *(v2 + 16) + 8 * *(v2 + 8);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(mlir::detail::InterfaceMap *a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getFunctionType;
  *(v2 + 1) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setFunctionTypeAttr;
  *(v2 + 2) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith;
  *(v2 + 3) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyBody;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  *(v2 + 4) = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyType;
  mlir::detail::FunctionOpInterfaceInterfaceTraits::Concept::initializeInterfaceConcept(v2, a1);
  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(***(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) + 8) + 32);
  *&v10 = a3;
  *(&v10 + 1) = a4;
  *&v9 = a5;
  *(&v9 + 1) = a6;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v6, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::verifyBody(unsigned int *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1[11];
  v2 = &a1[4 * ((v1 >> 23) & 1) + 16];
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  if (*v3 != v3)
  {
    v4 = *(*(v2 + 8) + 8);
    v5 = *(v4 + 16);
    v6 = *(v4 + 8);
    v7 = v3[1];
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v25 = v6;
    v10 = v8 + 48;
    v9 = *(v8 + 48);
    if (v6 == ((*(v10 + 8) - v9) >> 3))
    {
      if (!v6)
      {
LABEL_10:
        v13 = 1;
LABEL_15:
        result = v13 & 1;
        goto LABEL_16;
      }

      v11 = 0;
      while (1)
      {
        v12 = *(*(v9 + 8 * v11) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(v5 + 8 * v11) != v12)
        {
          break;
        }

        if (v6 == ++v11)
        {
          goto LABEL_10;
        }
      }

      v24 = v11;
      v22 = "type of entry block argument #";
      v23 = 259;
      mlir::Operation::emitOpError(a1, &v22, v28);
      v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v28, &v24);
      v16 = v18;
      if (*v18)
      {
        v27 = 264;
        LOBYTE(v26[0]) = 40;
        mlir::Diagnostic::operator<<((v18 + 1), v26);
        if (*v16)
        {
          LODWORD(v26[0]) = 4;
          v26[1] = v12;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), v26, 1);
          v20 = v16[3] + 24 * *(v16 + 8);
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++*(v16 + 8);
          if (*v16)
          {
            mlir::Diagnostic::operator<<<56ul>((v16 + 1), ") must match the type of the corresponding argument in ");
            if (*v16)
            {
              mlir::Diagnostic::operator<<<20ul>((v16 + 1), "function signature(");
              if (*v16)
              {
                mlir::Diagnostic::operator<<<mlir::Type const&>((v16 + 1), (v5 + 8 * v24));
                if (*v16)
                {
                  v27 = 264;
                  LOBYTE(v26[0]) = 41;
                  mlir::Diagnostic::operator<<((v16 + 1), v26);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v26[0] = "entry block must have ";
      v27 = 259;
      mlir::Operation::emitOpError(a1, v26, v28);
      v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v28, &v25);
      v16 = v15;
      if (*v15)
      {
        mlir::Diagnostic::operator<<<39ul>((v15 + 1), " arguments to match function signature");
      }
    }

    v13 = *(v16 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    goto LABEL_15;
  }

  result = 1;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[12] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[204];
}

uint64_t llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>();
    *algn_27FC19678 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AutomaticAllocationScope<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v8 = *(*(a2 + 48) + 96);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = v8[3];

  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, v11, v12, v9, v13);
}

uint64_t mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    goto LABEL_28;
  }

  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *(v6 + 8);
  if (!v7)
  {
    v14 = "requires attribute 'function_type'";
    goto LABEL_16;
  }

  v8 = *(v6 + 32);
  if (!v8)
  {
    v14 = "requires attribute 'sym_name'";
LABEL_16:
    v27[0] = v14;
    v28 = 259;
    mlir::Operation::emitOpError(a1, v27, v29);
    v15 = v30;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  v9 = *v6;
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  v12 = *(v6 + 40);
  v29[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v8, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    goto LABEL_28;
  }

  v29[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    goto LABEL_28;
  }

  v29[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v12, "sym_visibility", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    goto LABEL_28;
  }

  v29[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v9, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    goto LABEL_28;
  }

  v29[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v11, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    goto LABEL_28;
  }

  v29[0] = a1;
  if (!mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v29))
  {
    goto LABEL_28;
  }

LABEL_17:
  if (mlir::detail::verifySymbol(a1, v13))
  {
    v17 = (((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    if (*v17 == v17 && !mlir::SymbolTable::getSymbolVisibility(a1, v16))
    {
      v22 = "symbol declaration cannot have public visibility";
    }

    else
    {
      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_30;
      }

      v19 = *(v18 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v19)
      {
        goto LABEL_30;
      }

      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
      if (((*(**(v20 + 48) + 32))(*(v20 + 48), v21) & 1) != 0 || *(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_30;
      }

      v22 = "symbol's parent must have the SymbolTable trait";
    }

    v27[0] = v22;
    v28 = 259;
    mlir::Operation::emitOpError(a1, v27, v29);
    v23 = v30;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
    if (v23)
    {
      goto LABEL_28;
    }

LABEL_30:
    v24 = mlir::function_interface_impl::verifyTrait<mlir::func::FuncOp>(a1);
    goto LABEL_29;
  }

LABEL_28:
  v24 = 0;
LABEL_29:
  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::func::FuncOp>(mlir::Operation *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = this + 64;
  v3 = *(this + 11);
  v4 = (v3 >> 23) & 1;
  v5 = *(this + 2 * v4 + 8);
  if (v5)
  {
    v44 = *(*(*&v2[16 * v4 + 8] + 8) + 8);
    if (*(v5 + 16) != v44)
    {
      v43 = 257;
      mlir::Operation::emitOpError(this, v42, &v45);
      if (v45)
      {
        mlir::Diagnostic::operator<<<111ul>(v46, "expects argument attribute array to have the same number of elements as the number of function arguments, got ");
      }

      goto LABEL_45;
    }

    if (v44)
    {
      v6 = 0;
      while (1)
      {
        v7 = v6;
        v8 = *(*(v5 + 8) + 8 * v6);
        if (!v8 || *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          break;
        }

        v9 = v8[2];
        if (v9)
        {
          v10 = v8[1];
          v11 = &v10[2 * v9];
          while (1)
          {
            v12 = *v10;
            v13 = *(*v10 + 24);
            if (!v13)
            {
              break;
            }

            v14 = v10[1];
            v15 = *(v12 + 16);
            v16 = memchr(v15, 46, v13);
            if (!v16 || v16 - v15 == -1)
            {
              break;
            }

            v18 = *(v12 + 32);
            if (v18 && ((*(*v18 + 80))(v18, this, 0, v7, v12, v14) & 1) == 0)
            {
LABEL_56:
              v39 = 0;
              goto LABEL_54;
            }

            v10 += 2;
            if (v10 == v11)
            {
              goto LABEL_17;
            }
          }

          v37 = "arguments may only have dialect attributes";
LABEL_51:
          v42[0] = v37;
          v43 = 259;
          mlir::Operation::emitOpError(this, v42, &v45);
          goto LABEL_52;
        }

LABEL_17:
        v6 = v7 + 1;
        if (v7 + 1 == v44)
        {
          v3 = *(this + 11);
          v4 = (v3 >> 23) & 1;
          goto LABEL_19;
        }
      }

      v43 = 257;
      mlir::Operation::emitOpError(this, v42, &v45);
      if (!v45)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }
  }

LABEL_19:
  v5 = *&v2[16 * v4 + 24];
  if (!v5)
  {
    goto LABEL_37;
  }

  v19 = *(*(*&v2[16 * ((v3 >> 23) & 1) + 8] + 8) + 12);
  v44 = v19;
  if (*(v5 + 16) != v19)
  {
    v43 = 257;
    mlir::Operation::emitOpError(this, v42, &v45);
    if (v45)
    {
      mlir::Diagnostic::operator<<<107ul>(v46, "expects result attribute array to have the same number of elements as the number of function results, got ");
    }

LABEL_45:
    v41 = *(v5 + 16);
    v34 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v45, &v41);
    v35 = v34;
    if (*v34)
    {
      mlir::Diagnostic::operator<<<16ul>((v34 + 1), ", but expected ");
    }

    v36 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(v35, &v44) + 200);
LABEL_53:
    v39 = v36 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
LABEL_54:
    v38 = v39 & 1;
    goto LABEL_55;
  }

  if (v19)
  {
    v20 = 0;
    while (1)
    {
      v7 = v20;
      v21 = *(*(v5 + 8) + 8 * v20);
      if (!v21 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        break;
      }

      v22 = v21[2];
      if (v22)
      {
        v23 = v21[1];
        v24 = &v23[2 * v22];
        while (1)
        {
          v25 = *v23;
          v26 = *(*v23 + 24);
          if (!v26)
          {
            break;
          }

          v27 = v23[1];
          v28 = *(v25 + 16);
          v29 = memchr(v28, 46, v26);
          if (!v29 || v29 - v28 == -1)
          {
            break;
          }

          v31 = *(v25 + 32);
          if (v31 && ((*(*v31 + 88))(v31, this, 0, v7, v25, v27) & 1) == 0)
          {
            goto LABEL_56;
          }

          v23 += 2;
          if (v23 == v24)
          {
            goto LABEL_35;
          }
        }

        v37 = "results may only have dialect attributes";
        goto LABEL_51;
      }

LABEL_35:
      v20 = v7 + 1;
      if (v7 + 1 == v19)
      {
        LODWORD(v3) = *(this + 11);
        goto LABEL_37;
      }
    }

    v43 = 257;
    mlir::Operation::emitOpError(this, v42, &v45);
    if (!v45)
    {
      goto LABEL_52;
    }

LABEL_61:
    v41 = *(*(v5 + 8) + 8 * v7);
    if (v45)
    {
      mlir::Diagnostic::operator<<<mlir::Attribute>(v46, &v41);
      if (v45)
      {
      }
    }

LABEL_52:
    v36 = v47;
    goto LABEL_53;
  }

LABEL_37:
  if ((v3 & 0x7FFFFF) != 1)
  {
    v42[0] = "expects one region";
    v43 = 259;
    mlir::Operation::emitOpError(this, v42, &v45);
    v38 = (v47 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
LABEL_55:
    v40 = *MEMORY[0x277D85DE8];
    return v38;
  }

  v32 = *MEMORY[0x277D85DE8];

  return mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::verifyBody(this);
}

void *mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "func.return", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E86240;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands;
  v2[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[13] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1EFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EFF0))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>();
    _MergedGlobals_31 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC1EFF0);
  }

  v11[4] = _MergedGlobals_31;
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v11[10] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v11[12] = v3;
  do
  {
    v5 = v11[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1F008, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F008))
  {
    qword_27FC1EFF8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>();
    unk_27FC1F000 = v1;
    __cxa_guard_release(&qword_27FC1F008);
  }

  return qword_27FC1EFF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<Empty>]";
  v6 = 119;
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

__guard mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[221];
}

uint64_t llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>();
    unk_27FC19700 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ReturnLike<Empty>]";
  v6 = 94;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
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

uint64_t mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_18;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v49 = 257;
    mlir::Operation::emitOpError(a1, v48, &v53);
    if (v53)
    {
      mlir::Diagnostic::operator<<<19ul>(v54, "expects parent op ");
      if (v53)
      {
        v50 = "'";
        v52 = 259;
        mlir::Diagnostic::operator<<(v54, &v50);
        if (v53)
        {
          v52 = 262;
          v50 = "func.func";
          v51 = 9;
          mlir::Diagnostic::operator<<(v54, &v50);
          if (v53)
          {
            mlir::Diagnostic::operator<<<2ul>(v54, "'");
          }
        }
      }
    }

    v9 = v57;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
    if (v9)
    {
      goto LABEL_18;
    }
  }

  if (mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    v10 = *(a1 + 16);
    if (v10 && (v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v12 = 0;
    }

    v16 = *(*(v12 + 16 * ((*(v12 + 44) >> 23) & 1) + 72) + 8);
    v17 = *(v16 + 12);
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v18 = *(a1 + 68);
    }

    else
    {
      v18 = 0;
    }

    if (v18 != v17)
    {
      v48[0] = "has ";
      v49 = 259;
      mlir::Operation::emitOpError(a1, v48, &v53);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v22 = *(a1 + 68);
      }

      else
      {
        v22 = 0;
      }

      if (v53)
      {
        LODWORD(v50) = 5;
        v51 = v22;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v50, 1);
        v24 = v55 + 24 * v56;
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++v56;
        if (v53)
        {
          mlir::Diagnostic::operator<<<37ul>(v54, " operands, but enclosing function (@");
        }
      }

      Attr = mlir::Operation::getAttr(v12, "sym_name", 8uLL);
      if (Attr)
      {
        if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v27 = Attr;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      if (v53)
      {
        v30 = v27 + 16;
        v28 = *(v27 + 16);
        v29 = *(v30 + 8);
        v52 = 261;
        v50 = v28;
        v51 = v29;
        mlir::Diagnostic::operator<<(v54, &v50);
        if (v53)
        {
          mlir::Diagnostic::operator<<<11ul>(v54, ") returns ");
        }
      }

      v50 = v17;
      v31 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(&v53, &v50) + 200);
LABEL_60:
      v13 = v31 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
      goto LABEL_19;
    }

    if (v17)
    {
      v19 = 0;
      v20 = *(v16 + 16) + 8 * *(v16 + 8);
      v21 = *(a1 + 72) + 24;
      while (*(v20 + 8 * v19) == (*(*v21 + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        ++v19;
        v21 += 32;
        if (v17 == v19)
        {
          goto LABEL_28;
        }
      }

      v47 = v19;
      v49 = 257;
      mlir::Operation::emitError(&v53, a1, v48);
      if (v53)
      {
        mlir::Diagnostic::operator<<<24ul>(v54, "type of return operand ");
      }

      v32 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v53, &v47);
      v33 = v32;
      if (*v32)
      {
        mlir::Diagnostic::operator<<<3ul>((v32 + 1), " (");
        if (*v33)
        {
          v34 = *(*(*(a1 + 72) + 32 * v47 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          LODWORD(v50) = 4;
          v51 = v34;
          v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v33 + 3), &v50, 1);
          v36 = v33[3] + 24 * *(v33 + 8);
          v37 = *v35;
          *(v36 + 16) = *(v35 + 16);
          *v36 = v37;
          ++*(v33 + 8);
          if (*v33)
          {
            mlir::Diagnostic::operator<<<39ul>((v33 + 1), ") doesn't match function result type (");
            if (*v33)
            {
              v38 = *(v20 + 8 * v47);
              LODWORD(v50) = 4;
              v51 = v38;
              v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v33 + 3), &v50, 1);
              v40 = v33[3] + 24 * *(v33 + 8);
              v41 = *v39;
              *(v40 + 16) = *(v39 + 16);
              *v40 = v41;
              ++*(v33 + 8);
              if (*v33)
              {
                mlir::Diagnostic::operator<<<2ul>((v33 + 1), ")");
                if (*v33)
                {
                  mlir::Diagnostic::operator<<<15ul>((v33 + 1), " in function @");
                }
              }
            }
          }
        }
      }

      v42 = mlir::Operation::getAttr(v12, "sym_name", 8uLL);
      if (v42)
      {
        if (*(*v42 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }

      if (*v33)
      {
        v46 = v43 + 16;
        v44 = *(v43 + 16);
        v45 = *(v46 + 8);
        v52 = 261;
        v50 = v44;
        v51 = v45;
        mlir::Diagnostic::operator<<((v33 + 1), &v50);
      }

      v31 = *(v33 + 200);
      goto LABEL_60;
    }

LABEL_28:
    v13 = 1;
  }

  else
  {
LABEL_18:
    v13 = 0;
  }

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::InsertIntoBucketImpl<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, v10);
    v7 = result;
    *result = *a2;
    *(result + 8) = a2[1];
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((v6 >> 4) ^ (v6 >> 9) | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    if (*a2 == *v11 && v6 == v13)
    {
      result = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v12 != -4096 || v13 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 == -8192;
        }

        if (v18 && v12 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v12 = *v11;
        v13 = v11[1];
        if (v5 == *v11 && v6 == v13)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_9:
  *a3 = v11;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::InsertIntoBucketImpl<std::pair<mlir::TypeID,mlir::TypeID>>(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_8;
  }

  if (v6 + ~v5 - *(a1 + 12) <= v6 >> 3)
  {
LABEL_8:
    llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(a1, v6);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, &v8);
    v5 = *(a1 + 8);
    a3 = v8;
  }

  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096 || a3[1] != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    memset_pattern16(buffer, &unk_25D0A07E0, 16 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_25D0A07E0, 16 * v6);
  }

  while (a2 != a3)
  {
    v7 = a2[1];
    if ((*a2 != -4096 || v7 != -4096) && (*a2 != -8192 || v7 != -8192))
    {
      v9 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::LookupBucketFor<std::pair<mlir::TypeID,mlir::TypeID>>(a1, a2, &v9);
      v8 = v9;
      *v9 = *a2;
      v8[1] = a2[1];
      ++*(a1 + 8);
    }

    a2 += 2;
  }
}