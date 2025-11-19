uint64_t *mlir::Liveness::getLiveness(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = (v2 + 336 * v4);
  v6 = *v5;
  if (*v5 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v4 + v8++;
      v4 = v9 & (v3 - 1);
      v5 = (v2 + 336 * v4);
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == (v2 + 336 * v3))
  {
    return 0;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t mlir::LivenessBlockInfo::getStartOperation(uint64_t a1, void *a2)
{
  v15 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v15);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = a1 + 8;
  if (v5 == v4)
  {
    v10 = *(a1 + 28);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v4 != v15)
      {
        ++v4;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v4 = &v5[v10];
    }

    v8 = *(a1 + 16);
  }

  else
  {
    v7 = DefiningOp;
    v4 = llvm::SmallPtrSetImplBase::doFind((a1 + 8), v15);
    v5 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (!v4)
    {
      v9 = 16;
      if (v8 == v5)
      {
        v9 = 20;
      }

      v4 = &v8[*(v6 + v9)];
    }

    DefiningOp = v7;
  }

  v13 = v8 == v5;
  v12 = 16;
  if (v13)
  {
    v12 = 20;
  }

  v13 = v4 != &v8[*(v6 + v12)] || DefiningOp == 0;
  if (v13)
  {
    return llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(*a1 + 40));
  }

  return DefiningOp;
}

uint64_t mlir::LivenessBlockInfo::getEndOperation(uint64_t a1, uint64_t **a2, mlir::Operation *a3)
{
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = (a1 + 168);
  if (v8 == v7)
  {
    v12 = *(a1 + 188);
    if (v12)
    {
      v13 = 8 * v12;
      while (*v7 != a2)
      {
        ++v7;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = &v8[v12];
    }

    v10 = v8;
  }

  else
  {
    v7 = llvm::SmallPtrSetImplBase::doFind(v9, a2);
    v8 = *(a1 + 168);
    v10 = *(a1 + 176);
    if (!v7)
    {
      v11 = 16;
      if (v10 == v8)
      {
        v11 = 20;
      }

      v7 = &v10[*(v9 + v11)];
    }
  }

  v14 = v10 == v8;
  v15 = 16;
  if (v14)
  {
    v15 = 20;
  }

  if (v7 == &v10[*(v9 + v15)])
  {
    v18 = *a2;
    if (*a2)
    {
      do
      {
        AncestorOpInBlock = mlir::Block::findAncestorOpInBlock(*a1, v18[2]);
        if (AncestorOpInBlock)
        {
          v20 = AncestorOpInBlock;
          if (mlir::Operation::isBeforeInBlock(a3, AncestorOpInBlock))
          {
            a3 = v20;
          }
        }

        v18 = *v18;
      }

      while (v18);
    }

    return a3;
  }

  else
  {
    v16 = *(*a1 + 32);

    return llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v16);
  }
}

BOOL mlir::LivenessBlockInfo::isLiveIn(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (v5 == v4)
  {
    v9 = *(a1 + 28);
    if (v9)
    {
      v10 = 8 * v9;
      while (*v4 != a2)
      {
        ++v4;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v4 = &v5[v9];
    }

    v7 = v5;
  }

  else
  {
    v4 = llvm::SmallPtrSetImplBase::doFind(v6, a2);
    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (!v4)
    {
      v8 = 16;
      if (v7 == v5)
      {
        v8 = 20;
      }

      v4 = &v7[*(v6 + v8)];
    }
  }

  v11 = v7 == v5;
  v12 = 16;
  if (v11)
  {
    v12 = 20;
  }

  return v4 != &v7[*(v6 + v12)];
}

void *mlir::Liveness::getLiveIn(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = (v2 + 336 * v4);
    v6 = *v5;
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = (v2 + 336 * v4);
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = (v2 + 336 * v3);
LABEL_8:
  if (v5 == (v2 + 336 * v3))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 + 1;
  }

  return v9 + 1;
}

void *mlir::Liveness::getLiveOut(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = (v2 + 336 * v4);
    v6 = *v5;
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = (v2 + 336 * v4);
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = (v2 + 336 * v3);
LABEL_8:
  if (v5 == (v2 + 336 * v3))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5 + 1;
  }

  return v9 + 21;
}

BOOL mlir::Liveness::isDeadAfter(uint64_t a1, void *a2, mlir::Operation *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a3 + 2);
    v8 = ((v7 >> 4) ^ (v7 >> 9)) & (v6 - 1);
    v9 = (v5 + 336 * v8);
    v10 = *v9;
    if (*v9 == v7)
    {
      goto LABEL_8;
    }

    v11 = 1;
    while (v10 != -4096)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v6 - 1);
      v9 = (v5 + 336 * v8);
      v10 = *v9;
      if (*v9 == v7)
      {
        goto LABEL_8;
      }
    }
  }

  v9 = (v5 + 336 * v6);
LABEL_8:
  if (v9 == (v5 + 336 * v6))
  {
    v13 = 0;
  }

  else
  {
    v13 = (v9 + 1);
  }

  v15 = v13 + 168;
  v14 = *(v13 + 168);
  v16 = *(v13 + 176);
  if (v16 == v14)
  {
    v19 = *(v13 + 188);
    if (v19)
    {
      v20 = 8 * v19;
      while (*v14 != a2)
      {
        ++v14;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      v14 = &v16[v19];
    }

    v17 = *(v13 + 176);
  }

  else
  {
    v14 = llvm::SmallPtrSetImplBase::doFind((v13 + 168), a2);
    v16 = *(v13 + 168);
    v17 = *(v13 + 176);
    if (!v14)
    {
      v18 = 16;
      if (v17 == v16)
      {
        v18 = 20;
      }

      v14 = &v17[*(v15 + v18)];
    }
  }

  v21 = v17 == v16;
  v22 = 16;
  if (v21)
  {
    v22 = 20;
  }

  if (v14 != &v17[*(v15 + v22)])
  {
    return 0;
  }

  EndOperation = mlir::LivenessBlockInfo::getEndOperation(v13, a2, a3);
  if (EndOperation == a3)
  {
    return 1;
  }

  return mlir::Operation::isBeforeInBlock(EndOperation, a3);
}

BOOL mlir::LivenessBlockInfo::isLiveOut(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  v6 = (a1 + 168);
  if (v5 == v4)
  {
    v9 = *(a1 + 188);
    if (v9)
    {
      v10 = 8 * v9;
      while (*v4 != a2)
      {
        ++v4;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v4 = &v5[v9];
    }

    v7 = v5;
  }

  else
  {
    v4 = llvm::SmallPtrSetImplBase::doFind(v6, a2);
    v5 = *(a1 + 168);
    v7 = *(a1 + 176);
    if (!v4)
    {
      v8 = 16;
      if (v7 == v5)
      {
        v8 = 20;
      }

      v4 = &v7[*(v6 + v8)];
    }
  }

  v11 = v7 == v5;
  v12 = 16;
  if (v11)
  {
    v12 = 20;
  }

  return v4 != &v7[*(v6 + v12)];
}

void mlir::Liveness::dump(mlir::Liveness *this)
{
  v2 = llvm::errs(this);

  mlir::Liveness::print(this, v2);
}

void mlir::Liveness::print(mlir::ForwardIterator **this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x16uLL)
  {
    qmemcpy(v4, "// ---- Liveness -----\n", 23);
    *(a2 + 4) += 23;
  }

  else
  {
    llvm::raw_ostream::write(a2, "// ---- Liveness -----\n", 0x17uLL);
  }

  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  v5 = *this;
  v8 = v20;
  v9 = v16;
  v10 = v18;
  mlir::detail::walk<mlir::ForwardIterator>(v5, llvm::function_ref<void ()(mlir::Block *)>::callback_fn<mlir::Liveness::print(llvm::raw_ostream &)::$_0>, &v8, 0);
  v15[0] = a2;
  v15[1] = v16;
  v15[2] = v20;
  v14[0] = v16;
  v14[1] = v15;
  v6 = *this;
  v8 = a2;
  v9 = v20;
  v10 = this;
  v11 = v14;
  v12 = v15;
  v13 = v18;
  mlir::detail::walk<mlir::ForwardIterator>(v6, llvm::function_ref<void ()(mlir::Block *)>::callback_fn<mlir::Liveness::print(llvm::raw_ostream &)::$_3>, &v8, 0);
  v7 = *(a2 + 4);
  if (*(a2 + 3) - v7 > 0x16uLL)
  {
    qmemcpy(v7, "// -------------------\n", 23);
    *(a2 + 4) += 23;
  }

  else
  {
    llvm::raw_ostream::write(a2, "// -------------------\n", 0x17uLL);
  }

  llvm::deallocate_buffer(v16[0], (16 * v17));
}

unsigned int *mlir::LivenessBlockInfo::currentlyLiveValues@<X0>(unsigned int *this@<X0>, mlir::Operation *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v20[2] = a3;
  v21 = a2;
  *a3 = a3 + 32;
  *(a3 + 8) = a3 + 32;
  *(a3 + 16) = 16;
  *(a3 + 24) = 0;
  v20[0] = this;
  v20[1] = &v21;
  v4 = *(*this + 48);
  for (i = *(*this + 56); v4 != i; this = mlir::LivenessBlockInfo::currentlyLiveValues(mlir::Operation *)const::$_0::operator()(v20, v6))
  {
    v6 = *v4++;
  }

  v7 = *(v3 + 2);
  v8 = 4;
  if (v7 == *(v3 + 1))
  {
    v8 = 5;
  }

  v9 = v3[v8 + 2];
  if (v9)
  {
    v10 = 8 * v9;
    v11 = *(v3 + 2);
    while (*v11 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v11 = *(v3 + 2);
  }

  v18 = (v7 + 8 * v9);
  while (v11 != v18)
  {
    v19 = *v11++;
    for (this = mlir::LivenessBlockInfo::currentlyLiveValues(mlir::Operation *)const::$_0::operator()(v20, v19); v11 != v18; ++v11)
    {
      if (*v11 < 0xFFFFFFFFFFFFFFFELL)
      {
        break;
      }
    }
  }

LABEL_9:
  v12 = *(v21 + 1);
  for (j = *(*v3 + 40); j != v12; j = *(j + 8))
  {
    this = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
    v14 = this[9];
    if (v14)
    {
      v15 = (this - 4);
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      for (k = 0; k != v14; ++k)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, k);
        this = mlir::LivenessBlockInfo::currentlyLiveValues(mlir::Operation *)const::$_0::operator()(v20, NextResultAtOffset);
      }
    }
  }

  return this;
}

const void **mlir::LivenessBlockInfo::currentlyLiveValues(mlir::Operation *)const::$_0::operator()(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = *a1;
  DefiningOp = mlir::Value::getDefiningOp(&v31);
  v6 = v3 + 8;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (v7 == v5)
  {
    v10 = *(v3 + 28);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v5 != v31)
      {
        ++v5;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v5 = &v7[v10];
    }

    v8 = *(v3 + 16);
  }

  else
  {
    v5 = llvm::SmallPtrSetImplBase::doFind((v3 + 8), v31);
    v7 = *(v3 + 8);
    v8 = *(v3 + 16);
    if (!v5)
    {
      v9 = 16;
      if (v8 == v7)
      {
        v9 = 20;
      }

      v5 = &v8[*(v6 + v9)];
    }
  }

  v12 = v8 == v7;
  v13 = 16;
  if (v12)
  {
    v13 = 20;
  }

  if (v5 == &v8[*(v6 + v13)] && (~*(v31 + 2) & 7) != 0)
  {
    AncestorOpInBlock = mlir::Block::findAncestorOpInBlock(*v3, DefiningOp);
    v15 = v31;
    v16 = *(v3 + 168);
    v17 = *(v3 + 176);
    v18 = (v3 + 168);
    if (v17 != v16)
    {
LABEL_17:
      v16 = llvm::SmallPtrSetImplBase::doFind(v18, v15);
      v17 = *(v3 + 168);
      v19 = *(v3 + 176);
      if (!v16)
      {
        v20 = 16;
        if (v19 == v17)
        {
          v20 = 20;
        }

        v16 = &v19[*(v18 + v20)];
      }

      goto LABEL_28;
    }
  }

  else
  {
    AncestorOpInBlock = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(*v3 + 40));
    v15 = v31;
    v16 = *(v3 + 168);
    v17 = *(v3 + 176);
    v18 = (v3 + 168);
    if (v17 != v16)
    {
      goto LABEL_17;
    }
  }

  v21 = *(v3 + 188);
  if (v21)
  {
    v22 = 8 * v21;
    while (*v16 != v15)
    {
      ++v16;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    v16 = &v17[v21];
  }

  v19 = v17;
LABEL_28:
  v12 = v19 == v17;
  v23 = 16;
  if (v12)
  {
    v23 = 20;
  }

  if (v16 == &v19[*(v18 + v23)])
  {
    if (AncestorOpInBlock)
    {
      EndOperation = mlir::LivenessBlockInfo::getEndOperation(v3, v31, AncestorOpInBlock);
      result = mlir::Operation::isBeforeInBlock(**(a1 + 8), AncestorOpInBlock);
      if (result)
      {
        return result;
      }
    }

    else
    {
      EndOperation = 0;
      result = mlir::Operation::isBeforeInBlock(**(a1 + 8), 0);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    EndOperation = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(*v3 + 32));
    result = mlir::Operation::isBeforeInBlock(**(a1 + 8), AncestorOpInBlock);
    if (result)
    {
      return result;
    }
  }

  result = mlir::Operation::isBeforeInBlock(EndOperation, **(a1 + 8));
  if ((result & 1) == 0)
  {
    result = *(a1 + 16);
    v26 = v31;
    v27 = *result;
    if (result[1] != *result)
    {
      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v31);
    }

    v28 = *(result + 5);
    if (!v28)
    {
LABEL_44:
      if (v28 < *(result + 4))
      {
        *(result + 5) = v28 + 1;
        *(v27 + 8 * v28) = v26;
        return result;
      }

      return llvm::SmallPtrSetImplBase::insert_imp_big(result, v31);
    }

    v29 = 8 * v28;
    v30 = *result;
    while (*v30 != v31)
    {
      ++v30;
      v29 -= 8;
      if (!v29)
      {
        goto LABEL_44;
      }
    }
  }

  return result;
}

BOOL anonymous namespace::BlockInfoBuilder::updateLiveIn(_anonymous_namespace_::BlockInfoBuilder *this)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v17, &v22, (this + 488));
  v2 = *(this + 22);
  v3 = 16;
  if (v2 == *(this + 21))
  {
    v3 = 20;
  }

  v4 = *(this + v3 + 168);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = *(this + 22);
    while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v6 = *(this + 22);
  }

  v7 = (v2 + 8 * v4);
  if (v6 != v7)
  {
    v8 = v17;
    v9 = v18;
    while (1)
    {
      v10 = *v6;
      if (v9 != v8)
      {
        goto LABEL_12;
      }

      v11 = v20;
      if (v20)
      {
        v12 = 0;
        while (v8[v12] != v10)
        {
          if (v20 == ++v12)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_14;
      }

LABEL_25:
      if (v20 < v19)
      {
        ++v20;
        v8[v11] = v10;
      }

      else
      {
LABEL_12:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v17, v10);
      }

      v8 = v17;
LABEL_14:
      if (++v6 != v7)
      {
        v9 = v18;
        while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (++v6 == v7)
          {
            goto LABEL_27;
          }
        }

        if (v6 != v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_27:
  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(&v17, this + 328);
  v13 = v20 - v21;
  v14 = (this + 8);
  v15 = *(this + 7) - *(this + 8);
  if (&v17 != v14 && v13 != v15)
  {
    llvm::SmallPtrSetImplBase::MoveFrom(v14, 16, &v17);
  }

  if (v18 != v17)
  {
    free(v18);
  }

  return v13 != v15;
}

uint64_t llvm::function_ref<void ()(mlir::Block *)>::callback_fn<buildBlockMapping(mlir::Operation *,llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>> &)::$_0>(uint64_t *a1, mlir::Block *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *v4 + 656 * v6;
    v8 = *v7;
    if (*v7 == a2)
    {
      goto LABEL_63;
    }

    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & (v5 - 1);
      v7 = *v4 + 656 * v6;
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_63;
      }
    }

    if (v9)
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v51[0] = v7;
  v13 = *(v4 + 8);
  if (4 * v13 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v13 - *(v4 + 12) > v5 >> 3)
  {
    *(v4 + 8) = v13 + 1;
    if (*v7 == -4096)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v7 = v51[0];
  ++*(v4 + 8);
  if (*v7 != -4096)
  {
LABEL_16:
    --*(v4 + 12);
  }

LABEL_17:
  *v7 = a2;
  *(v7 + 8) = a2;
  v14 = v7 + 8;
  *(v7 + 16) = v7 + 48;
  *(v7 + 24) = v7 + 48;
  *(v7 + 32) = 16;
  *(v7 + 40) = 0;
  *(v7 + 176) = v7 + 208;
  *(v7 + 184) = v7 + 208;
  *(v7 + 192) = 16;
  *(v7 + 200) = 0;
  *(v7 + 336) = v7 + 368;
  *(v7 + 344) = v7 + 368;
  *(v7 + 352) = 16;
  *(v7 + 360) = 0;
  *(v7 + 496) = v7 + 528;
  *(v7 + 504) = v7 + 528;
  *(v7 + 512) = 16;
  *(v7 + 520) = 0;
  v15 = *(a2 + 6);
  v16 = *(a2 + 7);
  if (v15 != v16)
  {
    while (1)
    {
      v31 = *v15;
      v32 = *(v7 + 336);
      if (*(v7 + 344) != v32)
      {
        goto LABEL_41;
      }

      v40 = *(v7 + 356);
      if (!v40)
      {
        break;
      }

      v41 = 8 * v40;
      v42 = *(v7 + 336);
      while (*v42 != v31)
      {
        ++v42;
        v41 -= 8;
        if (!v41)
        {
          goto LABEL_57;
        }
      }

LABEL_42:
      v33 = v31;
      do
      {
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_39;
        }

        v34 = *(*(v33 + 2) + 16);
        Parent = mlir::Block::getParent(a2);
      }

      while (mlir::Region::findAncestorBlockInRegion(Parent, v34) == a2);
      v36 = *(v7 + 176);
      if (*(v7 + 184) != v36)
      {
        goto LABEL_38;
      }

      v37 = *(v7 + 196);
      if (v37)
      {
        v38 = 8 * v37;
        v39 = *(v7 + 176);
        while (*v39 != v31)
        {
          ++v39;
          v38 -= 8;
          if (!v38)
          {
            goto LABEL_50;
          }
        }

LABEL_39:
        if (++v15 == v16)
        {
          goto LABEL_18;
        }

        continue;
      }

LABEL_50:
      if (v37 >= *(v7 + 192))
      {
LABEL_38:
        llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 176), v31);
        goto LABEL_39;
      }

      *(v7 + 196) = v37 + 1;
      *(v36 + 8 * v37) = v31;
      if (++v15 == v16)
      {
        goto LABEL_18;
      }
    }

LABEL_57:
    if (v40 < *(v7 + 352))
    {
      *(v7 + 356) = v40 + 1;
      *(v32 + 8 * v40) = v31;
      goto LABEL_42;
    }

LABEL_41:
    llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 336), *v15);
    goto LABEL_42;
  }

LABEL_18:
  v17 = (a2 + 32);
  v18 = *(a2 + 5);
  if (v18 != (a2 + 32))
  {
    v49 = v3;
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
      v20 = *(ValuePtr + 36);
      if (v20)
      {
        v21 = ValuePtr - 16;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = 0;
        while (1)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v22);
          v24 = NextResultAtOffset;
          do
          {
            v24 = *v24;
            if (!v24)
            {
              goto LABEL_27;
            }

            v25 = *(*(v24 + 2) + 16);
            v26 = mlir::Block::getParent(a2);
          }

          while (mlir::Region::findAncestorBlockInRegion(v26, v25) == a2);
          v27 = *(v7 + 176);
          if (*(v7 + 184) != v27)
          {
            break;
          }

          v28 = *(v7 + 196);
          if (v28)
          {
            v29 = 8 * v28;
            v30 = *(v7 + 176);
            while (*v30 != NextResultAtOffset)
            {
              ++v30;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            if (v28 >= *(v7 + 192))
            {
              break;
            }

            *(v7 + 196) = v28 + 1;
            *(v27 + 8 * v28) = NextResultAtOffset;
          }

LABEL_27:
          if (++v22 == v20)
          {
            goto LABEL_20;
          }
        }

        llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 176), NextResultAtOffset);
        goto LABEL_27;
      }

LABEL_20:
      v18 = v18[1];
      v17 = (a2 + 32);
    }

    while (v18 != (a2 + 32));
    v18 = *(a2 + 5);
    v14 = v7 + 8;
    v3 = v49;
  }

  v51[0] = v14;
  if (v18 != v17)
  {
    do
    {
      v43 = v18[1];
      v44 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v18);
      v18 = v43;
    }

    while (v43 != v17);
  }

  llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(v7 + 496, v7 + 336);
LABEL_63:
  if (result)
  {
    v46 = *a2;
    if (v46)
    {
      v47 = v3[1];
      do
      {
        v50 = mlir::PredecessorIterator::unwrap(v46);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v47, &v50, v51);
        if (v52 == 1)
        {
          v48 = *(v47 + 32);
          if (v48 >= *(v47 + 36))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*(v47 + 24) + 8 * v48) = v50;
          ++*(v47 + 32);
        }

        v46 = *v46;
      }

      while (v46);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::LookupBucketFor<mlir::Block *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 656 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 656 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>,mlir::Block *,anonymous namespace::BlockInfoBuilder,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,anonymous namespace::BlockInfoBuilder>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(656 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 656 * v10 - 656;
    if (v11 >= 0x290)
    {
      v16 = v11 / 0x290 + 1;
      v12 = &result[82 * (v16 & 0xFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[82] = -4096;
        v17 += 164;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v21 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v22 = *(a1 + 16);
              if (v22)
              {
                v23 = v22 - 1;
                v24 = v23 & ((v21 >> 4) ^ (v21 >> 9));
                v25 = (*a1 + 656 * v24);
                v26 = *v25;
                if (*v25 != v21)
                {
                  v27 = 0;
                  v28 = 1;
                  while (v26 != -4096)
                  {
                    if (v27)
                    {
                      v29 = 0;
                    }

                    else
                    {
                      v29 = v26 == -8192;
                    }

                    if (v29)
                    {
                      v27 = v25;
                    }

                    v30 = v24 + v28++;
                    v24 = v30 & v23;
                    v25 = (*a1 + 656 * v24);
                    v26 = *v25;
                    if (*v25 == v21)
                    {
                      goto LABEL_32;
                    }
                  }

                  if (v27)
                  {
                    v25 = v27;
                  }
                }
              }

              else
              {
                v25 = 0;
              }

LABEL_32:
              *v25 = v21;
              v25[1] = *(v20 + 1);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 2), v25 + 6, 16, v20 + 2);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 22), v25 + 26, 16, v20 + 22);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 42), v25 + 46, 16, v20 + 42);
              llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v25 + 62), v25 + 66, 16, v20 + 62);
              ++*(a1 + 8);
              v31 = *(v20 + 63);
              if (v31 != *(v20 + 62))
              {
                free(v31);
              }

              v32 = *(v20 + 43);
              if (v32 != *(v20 + 42))
              {
                free(v32);
              }

              v33 = *(v20 + 23);
              if (v33 != *(v20 + 22))
              {
                free(v33);
              }

              v34 = *(v20 + 3);
              if (v34 != *(v20 + 2))
              {
                free(v34);
              }
            }

            v20 = (v20 + 656);
          }

          while (v20 != (v4 + 656 * v3));
        }

        llvm::deallocate_buffer(v4, (656 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[82 * v10];
    do
    {
      *v12 = -4096;
      v12 += 82;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 656 * v13 - 656;
    if (v14 < 0x290)
    {
      v15 = result;
LABEL_49:
      v38 = &result[82 * v13];
      do
      {
        *v15 = -4096;
        v15 += 82;
      }

      while (v15 != v38);
      return result;
    }

    v35 = v14 / 0x290 + 1;
    v15 = &result[82 * (v35 & 0xFFFFFFFFFFFFFELL)];
    v36 = result;
    v37 = v35 & 0xFFFFFFFFFFFFFELL;
    do
    {
      *v36 = -4096;
      v36[82] = -4096;
      v36 += 164;
      v37 -= 2;
    }

    while (v37);
    if (v35 != (v35 & 0xFFFFFFFFFFFFFELL))
    {
      goto LABEL_49;
    }
  }

  return result;
}

uint64_t llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 20) - *(result + 24) >= (*(a2 + 20) - *(a2 + 24)))
  {
    v3 = *(a2 + 8);
    v4 = 16;
    if (v3 == *a2)
    {
      v4 = 20;
    }

    v5 = *(a2 + v4);
    if (v5)
    {
      v6 = 8 * v5;
      for (i = *(a2 + 8); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
      {
        v6 -= 8;
        if (!v6)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(a2 + 8);
    }

    v8 = (v3 + 8 * v5);
    while (i != v8)
    {
      v9 = *i;
      v10 = *v2;
      if (*(v2 + 8) == *v2)
      {
        v11 = *(v2 + 20);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = *v2;
          while (*v13 != v9)
          {
            ++v13;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_25;
            }
          }

          v14 = v11 - 1;
          *(v2 + 20) = v14;
          *v13 = v10[v14];
        }
      }

      else
      {
        result = llvm::SmallPtrSetImplBase::doFind(v2, v9);
        if (result)
        {
          *result = -2;
          ++*(v2 + 24);
        }
      }

      do
      {
LABEL_25:
        ++i;
      }

      while (i != v8 && *i >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

  else
  {

    return llvm::SmallPtrSetImpl<mlir::Value>::remove_if<void llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(llvm::SmallPtrSet<mlir::Value,16u> &,llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(llvm::SmallPtrSet<mlir::Value,16u> const&)#1}>(result, a2);
  }

  return result;
}

uint64_t llvm::SmallPtrSetImpl<mlir::Value>::remove_if<void llvm::set_subtract<llvm::SmallPtrSet<mlir::Value,16u>,llvm::SmallPtrSet<mlir::Value,16u>>(llvm::SmallPtrSet<mlir::Value,16u> &,llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(llvm::SmallPtrSet<mlir::Value,16u> const&)#1}>(uint64_t a1, const void ***this)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 != *a1)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = &v5[v6];
      while (1)
      {
        v9 = *v5;
        if (*v5 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          break;
        }

LABEL_4:
        if (++v5 == v8)
        {
          return v7 & 1;
        }
      }

      v10 = *this;
      v11 = this[1];
      if (v11 == *this)
      {
        v16 = *(this + 5);
        if (v16)
        {
          v17 = 8 * v16;
          while (*v10 != v9)
          {
            ++v10;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_20;
            }
          }

          if (v10 == &this[1][*(this + 5)])
          {
            goto LABEL_4;
          }

LABEL_25:
          *v5 = -2;
          ++*(a1 + 24);
          v7 = 1;
          goto LABEL_4;
        }

LABEL_20:
        v12 = &v11[v16];
        v13 = this[1];
      }

      else
      {
        v12 = llvm::SmallPtrSetImplBase::doFind(this, v9);
        v11 = *this;
        v13 = this[1];
        if (!v12)
        {
          if (v13 == v11)
          {
            v14 = 20;
          }

          else
          {
            v14 = 16;
          }

          if (v13 == v11)
          {
            v15 = 20;
          }

          else
          {
            v15 = 16;
          }

          if (&v13[*(this + v14)] == &v13[*(this + v15)])
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

      if (v13 == v11)
      {
        v18 = 20;
      }

      else
      {
        v18 = 16;
      }

      if (v12 == &v13[*(this + v18)])
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v19 = *(a1 + 20);
  if (!v19)
  {
LABEL_49:
    v7 = 0;
    return v7 & 1;
  }

  v7 = 0;
  v20 = &v4[v19];
  do
  {
    while (1)
    {
      v21 = *v4;
      v22 = *this;
      v23 = this[1];
      if (v23 == *this)
      {
        v26 = *(this + 5);
        if (v26)
        {
          v27 = 8 * v26;
          while (*v22 != v21)
          {
            ++v22;
            v27 -= 8;
            if (!v27)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
LABEL_41:
          v22 = &v23[v26];
        }

        v24 = this[1];
      }

      else
      {
        v22 = llvm::SmallPtrSetImplBase::doFind(this, v21);
        v23 = *this;
        v24 = this[1];
        if (!v22)
        {
          if (v24 == v23)
          {
            v25 = 20;
          }

          else
          {
            v25 = 16;
          }

          v22 = &v24[*(this + v25)];
        }
      }

      v28 = v24 == v23 ? 20 : 16;
      if (v22 != &v24[*(this + v28)])
      {
        break;
      }

      if (++v4 == v20)
      {
        return v7 & 1;
      }
    }

    v29 = *--v20;
    *v4 = v29;
    --*(a1 + 20);
    v7 = 1;
  }

  while (v4 != v20);
  return v7 & 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 336 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 336 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(336 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::moveFromOldBuckets(a1, v4, &v4[42 * v3]);

    llvm::deallocate_buffer(v4, (336 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 336 * v10 - 336;
    if (v11 < 0x150)
    {
      v12 = result;
LABEL_14:
      v16 = &result[42 * v10];
      do
      {
        *v12 = -4096;
        v12 += 42;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x150 + 1;
    v12 = &result[42 * (v13 & 0x1FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      v14[42] = -4096;
      v14 += 84;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 336 * v6 - 336;
    if (v8 < 0x150)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[42 * v6];
      do
      {
        *v9 = -4096;
        v9 += 42;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x150 + 1;
    v9 = &v7[42 * (v10 & 0x1FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[42] = -4096;
      v11 += 84;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & ((LODWORD(v14) >> 4) ^ (LODWORD(v14) >> 9));
          v18 = (*a1 + 336 * v17);
          v19 = *v18;
          if (*&v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -4096)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -8192;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = (*a1 + 336 * v17);
              v19 = *v18;
              if (*&v14 == *v18)
              {
                goto LABEL_25;
              }
            }

            if (v20)
            {
              v18 = v20;
            }
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        v18[1] = *(v4 + 1);
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v18 + 2), v18 + 6, 16, v4 + 2);
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v18 + 22), v18 + 26, 16, v4 + 22);
        ++*(a1 + 8);
        v24 = *(v4 + 23);
        if (v24 != *(v4 + 22))
        {
          free(v24);
        }

        v25 = *(v4 + 3);
        if (v25 != *(v4 + 2))
        {
          free(v25);
        }
      }

      v4 += 42;
    }

    while (v4 != a3);
  }
}

unint64_t llvm::function_ref<void ()(mlir::Block *)>::callback_fn<mlir::Liveness::print(llvm::raw_ostream &)::$_0>(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = *(v4 + 8);
  v46 = a2;
  v47 = v5;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v4, &v46, &v47, v45);
  v7 = a2[6];
  for (i = a2[7]; v7 != i; result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::try_emplace<unsigned long>(v10, &v46, &v47, v45))
  {
    v9 = *v7++;
    v10 = a1[1];
    v11 = *(v10 + 8);
    v46 = v9;
    v47 = v11;
  }

  v12 = a2 + 4;
  v13 = a2[5];
  v44 = v12;
  if (v13 != v12)
  {
    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
      v15 = a1[2];
      v16 = *(v15 + 8);
      v46 = ValuePtr;
      v47 = v16;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v15, &v46, &v47, v45);
      v17 = *(ValuePtr + 36);
      v18 = v17 ? ValuePtr - 16 : 0;
      if (v17)
      {
        break;
      }

LABEL_5:
      v13 = v13[1];
      if (v13 == v44)
      {
        return result;
      }
    }

    v19 = 0;
    while (1)
    {
      result = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v19);
      v25 = a1[1];
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      if (!v27)
      {
        goto LABEL_33;
      }

      v20 = 0x9DDFEA08EB382D69 * ((8 * result - 0xAE502812AA7333) ^ HIDWORD(result));
      v21 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v20 >> 47) ^ v20);
      v22 = (-348639895 * ((v21 >> 47) ^ v21)) & (v27 - 1);
      v23 = (*v25 + 16 * v22);
      v24 = *v23;
      if (result != *v23)
      {
        break;
      }

LABEL_12:
      if (++v19 == v17)
      {
        goto LABEL_5;
      }
    }

    v28 = 0;
    v29 = 1;
    while (v24 != -4096)
    {
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v24 == -8192;
      }

      if (v30)
      {
        v28 = v23;
      }

      v31 = v22 + v29++;
      v22 = v31 & (v27 - 1);
      v23 = (*v25 + 16 * v22);
      v24 = *v23;
      if (result == *v23)
      {
        goto LABEL_12;
      }
    }

    if (v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v23;
    }

    if (4 * v26 + 4 < 3 * v27)
    {
      if (v27 + ~v26 - *(v25 + 12) > v27 >> 3)
      {
        *(v25 + 8) = v26 + 1;
        if (*v32 == -4096)
        {
LABEL_19:
          *v32 = result;
          v32[1] = v26;
          goto LABEL_12;
        }

LABEL_18:
        --*(v25 + 12);
        goto LABEL_19;
      }

      v43 = result;
      llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v25, v27);
      v33 = *(v25 + 16);
      if (v33)
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_33:
      v43 = result;
      llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v25, 2 * v27);
      v33 = *(v25 + 16);
      if (v33)
      {
LABEL_34:
        result = v43;
        v34 = 0x9DDFEA08EB382D69 * ((8 * v43 - 0xAE502812AA7333) ^ HIDWORD(v43));
        v35 = 0x9DDFEA08EB382D69 * (HIDWORD(v43) ^ (v34 >> 47) ^ v34);
        LODWORD(v34) = -348639895 * ((v35 >> 47) ^ v35);
        v36 = v33 - 1;
        v37 = (v33 - 1) & v34;
        v32 = (*v25 + 16 * v37);
        v38 = *v32;
        if (v43 != *v32)
        {
          v39 = 0;
          v40 = 1;
          while (v38 != -4096)
          {
            if (v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = v38 == -8192;
            }

            if (v41)
            {
              v39 = v32;
            }

            v42 = v37 + v40++;
            v37 = v42 & v36;
            v32 = (*v25 + 16 * (v42 & v36));
            v38 = *v32;
            if (v43 == *v32)
            {
              goto LABEL_46;
            }
          }

          if (v39)
          {
            v32 = v39;
          }
        }

LABEL_46:
        ++*(v25 + 8);
        if (*v32 == -4096)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v32 = 0;
    result = v43;
    goto LABEL_46;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::try_emplace<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == -8192;
      }

      if (v18)
      {
        v16 = v11;
      }

      v19 = v10 + v17++;
      v10 = v19 & v9;
      v11 = (v6 + 16 * (v19 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v16)
    {
      v11 = v16;
    }

LABEL_5:
    v23 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        v15 = *a3;
        *v11 = *a2;
        v11[1] = v15;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v20 = result;
    v21 = a4;
    v22 = a3;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v20, a2, &v23);
    a3 = v22;
    result = v20;
    a4 = v21;
    v11 = v23;
    ++*(v20 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

llvm::raw_ostream *llvm::function_ref<void ()(mlir::Block *)>::callback_fn<mlir::Liveness::print(llvm::raw_ostream &)::$_3>(llvm::raw_ostream **a1, uint64_t a2)
{
  v65 = a2;
  v58 = a1[2];
  v3 = *a1;
  v4 = *(*a1 + 4);
  if ((*(*a1 + 3) - v4) > 0xB)
  {
    *(v4 + 8) = 540699491;
    *v4 = *"// - Block: ";
    *(v3 + 4) += 12;
  }

  else
  {
    v3 = llvm::raw_ostream::write(*a1, "// - Block: ", 0xCuLL);
  }

  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1[1], &v65);
  v6 = llvm::raw_ostream::operator<<(v3, *v5);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "\n", 1uLL);
    v8 = *(v58 + 8);
    v9 = *(v58 + 24);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v7 = 10;
    ++*(v6 + 4);
    v8 = *(v58 + 8);
    v9 = *(v58 + 24);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v10 = ((v65 >> 4) ^ (v65 >> 9)) & (v9 - 1);
  v11 = (v8 + 336 * v10);
  v12 = *v11;
  if (*v11 == v65)
  {
    goto LABEL_14;
  }

  v13 = 1;
  while (v12 != -4096)
  {
    v14 = v10 + v13++;
    v10 = v14 & (v9 - 1);
    v11 = (v8 + 336 * v10);
    v12 = *v11;
    if (*v11 == v65)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  v11 = (v8 + 336 * v9);
LABEL_14:
  if (v11 == (v8 + 336 * v9))
  {
    v15 = 0;
  }

  else
  {
    v15 = (v11 + 1);
  }

  v56 = v15;
  v16 = *a1;
  v17 = *(*a1 + 4);
  if (*(*a1 + 3) - v17 > 0xEuLL)
  {
    qmemcpy(v17, "// --- LiveIn: ", 15);
    *(v16 + 4) += 15;
  }

  else
  {
    llvm::raw_ostream::write(v16, "// --- LiveIn: ", 0xFuLL);
  }

  mlir::Liveness::print(llvm::raw_ostream &)const::$_2::operator()(a1[3], v56 + 1);
  v18 = *a1;
  v19 = *(*a1 + 4);
  if ((*(*a1 + 3) - v19) > 0x10)
  {
    *(v19 + 16) = 32;
    *v19 = *"\n// --- LiveOut: ";
    *(v18 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v18, "\n// --- LiveOut: ", 0x11uLL);
  }

  mlir::Liveness::print(llvm::raw_ostream &)const::$_2::operator()(a1[3], v56 + 21);
  v20 = *a1;
  v21 = *(*a1 + 4);
  if (*(*a1 + 3) != v21)
  {
    *v21 = 10;
    ++*(v20 + 4);
    v22 = *a1;
    v23 = *(*a1 + 4);
    if (*(*a1 + 3) - v23 <= 0x1CuLL)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  llvm::raw_ostream::write(v20, "\n", 1uLL);
  v22 = *a1;
  v23 = *(*a1 + 4);
  if (*(*a1 + 3) - v23 > 0x1CuLL)
  {
LABEL_28:
    qmemcpy(v23, "// --- BeginLivenessIntervals", 29);
    *(v22 + 4) += 29;
    v24 = *(v65 + 40);
    v55 = v65 + 32;
    if (v24 == v65 + 32)
    {
      goto LABEL_61;
    }

    while (1)
    {
LABEL_31:
      v57 = v24;
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v24);
      if (*(ValuePtr + 36))
      {
        v26 = *a1;
        v27 = *(*a1 + 4);
        if (*(*a1 + 3) == v27)
        {
          v30 = ValuePtr;
          llvm::raw_ostream::write(*a1, "\n", 1uLL);
          v28 = *(v30 + 36);
          if (v28)
          {
            v29 = v30 - 16;
          }

          else
          {
            v29 = 0;
          }

          if (v28)
          {
LABEL_42:
            for (i = 0; i != v28; ++i)
            {
              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, i);
              v33 = *a1;
              v34 = *(*a1 + 4);
              if ((*(*a1 + 3) - v34) > 2)
              {
                *(v34 + 2) = 32;
                *v34 = 12079;
                *(v33 + 4) += 3;
              }

              else
              {
                llvm::raw_ostream::write(v33, "// ", 3uLL);
              }

              mlir::Liveness::print(llvm::raw_ostream &)const::$_1::operator()(a1[4], NextResultAtOffset);
              v35 = *a1;
              v36 = *(*a1 + 4);
              if (*(*a1 + 3) == v36)
              {
                llvm::raw_ostream::write(v35, ":", 1uLL);
              }

              else
              {
                *v36 = 58;
                ++*(v35 + 4);
              }

              mlir::Liveness::resolveLiveness(v58, NextResultAtOffset, &v59);
              v37 = 126 - 2 * __clz((v60 - v59) >> 3);
              v61 = a1[5];
              if (v60 == v59)
              {
                v38 = 0;
              }

              else
              {
                v38 = v37;
              }

              std::__introsort<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,false>(v59, v60, &v61, v38, 1);
              if (v59 != v60)
              {
                v40 = *v59;
                v41 = *a1;
                v42 = *(*a1 + 4);
                if (*(*a1 + 3) - v42 > 7uLL)
                {
                  *v42 = 0x20202020202F2F0ALL;
                  *(v41 + 4) += 8;
                }

                else
                {
                  llvm::raw_ostream::write(v41, "\n//     ", 8uLL);
                }

                v39 = *a1;
                mlir::OpPrintingFlags::OpPrintingFlags(&v61);
                mlir::Operation::print(v40, v39, &v61);
              }

              if (v59)
              {
                v60 = v59;
                operator delete(v59);
              }
            }
          }
        }

        else
        {
          *v27 = 10;
          ++*(v26 + 4);
          v28 = *(ValuePtr + 36);
          if (v28)
          {
            v29 = ValuePtr - 16;
          }

          else
          {
            v29 = 0;
          }

          if (v28)
          {
            goto LABEL_42;
          }
        }
      }

      v24 = *(v57 + 8);
      if (v24 == v55)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_25:
  llvm::raw_ostream::write(v22, "// --- BeginLivenessIntervals", 0x1DuLL);
  v24 = *(v65 + 40);
  v55 = v65 + 32;
  if (v24 != v65 + 32)
  {
    goto LABEL_31;
  }

LABEL_61:
  v43 = *a1;
  v44 = *(*a1 + 4);
  if (*(*a1 + 3) - v44 > 0x1CuLL)
  {
    qmemcpy(v44, "\n// --- EndLivenessIntervals\n", 29);
    *(v43 + 4) += 29;
    v45 = *a1;
    v46 = *(*a1 + 4);
    if (*(*a1 + 3) - v46 > 0x19uLL)
    {
LABEL_63:
      qmemcpy(v46, "// --- BeginCurrentlyLive\n", 26);
      *(v45 + 4) += 26;
      v47 = v65 + 32;
      v48 = *(v65 + 40);
      if (v48 == v65 + 32)
      {
        goto LABEL_76;
      }

      goto LABEL_69;
    }
  }

  else
  {
    llvm::raw_ostream::write(v43, "\n// --- EndLivenessIntervals\n", 0x1DuLL);
    v45 = *a1;
    v46 = *(*a1 + 4);
    if (*(*a1 + 3) - v46 > 0x19uLL)
    {
      goto LABEL_63;
    }
  }

  llvm::raw_ostream::write(v45, "// --- BeginCurrentlyLive\n", 0x1AuLL);
  v47 = v65 + 32;
  v48 = *(v65 + 40);
  if (v48 == v65 + 32)
  {
    goto LABEL_76;
  }

  do
  {
LABEL_69:
    v49 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v48);
    mlir::LivenessBlockInfo::currentlyLiveValues(v56, v49, &v61);
    if (v63 != v64)
    {
      v50 = *a1;
      v51 = *(*a1 + 4);
      if (*(*a1 + 3) - v51 > 6uLL)
      {
        *(v51 + 3) = 538976288;
        *v51 = 538980143;
        *(v50 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v50, "//     ", 7uLL);
      }

      v52 = *a1;
      mlir::OpPrintingFlags::OpPrintingFlags(&v59);
      mlir::Operation::print(v49, v52, &v59);
    }

    if (v62 != v61)
    {
      free(v62);
    }

    v48 = *(v48 + 8);
  }

  while (v48 != v47);
LABEL_76:
  result = *a1;
  v54 = *(*a1 + 4);
  if (*(*a1 + 3) - v54 <= 0x17uLL)
  {
    return llvm::raw_ostream::write(result, "// --- EndCurrentlyLive\n", 0x18uLL);
  }

  qmemcpy(v54, "// --- EndCurrentlyLive\n", 24);
  *(result + 4) += 24;
  return result;
}

void mlir::Liveness::print(llvm::raw_ostream &)const::$_2::operator()(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = 16;
  if (v2 == *a2)
  {
    v3 = 20;
  }

  v4 = *(a2 + v3);
  if (v4)
  {
    v5 = 8 * v4;
    v6 = a2[1];
    while (*v6 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = a2[1];
  }

  v7 = (v2 + 8 * v4);
  if (v6 != v7)
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = v8;
      do
      {
        ++v9;
      }

      while (v9 != v7 && *v9 >= 0xFFFFFFFFFFFFFFFELL);
      ++v8;
    }

    while (v9 != v7);
    if (v10 < 0x1FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_16:
  v11 = *a1;
  std::__introsort<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(0, 0, &v11, 0, 1);
}

void *mlir::Liveness::print(llvm::raw_ostream &)const::$_1::operator()(uint64_t *a1, uint64_t a2)
{
  v16 = a2;
  if (!mlir::Value::getDefiningOp(&v16))
  {
    v5 = v16;
    v6 = *a1;
    v7 = *(*a1 + 32);
    if ((*(*a1 + 24) - v7) > 2)
    {
      *(v7 + 2) = 103;
      *v7 = 29281;
      *(v6 + 4) += 3;
      v9 = llvm::raw_ostream::operator<<(v6, *(v5 + 24));
      v10 = *(v9 + 4);
      if (*(v9 + 3) != v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = llvm::raw_ostream::write(v6, "arg", 3uLL);
      v9 = llvm::raw_ostream::operator<<(v8, *(v5 + 24));
      v10 = *(v9 + 4);
      if (*(v9 + 3) != v10)
      {
LABEL_6:
        *v10 = 64;
        v3 = v9;
        ++*(v9 + 4);
LABEL_11:
        v12 = a1[2];
        v15 = *(v5 + 16);
        v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v12, &v15);
        goto LABEL_12;
      }
    }

    v3 = llvm::raw_ostream::write(v9, "@", 1uLL);
    goto LABEL_11;
  }

  v3 = *a1;
  v4 = *(*a1 + 32);
  if (*(*a1 + 24) - v4 > 3uLL)
  {
    *v4 = 1600938358;
    *(v3 + 4) += 4;
  }

  else
  {
    v3 = llvm::raw_ostream::write(*a1, "val_", 4uLL);
  }

  v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](a1[1], &v16);
LABEL_12:
  llvm::raw_ostream::operator<<(v3, *v11);
  result = *a1;
  v14 = *(*a1 + 32);
  if (*(*a1 + 24) == v14)
  {
    return llvm::raw_ostream::write(result, " ", 1uLL);
  }

  *v14 = 32;
  ++result[4];
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
  v547 = v8;
  while (1)
  {
    v10 = a2 - v9;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v9, v9 + 1, a2 - 1, a3);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v9, v9 + 1, v9 + 2, a2 - 1, a3);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v276 = *(a2 - 1);
        v548 = *v9;
        v549 = v276;
        v277 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
        if (v277 < *result)
        {
          v278 = *v547;
          *v547 = *(a2 - 1);
          *(a2 - 1) = v278;
        }

        return result;
      }
    }

    v544 = a2;
    if (v10 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v9 == a2)
      {
        return result;
      }

      v337 = (v10 - 2) >> 1;
      v540 = v337;
      do
      {
        v338 = v337;
        if (v540 >= v337)
        {
          v339 = (2 * v337) | 1;
          v340 = &v9[v339];
          v341 = *a3;
          v342 = v10;
          if (2 * v337 + 2 < v10)
          {
            v343 = *v340;
            v548 = v340[1];
            v549 = v343;
            v344 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v341, &v549);
            v345 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
            v9 = v547;
            if (v344 < *v345)
            {
              ++v340;
              v339 = 2 * v338 + 2;
            }

            v341 = *a3;
          }

          v346 = &v9[v338];
          v347 = *v340;
          v548 = *v346;
          v549 = v347;
          v348 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](v341, &v549);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
          v349 = v348 >= *result;
          a2 = v544;
          v9 = v547;
          v10 = v342;
          if (v349)
          {
            v350 = *v346;
            do
            {
              v353 = v340;
              *v346 = *v340;
              if (v540 < v339)
              {
                break;
              }

              v354 = (2 * v339) | 1;
              v340 = &v9[v354];
              v355 = 2 * v339 + 2;
              if (v355 < v10)
              {
                v356 = *v340;
                v548 = v340[1];
                v549 = v356;
                v357 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
                if (v357 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548))
                {
                  ++v340;
                  v354 = v355;
                }
              }

              v351 = *v340;
              v548 = v350;
              v549 = v351;
              v352 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
              result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
              v346 = v353;
              v339 = v354;
              v9 = v547;
              v10 = v342;
            }

            while (v352 >= *result);
            *v353 = v350;
            a2 = v544;
          }
        }

        v337 = v338 - 1;
      }

      while (v338);
      while (1)
      {
        v545 = a2;
        v359 = 0;
        v360 = *v9;
        v361 = (v10 - 2) >> 1;
        v362 = v9;
        do
        {
          while (1)
          {
            v363 = &v362[v359];
            v364 = v363 + 1;
            v365 = (2 * v359) | 1;
            v366 = 2 * v359 + 2;
            if (v366 < v10)
            {
              break;
            }

            v359 = (2 * v359) | 1;
            *v362 = *v364;
            v362 = v363 + 1;
            if (v365 > v361)
            {
              goto LABEL_652;
            }
          }

          v369 = v363[2];
          v368 = v363 + 2;
          v367 = v369;
          v370 = *(v368 - 1);
          v371 = *a3;
          v373 = (*a3 + 16);
          v372 = *v373;
          if (!*v373)
          {
            goto LABEL_614;
          }

          v374 = *v371;
          v375 = 0x9DDFEA08EB382D69 * ((8 * *(v368 - 1) - 0xAE502812AA7333) ^ HIDWORD(*(v368 - 1)));
          v376 = 0x9DDFEA08EB382D69 * (HIDWORD(v370) ^ (v375 >> 47) ^ v375);
          v377 = v372 - 1;
          v378 = (-348639895 * ((v376 >> 47) ^ v376)) & (v372 - 1);
          v379 = (*v371 + 16 * v378);
          v380 = *v379;
          if (v370 == *v379)
          {
            v381 = v379[1];
            goto LABEL_577;
          }

          v391 = 0;
          v392 = 1;
          while (v380 != -4096)
          {
            result = -8192;
            if (v391)
            {
              v393 = 0;
            }

            else
            {
              v393 = v380 == -8192;
            }

            if (v393)
            {
              v391 = v379;
            }

            v394 = v378 + v392++;
            v378 = v394 & v377;
            v379 = (v374 + 16 * v378);
            v380 = *v379;
            if (v370 == *v379)
            {
              v381 = v379[1];
              v373 = (v371 + 16);
              goto LABEL_576;
            }
          }

          v396 = v391 ? v391 : v379;
          v397 = *(v371 + 8);
          if (4 * v397 + 4 < 3 * v372)
          {
            if (v372 + ~v397 - *(v371 + 12) <= v372 >> 3)
            {
              goto LABEL_615;
            }

            *(v371 + 8) = v397 + 1;
            if (*v396 == -4096)
            {
              goto LABEL_575;
            }
          }

          else
          {
LABEL_614:
            v372 *= 2;
LABEL_615:
            v537 = v361;
            v541 = v360;
            v398 = v10;
            result = llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v371, v372);
            v399 = *(v371 + 16);
            if (v399)
            {
              v400 = 0x9DDFEA08EB382D69 * ((8 * v370 - 0xAE502812AA7333) ^ HIDWORD(v370));
              v401 = 0x9DDFEA08EB382D69 * (HIDWORD(v370) ^ (v400 >> 47) ^ v400);
              LODWORD(v400) = -348639895 * ((v401 >> 47) ^ v401);
              v402 = v399 - 1;
              v403 = (v399 - 1) & v400;
              v396 = (*v371 + 16 * v403);
              v404 = *v396;
              if (v370 != *v396)
              {
                v405 = 0;
                v406 = 1;
                while (v404 != -4096)
                {
                  if (v405)
                  {
                    v407 = 0;
                  }

                  else
                  {
                    v407 = v404 == -8192;
                  }

                  if (v407)
                  {
                    v405 = v396;
                  }

                  v408 = v403 + v406++;
                  v403 = v408 & v402;
                  v396 = (*v371 + 16 * (v408 & v402));
                  v404 = *v396;
                  v9 = v547;
                  v10 = v398;
                  v361 = v537;
                  v360 = v541;
                  if (v370 == *v396)
                  {
                    goto LABEL_628;
                  }
                }

                if (v405)
                {
                  v396 = v405;
                }
              }
            }

            else
            {
              v396 = 0;
            }

            v9 = v547;
            v10 = v398;
            v361 = v537;
            v360 = v541;
LABEL_628:
            ++*(v371 + 8);
            if (*v396 == -4096)
            {
              goto LABEL_575;
            }
          }

          --*(v371 + 12);
LABEL_575:
          v381 = 0;
          *v396 = v370;
          v396[1] = 0;
          v371 = *a3;
          v374 = **a3;
          v372 = *(*a3 + 16);
          v373 = (*a3 + 16);
          if (!v372)
          {
            v385 = 0;
            goto LABEL_605;
          }

LABEL_576:
          v377 = v372 - 1;
LABEL_577:
          v382 = 0x9DDFEA08EB382D69 * ((8 * v367 - 0xAE502812AA7333) ^ HIDWORD(v367));
          v383 = 0x9DDFEA08EB382D69 * (HIDWORD(v367) ^ (v382 >> 47) ^ v382);
          v384 = v377 & (-348639895 * ((v383 >> 47) ^ v383));
          v385 = (v374 + 16 * v384);
          v386 = *v385;
          if (v367 == *v385)
          {
            goto LABEL_578;
          }

          v387 = 0;
          v388 = 1;
          while (v386 != -4096)
          {
            result = -8192;
            if (v387)
            {
              v389 = 0;
            }

            else
            {
              v389 = v386 == -8192;
            }

            if (v389)
            {
              v387 = v385;
            }

            v390 = v384 + v388++;
            v384 = v390 & v377;
            v385 = (v374 + 16 * (v390 & v377));
            v386 = *v385;
            if (v367 == *v385)
            {
              goto LABEL_578;
            }
          }

          if (v387)
          {
            v385 = v387;
          }

LABEL_605:
          v395 = *(v371 + 8);
          if (4 * v395 + 4 >= 3 * v372)
          {
            v372 *= 2;
LABEL_631:
            v535 = v381;
            v538 = v361;
            v542 = v360;
            v409 = v10;
            result = llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v371, v372);
            v410 = *v373;
            if (*v373)
            {
              v411 = 0x9DDFEA08EB382D69 * ((8 * v367 - 0xAE502812AA7333) ^ HIDWORD(v367));
              v412 = 0x9DDFEA08EB382D69 * (HIDWORD(v367) ^ (v411 >> 47) ^ v411);
              LODWORD(v411) = -348639895 * ((v412 >> 47) ^ v412);
              v413 = v410 - 1;
              v414 = (v410 - 1) & v411;
              v385 = (*v371 + 16 * v414);
              v415 = *v385;
              if (v367 != *v385)
              {
                v416 = 0;
                v417 = 1;
                while (v415 != -4096)
                {
                  if (v416)
                  {
                    v418 = 0;
                  }

                  else
                  {
                    v418 = v415 == -8192;
                  }

                  if (v418)
                  {
                    v416 = v385;
                  }

                  v419 = v414 + v417++;
                  v414 = v419 & v413;
                  v385 = (*v371 + 16 * (v419 & v413));
                  v415 = *v385;
                  v9 = v547;
                  v10 = v409;
                  v361 = v538;
                  v360 = v542;
                  v381 = v535;
                  if (v367 == *v385)
                  {
                    goto LABEL_644;
                  }
                }

                if (v416)
                {
                  v385 = v416;
                }
              }
            }

            else
            {
              v385 = 0;
            }

            v9 = v547;
            v10 = v409;
            v361 = v538;
            v360 = v542;
            v381 = v535;
LABEL_644:
            ++*(v371 + 8);
            if (*v385 == -4096)
            {
              goto LABEL_609;
            }

LABEL_608:
            --*(v371 + 12);
            goto LABEL_609;
          }

          if (v372 + ~v395 - *(v371 + 12) <= v372 >> 3)
          {
            goto LABEL_631;
          }

          *(v371 + 8) = v395 + 1;
          if (*v385 != -4096)
          {
            goto LABEL_608;
          }

LABEL_609:
          *v385 = v367;
          v385[1] = 0;
LABEL_578:
          if (v381 >= v385[1])
          {
            v359 = v365;
          }

          else
          {
            v364 = v368;
            v359 = v366;
          }

          *v362 = *v364;
          v362 = v364;
        }

        while (v359 <= v361);
LABEL_652:
        v420 = v545 - 1;
        v46 = v364 == v545 - 1;
        v546 = v545 - 1;
        if (v46)
        {
          *v364 = v360;
          goto LABEL_564;
        }

        *v364 = *v420;
        *v420 = v360;
        v421 = (v364 - v9 + 8) >> 3;
        v358 = v421 < 2;
        v422 = v421 - 2;
        if (!v358)
        {
          v423 = v422 >> 1;
          v424 = &v9[v422 >> 1];
          v425 = *v424;
          v548 = *v364;
          v549 = v425;
          v543 = v10;
          v426 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
          v10 = v543;
          v9 = v547;
          if (v426 < *result)
          {
            v427 = *v364;
            v428 = HIDWORD(*v364);
            v429 = 0x9DDFEA08EB382D69 * ((8 * *v364 - 0xAE502812AA7333) ^ v428);
            v430 = -348639895 * ((((0x9DDFEA08EB382D69 * (v428 ^ (v429 >> 47) ^ v429)) >> 32) >> 15) ^ (-348639895 * (v428 ^ (v429 >> 47) ^ v429)));
            while (2)
            {
              v435 = v424;
              *v364 = *v424;
              if (!v423)
              {
LABEL_735:
                *v435 = v427;
                goto LABEL_564;
              }

              v423 = (v423 - 1) >> 1;
              v424 = &v9[v423];
              v436 = *v424;
              v437 = *a3;
              v439 = (*a3 + 16);
              v438 = *v439;
              if (!*v439)
              {
                goto LABEL_709;
              }

              v440 = *v437;
              v441 = 0x9DDFEA08EB382D69 * ((8 * *v424 - 0xAE502812AA7333) ^ HIDWORD(*v424));
              v442 = 0x9DDFEA08EB382D69 * (HIDWORD(v436) ^ (v441 >> 47) ^ v441);
              v431 = v438 - 1;
              v443 = (-348639895 * ((v442 >> 47) ^ v442)) & (v438 - 1);
              v444 = (*v437 + 16 * v443);
              v445 = *v444;
              if (v436 == *v444)
              {
                v446 = v444[1];
                v432 = v431 & v430;
                v433 = (v440 + 16 * (v431 & v430));
                v434 = *v433;
                if (v427 != *v433)
                {
LABEL_662:
                  v447 = 0;
                  v448 = 1;
                  while (v434 != -4096)
                  {
                    result = -8192;
                    if (v447)
                    {
                      v449 = 0;
                    }

                    else
                    {
                      v449 = v434 == -8192;
                    }

                    if (v449)
                    {
                      v447 = v433;
                    }

                    v450 = v432 + v448++;
                    v432 = v450 & v431;
                    v433 = (v440 + 16 * (v450 & v431));
                    v434 = *v433;
                    if (v427 == *v433)
                    {
                      goto LABEL_657;
                    }
                  }

                  if (v447)
                  {
                    v433 = v447;
                  }

                  v451 = *(v437 + 8);
                  if (4 * v451 + 4 >= 3 * v438)
                  {
                    goto LABEL_684;
                  }

LABEL_677:
                  if (v438 + ~v451 - *(v437 + 12) <= v438 >> 3)
                  {
                    goto LABEL_685;
                  }

                  *(v437 + 8) = v451 + 1;
                  if (*v433 == -4096)
                  {
                    goto LABEL_680;
                  }

                  goto LABEL_679;
                }

                goto LABEL_657;
              }

              v460 = 0;
              v461 = 1;
              while (v445 != -4096)
              {
                result = -8192;
                if (v460)
                {
                  v462 = 0;
                }

                else
                {
                  v462 = v445 == -8192;
                }

                if (v462)
                {
                  v460 = v444;
                }

                v463 = v443 + v461++;
                v443 = v463 & v431;
                v444 = (v440 + 16 * v443);
                v445 = *v444;
                if (v436 == *v444)
                {
                  v446 = v444[1];
                  v439 = (v437 + 16);
                  goto LABEL_656;
                }
              }

              v464 = v460 ? v460 : v444;
              v465 = *(v437 + 8);
              if (4 * v465 + 4 < 3 * v438)
              {
                if (v438 + ~v465 - *(v437 + 12) <= v438 >> 3)
                {
                  goto LABEL_710;
                }

                *(v437 + 8) = v465 + 1;
                if (*v464 == -4096)
                {
LABEL_675:
                  v446 = 0;
                  *v464 = v436;
                  v464[1] = 0;
                  v437 = *a3;
                  v440 = **a3;
                  v438 = *(*a3 + 16);
                  v439 = (*a3 + 16);
                  if (!v438)
                  {
                    v433 = 0;
                    v451 = *(v437 + 8);
                    if (4 * v451 + 4 < 3 * v438)
                    {
                      goto LABEL_677;
                    }

LABEL_684:
                    v438 *= 2;
LABEL_685:
                    result = llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v437, v438);
                    v452 = *v439;
                    if (*v439)
                    {
                      v453 = v452 - 1;
                      v454 = (v452 - 1) & v430;
                      v433 = (*v437 + 16 * v454);
                      v455 = *v433;
                      if (v427 != *v433)
                      {
                        v456 = 0;
                        v457 = 1;
                        while (v455 != -4096)
                        {
                          if (v456)
                          {
                            v458 = 0;
                          }

                          else
                          {
                            v458 = v455 == -8192;
                          }

                          if (v458)
                          {
                            v456 = v433;
                          }

                          v459 = v454 + v457++;
                          v454 = v459 & v453;
                          v433 = (*v437 + 16 * (v459 & v453));
                          v455 = *v433;
                          v9 = v547;
                          v10 = v543;
                          if (v427 == *v433)
                          {
                            goto LABEL_727;
                          }
                        }

                        if (v456)
                        {
                          v433 = v456;
                        }
                      }
                    }

                    else
                    {
                      v433 = 0;
                    }

                    v9 = v547;
                    v10 = v543;
LABEL_727:
                    ++*(v437 + 8);
                    if (*v433 == -4096)
                    {
LABEL_680:
                      *v433 = v427;
                      v433[1] = 0;
                      goto LABEL_657;
                    }

LABEL_679:
                    --*(v437 + 12);
                    goto LABEL_680;
                  }

LABEL_656:
                  v431 = v438 - 1;
                  v432 = (v438 - 1) & v430;
                  v433 = (v440 + 16 * v432);
                  v434 = *v433;
                  if (v427 != *v433)
                  {
                    goto LABEL_662;
                  }

LABEL_657:
                  v364 = v435;
                  if (v446 >= v433[1])
                  {
                    goto LABEL_735;
                  }

                  continue;
                }
              }

              else
              {
LABEL_709:
                v438 *= 2;
LABEL_710:
                result = llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v438);
                v466 = *(v437 + 16);
                if (v466)
                {
                  v467 = 0x9DDFEA08EB382D69 * ((8 * v436 - 0xAE502812AA7333) ^ HIDWORD(v436));
                  v468 = 0x9DDFEA08EB382D69 * (HIDWORD(v436) ^ (v467 >> 47) ^ v467);
                  LODWORD(v467) = -348639895 * ((v468 >> 47) ^ v468);
                  v469 = v466 - 1;
                  v470 = (v466 - 1) & v467;
                  v464 = (*v437 + 16 * v470);
                  v471 = *v464;
                  if (v436 != *v464)
                  {
                    v472 = 0;
                    v473 = 1;
                    while (v471 != -4096)
                    {
                      if (v472)
                      {
                        v474 = 0;
                      }

                      else
                      {
                        v474 = v471 == -8192;
                      }

                      if (v474)
                      {
                        v472 = v464;
                      }

                      v475 = v470 + v473++;
                      v470 = v475 & v469;
                      v464 = (*v437 + 16 * (v475 & v469));
                      v471 = *v464;
                      v9 = v547;
                      v10 = v543;
                      if (v436 == *v464)
                      {
                        goto LABEL_723;
                      }
                    }

                    if (v472)
                    {
                      v464 = v472;
                    }
                  }
                }

                else
                {
                  v464 = 0;
                }

                v9 = v547;
                v10 = v543;
LABEL_723:
                ++*(v437 + 8);
                if (*v464 == -4096)
                {
                  goto LABEL_675;
                }
              }

              break;
            }

            --*(v437 + 12);
            goto LABEL_675;
          }
        }

LABEL_564:
        v358 = v10-- <= 2;
        a2 = v546;
        if (v358)
        {
          return result;
        }
      }
    }

    v11 = &v9[v10 >> 1];
    v12 = a2;
    v13 = a2 - 1;
    if (v10 >= 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v9, &v9[v10 >> 1], v13, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v547 + 1, v11 - 1, v12 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v547 + 2, v11 + 1, v12 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(v11 - 1, v11, v11 + 1, a3);
      v14 = v547;
      v15 = *v547;
      *v547 = *v11;
      *v11 = v15;
      v16 = a4 - 1;
      if (a5)
      {
        goto LABEL_17;
      }

LABEL_16:
      v17 = *(v14 - 1);
      v548 = *v14;
      v549 = v17;
      v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
      v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
      v14 = v547;
      if (v18 < *v19)
      {
        goto LABEL_17;
      }

      v170 = v16;
      v171 = *v547;
      v548 = *v13;
      v549 = v171;
      v8 = v547;
      v172 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
      if (v172 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548))
      {
        v176 = v547 + 1;
        v173 = v544;
        do
        {
          v8 = v176;
          if (v176 >= v544)
          {
            break;
          }

          ++v176;
          v548 = *v8;
          v549 = v171;
          v177 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
        }

        while (v177 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548));
      }

      else
      {
        v173 = v544;
        do
        {
          v174 = v8[1];
          ++v8;
          v548 = v174;
          v549 = v171;
          v175 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
        }

        while (v175 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548));
      }

      v178 = v173;
      if (v8 < v173)
      {
        v178 = v173;
        do
        {
          v179 = *--v178;
          v548 = v179;
          v549 = v171;
          v180 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
        }

        while (v180 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548));
      }

      if (v8 < v178)
      {
        v181 = 0x9DDFEA08EB382D69 * ((8 * v171 - 0xAE502812AA7333) ^ HIDWORD(v171));
        v182 = 0x9DDFEA08EB382D69 * (HIDWORD(v171) ^ (v181 >> 47) ^ v181);
        v183 = -348639895 * ((v182 >> 47) ^ v182);
        result = v547;
        while (1)
        {
          v184 = *v8;
          *v8 = *v178;
          *v178 = v184;
          do
          {
            v192 = v8[1];
            ++v8;
            v191 = v192;
            v193 = *a3;
            v195 = (*a3 + 16);
            v194 = *v195;
            if (!*v195)
            {
              goto LABEL_337;
            }

            v196 = *v193;
            v185 = v194 - 1;
            v197 = (v194 - 1) & v183;
            v198 = (*v193 + 16 * v197);
            v199 = *v198;
            if (v171 == *v198)
            {
              v200 = v198[1];
              goto LABEL_285;
            }

            v216 = 0;
            v217 = 1;
            while (v199 != -4096)
            {
              if (v216)
              {
                v218 = 0;
              }

              else
              {
                v218 = v199 == -8192;
              }

              if (v218)
              {
                v216 = v198;
              }

              v219 = v197 + v217++;
              v197 = v219 & v185;
              v198 = (v196 + 16 * v197);
              v199 = *v198;
              if (v171 == *v198)
              {
                v200 = v198[1];
                v195 = (v193 + 16);
                goto LABEL_284;
              }
            }

            v220 = v216 ? v216 : v198;
            v221 = *(v193 + 8);
            if (4 * v221 + 4 < 3 * v194)
            {
              if (v194 + ~v221 - *(v193 + 12) <= v194 >> 3)
              {
                goto LABEL_338;
              }

              *(v193 + 8) = v221 + 1;
              if (*v220 == -4096)
              {
                goto LABEL_294;
              }
            }

            else
            {
LABEL_337:
              v194 *= 2;
LABEL_338:
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v194);
              v222 = *(v193 + 16);
              if (v222)
              {
                v223 = v222 - 1;
                v224 = (v222 - 1) & v183;
                v220 = (*v193 + 16 * v224);
                v225 = *v220;
                if (v171 != *v220)
                {
                  v226 = 0;
                  v227 = 1;
                  while (v225 != -4096)
                  {
                    if (v226)
                    {
                      v228 = 0;
                    }

                    else
                    {
                      v228 = v225 == -8192;
                    }

                    if (v228)
                    {
                      v226 = v220;
                    }

                    v229 = v224 + v227++;
                    v224 = v229 & v223;
                    v220 = (*v193 + 16 * (v229 & v223));
                    v225 = *v220;
                    result = v547;
                    if (v171 == *v220)
                    {
                      goto LABEL_351;
                    }
                  }

                  if (v226)
                  {
                    v220 = v226;
                  }
                }
              }

              else
              {
                v220 = 0;
              }

              result = v547;
LABEL_351:
              ++*(v193 + 8);
              if (*v220 == -4096)
              {
                goto LABEL_294;
              }
            }

            --*(v193 + 12);
LABEL_294:
            v200 = 0;
            *v220 = v171;
            v220[1] = 0;
            v193 = *a3;
            v196 = **a3;
            v194 = *(*a3 + 16);
            v195 = (*a3 + 16);
            if (!v194)
            {
              v189 = 0;
              v201 = *(v193 + 8);
              if (4 * v201 + 4 >= 3 * v194)
              {
                goto LABEL_312;
              }

              goto LABEL_296;
            }

LABEL_284:
            v185 = v194 - 1;
LABEL_285:
            v186 = 0x9DDFEA08EB382D69 * ((8 * v191 - 0xAE502812AA7333) ^ HIDWORD(v191));
            v187 = 0x9DDFEA08EB382D69 * (HIDWORD(v191) ^ (v186 >> 47) ^ v186);
            v188 = v185 & (-348639895 * ((v187 >> 47) ^ v187));
            v189 = (v196 + 16 * v188);
            v190 = *v189;
            if (v191 == *v189)
            {
              continue;
            }

            v202 = 0;
            v203 = 1;
            while (v190 != -4096)
            {
              if (v202)
              {
                v204 = 0;
              }

              else
              {
                v204 = v190 == -8192;
              }

              if (v204)
              {
                v202 = v189;
              }

              v205 = v188 + v203++;
              v188 = v205 & v185;
              v189 = (v196 + 16 * (v205 & v185));
              v190 = *v189;
              if (v191 == *v189)
              {
                goto LABEL_286;
              }
            }

            if (v202)
            {
              v189 = v202;
            }

            v201 = *(v193 + 8);
            if (4 * v201 + 4 >= 3 * v194)
            {
LABEL_312:
              v194 *= 2;
LABEL_313:
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v193, v194);
              v206 = *v195;
              if (*v195)
              {
                v207 = 0x9DDFEA08EB382D69 * ((8 * v191 - 0xAE502812AA7333) ^ HIDWORD(v191));
                v208 = 0x9DDFEA08EB382D69 * (HIDWORD(v191) ^ (v207 >> 47) ^ v207);
                LODWORD(v207) = -348639895 * ((v208 >> 47) ^ v208);
                v209 = v206 - 1;
                v210 = (v206 - 1) & v207;
                v189 = (*v193 + 16 * v210);
                v211 = *v189;
                if (v191 != *v189)
                {
                  v212 = 0;
                  v213 = 1;
                  while (v211 != -4096)
                  {
                    if (v212)
                    {
                      v214 = 0;
                    }

                    else
                    {
                      v214 = v211 == -8192;
                    }

                    if (v214)
                    {
                      v212 = v189;
                    }

                    v215 = v210 + v213++;
                    v210 = v215 & v209;
                    v189 = (*v193 + 16 * (v215 & v209));
                    v211 = *v189;
                    result = v547;
                    if (v191 == *v189)
                    {
                      goto LABEL_355;
                    }
                  }

                  if (v212)
                  {
                    v189 = v212;
                  }
                }
              }

              else
              {
                v189 = 0;
              }

              result = v547;
LABEL_355:
              ++*(v193 + 8);
              if (*v189 == -4096)
              {
                goto LABEL_299;
              }

LABEL_298:
              --*(v193 + 12);
              goto LABEL_299;
            }

LABEL_296:
            if (v194 + ~v201 - *(v193 + 12) <= v194 >> 3)
            {
              goto LABEL_313;
            }

            *(v193 + 8) = v201 + 1;
            if (*v189 != -4096)
            {
              goto LABEL_298;
            }

LABEL_299:
            *v189 = v191;
            v189[1] = 0;
LABEL_286:
            ;
          }

          while (v200 >= v189[1]);
          do
          {
            v237 = *--v178;
            v236 = v237;
            v238 = *a3;
            v240 = (*a3 + 16);
            v239 = *v240;
            if (!*v240)
            {
              goto LABEL_416;
            }

            v241 = *v238;
            v230 = v239 - 1;
            v242 = (v239 - 1) & v183;
            v243 = (*v238 + 16 * v242);
            v244 = *v243;
            if (v171 == *v243)
            {
              v245 = v243[1];
              goto LABEL_364;
            }

            v261 = 0;
            v262 = 1;
            while (v244 != -4096)
            {
              if (v261)
              {
                v263 = 0;
              }

              else
              {
                v263 = v244 == -8192;
              }

              if (v263)
              {
                v261 = v243;
              }

              v264 = v242 + v262++;
              v242 = v264 & v230;
              v243 = (v241 + 16 * v242);
              v244 = *v243;
              if (v171 == *v243)
              {
                v245 = v243[1];
                v240 = (v238 + 16);
                goto LABEL_363;
              }
            }

            v265 = v261 ? v261 : v243;
            v266 = *(v238 + 8);
            if (4 * v266 + 4 < 3 * v239)
            {
              if (v239 + ~v266 - *(v238 + 12) <= v239 >> 3)
              {
                goto LABEL_417;
              }

              *(v238 + 8) = v266 + 1;
              if (*v265 == -4096)
              {
                goto LABEL_373;
              }
            }

            else
            {
LABEL_416:
              v239 *= 2;
LABEL_417:
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v239);
              v267 = *(v238 + 16);
              if (v267)
              {
                v268 = v267 - 1;
                v269 = (v267 - 1) & v183;
                v265 = (*v238 + 16 * v269);
                v270 = *v265;
                if (v171 != *v265)
                {
                  v271 = 0;
                  v272 = 1;
                  while (v270 != -4096)
                  {
                    if (v271)
                    {
                      v273 = 0;
                    }

                    else
                    {
                      v273 = v270 == -8192;
                    }

                    if (v273)
                    {
                      v271 = v265;
                    }

                    v274 = v269 + v272++;
                    v269 = v274 & v268;
                    v265 = (*v238 + 16 * (v274 & v268));
                    v270 = *v265;
                    result = v547;
                    if (v171 == *v265)
                    {
                      goto LABEL_430;
                    }
                  }

                  if (v271)
                  {
                    v265 = v271;
                  }
                }
              }

              else
              {
                v265 = 0;
              }

              result = v547;
LABEL_430:
              ++*(v238 + 8);
              if (*v265 == -4096)
              {
                goto LABEL_373;
              }
            }

            --*(v238 + 12);
LABEL_373:
            v245 = 0;
            *v265 = v171;
            v265[1] = 0;
            v238 = *a3;
            v241 = **a3;
            v239 = *(*a3 + 16);
            v240 = (*a3 + 16);
            if (!v239)
            {
              v234 = 0;
              v246 = *(v238 + 8);
              if (4 * v246 + 4 >= 3 * v239)
              {
                goto LABEL_391;
              }

              goto LABEL_375;
            }

LABEL_363:
            v230 = v239 - 1;
LABEL_364:
            v231 = 0x9DDFEA08EB382D69 * ((8 * v236 - 0xAE502812AA7333) ^ HIDWORD(v236));
            v232 = 0x9DDFEA08EB382D69 * (HIDWORD(v236) ^ (v231 >> 47) ^ v231);
            v233 = v230 & (-348639895 * ((v232 >> 47) ^ v232));
            v234 = (v241 + 16 * v233);
            v235 = *v234;
            if (v236 == *v234)
            {
              continue;
            }

            v247 = 0;
            v248 = 1;
            while (v235 != -4096)
            {
              if (v247)
              {
                v249 = 0;
              }

              else
              {
                v249 = v235 == -8192;
              }

              if (v249)
              {
                v247 = v234;
              }

              v250 = v233 + v248++;
              v233 = v250 & v230;
              v234 = (v241 + 16 * (v250 & v230));
              v235 = *v234;
              if (v236 == *v234)
              {
                goto LABEL_365;
              }
            }

            if (v247)
            {
              v234 = v247;
            }

            v246 = *(v238 + 8);
            if (4 * v246 + 4 >= 3 * v239)
            {
LABEL_391:
              v239 *= 2;
LABEL_392:
              llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v238, v239);
              v251 = *v240;
              if (*v240)
              {
                v252 = 0x9DDFEA08EB382D69 * ((8 * v236 - 0xAE502812AA7333) ^ HIDWORD(v236));
                v253 = 0x9DDFEA08EB382D69 * (HIDWORD(v236) ^ (v252 >> 47) ^ v252);
                LODWORD(v252) = -348639895 * ((v253 >> 47) ^ v253);
                v254 = v251 - 1;
                v255 = (v251 - 1) & v252;
                v234 = (*v238 + 16 * v255);
                v256 = *v234;
                if (v236 != *v234)
                {
                  v257 = 0;
                  v258 = 1;
                  while (v256 != -4096)
                  {
                    if (v257)
                    {
                      v259 = 0;
                    }

                    else
                    {
                      v259 = v256 == -8192;
                    }

                    if (v259)
                    {
                      v257 = v234;
                    }

                    v260 = v255 + v258++;
                    v255 = v260 & v254;
                    v234 = (*v238 + 16 * (v260 & v254));
                    v256 = *v234;
                    result = v547;
                    if (v236 == *v234)
                    {
                      goto LABEL_434;
                    }
                  }

                  if (v257)
                  {
                    v234 = v257;
                  }
                }
              }

              else
              {
                v234 = 0;
              }

              result = v547;
LABEL_434:
              ++*(v238 + 8);
              if (*v234 == -4096)
              {
                goto LABEL_378;
              }

LABEL_377:
              --*(v238 + 12);
              goto LABEL_378;
            }

LABEL_375:
            if (v239 + ~v246 - *(v238 + 12) <= v239 >> 3)
            {
              goto LABEL_392;
            }

            *(v238 + 8) = v246 + 1;
            if (*v234 != -4096)
            {
              goto LABEL_377;
            }

LABEL_378:
            *v234 = v236;
            v234[1] = 0;
LABEL_365:
            ;
          }

          while (v245 < v234[1]);
          if (v8 >= v178)
          {
            goto LABEL_443;
          }
        }
      }

      result = v547;
LABEL_443:
      v275 = (v8 - 1);
      a2 = v544;
      if (v8 - 1 != result)
      {
        *result = *v275;
      }

      a5 = 0;
      *v275 = v171;
      a4 = v170;
      goto LABEL_2;
    }

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(&v9[v10 >> 1], v9, v13, a3);
    v14 = v547;
    v16 = a4 - 1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    v534 = v16;
    v20 = *v14;
    v21 = HIDWORD(*v14);
    v22 = 0x9DDFEA08EB382D69 * ((8 * *v14 - 0xAE502812AA7333) ^ v21);
    v23 = -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22)));
    v24 = v14;
    v25 = v544;
    do
    {
      v38 = v24;
      v40 = v24[1];
      ++v24;
      v39 = v40;
      v41 = *a3;
      v43 = (*a3 + 16);
      v42 = *v43;
      if (!*v43)
      {
        goto LABEL_70;
      }

      v26 = *v41;
      v27 = 0x9DDFEA08EB382D69 * ((8 * v39 - 0xAE502812AA7333) ^ HIDWORD(v39));
      v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v39) ^ (v27 >> 47) ^ v27);
      v29 = v42 - 1;
      v30 = (-348639895 * ((v28 >> 47) ^ v28)) & (v42 - 1);
      v31 = (*v41 + 16 * v30);
      v32 = *v31;
      if (v39 == *v31)
      {
        v33 = v31[1];
        goto LABEL_20;
      }

      v57 = 0;
      v58 = 1;
      while (v32 != -4096)
      {
        if (v57)
        {
          v59 = 0;
        }

        else
        {
          v59 = v32 == -8192;
        }

        if (v59)
        {
          v57 = v31;
        }

        v60 = v30 + v58++;
        v30 = v60 & v29;
        v31 = (v26 + 16 * (v60 & v29));
        v32 = *v31;
        if (v39 == *v31)
        {
          goto LABEL_28;
        }
      }

      if (v57)
      {
        v31 = v57;
      }

      v61 = *(v41 + 8);
      if (4 * v61 + 4 >= 3 * v42)
      {
LABEL_70:
        v42 *= 2;
LABEL_71:
        llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v42);
        v62 = *(v41 + 16);
        if (v62)
        {
          v63 = 0x9DDFEA08EB382D69 * ((8 * v39 - 0xAE502812AA7333) ^ HIDWORD(v39));
          v64 = 0x9DDFEA08EB382D69 * (HIDWORD(v39) ^ (v63 >> 47) ^ v63);
          LODWORD(v63) = -348639895 * ((v64 >> 47) ^ v64);
          v65 = v62 - 1;
          v66 = (v62 - 1) & v63;
          v31 = (*v41 + 16 * v66);
          v67 = *v31;
          if (v39 != *v31)
          {
            v68 = 0;
            v69 = 1;
            while (v67 != -4096)
            {
              if (v68)
              {
                v70 = 0;
              }

              else
              {
                v70 = v67 == -8192;
              }

              if (v70)
              {
                v68 = v31;
              }

              v71 = v66 + v69++;
              v66 = v71 & v65;
              v31 = (*v41 + 16 * (v71 & v65));
              v67 = *v31;
              v25 = v544;
              v14 = v547;
              if (v39 == *v31)
              {
                goto LABEL_84;
              }
            }

            if (v68)
            {
              v31 = v68;
            }

            v25 = v544;
          }
        }

        else
        {
          v31 = 0;
        }

        v14 = v547;
LABEL_84:
        ++*(v41 + 8);
        if (*v31 == -4096)
        {
          goto LABEL_27;
        }

LABEL_26:
        --*(v41 + 12);
        goto LABEL_27;
      }

      if (v42 + ~v61 - *(v41 + 12) <= v42 >> 3)
      {
        goto LABEL_71;
      }

      *(v41 + 8) = v61 + 1;
      if (*v31 != -4096)
      {
        goto LABEL_26;
      }

LABEL_27:
      *v31 = v39;
      v31[1] = 0;
      v41 = *a3;
      v26 = **a3;
      v42 = *(*a3 + 16);
LABEL_28:
      v33 = v31[1];
      v43 = (v41 + 16);
      if (!v42)
      {
        goto LABEL_46;
      }

LABEL_20:
      v34 = v42 - 1;
      v35 = (v42 - 1) & v23;
      v36 = (v26 + 16 * v35);
      v37 = *v36;
      if (v20 == *v36)
      {
        continue;
      }

      v44 = 0;
      v45 = 1;
      while (v37 != -4096)
      {
        if (v44)
        {
          v46 = 0;
        }

        else
        {
          v46 = v37 == -8192;
        }

        if (v46)
        {
          v44 = v36;
        }

        v47 = v35 + v45++;
        v35 = v47 & v34;
        v36 = (v26 + 16 * (v47 & v34));
        v37 = *v36;
        if (v20 == *v36)
        {
          goto LABEL_21;
        }
      }

      if (v44)
      {
        v36 = v44;
      }

      v48 = *(v41 + 8);
      if (4 * v48 + 4 >= 3 * v42)
      {
LABEL_46:
        v42 *= 2;
LABEL_47:
        llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v41, v42);
        v49 = *v43;
        if (*v43)
        {
          v50 = v49 - 1;
          v51 = (v49 - 1) & v23;
          v36 = (*v41 + 16 * v51);
          v52 = *v36;
          if (v20 != *v36)
          {
            v53 = 0;
            v54 = 1;
            while (v52 != -4096)
            {
              if (v53)
              {
                v55 = 0;
              }

              else
              {
                v55 = v52 == -8192;
              }

              if (v55)
              {
                v53 = v36;
              }

              v56 = v51 + v54++;
              v51 = v56 & v50;
              v36 = (*v41 + 16 * (v56 & v50));
              v52 = *v36;
              v25 = v544;
              v14 = v547;
              if (v20 == *v36)
              {
                goto LABEL_88;
              }
            }

            if (v53)
            {
              v36 = v53;
            }

            v25 = v544;
          }
        }

        else
        {
          v36 = 0;
        }

        v14 = v547;
LABEL_88:
        ++*(v41 + 8);
        if (*v36 == -4096)
        {
          goto LABEL_33;
        }

LABEL_32:
        --*(v41 + 12);
        goto LABEL_33;
      }

      if (v42 + ~v48 - *(v41 + 12) <= v42 >> 3)
      {
        goto LABEL_47;
      }

      *(v41 + 8) = v48 + 1;
      if (*v36 != -4096)
      {
        goto LABEL_32;
      }

LABEL_33:
      *v36 = v20;
      v36[1] = 0;
LABEL_21:
      ;
    }

    while (v33 < v36[1]);
    v72 = v25;
    if (v38 == v14)
    {
      v72 = v25;
      do
      {
        if (v24 >= v72)
        {
          break;
        }

        v75 = *--v72;
        v548 = v20;
        v549 = v75;
        v76 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
      }

      while (v76 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548));
    }

    else
    {
      do
      {
        v73 = *--v72;
        v548 = v20;
        v549 = v73;
        v74 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
      }

      while (v74 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548));
    }

    v536 = v72;
    v539 = v24;
    result = v547;
    if (v24 < v72)
    {
      v77 = v24;
      do
      {
        v78 = *v77;
        *v77 = *v72;
        *v72 = v78;
        do
        {
          v38 = v77;
          v84 = v77[1];
          ++v77;
          v83 = v84;
          v85 = *a3;
          v87 = (*a3 + 16);
          v86 = *v87;
          if (!*v87)
          {
            goto LABEL_158;
          }

          v88 = *v85;
          v89 = 0x9DDFEA08EB382D69 * ((8 * v83 - 0xAE502812AA7333) ^ HIDWORD(v83));
          v90 = 0x9DDFEA08EB382D69 * (HIDWORD(v83) ^ (v89 >> 47) ^ v89);
          v79 = v86 - 1;
          v91 = (-348639895 * ((v90 >> 47) ^ v90)) & (v86 - 1);
          v92 = (*v85 + 16 * v91);
          v93 = *v92;
          if (v83 == *v92)
          {
            v94 = v92[1];
            v80 = v79 & v23;
            v81 = (v88 + 16 * (v79 & v23));
            v82 = *v81;
            if (v20 == *v81)
            {
              continue;
            }

            goto LABEL_111;
          }

          v108 = 0;
          v109 = 1;
          while (v93 != -4096)
          {
            if (v108)
            {
              v110 = 0;
            }

            else
            {
              v110 = v93 == -8192;
            }

            if (v110)
            {
              v108 = v92;
            }

            v111 = v91 + v109++;
            v91 = v111 & v79;
            v92 = (v88 + 16 * v91);
            v93 = *v92;
            if (v83 == *v92)
            {
              v94 = v92[1];
              v87 = (v85 + 16);
              goto LABEL_106;
            }
          }

          v112 = v108 ? v108 : v92;
          v113 = *(v85 + 8);
          if (4 * v113 + 4 >= 3 * v86)
          {
LABEL_158:
            v86 *= 2;
LABEL_159:
            llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v86);
            v114 = *(v85 + 16);
            if (v114)
            {
              v115 = 0x9DDFEA08EB382D69 * ((8 * v83 - 0xAE502812AA7333) ^ HIDWORD(v83));
              v116 = 0x9DDFEA08EB382D69 * (HIDWORD(v83) ^ (v115 >> 47) ^ v115);
              LODWORD(v115) = -348639895 * ((v116 >> 47) ^ v116);
              v117 = v114 - 1;
              v118 = (v114 - 1) & v115;
              v112 = (*v85 + 16 * v118);
              v119 = *v112;
              if (v83 != *v112)
              {
                v120 = 0;
                v121 = 1;
                result = v547;
                while (v119 != -4096)
                {
                  if (v120)
                  {
                    v122 = 0;
                  }

                  else
                  {
                    v122 = v119 == -8192;
                  }

                  if (v122)
                  {
                    v120 = v112;
                  }

                  v123 = v118 + v121++;
                  v118 = v123 & v117;
                  v112 = (*v85 + 16 * (v123 & v117));
                  v119 = *v112;
                  if (v83 == *v112)
                  {
                    goto LABEL_172;
                  }
                }

                if (v120)
                {
                  v112 = v120;
                }

LABEL_172:
                ++*(v85 + 8);
                if (*v112 == -4096)
                {
                  goto LABEL_124;
                }

                goto LABEL_123;
              }
            }

            else
            {
              v112 = 0;
            }

            result = v547;
            goto LABEL_172;
          }

          if (v86 + ~v113 - *(v85 + 12) <= v86 >> 3)
          {
            goto LABEL_159;
          }

          *(v85 + 8) = v113 + 1;
          if (*v112 == -4096)
          {
            goto LABEL_124;
          }

LABEL_123:
          --*(v85 + 12);
LABEL_124:
          v94 = 0;
          *v112 = v83;
          v112[1] = 0;
          v85 = *a3;
          v88 = **a3;
          v86 = *(*a3 + 16);
          v87 = (*a3 + 16);
          if (!v86)
          {
            v81 = 0;
            v99 = *(v85 + 8);
            if (4 * v99 + 4 >= 3 * v86)
            {
              goto LABEL_133;
            }

            goto LABEL_126;
          }

LABEL_106:
          v79 = v86 - 1;
          v80 = (v86 - 1) & v23;
          v81 = (v88 + 16 * v80);
          v82 = *v81;
          if (v20 == *v81)
          {
            continue;
          }

LABEL_111:
          v95 = 0;
          v96 = 1;
          while (v82 != -4096)
          {
            if (v95)
            {
              v97 = 0;
            }

            else
            {
              v97 = v82 == -8192;
            }

            if (v97)
            {
              v95 = v81;
            }

            v98 = v80 + v96++;
            v80 = v98 & v79;
            v81 = (v88 + 16 * (v98 & v79));
            v82 = *v81;
            if (v20 == *v81)
            {
              goto LABEL_107;
            }
          }

          if (v95)
          {
            v81 = v95;
          }

          v99 = *(v85 + 8);
          if (4 * v99 + 4 >= 3 * v86)
          {
LABEL_133:
            v86 *= 2;
LABEL_134:
            llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v85, v86);
            v100 = *v87;
            if (*v87)
            {
              v101 = v100 - 1;
              v102 = (v100 - 1) & v23;
              v81 = (*v85 + 16 * v102);
              v103 = *v81;
              if (v20 != *v81)
              {
                v104 = 0;
                v105 = 1;
                result = v547;
                while (v103 != -4096)
                {
                  if (v104)
                  {
                    v106 = 0;
                  }

                  else
                  {
                    v106 = v103 == -8192;
                  }

                  if (v106)
                  {
                    v104 = v81;
                  }

                  v107 = v102 + v105++;
                  v102 = v107 & v101;
                  v81 = (*v85 + 16 * (v107 & v101));
                  v103 = *v81;
                  if (v20 == *v81)
                  {
                    goto LABEL_176;
                  }
                }

                if (v104)
                {
                  v81 = v104;
                }

LABEL_176:
                ++*(v85 + 8);
                if (*v81 == -4096)
                {
                  goto LABEL_129;
                }

LABEL_128:
                --*(v85 + 12);
                goto LABEL_129;
              }
            }

            else
            {
              v81 = 0;
            }

            result = v547;
            goto LABEL_176;
          }

LABEL_126:
          if (v86 + ~v99 - *(v85 + 12) <= v86 >> 3)
          {
            goto LABEL_134;
          }

          *(v85 + 8) = v99 + 1;
          if (*v81 != -4096)
          {
            goto LABEL_128;
          }

LABEL_129:
          *v81 = v20;
          v81[1] = 0;
LABEL_107:
          ;
        }

        while (v94 < v81[1]);
        do
        {
          v129 = *--v72;
          v128 = v129;
          v130 = *a3;
          v132 = (*a3 + 16);
          v131 = *v132;
          if (!*v132)
          {
            goto LABEL_236;
          }

          v133 = *v130;
          v134 = 0x9DDFEA08EB382D69 * ((8 * v128 - 0xAE502812AA7333) ^ HIDWORD(v128));
          v135 = 0x9DDFEA08EB382D69 * (HIDWORD(v128) ^ (v134 >> 47) ^ v134);
          v124 = v131 - 1;
          v136 = (-348639895 * ((v135 >> 47) ^ v135)) & (v131 - 1);
          v137 = (*v130 + 16 * v136);
          v138 = *v137;
          if (v128 == *v137)
          {
            v139 = v137[1];
            v125 = v124 & v23;
            v126 = (v133 + 16 * (v124 & v23));
            v127 = *v126;
            if (v20 == *v126)
            {
              continue;
            }

            goto LABEL_189;
          }

          v153 = 0;
          v154 = 1;
          while (v138 != -4096)
          {
            if (v153)
            {
              v155 = 0;
            }

            else
            {
              v155 = v138 == -8192;
            }

            if (v155)
            {
              v153 = v137;
            }

            v156 = v136 + v154++;
            v136 = v156 & v124;
            v137 = (v133 + 16 * v136);
            v138 = *v137;
            if (v128 == *v137)
            {
              v139 = v137[1];
              v132 = (v130 + 16);
              goto LABEL_184;
            }
          }

          v157 = v153 ? v153 : v137;
          v158 = *(v130 + 8);
          if (4 * v158 + 4 >= 3 * v131)
          {
LABEL_236:
            v131 *= 2;
LABEL_237:
            llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v131);
            v159 = *(v130 + 16);
            if (v159)
            {
              v160 = 0x9DDFEA08EB382D69 * ((8 * v128 - 0xAE502812AA7333) ^ HIDWORD(v128));
              v161 = 0x9DDFEA08EB382D69 * (HIDWORD(v128) ^ (v160 >> 47) ^ v160);
              LODWORD(v160) = -348639895 * ((v161 >> 47) ^ v161);
              v162 = v159 - 1;
              v163 = (v159 - 1) & v160;
              v157 = (*v130 + 16 * v163);
              v164 = *v157;
              if (v128 != *v157)
              {
                v165 = 0;
                v166 = 1;
                result = v547;
                while (v164 != -4096)
                {
                  if (v165)
                  {
                    v167 = 0;
                  }

                  else
                  {
                    v167 = v164 == -8192;
                  }

                  if (v167)
                  {
                    v165 = v157;
                  }

                  v168 = v163 + v166++;
                  v163 = v168 & v162;
                  v157 = (*v130 + 16 * (v168 & v162));
                  v164 = *v157;
                  if (v128 == *v157)
                  {
                    goto LABEL_250;
                  }
                }

                if (v165)
                {
                  v157 = v165;
                }

LABEL_250:
                ++*(v130 + 8);
                if (*v157 == -4096)
                {
                  goto LABEL_202;
                }

                goto LABEL_201;
              }
            }

            else
            {
              v157 = 0;
            }

            result = v547;
            goto LABEL_250;
          }

          if (v131 + ~v158 - *(v130 + 12) <= v131 >> 3)
          {
            goto LABEL_237;
          }

          *(v130 + 8) = v158 + 1;
          if (*v157 == -4096)
          {
            goto LABEL_202;
          }

LABEL_201:
          --*(v130 + 12);
LABEL_202:
          v139 = 0;
          *v157 = v128;
          v157[1] = 0;
          v130 = *a3;
          v133 = **a3;
          v131 = *(*a3 + 16);
          v132 = (*a3 + 16);
          if (!v131)
          {
            v126 = 0;
            v144 = *(v130 + 8);
            if (4 * v144 + 4 >= 3 * v131)
            {
              goto LABEL_211;
            }

            goto LABEL_204;
          }

LABEL_184:
          v124 = v131 - 1;
          v125 = (v131 - 1) & v23;
          v126 = (v133 + 16 * v125);
          v127 = *v126;
          if (v20 == *v126)
          {
            continue;
          }

LABEL_189:
          v140 = 0;
          v141 = 1;
          while (v127 != -4096)
          {
            if (v140)
            {
              v142 = 0;
            }

            else
            {
              v142 = v127 == -8192;
            }

            if (v142)
            {
              v140 = v126;
            }

            v143 = v125 + v141++;
            v125 = v143 & v124;
            v126 = (v133 + 16 * (v143 & v124));
            v127 = *v126;
            if (v20 == *v126)
            {
              goto LABEL_185;
            }
          }

          if (v140)
          {
            v126 = v140;
          }

          v144 = *(v130 + 8);
          if (4 * v144 + 4 >= 3 * v131)
          {
LABEL_211:
            v131 *= 2;
LABEL_212:
            llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v130, v131);
            v145 = *v132;
            if (*v132)
            {
              v146 = v145 - 1;
              v147 = (v145 - 1) & v23;
              v126 = (*v130 + 16 * v147);
              v148 = *v126;
              if (v20 != *v126)
              {
                v149 = 0;
                v150 = 1;
                result = v547;
                while (v148 != -4096)
                {
                  if (v149)
                  {
                    v151 = 0;
                  }

                  else
                  {
                    v151 = v148 == -8192;
                  }

                  if (v151)
                  {
                    v149 = v126;
                  }

                  v152 = v147 + v150++;
                  v147 = v152 & v146;
                  v126 = (*v130 + 16 * (v152 & v146));
                  v148 = *v126;
                  if (v20 == *v126)
                  {
                    goto LABEL_254;
                  }
                }

                if (v149)
                {
                  v126 = v149;
                }

LABEL_254:
                ++*(v130 + 8);
                if (*v126 == -4096)
                {
                  goto LABEL_207;
                }

LABEL_206:
                --*(v130 + 12);
                goto LABEL_207;
              }
            }

            else
            {
              v126 = 0;
            }

            result = v547;
            goto LABEL_254;
          }

LABEL_204:
          if (v131 + ~v144 - *(v130 + 12) <= v131 >> 3)
          {
            goto LABEL_212;
          }

          *(v130 + 8) = v144 + 1;
          if (*v126 != -4096)
          {
            goto LABEL_206;
          }

LABEL_207:
          *v126 = v20;
          v126[1] = 0;
LABEL_185:
          ;
        }

        while (v139 >= v126[1]);
      }

      while (v77 < v72);
    }

    if (v38 != result)
    {
      *result = *v38;
    }

    *v38 = v20;
    a2 = v544;
    a4 = v534;
    if (v539 < v536)
    {
      goto LABEL_269;
    }

    v169 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(result, v38, a3);
    v8 = v38 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(v38 + 1, v544, a3);
    if (!result)
    {
      result = v547;
      if (!v169)
      {
LABEL_269:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,false>(result, v38, a3, v534, a5 & 1);
        a5 = 0;
        v8 = v38 + 1;
      }

      goto LABEL_2;
    }

    a2 = v38;
    v9 = v547;
    if (v169)
    {
      return result;
    }
  }

  v279 = v9 + 1;
  v281 = v9 == a2 || v279 == a2;
  if ((a5 & 1) == 0)
  {
    if (v281)
    {
      return result;
    }

LABEL_740:
    v476 = v279;
    v477 = v9[1];
    v478 = v9;
    v548 = *v9;
    v549 = v477;
    v479 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
    if (v479 >= *result)
    {
      goto LABEL_739;
    }

    v480 = *v476;
    v481 = HIDWORD(*v476);
    v482 = 0x9DDFEA08EB382D69 * ((8 * *v476 - 0xAE502812AA7333) ^ v481);
    v483 = -348639895 * ((((0x9DDFEA08EB382D69 * (v481 ^ (v482 >> 47) ^ v482)) >> 32) >> 15) ^ (-348639895 * (v481 ^ (v482 >> 47) ^ v482)));
    v484 = v476;
    result = v478;
LABEL_745:
    v491 = v484;
    v484 = result;
    *v491 = *result;
    v493 = *(result - 8);
    result -= 8;
    v492 = v493;
    v494 = *a3;
    v496 = (*a3 + 16);
    v495 = *v496;
    if (!*v496)
    {
      goto LABEL_795;
    }

    v497 = *v494;
    v485 = v495 - 1;
    v498 = (v495 - 1) & v483;
    v499 = (*v494 + 16 * v498);
    v500 = *v499;
    if (v480 == *v499)
    {
      v501 = v499[1];
      goto LABEL_743;
    }

    v518 = 0;
    v519 = 1;
    while (v500 != -4096)
    {
      if (v518)
      {
        v520 = 0;
      }

      else
      {
        v520 = v500 == -8192;
      }

      if (v520)
      {
        v518 = v499;
      }

      v521 = v498 + v519++;
      v498 = v521 & v485;
      v499 = (v497 + 16 * v498);
      v500 = *v499;
      if (v480 == *v499)
      {
        v501 = v499[1];
        v496 = (v494 + 16);
LABEL_742:
        v485 = v495 - 1;
LABEL_743:
        v486 = 0x9DDFEA08EB382D69 * ((8 * v492 - 0xAE502812AA7333) ^ HIDWORD(v492));
        v487 = 0x9DDFEA08EB382D69 * (HIDWORD(v492) ^ (v486 >> 47) ^ v486);
        v488 = v485 & (-348639895 * ((v487 >> 47) ^ v487));
        v489 = (v497 + 16 * v488);
        v490 = *v489;
        if (v492 != *v489)
        {
          v503 = 0;
          v504 = 1;
          while (v490 != -4096)
          {
            if (v503)
            {
              v505 = 0;
            }

            else
            {
              v505 = v490 == -8192;
            }

            if (v505)
            {
              v503 = v489;
            }

            v506 = v488 + v504++;
            v488 = v506 & v485;
            v489 = (v497 + 16 * (v506 & v485));
            v490 = *v489;
            if (v492 == *v489)
            {
              goto LABEL_744;
            }
          }

          if (v503)
          {
            v489 = v503;
          }

          v502 = *(v494 + 8);
          if (4 * v502 + 4 >= 3 * v495)
          {
            goto LABEL_770;
          }

LABEL_754:
          if (v495 + ~v502 - *(v494 + 12) > v495 >> 3)
          {
            *(v494 + 8) = v502 + 1;
            if (*v489 != -4096)
            {
              goto LABEL_756;
            }

            goto LABEL_757;
          }

LABEL_771:
          v507 = result;
          llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v494, v495);
          v508 = *v496;
          if (*v496)
          {
            v509 = 0x9DDFEA08EB382D69 * ((8 * v492 - 0xAE502812AA7333) ^ HIDWORD(v492));
            v510 = 0x9DDFEA08EB382D69 * (HIDWORD(v492) ^ (v509 >> 47) ^ v509);
            LODWORD(v509) = -348639895 * ((v510 >> 47) ^ v510);
            v511 = v508 - 1;
            v512 = (v508 - 1) & v509;
            v489 = (*v494 + 16 * v512);
            v513 = *v489;
            if (v492 != *v489)
            {
              v514 = 0;
              v515 = 1;
              while (v513 != -4096)
              {
                if (v514)
                {
                  v516 = 0;
                }

                else
                {
                  v516 = v513 == -8192;
                }

                if (v516)
                {
                  v514 = v489;
                }

                v517 = v512 + v515++;
                v512 = v517 & v511;
                v489 = (*v494 + 16 * (v517 & v511));
                v513 = *v489;
                result = v507;
                if (v492 == *v489)
                {
                  goto LABEL_813;
                }
              }

              if (v514)
              {
                v489 = v514;
              }
            }
          }

          else
          {
            v489 = 0;
          }

          result = v507;
LABEL_813:
          ++*(v494 + 8);
          if (*v489 != -4096)
          {
LABEL_756:
            --*(v494 + 12);
          }

LABEL_757:
          *v489 = v492;
          v489[1] = 0;
        }

LABEL_744:
        if (v501 < v489[1])
        {
          goto LABEL_745;
        }

        *v484 = v480;
        a2 = v544;
LABEL_739:
        v279 = v476 + 1;
        v9 = v476;
        if (v476 + 1 == a2)
        {
          return result;
        }

        goto LABEL_740;
      }
    }

    if (v518)
    {
      v522 = v518;
    }

    else
    {
      v522 = v499;
    }

    v523 = *(v494 + 8);
    if (4 * v523 + 4 < 3 * v495)
    {
      if (v495 + ~v523 - *(v494 + 12) > v495 >> 3)
      {
        *(v494 + 8) = v523 + 1;
        if (*v522 == -4096)
        {
LABEL_752:
          v501 = 0;
          *v522 = v480;
          v522[1] = 0;
          v494 = *a3;
          v497 = **a3;
          v495 = *(*a3 + 16);
          v496 = (*a3 + 16);
          if (v495)
          {
            goto LABEL_742;
          }

          v489 = 0;
          v502 = *(v494 + 8);
          if (4 * v502 + 4 < 3 * v495)
          {
            goto LABEL_754;
          }

LABEL_770:
          v495 *= 2;
          goto LABEL_771;
        }

LABEL_751:
        --*(v494 + 12);
        goto LABEL_752;
      }
    }

    else
    {
LABEL_795:
      v495 *= 2;
    }

    v524 = result;
    llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v495);
    v525 = *(v494 + 16);
    if (v525)
    {
      v526 = v525 - 1;
      v527 = (v525 - 1) & v483;
      v522 = (*v494 + 16 * v527);
      v528 = *v522;
      if (v480 != *v522)
      {
        v529 = 0;
        v530 = 1;
        while (v528 != -4096)
        {
          if (v529)
          {
            v531 = 0;
          }

          else
          {
            v531 = v528 == -8192;
          }

          if (v531)
          {
            v529 = v522;
          }

          v532 = v527 + v530++;
          v527 = v532 & v526;
          v522 = (*v494 + 16 * (v532 & v526));
          v528 = *v522;
          result = v524;
          if (v480 == *v522)
          {
            goto LABEL_809;
          }
        }

        if (v529)
        {
          v522 = v529;
        }
      }
    }

    else
    {
      v522 = 0;
    }

    result = v524;
LABEL_809:
    ++*(v494 + 8);
    if (*v522 == -4096)
    {
      goto LABEL_752;
    }

    goto LABEL_751;
  }

  if (v281)
  {
    return result;
  }

  v282 = v9;
  while (2)
  {
    v284 = v279;
    v285 = v282[1];
    v548 = *v282;
    v549 = v285;
    v286 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v549);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v548);
    v287 = v547;
    if (v286 >= *result)
    {
      goto LABEL_462;
    }

    v288 = *v284;
    v289 = HIDWORD(*v284);
    v290 = 0x9DDFEA08EB382D69 * ((8 * *v284 - 0xAE502812AA7333) ^ v289);
    v291 = -348639895 * ((((0x9DDFEA08EB382D69 * (v289 ^ (v290 >> 47) ^ v290)) >> 32) >> 15) ^ (-348639895 * (v289 ^ (v290 >> 47) ^ v290)));
    v283 = v284;
    while (2)
    {
      *v283 = *v282;
      if (v282 != v287)
      {
        v283 = v282;
        v299 = *--v282;
        v298 = v299;
        v300 = *a3;
        v302 = (*a3 + 16);
        v301 = *v302;
        if (!*v302)
        {
          goto LABEL_519;
        }

        v303 = *v300;
        v292 = v301 - 1;
        v304 = (v301 - 1) & v291;
        v305 = (*v300 + 16 * v304);
        v306 = *v305;
        if (v288 == *v305)
        {
          v307 = v305[1];
LABEL_466:
          v293 = 0x9DDFEA08EB382D69 * ((8 * v298 - 0xAE502812AA7333) ^ HIDWORD(v298));
          v294 = 0x9DDFEA08EB382D69 * (HIDWORD(v298) ^ (v293 >> 47) ^ v293);
          v295 = v292 & (-348639895 * ((v294 >> 47) ^ v294));
          v296 = (v303 + 16 * v295);
          v297 = *v296;
          if (v298 == *v296)
          {
LABEL_467:
            if (v307 >= v296[1])
            {
              goto LABEL_461;
            }

            continue;
          }

          v309 = 0;
          v310 = 1;
          while (v297 != -4096)
          {
            result = -8192;
            if (v309)
            {
              v311 = 0;
            }

            else
            {
              v311 = v297 == -8192;
            }

            if (v311)
            {
              v309 = v296;
            }

            v312 = v295 + v310++;
            v295 = v312 & v292;
            v296 = (v303 + 16 * (v312 & v292));
            v297 = *v296;
            if (v298 == *v296)
            {
              goto LABEL_467;
            }
          }

          if (v309)
          {
            v296 = v309;
          }

          v308 = *(v300 + 8);
          if (4 * v308 + 4 >= 3 * v301)
          {
LABEL_494:
            v301 *= 2;
LABEL_495:
            result = llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(v300, v301);
            v313 = *v302;
            if (*v302)
            {
              v314 = 0x9DDFEA08EB382D69 * ((8 * v298 - 0xAE502812AA7333) ^ HIDWORD(v298));
              v315 = 0x9DDFEA08EB382D69 * (HIDWORD(v298) ^ (v314 >> 47) ^ v314);
              LODWORD(v314) = -348639895 * ((v315 >> 47) ^ v315);
              v316 = v313 - 1;
              v317 = (v313 - 1) & v314;
              v296 = (*v300 + 16 * v317);
              v318 = *v296;
              if (v298 != *v296)
              {
                v319 = 0;
                v320 = 1;
                while (v318 != -4096)
                {
                  if (v319)
                  {
                    v321 = 0;
                  }

                  else
                  {
                    v321 = v318 == -8192;
                  }

                  if (v321)
                  {
                    v319 = v296;
                  }

                  v322 = v317 + v320++;
                  v317 = v322 & v316;
                  v296 = (*v300 + 16 * (v322 & v316));
                  v318 = *v296;
                  v287 = v547;
                  if (v298 == *v296)
                  {
                    goto LABEL_537;
                  }
                }

                if (v319)
                {
                  v296 = v319;
                }
              }
            }

            else
            {
              v296 = 0;
            }

            v287 = v547;
LABEL_537:
            ++*(v300 + 8);
            if (*v296 == -4096)
            {
              goto LABEL_481;
            }

            goto LABEL_480;
          }

LABEL_478:
          if (v301 + ~v308 - *(v300 + 12) <= v301 >> 3)
          {
            goto LABEL_495;
          }

          *(v300 + 8) = v308 + 1;
          if (*v296 == -4096)
          {
LABEL_481:
            *v296 = v298;
            v296[1] = 0;
            goto LABEL_467;
          }

LABEL_480:
          --*(v300 + 12);
          goto LABEL_481;
        }

        v323 = 0;
        v324 = 1;
        while (v306 != -4096)
        {
          result = -8192;
          if (v323)
          {
            v325 = 0;
          }

          else
          {
            v325 = v306 == -8192;
          }

          if (v325)
          {
            v323 = v305;
          }

          v326 = v304 + v324++;
          v304 = v326 & v292;
          v305 = (v303 + 16 * v304);
          v306 = *v305;
          if (v288 == *v305)
          {
            v307 = v305[1];
            v302 = (v300 + 16);
            goto LABEL_465;
          }
        }

        v327 = v323 ? v323 : v305;
        v328 = *(v300 + 8);
        if (4 * v328 + 4 < 3 * v301)
        {
          if (v301 + ~v328 - *(v300 + 12) <= v301 >> 3)
          {
            goto LABEL_520;
          }

          *(v300 + 8) = v328 + 1;
          if (*v327 == -4096)
          {
LABEL_476:
            v307 = 0;
            *v327 = v288;
            v327[1] = 0;
            v300 = *a3;
            v303 = **a3;
            v301 = *(*a3 + 16);
            v302 = (*a3 + 16);
            if (v301)
            {
LABEL_465:
              v292 = v301 - 1;
              goto LABEL_466;
            }

            v296 = 0;
            v308 = *(v300 + 8);
            if (4 * v308 + 4 >= 3 * v301)
            {
              goto LABEL_494;
            }

            goto LABEL_478;
          }
        }

        else
        {
LABEL_519:
          v301 *= 2;
LABEL_520:
          result = llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::grow(*a3, v301);
          v329 = *(v300 + 16);
          if (v329)
          {
            v330 = v329 - 1;
            v331 = (v329 - 1) & v291;
            v327 = (*v300 + 16 * v331);
            v332 = *v327;
            if (v288 != *v327)
            {
              v333 = 0;
              v334 = 1;
              while (v332 != -4096)
              {
                if (v333)
                {
                  v335 = 0;
                }

                else
                {
                  v335 = v332 == -8192;
                }

                if (v335)
                {
                  v333 = v327;
                }

                v336 = v331 + v334++;
                v331 = v336 & v330;
                v327 = (*v300 + 16 * (v336 & v330));
                v332 = *v327;
                v287 = v547;
                if (v288 == *v327)
                {
                  goto LABEL_533;
                }
              }

              if (v333)
              {
                v327 = v333;
              }
            }
          }

          else
          {
            v327 = 0;
          }

          v287 = v547;
LABEL_533:
          ++*(v300 + 8);
          if (*v327 == -4096)
          {
            goto LABEL_476;
          }
        }

        --*(v300 + 12);
        goto LABEL_476;
      }

      break;
    }

    v283 = v287;
LABEL_461:
    *v283 = v288;
    a2 = v544;
LABEL_462:
    v279 = v284 + 1;
    v282 = v284;
    if (v284 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v22 = *a1;
  v23 = v8;
  v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v23);
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v22);
  v11 = *a3;
  if (v9 >= *v10)
  {
    v22 = *a2;
    v23 = v11;
    v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v23);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v22);
    if (v15 < *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a2;
      v22 = *a1;
      v23 = v17;
      v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v23);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v22);
      if (v18 < *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  else
  {
    v22 = *a2;
    v23 = v11;
    v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v23);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v22);
    v14 = *a1;
    if (v12 < *result)
    {
      *a1 = *a3;
LABEL_10:
      *a3 = v14;
      return result;
    }

    *a1 = *a2;
    *a2 = v14;
    v20 = *a3;
    v22 = v14;
    v23 = v20;
    v21 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v23);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a4, &v22);
    if (v21 < *result)
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(a1, a2, a3, a5);
  v10 = *a4;
  v20 = *a3;
  v21 = v10;
  v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a5, &v21);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a5, &v20);
  if (v11 < *result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a3;
    v20 = *a2;
    v21 = v14;
    v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a5, &v21);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a5, &v20);
    if (v15 < *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a2;
      v20 = *a1;
      v21 = v17;
      v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a5, &v21);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a5, &v20);
      if (v18 < *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v25 = *a4;
  v26 = v12;
  v13 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v26);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v25);
  if (v13 < *result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a4;
    v25 = *a3;
    v26 = v16;
    v17 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v26);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v25);
    if (v17 < *result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a3;
      v25 = *a2;
      v26 = v19;
      v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v26);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v25);
      if (v20 < *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a2;
        v25 = *a1;
        v26 = v22;
        v23 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v26);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a6, &v25);
        if (v23 < *result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v20 = *a1;
        v21 = v7;
        v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v21);
        if (v8 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v20))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_2::operator() const(llvm::SmallPtrSet<mlir::Value,16u> const&)::{lambda(mlir::Value,mlir::Value)#1} &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    v20 = *v10;
    v21 = v14;
    v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v21);
    if (v15 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v20))
    {
      break;
    }

LABEL_20:
    v10 = v11;
    v12 += 8;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  v16 = *v11;
  v17 = v12;
  do
  {
    *(a1 + v17 + 24) = *(a1 + v17 + 16);
    if (v17 == -16)
    {
      *a1 = v16;
      if (++v13 != 8)
      {
        goto LABEL_20;
      }

      return v11 + 1 == a2;
    }

    v20 = *(a1 + v17 + 8);
    v21 = v16;
    v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v21);
    v17 -= 8;
  }

  while (v18 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>,mlir::Value,unsigned long,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned long>>::operator[](*a3, &v20));
  *(a1 + v17 + 24) = v16;
  if (++v13 != 8)
  {
    goto LABEL_20;
  }

  return v11 + 1 == a2;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  v9 = a2;
  v500 = v7;
  while (1)
  {
    v10 = v9 - v8;
    a2 = v9;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v8, v8 + 1, v9 - 1, a3);
        case 4:
          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v8, v8 + 1, v8 + 2, v9 - 1, a3);
        case 5:
          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v8, v8 + 1, v8 + 2, v8 + 3, v9 - 1, a3);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v253 = *(v9 - 1);
        v501 = *v8;
        v502 = v253;
        v254 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
        if (v254 < *result)
        {
          v255 = *v500;
          *v500 = *(a2 - 1);
          *(a2 - 1) = v255;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v8 == v9)
      {
        return result;
      }

      v309 = (v10 - 2) >> 1;
      v492 = v309;
      do
      {
        v310 = v309;
        if (v492 >= v309)
        {
          v311 = (2 * v309) | 1;
          v312 = &v8[v311];
          v313 = *a3;
          v314 = v10;
          if (2 * v309 + 2 < v10)
          {
            v315 = *v312;
            v501 = v312[1];
            v502 = v315;
            v316 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v313, &v502);
            v317 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
            v8 = v500;
            if (v316 < *v317)
            {
              ++v312;
              v311 = 2 * v310 + 2;
            }

            v313 = *a3;
          }

          v318 = &v8[v310];
          v319 = *v312;
          v501 = *v318;
          v502 = v319;
          v320 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v313, &v502);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
          v9 = a2;
          v8 = v500;
          v10 = v314;
          if (v320 >= *result)
          {
            v321 = *v318;
            do
            {
              v324 = v312;
              *v318 = *v312;
              if (v492 < v311)
              {
                break;
              }

              v325 = (2 * v311) | 1;
              v312 = &v8[v325];
              v326 = 2 * v311 + 2;
              if (v326 < v10)
              {
                v327 = *v312;
                v501 = v312[1];
                v502 = v327;
                v328 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
                if (v328 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501))
                {
                  ++v312;
                  v325 = v326;
                }
              }

              v322 = *v312;
              v501 = v321;
              v502 = v322;
              v323 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
              result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
              v318 = v324;
              v311 = v325;
              v8 = v500;
              v10 = v314;
            }

            while (v323 >= *result);
            *v324 = v321;
            v9 = a2;
          }
        }

        v309 = v310 - 1;
      }

      while (v310);
      while (1)
      {
        v330 = 0;
        v331 = *v8;
        v332 = (v10 - 2) >> 1;
        v333 = v8;
        do
        {
          while (1)
          {
            v334 = &v333[v330];
            v335 = v334 + 1;
            v336 = (2 * v330) | 1;
            v337 = 2 * v330 + 2;
            if (v337 < v10)
            {
              break;
            }

            v330 = (2 * v330) | 1;
            *v333 = *v335;
            v333 = v334 + 1;
            if (v336 > v332)
            {
              goto LABEL_650;
            }
          }

          v340 = v334[2];
          v339 = v334 + 2;
          v338 = v340;
          v341 = *(v339 - 1);
          v342 = *a3;
          v344 = (*a3 + 16);
          v343 = *v344;
          if (!*v344)
          {
            goto LABEL_612;
          }

          v345 = *v342;
          v346 = v343 - 1;
          v347 = (v343 - 1) & ((v341 >> 4) ^ (v341 >> 9));
          v348 = (*v342 + 16 * v347);
          v349 = *v348;
          if (v341 == *v348)
          {
            v350 = v348[1];
            goto LABEL_575;
          }

          v358 = 0;
          v359 = 1;
          while (v349 != -4096)
          {
            result = -8192;
            if (v358)
            {
              v360 = 0;
            }

            else
            {
              v360 = v349 == -8192;
            }

            if (v360)
            {
              v358 = v348;
            }

            v361 = v347 + v359++;
            v347 = v361 & v346;
            v348 = (v345 + 16 * v347);
            v349 = *v348;
            if (v341 == *v348)
            {
              v350 = v348[1];
              v344 = (v342 + 16);
              goto LABEL_574;
            }
          }

          v363 = v358 ? v358 : v348;
          v364 = *(v342 + 8);
          if (4 * v364 + 4 < 3 * v343)
          {
            if (v343 + ~v364 - *(v342 + 12) <= v343 >> 3)
            {
              goto LABEL_613;
            }

            *(v342 + 8) = v364 + 1;
            if (*v363 == -4096)
            {
              goto LABEL_573;
            }
          }

          else
          {
LABEL_612:
            v343 *= 2;
LABEL_613:
            v489 = v332;
            v493 = v10;
            v497 = v331;
            v365 = v9;
            result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v342, v343);
            v366 = *(v342 + 16);
            if (v366)
            {
              v367 = v366 - 1;
              v368 = (v366 - 1) & ((v341 >> 4) ^ (v341 >> 9));
              v363 = (*v342 + 16 * v368);
              v369 = *v363;
              if (v341 != *v363)
              {
                v370 = 0;
                v371 = 1;
                while (v369 != -4096)
                {
                  if (v370)
                  {
                    v372 = 0;
                  }

                  else
                  {
                    v372 = v369 == -8192;
                  }

                  if (v372)
                  {
                    v370 = v363;
                  }

                  v373 = v368 + v371++;
                  v368 = v373 & v367;
                  v363 = (*v342 + 16 * (v373 & v367));
                  v369 = *v363;
                  v9 = v365;
                  v331 = v497;
                  v8 = v500;
                  v332 = v489;
                  v10 = v493;
                  if (v341 == *v363)
                  {
                    goto LABEL_626;
                  }
                }

                if (v370)
                {
                  v363 = v370;
                }
              }
            }

            else
            {
              v363 = 0;
            }

            v9 = v365;
            v331 = v497;
            v8 = v500;
            v332 = v489;
            v10 = v493;
LABEL_626:
            ++*(v342 + 8);
            if (*v363 == -4096)
            {
              goto LABEL_573;
            }
          }

          --*(v342 + 12);
LABEL_573:
          v350 = 0;
          *v363 = v341;
          v363[1] = 0;
          v342 = *a3;
          v345 = **a3;
          v343 = *(*a3 + 16);
          v344 = (*a3 + 16);
          if (!v343)
          {
            v352 = 0;
            goto LABEL_603;
          }

LABEL_574:
          v346 = v343 - 1;
LABEL_575:
          v351 = v346 & ((v338 >> 4) ^ (v338 >> 9));
          v352 = (v345 + 16 * v351);
          v353 = *v352;
          if (v338 == *v352)
          {
            goto LABEL_576;
          }

          v354 = 0;
          v355 = 1;
          while (v353 != -4096)
          {
            result = -8192;
            if (v354)
            {
              v356 = 0;
            }

            else
            {
              v356 = v353 == -8192;
            }

            if (v356)
            {
              v354 = v352;
            }

            v357 = v351 + v355++;
            v351 = v357 & v346;
            v352 = (v345 + 16 * (v357 & v346));
            v353 = *v352;
            if (v338 == *v352)
            {
              goto LABEL_576;
            }
          }

          if (v354)
          {
            v352 = v354;
          }

LABEL_603:
          v362 = *(v342 + 8);
          if (4 * v362 + 4 >= 3 * v343)
          {
            v343 *= 2;
LABEL_629:
            v487 = v350;
            v490 = v332;
            v494 = v10;
            v498 = v331;
            v374 = v9;
            result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v342, v343);
            v375 = *v344;
            if (*v344)
            {
              v376 = v375 - 1;
              v377 = (v375 - 1) & ((v338 >> 4) ^ (v338 >> 9));
              v352 = (*v342 + 16 * v377);
              v378 = *v352;
              if (v338 != *v352)
              {
                v379 = 0;
                v380 = 1;
                while (v378 != -4096)
                {
                  if (v379)
                  {
                    v381 = 0;
                  }

                  else
                  {
                    v381 = v378 == -8192;
                  }

                  if (v381)
                  {
                    v379 = v352;
                  }

                  v382 = v377 + v380++;
                  v377 = v382 & v376;
                  v352 = (*v342 + 16 * (v382 & v376));
                  v378 = *v352;
                  v9 = v374;
                  v331 = v498;
                  v8 = v500;
                  v332 = v490;
                  v10 = v494;
                  v350 = v487;
                  if (v338 == *v352)
                  {
                    goto LABEL_642;
                  }
                }

                if (v379)
                {
                  v352 = v379;
                }
              }
            }

            else
            {
              v352 = 0;
            }

            v9 = v374;
            v331 = v498;
            v8 = v500;
            v332 = v490;
            v10 = v494;
            v350 = v487;
LABEL_642:
            ++*(v342 + 8);
            if (*v352 == -4096)
            {
              goto LABEL_607;
            }

LABEL_606:
            --*(v342 + 12);
            goto LABEL_607;
          }

          if (v343 + ~v362 - *(v342 + 12) <= v343 >> 3)
          {
            goto LABEL_629;
          }

          *(v342 + 8) = v362 + 1;
          if (*v352 != -4096)
          {
            goto LABEL_606;
          }

LABEL_607:
          *v352 = v338;
          v352[1] = 0;
LABEL_576:
          if (v350 >= v352[1])
          {
            v330 = v336;
          }

          else
          {
            v335 = v339;
            v330 = v337;
          }

          *v333 = *v335;
          v333 = v335;
        }

        while (v330 <= v332);
LABEL_650:
        if (v335 == --v9)
        {
          *v335 = v331;
          goto LABEL_562;
        }

        *v335 = *v9;
        *v9 = v331;
        v383 = (v335 - v8 + 8) >> 3;
        v329 = v383 < 2;
        v384 = v383 - 2;
        if (!v329)
        {
          v385 = v384 >> 1;
          v386 = &v8[v384 >> 1];
          v387 = *v386;
          v501 = *v335;
          v502 = v387;
          v495 = v10;
          v499 = v9;
          v388 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
          v10 = v495;
          v9 = v499;
          v8 = v500;
          if (v388 < *result)
          {
            v389 = *v335;
            v390 = (*v335 >> 4) ^ (*v335 >> 9);
            while (2)
            {
              v395 = v386;
              *v335 = *v386;
              if (!v385)
              {
LABEL_733:
                *v395 = v389;
                goto LABEL_562;
              }

              v385 = (v385 - 1) >> 1;
              v386 = &v8[v385];
              v396 = *v386;
              v397 = *a3;
              v399 = (*a3 + 16);
              v398 = *v399;
              if (!*v399)
              {
                goto LABEL_707;
              }

              v400 = *v397;
              v391 = v398 - 1;
              v401 = ((v396 >> 4) ^ (v396 >> 9)) & (v398 - 1);
              v402 = (*v397 + 16 * v401);
              v403 = *v402;
              if (v396 == *v402)
              {
                v404 = v402[1];
                v392 = v391 & v390;
                v393 = (v400 + 16 * (v391 & v390));
                v394 = *v393;
                if (v389 != *v393)
                {
LABEL_660:
                  v405 = 0;
                  v406 = 1;
                  while (v394 != -4096)
                  {
                    result = -8192;
                    if (v405)
                    {
                      v407 = 0;
                    }

                    else
                    {
                      v407 = v394 == -8192;
                    }

                    if (v407)
                    {
                      v405 = v393;
                    }

                    v408 = v392 + v406++;
                    v392 = v408 & v391;
                    v393 = (v400 + 16 * (v408 & v391));
                    v394 = *v393;
                    if (v389 == *v393)
                    {
                      goto LABEL_655;
                    }
                  }

                  if (v405)
                  {
                    v393 = v405;
                  }

                  v409 = *(v397 + 8);
                  if (4 * v409 + 4 >= 3 * v398)
                  {
                    goto LABEL_682;
                  }

LABEL_675:
                  if (v398 + ~v409 - *(v397 + 12) <= v398 >> 3)
                  {
                    goto LABEL_683;
                  }

                  *(v397 + 8) = v409 + 1;
                  if (*v393 == -4096)
                  {
                    goto LABEL_678;
                  }

                  goto LABEL_677;
                }

                goto LABEL_655;
              }

              v418 = 0;
              v419 = 1;
              while (v403 != -4096)
              {
                result = -8192;
                if (v418)
                {
                  v420 = 0;
                }

                else
                {
                  v420 = v403 == -8192;
                }

                if (v420)
                {
                  v418 = v402;
                }

                v421 = v401 + v419++;
                v401 = v421 & v391;
                v402 = (v400 + 16 * v401);
                v403 = *v402;
                if (v396 == *v402)
                {
                  v404 = v402[1];
                  v399 = (v397 + 16);
                  goto LABEL_654;
                }
              }

              v422 = v418 ? v418 : v402;
              v423 = *(v397 + 8);
              if (4 * v423 + 4 < 3 * v398)
              {
                if (v398 + ~v423 - *(v397 + 12) <= v398 >> 3)
                {
                  goto LABEL_708;
                }

                *(v397 + 8) = v423 + 1;
                if (*v422 == -4096)
                {
LABEL_673:
                  v404 = 0;
                  *v422 = v396;
                  v422[1] = 0;
                  v397 = *a3;
                  v400 = **a3;
                  v398 = *(*a3 + 16);
                  v399 = (*a3 + 16);
                  if (!v398)
                  {
                    v393 = 0;
                    v409 = *(v397 + 8);
                    if (4 * v409 + 4 < 3 * v398)
                    {
                      goto LABEL_675;
                    }

LABEL_682:
                    v398 *= 2;
LABEL_683:
                    result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v397, v398);
                    v410 = *v399;
                    if (*v399)
                    {
                      v411 = v410 - 1;
                      v412 = (v410 - 1) & v390;
                      v393 = (*v397 + 16 * v412);
                      v413 = *v393;
                      if (v389 != *v393)
                      {
                        v414 = 0;
                        v415 = 1;
                        while (v413 != -4096)
                        {
                          if (v414)
                          {
                            v416 = 0;
                          }

                          else
                          {
                            v416 = v413 == -8192;
                          }

                          if (v416)
                          {
                            v414 = v393;
                          }

                          v417 = v412 + v415++;
                          v412 = v417 & v411;
                          v393 = (*v397 + 16 * (v417 & v411));
                          v413 = *v393;
                          v9 = v499;
                          v8 = v500;
                          v10 = v495;
                          if (v389 == *v393)
                          {
                            goto LABEL_725;
                          }
                        }

                        if (v414)
                        {
                          v393 = v414;
                        }
                      }
                    }

                    else
                    {
                      v393 = 0;
                    }

                    v9 = v499;
                    v8 = v500;
                    v10 = v495;
LABEL_725:
                    ++*(v397 + 8);
                    if (*v393 == -4096)
                    {
LABEL_678:
                      *v393 = v389;
                      v393[1] = 0;
                      goto LABEL_655;
                    }

LABEL_677:
                    --*(v397 + 12);
                    goto LABEL_678;
                  }

LABEL_654:
                  v391 = v398 - 1;
                  v392 = (v398 - 1) & v390;
                  v393 = (v400 + 16 * v392);
                  v394 = *v393;
                  if (v389 != *v393)
                  {
                    goto LABEL_660;
                  }

LABEL_655:
                  v335 = v395;
                  if (v404 >= v393[1])
                  {
                    goto LABEL_733;
                  }

                  continue;
                }
              }

              else
              {
LABEL_707:
                v398 *= 2;
LABEL_708:
                result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v398);
                v424 = *(v397 + 16);
                if (v424)
                {
                  v425 = v424 - 1;
                  v426 = (v424 - 1) & ((v396 >> 4) ^ (v396 >> 9));
                  v422 = (*v397 + 16 * v426);
                  v427 = *v422;
                  if (v396 != *v422)
                  {
                    v428 = 0;
                    v429 = 1;
                    while (v427 != -4096)
                    {
                      if (v428)
                      {
                        v430 = 0;
                      }

                      else
                      {
                        v430 = v427 == -8192;
                      }

                      if (v430)
                      {
                        v428 = v422;
                      }

                      v431 = v426 + v429++;
                      v426 = v431 & v425;
                      v422 = (*v397 + 16 * (v431 & v425));
                      v427 = *v422;
                      v9 = v499;
                      v8 = v500;
                      v10 = v495;
                      if (v396 == *v422)
                      {
                        goto LABEL_721;
                      }
                    }

                    if (v428)
                    {
                      v422 = v428;
                    }
                  }
                }

                else
                {
                  v422 = 0;
                }

                v9 = v499;
                v8 = v500;
                v10 = v495;
LABEL_721:
                ++*(v397 + 8);
                if (*v422 == -4096)
                {
                  goto LABEL_673;
                }
              }

              break;
            }

            --*(v397 + 12);
            goto LABEL_673;
          }
        }

LABEL_562:
        v329 = v10-- <= 2;
        if (v329)
        {
          return result;
        }
      }
    }

    v11 = &v8[v10 >> 1];
    v12 = v9 - 1;
    if (v10 >= 0x81)
    {
      v13 = v9;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v8, &v8[v10 >> 1], v9 - 1, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v500 + 1, v11 - 1, v13 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v500 + 2, v11 + 1, v13 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(v11 - 1, v11, v11 + 1, a3);
      v14 = v500;
      v15 = *v500;
      *v500 = *v11;
      *v11 = v15;
      v16 = a4 - 1;
      if (a5)
      {
        goto LABEL_17;
      }

LABEL_16:
      v17 = *(v14 - 1);
      v501 = *v14;
      v502 = v17;
      v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
      v19 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
      v14 = v500;
      if (v18 < *v19)
      {
        goto LABEL_17;
      }

      v157 = *v500;
      v501 = *v12;
      v502 = v157;
      v7 = v500;
      v158 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
      if (v158 >= *result)
      {
        v161 = v500 + 1;
        do
        {
          v7 = v161;
          if (v161 >= a2)
          {
            break;
          }

          ++v161;
          v501 = *v7;
          v502 = v157;
          v162 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
        }

        while (v162 >= *result);
      }

      else
      {
        do
        {
          v159 = v7[1];
          ++v7;
          v501 = v159;
          v502 = v157;
          v160 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
        }

        while (v160 >= *result);
      }

      v163 = a2;
      if (v7 < a2)
      {
        v163 = a2;
        do
        {
          v164 = *--v163;
          v501 = v164;
          v502 = v157;
          v165 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
        }

        while (v165 < *result);
      }

      v166 = v16;
      if (v7 < v163)
      {
        v167 = (v157 >> 4) ^ (v157 >> 9);
        v168 = v500;
        while (1)
        {
          v169 = *v7;
          *v7 = *v163;
          *v163 = v169;
          do
          {
            v175 = v7[1];
            ++v7;
            v174 = v175;
            v176 = *a3;
            v178 = (*a3 + 16);
            v177 = *v178;
            if (!*v178)
            {
              goto LABEL_336;
            }

            v179 = *v176;
            v170 = v177 - 1;
            v180 = (v177 - 1) & v167;
            v181 = (*v176 + 16 * v180);
            v182 = *v181;
            if (v157 == *v181)
            {
              v183 = v181[1];
              goto LABEL_284;
            }

            v197 = 0;
            v198 = 1;
            while (v182 != -4096)
            {
              if (v197)
              {
                v199 = 0;
              }

              else
              {
                v199 = v182 == -8192;
              }

              if (v199)
              {
                v197 = v181;
              }

              v200 = v180 + v198++;
              v180 = v200 & v170;
              v181 = (v179 + 16 * v180);
              v182 = *v181;
              if (v157 == *v181)
              {
                v183 = v181[1];
                v178 = (v176 + 16);
                goto LABEL_283;
              }
            }

            v201 = v197 ? v197 : v181;
            v202 = *(v176 + 8);
            if (4 * v202 + 4 < 3 * v177)
            {
              if (v177 + ~v202 - *(v176 + 12) <= v177 >> 3)
              {
                goto LABEL_337;
              }

              *(v176 + 8) = v202 + 1;
              if (*v201 == -4096)
              {
                goto LABEL_293;
              }
            }

            else
            {
LABEL_336:
              v177 *= 2;
LABEL_337:
              result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v177);
              v203 = *(v176 + 16);
              if (v203)
              {
                v204 = v203 - 1;
                v205 = (v203 - 1) & v167;
                v201 = (*v176 + 16 * v205);
                v206 = *v201;
                if (v157 != *v201)
                {
                  v207 = 0;
                  v208 = 1;
                  while (v206 != -4096)
                  {
                    if (v207)
                    {
                      v209 = 0;
                    }

                    else
                    {
                      v209 = v206 == -8192;
                    }

                    if (v209)
                    {
                      v207 = v201;
                    }

                    v210 = v205 + v208++;
                    v205 = v210 & v204;
                    v201 = (*v176 + 16 * (v210 & v204));
                    v206 = *v201;
                    v168 = v500;
                    if (v157 == *v201)
                    {
                      goto LABEL_350;
                    }
                  }

                  if (v207)
                  {
                    v201 = v207;
                  }
                }
              }

              else
              {
                v201 = 0;
              }

              v168 = v500;
LABEL_350:
              ++*(v176 + 8);
              if (*v201 == -4096)
              {
                goto LABEL_293;
              }
            }

            --*(v176 + 12);
LABEL_293:
            v183 = 0;
            *v201 = v157;
            v201[1] = 0;
            v176 = *a3;
            v179 = **a3;
            v177 = *(*a3 + 16);
            v178 = (*a3 + 16);
            if (!v177)
            {
              v172 = 0;
              v184 = *(v176 + 8);
              if (4 * v184 + 4 >= 3 * v177)
              {
                goto LABEL_311;
              }

              goto LABEL_295;
            }

LABEL_283:
            v170 = v177 - 1;
LABEL_284:
            v171 = v170 & ((v174 >> 4) ^ (v174 >> 9));
            v172 = (v179 + 16 * v171);
            v173 = *v172;
            if (v174 == *v172)
            {
              continue;
            }

            v185 = 0;
            v186 = 1;
            while (v173 != -4096)
            {
              if (v185)
              {
                v187 = 0;
              }

              else
              {
                v187 = v173 == -8192;
              }

              if (v187)
              {
                v185 = v172;
              }

              v188 = v171 + v186++;
              v171 = v188 & v170;
              v172 = (v179 + 16 * (v188 & v170));
              v173 = *v172;
              if (v174 == *v172)
              {
                goto LABEL_285;
              }
            }

            if (v185)
            {
              v172 = v185;
            }

            v184 = *(v176 + 8);
            if (4 * v184 + 4 >= 3 * v177)
            {
LABEL_311:
              v177 *= 2;
LABEL_312:
              result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v176, v177);
              v189 = *v178;
              if (*v178)
              {
                v190 = v189 - 1;
                v191 = (v189 - 1) & ((v174 >> 4) ^ (v174 >> 9));
                v172 = (*v176 + 16 * v191);
                v192 = *v172;
                if (v174 != *v172)
                {
                  v193 = 0;
                  v194 = 1;
                  while (v192 != -4096)
                  {
                    if (v193)
                    {
                      v195 = 0;
                    }

                    else
                    {
                      v195 = v192 == -8192;
                    }

                    if (v195)
                    {
                      v193 = v172;
                    }

                    v196 = v191 + v194++;
                    v191 = v196 & v190;
                    v172 = (*v176 + 16 * (v196 & v190));
                    v192 = *v172;
                    v168 = v500;
                    if (v174 == *v172)
                    {
                      goto LABEL_354;
                    }
                  }

                  if (v193)
                  {
                    v172 = v193;
                  }
                }
              }

              else
              {
                v172 = 0;
              }

              v168 = v500;
LABEL_354:
              ++*(v176 + 8);
              if (*v172 == -4096)
              {
                goto LABEL_298;
              }

LABEL_297:
              --*(v176 + 12);
              goto LABEL_298;
            }

LABEL_295:
            if (v177 + ~v184 - *(v176 + 12) <= v177 >> 3)
            {
              goto LABEL_312;
            }

            *(v176 + 8) = v184 + 1;
            if (*v172 != -4096)
            {
              goto LABEL_297;
            }

LABEL_298:
            *v172 = v174;
            v172[1] = 0;
LABEL_285:
            ;
          }

          while (v183 >= v172[1]);
          do
          {
            v216 = *--v163;
            v215 = v216;
            v217 = *a3;
            v219 = (*a3 + 16);
            v218 = *v219;
            if (!*v219)
            {
              goto LABEL_415;
            }

            v220 = *v217;
            v211 = v218 - 1;
            v221 = (v218 - 1) & v167;
            v222 = (*v217 + 16 * v221);
            v223 = *v222;
            if (v157 == *v222)
            {
              v224 = v222[1];
              goto LABEL_363;
            }

            v238 = 0;
            v239 = 1;
            while (v223 != -4096)
            {
              if (v238)
              {
                v240 = 0;
              }

              else
              {
                v240 = v223 == -8192;
              }

              if (v240)
              {
                v238 = v222;
              }

              v241 = v221 + v239++;
              v221 = v241 & v211;
              v222 = (v220 + 16 * v221);
              v223 = *v222;
              if (v157 == *v222)
              {
                v224 = v222[1];
                v219 = (v217 + 16);
                goto LABEL_362;
              }
            }

            v242 = v238 ? v238 : v222;
            v243 = *(v217 + 8);
            if (4 * v243 + 4 < 3 * v218)
            {
              if (v218 + ~v243 - *(v217 + 12) <= v218 >> 3)
              {
                goto LABEL_416;
              }

              *(v217 + 8) = v243 + 1;
              if (*v242 == -4096)
              {
                goto LABEL_372;
              }
            }

            else
            {
LABEL_415:
              v218 *= 2;
LABEL_416:
              result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v218);
              v244 = *(v217 + 16);
              if (v244)
              {
                v245 = v244 - 1;
                v246 = (v244 - 1) & v167;
                v242 = (*v217 + 16 * v246);
                v247 = *v242;
                if (v157 != *v242)
                {
                  v248 = 0;
                  v249 = 1;
                  while (v247 != -4096)
                  {
                    if (v248)
                    {
                      v250 = 0;
                    }

                    else
                    {
                      v250 = v247 == -8192;
                    }

                    if (v250)
                    {
                      v248 = v242;
                    }

                    v251 = v246 + v249++;
                    v246 = v251 & v245;
                    v242 = (*v217 + 16 * (v251 & v245));
                    v247 = *v242;
                    v168 = v500;
                    if (v157 == *v242)
                    {
                      goto LABEL_429;
                    }
                  }

                  if (v248)
                  {
                    v242 = v248;
                  }
                }
              }

              else
              {
                v242 = 0;
              }

              v168 = v500;
LABEL_429:
              ++*(v217 + 8);
              if (*v242 == -4096)
              {
                goto LABEL_372;
              }
            }

            --*(v217 + 12);
LABEL_372:
            v224 = 0;
            *v242 = v157;
            v242[1] = 0;
            v217 = *a3;
            v220 = **a3;
            v218 = *(*a3 + 16);
            v219 = (*a3 + 16);
            if (!v218)
            {
              v213 = 0;
              v225 = *(v217 + 8);
              if (4 * v225 + 4 >= 3 * v218)
              {
                goto LABEL_390;
              }

              goto LABEL_374;
            }

LABEL_362:
            v211 = v218 - 1;
LABEL_363:
            v212 = v211 & ((v215 >> 4) ^ (v215 >> 9));
            v213 = (v220 + 16 * v212);
            v214 = *v213;
            if (v215 == *v213)
            {
              continue;
            }

            v226 = 0;
            v227 = 1;
            while (v214 != -4096)
            {
              if (v226)
              {
                v228 = 0;
              }

              else
              {
                v228 = v214 == -8192;
              }

              if (v228)
              {
                v226 = v213;
              }

              v229 = v212 + v227++;
              v212 = v229 & v211;
              v213 = (v220 + 16 * (v229 & v211));
              v214 = *v213;
              if (v215 == *v213)
              {
                goto LABEL_364;
              }
            }

            if (v226)
            {
              v213 = v226;
            }

            v225 = *(v217 + 8);
            if (4 * v225 + 4 >= 3 * v218)
            {
LABEL_390:
              v218 *= 2;
LABEL_391:
              result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v217, v218);
              v230 = *v219;
              if (*v219)
              {
                v231 = v230 - 1;
                v232 = (v230 - 1) & ((v215 >> 4) ^ (v215 >> 9));
                v213 = (*v217 + 16 * v232);
                v233 = *v213;
                if (v215 != *v213)
                {
                  v234 = 0;
                  v235 = 1;
                  while (v233 != -4096)
                  {
                    if (v234)
                    {
                      v236 = 0;
                    }

                    else
                    {
                      v236 = v233 == -8192;
                    }

                    if (v236)
                    {
                      v234 = v213;
                    }

                    v237 = v232 + v235++;
                    v232 = v237 & v231;
                    v213 = (*v217 + 16 * (v237 & v231));
                    v233 = *v213;
                    v168 = v500;
                    if (v215 == *v213)
                    {
                      goto LABEL_433;
                    }
                  }

                  if (v234)
                  {
                    v213 = v234;
                  }
                }
              }

              else
              {
                v213 = 0;
              }

              v168 = v500;
LABEL_433:
              ++*(v217 + 8);
              if (*v213 == -4096)
              {
                goto LABEL_377;
              }

LABEL_376:
              --*(v217 + 12);
              goto LABEL_377;
            }

LABEL_374:
            if (v218 + ~v225 - *(v217 + 12) <= v218 >> 3)
            {
              goto LABEL_391;
            }

            *(v217 + 8) = v225 + 1;
            if (*v213 != -4096)
            {
              goto LABEL_376;
            }

LABEL_377:
            *v213 = v215;
            v213[1] = 0;
LABEL_364:
            ;
          }

          while (v224 < v213[1]);
          if (v7 >= v163)
          {
            goto LABEL_442;
          }
        }
      }

      v168 = v500;
LABEL_442:
      v252 = v7 - 1;
      if (v7 - 1 != v168)
      {
        *v168 = *v252;
      }

      a5 = 0;
      *v252 = v157;
      a4 = v166;
      goto LABEL_2;
    }

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(&v8[v10 >> 1], v8, v9 - 1, a3);
    v14 = v500;
    v16 = a4 - 1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    v20 = *v14;
    v21 = (*v14 >> 4) ^ (*v14 >> 9);
    v22 = v14;
    v23 = a2;
    do
    {
      v34 = v22;
      v36 = v22[1];
      ++v22;
      v35 = v36;
      v37 = *a3;
      v39 = (*a3 + 16);
      v38 = *v39;
      if (!*v39)
      {
        goto LABEL_70;
      }

      v24 = *v37;
      v25 = v38 - 1;
      v26 = ((v35 >> 4) ^ (v35 >> 9)) & (v38 - 1);
      v27 = (*v37 + 16 * v26);
      v28 = *v27;
      if (v35 == *v27)
      {
        v29 = v27[1];
        goto LABEL_20;
      }

      v53 = 0;
      v54 = 1;
      while (v28 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v28 == -8192;
        }

        if (v55)
        {
          v53 = v27;
        }

        v56 = v26 + v54++;
        v26 = v56 & v25;
        v27 = (v24 + 16 * (v56 & v25));
        v28 = *v27;
        if (v35 == *v27)
        {
          goto LABEL_28;
        }
      }

      if (v53)
      {
        v27 = v53;
      }

      v57 = *(v37 + 8);
      if (4 * v57 + 4 >= 3 * v38)
      {
LABEL_70:
        v38 *= 2;
LABEL_71:
        llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v38);
        v58 = *(v37 + 16);
        if (v58)
        {
          v59 = v58 - 1;
          v60 = (v58 - 1) & ((v35 >> 4) ^ (v35 >> 9));
          v27 = (*v37 + 16 * v60);
          v61 = *v27;
          if (v35 != *v27)
          {
            v62 = 0;
            v63 = 1;
            while (v61 != -4096)
            {
              if (v62)
              {
                v64 = 0;
              }

              else
              {
                v64 = v61 == -8192;
              }

              if (v64)
              {
                v62 = v27;
              }

              v65 = v60 + v63++;
              v60 = v65 & v59;
              v27 = (*v37 + 16 * (v65 & v59));
              v61 = *v27;
              v23 = a2;
              v14 = v500;
              if (v35 == *v27)
              {
                goto LABEL_84;
              }
            }

            if (v62)
            {
              v27 = v62;
            }
          }
        }

        else
        {
          v27 = 0;
        }

        v23 = a2;
        v14 = v500;
LABEL_84:
        ++*(v37 + 8);
        if (*v27 == -4096)
        {
          goto LABEL_27;
        }

LABEL_26:
        --*(v37 + 12);
        goto LABEL_27;
      }

      if (v38 + ~v57 - *(v37 + 12) <= v38 >> 3)
      {
        goto LABEL_71;
      }

      *(v37 + 8) = v57 + 1;
      if (*v27 != -4096)
      {
        goto LABEL_26;
      }

LABEL_27:
      *v27 = v35;
      v27[1] = 0;
      v37 = *a3;
      v24 = **a3;
      v38 = *(*a3 + 16);
LABEL_28:
      v29 = v27[1];
      v39 = (v37 + 16);
      if (!v38)
      {
        goto LABEL_46;
      }

LABEL_20:
      v30 = v38 - 1;
      v31 = (v38 - 1) & v21;
      v32 = (v24 + 16 * v31);
      v33 = *v32;
      if (v20 == *v32)
      {
        continue;
      }

      v40 = 0;
      v41 = 1;
      while (v33 != -4096)
      {
        if (v40)
        {
          v42 = 0;
        }

        else
        {
          v42 = v33 == -8192;
        }

        if (v42)
        {
          v40 = v32;
        }

        v43 = v31 + v41++;
        v31 = v43 & v30;
        v32 = (v24 + 16 * (v43 & v30));
        v33 = *v32;
        if (v20 == *v32)
        {
          goto LABEL_21;
        }
      }

      if (v40)
      {
        v32 = v40;
      }

      v44 = *(v37 + 8);
      if (4 * v44 + 4 >= 3 * v38)
      {
LABEL_46:
        v38 *= 2;
LABEL_47:
        llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v37, v38);
        v45 = *v39;
        if (*v39)
        {
          v46 = v45 - 1;
          v47 = (v45 - 1) & v21;
          v32 = (*v37 + 16 * v47);
          v48 = *v32;
          if (v20 != *v32)
          {
            v49 = 0;
            v50 = 1;
            while (v48 != -4096)
            {
              if (v49)
              {
                v51 = 0;
              }

              else
              {
                v51 = v48 == -8192;
              }

              if (v51)
              {
                v49 = v32;
              }

              v52 = v47 + v50++;
              v47 = v52 & v46;
              v32 = (*v37 + 16 * (v52 & v46));
              v48 = *v32;
              v23 = a2;
              v14 = v500;
              if (v20 == *v32)
              {
                goto LABEL_88;
              }
            }

            if (v49)
            {
              v32 = v49;
            }
          }
        }

        else
        {
          v32 = 0;
        }

        v23 = a2;
        v14 = v500;
LABEL_88:
        ++*(v37 + 8);
        if (*v32 == -4096)
        {
          goto LABEL_33;
        }

LABEL_32:
        --*(v37 + 12);
        goto LABEL_33;
      }

      if (v38 + ~v44 - *(v37 + 12) <= v38 >> 3)
      {
        goto LABEL_47;
      }

      *(v37 + 8) = v44 + 1;
      if (*v32 != -4096)
      {
        goto LABEL_32;
      }

LABEL_33:
      *v32 = v20;
      v32[1] = 0;
LABEL_21:
      ;
    }

    while (v29 < v32[1]);
    v66 = v23;
    if (v34 == v14)
    {
      v66 = a2;
      do
      {
        if (v22 >= v66)
        {
          break;
        }

        v69 = *--v66;
        v501 = v20;
        v502 = v69;
        v70 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
      }

      while (v70 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501));
    }

    else
    {
      do
      {
        v67 = *--v66;
        v501 = v20;
        v502 = v67;
        v68 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
      }

      while (v68 >= *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501));
    }

    v486 = v16;
    v488 = v66;
    v491 = v22;
    result = v500;
    if (v22 < v66)
    {
      v71 = v66;
      v72 = v22;
      do
      {
        v73 = *v72;
        *v72 = *v71;
        *v71 = v73;
        do
        {
          v34 = v72;
          v79 = v72[1];
          ++v72;
          v78 = v79;
          v80 = *a3;
          v82 = (*a3 + 16);
          v81 = *v82;
          if (!*v82)
          {
            goto LABEL_158;
          }

          v83 = *v80;
          v74 = v81 - 1;
          v84 = ((v78 >> 4) ^ (v78 >> 9)) & (v81 - 1);
          v85 = (*v80 + 16 * v84);
          v86 = *v85;
          if (v78 == *v85)
          {
            v87 = v85[1];
            v75 = v74 & v21;
            v76 = (v83 + 16 * (v74 & v21));
            v77 = *v76;
            if (v20 == *v76)
            {
              continue;
            }

            goto LABEL_111;
          }

          v101 = 0;
          v102 = 1;
          while (v86 != -4096)
          {
            if (v101)
            {
              v103 = 0;
            }

            else
            {
              v103 = v86 == -8192;
            }

            if (v103)
            {
              v101 = v85;
            }

            v104 = v84 + v102++;
            v84 = v104 & v74;
            v85 = (v83 + 16 * v84);
            v86 = *v85;
            if (v78 == *v85)
            {
              v87 = v85[1];
              v82 = (v80 + 16);
              goto LABEL_106;
            }
          }

          v105 = v101 ? v101 : v85;
          v106 = *(v80 + 8);
          if (4 * v106 + 4 >= 3 * v81)
          {
LABEL_158:
            v81 *= 2;
LABEL_159:
            llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v81);
            v107 = *(v80 + 16);
            if (v107)
            {
              v108 = v107 - 1;
              v109 = (v107 - 1) & ((v78 >> 4) ^ (v78 >> 9));
              v105 = (*v80 + 16 * v109);
              v110 = *v105;
              if (v78 != *v105)
              {
                v111 = 0;
                v112 = 1;
                result = v500;
                while (v110 != -4096)
                {
                  if (v111)
                  {
                    v113 = 0;
                  }

                  else
                  {
                    v113 = v110 == -8192;
                  }

                  if (v113)
                  {
                    v111 = v105;
                  }

                  v114 = v109 + v112++;
                  v109 = v114 & v108;
                  v105 = (*v80 + 16 * (v114 & v108));
                  v110 = *v105;
                  if (v78 == *v105)
                  {
                    goto LABEL_172;
                  }
                }

                if (v111)
                {
                  v105 = v111;
                }

LABEL_172:
                ++*(v80 + 8);
                if (*v105 == -4096)
                {
                  goto LABEL_124;
                }

                goto LABEL_123;
              }
            }

            else
            {
              v105 = 0;
            }

            result = v500;
            goto LABEL_172;
          }

          if (v81 + ~v106 - *(v80 + 12) <= v81 >> 3)
          {
            goto LABEL_159;
          }

          *(v80 + 8) = v106 + 1;
          if (*v105 == -4096)
          {
            goto LABEL_124;
          }

LABEL_123:
          --*(v80 + 12);
LABEL_124:
          v87 = 0;
          *v105 = v78;
          v105[1] = 0;
          v80 = *a3;
          v83 = **a3;
          v81 = *(*a3 + 16);
          v82 = (*a3 + 16);
          if (!v81)
          {
            v76 = 0;
            v92 = *(v80 + 8);
            if (4 * v92 + 4 >= 3 * v81)
            {
              goto LABEL_133;
            }

            goto LABEL_126;
          }

LABEL_106:
          v74 = v81 - 1;
          v75 = (v81 - 1) & v21;
          v76 = (v83 + 16 * v75);
          v77 = *v76;
          if (v20 == *v76)
          {
            continue;
          }

LABEL_111:
          v88 = 0;
          v89 = 1;
          while (v77 != -4096)
          {
            if (v88)
            {
              v90 = 0;
            }

            else
            {
              v90 = v77 == -8192;
            }

            if (v90)
            {
              v88 = v76;
            }

            v91 = v75 + v89++;
            v75 = v91 & v74;
            v76 = (v83 + 16 * (v91 & v74));
            v77 = *v76;
            if (v20 == *v76)
            {
              goto LABEL_107;
            }
          }

          if (v88)
          {
            v76 = v88;
          }

          v92 = *(v80 + 8);
          if (4 * v92 + 4 >= 3 * v81)
          {
LABEL_133:
            v81 *= 2;
LABEL_134:
            llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v80, v81);
            v93 = *v82;
            if (*v82)
            {
              v94 = v93 - 1;
              v95 = (v93 - 1) & v21;
              v76 = (*v80 + 16 * v95);
              v96 = *v76;
              if (v20 != *v76)
              {
                v97 = 0;
                v98 = 1;
                result = v500;
                while (v96 != -4096)
                {
                  if (v97)
                  {
                    v99 = 0;
                  }

                  else
                  {
                    v99 = v96 == -8192;
                  }

                  if (v99)
                  {
                    v97 = v76;
                  }

                  v100 = v95 + v98++;
                  v95 = v100 & v94;
                  v76 = (*v80 + 16 * (v100 & v94));
                  v96 = *v76;
                  if (v20 == *v76)
                  {
                    goto LABEL_176;
                  }
                }

                if (v97)
                {
                  v76 = v97;
                }

LABEL_176:
                ++*(v80 + 8);
                if (*v76 == -4096)
                {
                  goto LABEL_129;
                }

LABEL_128:
                --*(v80 + 12);
                goto LABEL_129;
              }
            }

            else
            {
              v76 = 0;
            }

            result = v500;
            goto LABEL_176;
          }

LABEL_126:
          if (v81 + ~v92 - *(v80 + 12) <= v81 >> 3)
          {
            goto LABEL_134;
          }

          *(v80 + 8) = v92 + 1;
          if (*v76 != -4096)
          {
            goto LABEL_128;
          }

LABEL_129:
          *v76 = v20;
          v76[1] = 0;
LABEL_107:
          ;
        }

        while (v87 < v76[1]);
        do
        {
          v120 = *--v71;
          v119 = v120;
          v121 = *a3;
          v123 = (*a3 + 16);
          v122 = *v123;
          if (!*v123)
          {
            goto LABEL_236;
          }

          v124 = *v121;
          v115 = v122 - 1;
          v125 = ((v119 >> 4) ^ (v119 >> 9)) & (v122 - 1);
          v126 = (*v121 + 16 * v125);
          v127 = *v126;
          if (v119 == *v126)
          {
            v128 = v126[1];
            v116 = v115 & v21;
            v117 = (v124 + 16 * (v115 & v21));
            v118 = *v117;
            if (v20 == *v117)
            {
              continue;
            }

            goto LABEL_189;
          }

          v142 = 0;
          v143 = 1;
          while (v127 != -4096)
          {
            if (v142)
            {
              v144 = 0;
            }

            else
            {
              v144 = v127 == -8192;
            }

            if (v144)
            {
              v142 = v126;
            }

            v145 = v125 + v143++;
            v125 = v145 & v115;
            v126 = (v124 + 16 * v125);
            v127 = *v126;
            if (v119 == *v126)
            {
              v128 = v126[1];
              v123 = (v121 + 16);
              goto LABEL_184;
            }
          }

          v146 = v142 ? v142 : v126;
          v147 = *(v121 + 8);
          if (4 * v147 + 4 >= 3 * v122)
          {
LABEL_236:
            v122 *= 2;
LABEL_237:
            llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v122);
            v148 = *(v121 + 16);
            if (v148)
            {
              v149 = v148 - 1;
              v150 = (v148 - 1) & ((v119 >> 4) ^ (v119 >> 9));
              v146 = (*v121 + 16 * v150);
              v151 = *v146;
              if (v119 != *v146)
              {
                v152 = 0;
                v153 = 1;
                result = v500;
                while (v151 != -4096)
                {
                  if (v152)
                  {
                    v154 = 0;
                  }

                  else
                  {
                    v154 = v151 == -8192;
                  }

                  if (v154)
                  {
                    v152 = v146;
                  }

                  v155 = v150 + v153++;
                  v150 = v155 & v149;
                  v146 = (*v121 + 16 * (v155 & v149));
                  v151 = *v146;
                  if (v119 == *v146)
                  {
                    goto LABEL_250;
                  }
                }

                if (v152)
                {
                  v146 = v152;
                }

LABEL_250:
                ++*(v121 + 8);
                if (*v146 == -4096)
                {
                  goto LABEL_202;
                }

                goto LABEL_201;
              }
            }

            else
            {
              v146 = 0;
            }

            result = v500;
            goto LABEL_250;
          }

          if (v122 + ~v147 - *(v121 + 12) <= v122 >> 3)
          {
            goto LABEL_237;
          }

          *(v121 + 8) = v147 + 1;
          if (*v146 == -4096)
          {
            goto LABEL_202;
          }

LABEL_201:
          --*(v121 + 12);
LABEL_202:
          v128 = 0;
          *v146 = v119;
          v146[1] = 0;
          v121 = *a3;
          v124 = **a3;
          v122 = *(*a3 + 16);
          v123 = (*a3 + 16);
          if (!v122)
          {
            v117 = 0;
            v133 = *(v121 + 8);
            if (4 * v133 + 4 >= 3 * v122)
            {
              goto LABEL_211;
            }

            goto LABEL_204;
          }

LABEL_184:
          v115 = v122 - 1;
          v116 = (v122 - 1) & v21;
          v117 = (v124 + 16 * v116);
          v118 = *v117;
          if (v20 == *v117)
          {
            continue;
          }

LABEL_189:
          v129 = 0;
          v130 = 1;
          while (v118 != -4096)
          {
            if (v129)
            {
              v131 = 0;
            }

            else
            {
              v131 = v118 == -8192;
            }

            if (v131)
            {
              v129 = v117;
            }

            v132 = v116 + v130++;
            v116 = v132 & v115;
            v117 = (v124 + 16 * (v132 & v115));
            v118 = *v117;
            if (v20 == *v117)
            {
              goto LABEL_185;
            }
          }

          if (v129)
          {
            v117 = v129;
          }

          v133 = *(v121 + 8);
          if (4 * v133 + 4 >= 3 * v122)
          {
LABEL_211:
            v122 *= 2;
LABEL_212:
            llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v121, v122);
            v134 = *v123;
            if (*v123)
            {
              v135 = v134 - 1;
              v136 = (v134 - 1) & v21;
              v117 = (*v121 + 16 * v136);
              v137 = *v117;
              if (v20 != *v117)
              {
                v138 = 0;
                v139 = 1;
                result = v500;
                while (v137 != -4096)
                {
                  if (v138)
                  {
                    v140 = 0;
                  }

                  else
                  {
                    v140 = v137 == -8192;
                  }

                  if (v140)
                  {
                    v138 = v117;
                  }

                  v141 = v136 + v139++;
                  v136 = v141 & v135;
                  v117 = (*v121 + 16 * (v141 & v135));
                  v137 = *v117;
                  if (v20 == *v117)
                  {
                    goto LABEL_254;
                  }
                }

                if (v138)
                {
                  v117 = v138;
                }

LABEL_254:
                ++*(v121 + 8);
                if (*v117 == -4096)
                {
                  goto LABEL_207;
                }

LABEL_206:
                --*(v121 + 12);
                goto LABEL_207;
              }
            }

            else
            {
              v117 = 0;
            }

            result = v500;
            goto LABEL_254;
          }

LABEL_204:
          if (v122 + ~v133 - *(v121 + 12) <= v122 >> 3)
          {
            goto LABEL_212;
          }

          *(v121 + 8) = v133 + 1;
          if (*v117 != -4096)
          {
            goto LABEL_206;
          }

LABEL_207:
          *v117 = v20;
          v117[1] = 0;
LABEL_185:
          ;
        }

        while (v128 >= v117[1]);
      }

      while (v72 < v71);
    }

    if (v34 != result)
    {
      *result = *v34;
    }

    *v34 = v20;
    a4 = v486;
    if (v491 < v488)
    {
      goto LABEL_269;
    }

    v156 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **>(result, v34, a3);
    v7 = v34 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **>(v34 + 1, a2, a3);
    if (!result)
    {
      result = v500;
      if (!v156)
      {
LABEL_269:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,false>(result, v34, a3, v486, a5 & 1);
        a5 = 0;
        v7 = v34 + 1;
      }

      goto LABEL_2;
    }

    v9 = v34;
    v8 = v500;
    if (v156)
    {
      return result;
    }
  }

  v256 = v8 + 1;
  v258 = v8 == v9 || v256 == v9;
  if ((a5 & 1) == 0)
  {
    if (v258)
    {
      return result;
    }

LABEL_738:
    v432 = v256;
    v433 = v8[1];
    v434 = v8;
    v501 = *v8;
    v502 = v433;
    v435 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
    v436 = a2;
    if (v435 >= *result)
    {
      goto LABEL_737;
    }

    v437 = *v432;
    v438 = (*v432 >> 4) ^ (*v432 >> 9);
    v439 = v432;
    v440 = v434;
LABEL_743:
    v445 = v439;
    v439 = v440;
    *v445 = *v440;
    v447 = *--v440;
    v446 = v447;
    v448 = *a3;
    v450 = (*a3 + 16);
    v449 = *v450;
    if (!*v450)
    {
      goto LABEL_793;
    }

    v451 = *v448;
    v441 = v449 - 1;
    v452 = (v449 - 1) & v438;
    v453 = (*v448 + 16 * v452);
    v454 = *v453;
    if (v437 == *v453)
    {
      v455 = v453[1];
      goto LABEL_741;
    }

    v470 = 0;
    v471 = 1;
    while (v454 != -4096)
    {
      if (v470)
      {
        v472 = 0;
      }

      else
      {
        v472 = v454 == -8192;
      }

      if (v472)
      {
        v470 = v453;
      }

      v473 = v452 + v471++;
      v452 = v473 & v441;
      v453 = (v451 + 16 * v452);
      v454 = *v453;
      if (v437 == *v453)
      {
        v455 = v453[1];
        v450 = (v448 + 16);
LABEL_740:
        v441 = v449 - 1;
LABEL_741:
        v442 = v441 & ((v446 >> 4) ^ (v446 >> 9));
        v443 = (v451 + 16 * v442);
        v444 = *v443;
        if (v446 != *v443)
        {
          v457 = 0;
          v458 = 1;
          while (v444 != -4096)
          {
            if (v457)
            {
              v459 = 0;
            }

            else
            {
              v459 = v444 == -8192;
            }

            if (v459)
            {
              v457 = v443;
            }

            v460 = v442 + v458++;
            v442 = v460 & v441;
            v443 = (v451 + 16 * (v460 & v441));
            v444 = *v443;
            if (v446 == *v443)
            {
              goto LABEL_742;
            }
          }

          if (v457)
          {
            v443 = v457;
          }

          v456 = *(v448 + 8);
          if (4 * v456 + 4 >= 3 * v449)
          {
            goto LABEL_768;
          }

LABEL_752:
          if (v449 + ~v456 - *(v448 + 12) > v449 >> 3)
          {
            *(v448 + 8) = v456 + 1;
            if (*v443 != -4096)
            {
              goto LABEL_754;
            }

            goto LABEL_755;
          }

LABEL_769:
          v461 = v440;
          result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v448, v449);
          v462 = *v450;
          if (*v450)
          {
            v463 = v462 - 1;
            v464 = (v462 - 1) & ((v446 >> 4) ^ (v446 >> 9));
            v443 = (*v448 + 16 * v464);
            v465 = *v443;
            if (v446 != *v443)
            {
              v466 = 0;
              v467 = 1;
              while (v465 != -4096)
              {
                if (v466)
                {
                  v468 = 0;
                }

                else
                {
                  v468 = v465 == -8192;
                }

                if (v468)
                {
                  v466 = v443;
                }

                v469 = v464 + v467++;
                v464 = v469 & v463;
                v443 = (*v448 + 16 * (v469 & v463));
                v465 = *v443;
                v436 = a2;
                v440 = v461;
                if (v446 == *v443)
                {
                  goto LABEL_811;
                }
              }

              if (v466)
              {
                v443 = v466;
              }
            }
          }

          else
          {
            v443 = 0;
          }

          v436 = a2;
          v440 = v461;
LABEL_811:
          ++*(v448 + 8);
          if (*v443 != -4096)
          {
LABEL_754:
            --*(v448 + 12);
          }

LABEL_755:
          *v443 = v446;
          v443[1] = 0;
        }

LABEL_742:
        if (v455 < v443[1])
        {
          goto LABEL_743;
        }

        *v439 = v437;
LABEL_737:
        v256 = v432 + 1;
        v8 = v432;
        if (v432 + 1 == v436)
        {
          return result;
        }

        goto LABEL_738;
      }
    }

    if (v470)
    {
      v474 = v470;
    }

    else
    {
      v474 = v453;
    }

    v475 = *(v448 + 8);
    if (4 * v475 + 4 < 3 * v449)
    {
      if (v449 + ~v475 - *(v448 + 12) > v449 >> 3)
      {
        *(v448 + 8) = v475 + 1;
        if (*v474 == -4096)
        {
LABEL_750:
          v455 = 0;
          *v474 = v437;
          v474[1] = 0;
          v448 = *a3;
          v451 = **a3;
          v449 = *(*a3 + 16);
          v450 = (*a3 + 16);
          if (v449)
          {
            goto LABEL_740;
          }

          v443 = 0;
          v456 = *(v448 + 8);
          if (4 * v456 + 4 < 3 * v449)
          {
            goto LABEL_752;
          }

LABEL_768:
          v449 *= 2;
          goto LABEL_769;
        }

LABEL_749:
        --*(v448 + 12);
        goto LABEL_750;
      }
    }

    else
    {
LABEL_793:
      v449 *= 2;
    }

    v476 = v440;
    result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v449);
    v477 = *(v448 + 16);
    if (v477)
    {
      v478 = v477 - 1;
      v479 = (v477 - 1) & v438;
      v474 = (*v448 + 16 * v479);
      v480 = *v474;
      if (v437 != *v474)
      {
        v481 = 0;
        v482 = 1;
        while (v480 != -4096)
        {
          if (v481)
          {
            v483 = 0;
          }

          else
          {
            v483 = v480 == -8192;
          }

          if (v483)
          {
            v481 = v474;
          }

          v484 = v479 + v482++;
          v479 = v484 & v478;
          v474 = (*v448 + 16 * (v484 & v478));
          v480 = *v474;
          v436 = a2;
          v440 = v476;
          if (v437 == *v474)
          {
            goto LABEL_807;
          }
        }

        if (v481)
        {
          v474 = v481;
        }
      }
    }

    else
    {
      v474 = 0;
    }

    v436 = a2;
    v440 = v476;
LABEL_807:
    ++*(v448 + 8);
    if (*v474 == -4096)
    {
      goto LABEL_750;
    }

    goto LABEL_749;
  }

  if (v258)
  {
    return result;
  }

  v259 = v8;
  while (2)
  {
    v261 = v256;
    v262 = v259[1];
    v501 = *v259;
    v502 = v262;
    v263 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v502);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v501);
    v264 = a2;
    v265 = v500;
    if (v263 >= *result)
    {
      goto LABEL_461;
    }

    v266 = *v261;
    v267 = (*v261 >> 4) ^ (*v261 >> 9);
    v260 = v261;
    while (2)
    {
      *v260 = *v259;
      if (v259 != v265)
      {
        v260 = v259;
        v273 = *--v259;
        v272 = v273;
        v274 = *a3;
        v276 = (*a3 + 16);
        v275 = *v276;
        if (!*v276)
        {
          goto LABEL_518;
        }

        v277 = *v274;
        v268 = v275 - 1;
        v278 = (v275 - 1) & v267;
        v279 = (*v274 + 16 * v278);
        v280 = *v279;
        if (v266 == *v279)
        {
          v281 = v279[1];
LABEL_465:
          v269 = v268 & ((v272 >> 4) ^ (v272 >> 9));
          v270 = (v277 + 16 * v269);
          v271 = *v270;
          if (v272 == *v270)
          {
LABEL_466:
            if (v281 >= v270[1])
            {
              goto LABEL_460;
            }

            continue;
          }

          v283 = 0;
          v284 = 1;
          while (v271 != -4096)
          {
            if (v283)
            {
              v285 = 0;
            }

            else
            {
              v285 = v271 == -8192;
            }

            if (v285)
            {
              v283 = v270;
            }

            v286 = v269 + v284++;
            v269 = v286 & v268;
            v270 = (v277 + 16 * (v286 & v268));
            v271 = *v270;
            if (v272 == *v270)
            {
              goto LABEL_466;
            }
          }

          if (v283)
          {
            v270 = v283;
          }

          v282 = *(v274 + 8);
          if (4 * v282 + 4 >= 3 * v275)
          {
LABEL_493:
            v275 *= 2;
LABEL_494:
            result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(v274, v275);
            v287 = *v276;
            if (*v276)
            {
              v288 = v287 - 1;
              v289 = (v287 - 1) & ((v272 >> 4) ^ (v272 >> 9));
              v270 = (*v274 + 16 * v289);
              v290 = *v270;
              if (v272 != *v270)
              {
                v291 = 0;
                v292 = 1;
                while (v290 != -4096)
                {
                  if (v291)
                  {
                    v293 = 0;
                  }

                  else
                  {
                    v293 = v290 == -8192;
                  }

                  if (v293)
                  {
                    v291 = v270;
                  }

                  v294 = v289 + v292++;
                  v289 = v294 & v288;
                  v270 = (*v274 + 16 * (v294 & v288));
                  v290 = *v270;
                  v264 = a2;
                  v265 = v500;
                  if (v272 == *v270)
                  {
                    goto LABEL_536;
                  }
                }

                if (v291)
                {
                  v270 = v291;
                }
              }
            }

            else
            {
              v270 = 0;
            }

            v264 = a2;
            v265 = v500;
LABEL_536:
            ++*(v274 + 8);
            if (*v270 == -4096)
            {
              goto LABEL_480;
            }

            goto LABEL_479;
          }

LABEL_477:
          if (v275 + ~v282 - *(v274 + 12) <= v275 >> 3)
          {
            goto LABEL_494;
          }

          *(v274 + 8) = v282 + 1;
          if (*v270 == -4096)
          {
LABEL_480:
            *v270 = v272;
            v270[1] = 0;
            goto LABEL_466;
          }

LABEL_479:
          --*(v274 + 12);
          goto LABEL_480;
        }

        v295 = 0;
        v296 = 1;
        while (v280 != -4096)
        {
          if (v295)
          {
            v297 = 0;
          }

          else
          {
            v297 = v280 == -8192;
          }

          if (v297)
          {
            v295 = v279;
          }

          v298 = v278 + v296++;
          v278 = v298 & v268;
          v279 = (v277 + 16 * v278);
          v280 = *v279;
          if (v266 == *v279)
          {
            v281 = v279[1];
            v276 = (v274 + 16);
            goto LABEL_464;
          }
        }

        v299 = v295 ? v295 : v279;
        v300 = *(v274 + 8);
        if (4 * v300 + 4 < 3 * v275)
        {
          if (v275 + ~v300 - *(v274 + 12) <= v275 >> 3)
          {
            goto LABEL_519;
          }

          *(v274 + 8) = v300 + 1;
          if (*v299 == -4096)
          {
LABEL_475:
            v281 = 0;
            *v299 = v266;
            v299[1] = 0;
            v274 = *a3;
            v277 = **a3;
            v275 = *(*a3 + 16);
            v276 = (*a3 + 16);
            if (v275)
            {
LABEL_464:
              v268 = v275 - 1;
              goto LABEL_465;
            }

            v270 = 0;
            v282 = *(v274 + 8);
            if (4 * v282 + 4 >= 3 * v275)
            {
              goto LABEL_493;
            }

            goto LABEL_477;
          }
        }

        else
        {
LABEL_518:
          v275 *= 2;
LABEL_519:
          result = llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(*a3, v275);
          v301 = *(v274 + 16);
          if (v301)
          {
            v302 = v301 - 1;
            v303 = (v301 - 1) & v267;
            v299 = (*v274 + 16 * v303);
            v304 = *v299;
            if (v266 != *v299)
            {
              v305 = 0;
              v306 = 1;
              while (v304 != -4096)
              {
                if (v305)
                {
                  v307 = 0;
                }

                else
                {
                  v307 = v304 == -8192;
                }

                if (v307)
                {
                  v305 = v299;
                }

                v308 = v303 + v306++;
                v303 = v308 & v302;
                v299 = (*v274 + 16 * (v308 & v302));
                v304 = *v299;
                v264 = a2;
                v265 = v500;
                if (v266 == *v299)
                {
                  goto LABEL_532;
                }
              }

              if (v305)
              {
                v299 = v305;
              }
            }
          }

          else
          {
            v299 = 0;
          }

          v264 = a2;
          v265 = v500;
LABEL_532:
          ++*(v274 + 8);
          if (*v299 == -4096)
          {
            goto LABEL_475;
          }
        }

        --*(v274 + 12);
        goto LABEL_475;
      }

      break;
    }

    v260 = v265;
LABEL_460:
    *v260 = v266;
LABEL_461:
    v256 = v261 + 1;
    v259 = v261;
    if (v261 + 1 != v264)
    {
      continue;
    }

    return result;
  }
}