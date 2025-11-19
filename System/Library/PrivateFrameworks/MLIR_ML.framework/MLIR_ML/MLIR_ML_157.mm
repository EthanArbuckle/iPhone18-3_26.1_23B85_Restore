unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v22 = *a1;
  v23 = v8;
  v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v23);
  v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v22);
  v11 = *a3;
  if (v9 >= *v10)
  {
    v22 = *a2;
    v23 = v11;
    v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v23);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v22);
    if (v15 < *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a2;
      v22 = *a1;
      v23 = v17;
      v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v23);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v22);
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
    v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v23);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v22);
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
    v21 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v23);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a4, &v22);
    if (v21 < *result)
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(a1, a2, a3, a5);
  v10 = *a4;
  v20 = *a3;
  v21 = v10;
  v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a5, &v21);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a5, &v20);
  if (v11 < *result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a3;
    v20 = *a2;
    v21 = v14;
    v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a5, &v21);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a5, &v20);
    if (v15 < *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a2;
      v20 = *a1;
      v21 = v17;
      v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a5, &v21);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a5, &v20);
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

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v25 = *a4;
  v26 = v12;
  v13 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v26);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v25);
  if (v13 < *result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a4;
    v25 = *a3;
    v26 = v16;
    v17 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v26);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v25);
    if (v17 < *result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a3;
      v25 = *a2;
      v26 = v19;
      v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v26);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v25);
      if (v20 < *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a2;
        v25 = *a1;
        v26 = v22;
        v23 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v26);
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a6, &v25);
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
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
        v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v21);
        if (v8 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v20))
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
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Liveness::print(llvm::raw_ostream &)::$_3::operator() const(mlir::Block *)::{lambda(mlir::Operation *,mlir::Operation *)#1} &,mlir::Operation **,0>(a1, a1 + 1, a1 + 2, a3);
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
    v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v21);
    if (v15 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v20))
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
    v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v21);
    v17 -= 8;
  }

  while (v18 < *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](*a3, &v20));
  *(a1 + v17 + 24) = v16;
  if (++v13 != 8)
  {
    goto LABEL_20;
  }

  return v11 + 1 == a2;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getLoopDepth(void *a1)
{
  LODWORD(v1) = 0;
  do
  {
    a1 = *a1;
    v1 = (v1 + 1);
  }

  while (a1);
  return v1;
}

void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getOutermostLoop(void *a1)
{
  do
  {
    v1 = a1;
    a1 = *a1;
  }

  while (a1);
  return v1;
}

{
  do
  {
    v1 = a1;
    a1 = *a1;
  }

  while (a1);
  return v1;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::contains(void *a1, void *a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  while (1)
  {
    v2 = a2 != 0;
    if (!a2)
    {
      break;
    }

    a2 = *a2;
    if (a2 == a1)
    {
      return 1;
    }
  }

  return v2;
}

BOOL llvm::LoopBase<mlir::Block,mlir::CFGLoop>::contains(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = (a1 + 56);
  if (v5 == v4)
  {
    v9 = *(a1 + 76);
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
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
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

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getBlocksSet(uint64_t a1)
{
  return a1 + 56;
}

{
  return a1 + 56;
}

BOOL llvm::LoopBase<mlir::Block,mlir::CFGLoop>::isLoopExiting(uint64_t a1, mlir::Block *a2)
{
  mlir::SuccessorRange::SuccessorRange(&v23, a2);
  v4 = v23;
  mlir::SuccessorRange::SuccessorRange(&v23, a2);
  v5 = v24;
  if (!v24)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = a1 + 56;
  if (v7 != v6)
  {
    v9 = 0;
    while (1)
    {
      v14 = *(v4 + 32 * v9 + 24);
      if (v7 == v6)
      {
        v16 = *(a1 + 76);
        if (v16)
        {
          v17 = 8 * v16;
          v10 = v6;
          while (*v10 != v14)
          {
            ++v10;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_4;
            }
          }

          goto LABEL_5;
        }
      }

      else
      {
        v10 = llvm::SmallPtrSetImplBase::doFind((a1 + 56), v14);
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (v10)
        {
          goto LABEL_5;
        }

        if (v7 == v6)
        {
          v15 = 20;
        }

        else
        {
          v15 = 16;
        }

        v16 = *(v8 + v15);
      }

LABEL_4:
      v10 = &v7[v16];
LABEL_5:
      if (v7 == v6)
      {
        v11 = 20;
      }

      else
      {
        v11 = 16;
      }

      v13 = v10 == &v7[*(v8 + v11)];
      result = v13;
      v13 = v13 || ++v9 == v5;
      if (v13)
      {
        return result;
      }
    }
  }

  v18 = *(a1 + 76);
  if (!v18)
  {
    return 1;
  }

  v19 = 0;
  v20 = &v7[v18];
  do
  {
    v21 = 8 * v18;
    for (i = *(a1 + 56); *i != *(v4 + 32 * v19 + 24); ++i)
    {
      v21 -= 8;
      if (!v21)
      {
        return 1;
      }
    }

    result = i == v20;
    if (i == v20)
    {
      break;
    }

    ++v19;
  }

  while (v19 != v24);
  return result;
}

BOOL llvm::LoopBase<mlir::Block,mlir::CFGLoop>::isLoopLatch(uint64_t a1, uint64_t a2)
{
  v2 = ***(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = mlir::PredecessorIterator::unwrap(v2) == a2;
    result = v4;
    if (v4)
    {
      break;
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getNumBackEdges(uint64_t a1)
{
  v1 = ***(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = (a1 + 56);
  do
  {
    v8 = mlir::PredecessorIterator::unwrap(v1);
    v5 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v9 == v5)
    {
      v11 = *(a1 + 76);
      if (v11)
      {
        v12 = 8 * v11;
        while (*v5 != v8)
        {
          ++v5;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        v5 = &v9[v11];
      }

      v6 = *(a1 + 64);
    }

    else
    {
      v5 = llvm::SmallPtrSetImplBase::doFind(v4, v8);
      v9 = *(a1 + 56);
      v6 = *(a1 + 64);
      if (!v5)
      {
        if (v6 == v9)
        {
          v10 = 20;
        }

        else
        {
          v10 = 16;
        }

        v5 = &v6[*(v4 + v10)];
      }
    }

    if (v6 == v9)
    {
      v7 = 20;
    }

    else
    {
      v7 = 16;
    }

    if (v5 == &v6[*(v4 + v7)])
    {
      v3 = v3;
    }

    else
    {
      v3 = (v3 + 1);
    }

    v1 = *v1;
  }

  while (v1);
  return v3;
}

const void **llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitingBlocks(const void **result, uint64_t a2)
{
  v2 = result[4];
  v23 = result[5];
  if (v2 != v23)
  {
    v4 = result;
    v5 = (result + 7);
    do
    {
      v7 = *v2;
      mlir::SuccessorRange::SuccessorRange(&v24, *v2);
      v8 = v24;
      result = mlir::SuccessorRange::SuccessorRange(&v24, v7);
      v9 = v25;
      if (v25)
      {
        v10 = v4[7];
        v11 = v4[8];
        if (v11 != v10)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(v8 + 32 * v12 + 24);
            if (v11 != v10)
            {
              break;
            }

            v15 = *(v4 + 19);
            if (!v15)
            {
              goto LABEL_19;
            }

            v16 = 8 * v15;
            result = v10;
            while (*result != v13)
            {
              ++result;
              v16 -= 8;
              if (!v16)
              {
                goto LABEL_19;
              }
            }

LABEL_20:
            if (v11 == v10)
            {
              v17 = 20;
            }

            else
            {
              v17 = 16;
            }

            if (result == &v11[*(v5 + v17)])
            {
              goto LABEL_3;
            }

            if (++v12 == v9)
            {
              goto LABEL_5;
            }
          }

          result = llvm::SmallPtrSetImplBase::doFind(v5, v13);
          v10 = v4[7];
          v11 = v4[8];
          if (result)
          {
            goto LABEL_20;
          }

          if (v11 == v10)
          {
            v14 = 20;
          }

          else
          {
            v14 = 16;
          }

          v15 = *(v5 + v14);
LABEL_19:
          result = &v11[v15];
          goto LABEL_20;
        }

        v18 = *(v4 + 19);
        if (v18)
        {
          v19 = 0;
          v20 = &v11[v18];
          while (1)
          {
            v21 = 8 * v18;
            v22 = v4[7];
            while (*v22 != *(v8 + 32 * v19 + 24))
            {
              ++v22;
              v21 -= 8;
              if (!v21)
              {
                goto LABEL_3;
              }
            }

            if (v22 == v20)
            {
              break;
            }

            if (++v19 == v25)
            {
              goto LABEL_5;
            }
          }
        }

LABEL_3:
        v6 = *(a2 + 8);
        if (v6 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a2 + 8 * v6) = v7;
        ++*(a2 + 8);
      }

LABEL_5:
      ++v2;
    }

    while (v2 != v23);
  }

  return result;
}

mlir::Block *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitingBlock(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = a1;
  v6 = &v5;
  if (v1 != v2)
  {
    v3 = 0;
    while (1)
    {
      result = llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitingBlock(void)const::{lambda(mlir::Block*,BOOL)#1}::operator()(&v6, *v1);
      if (result)
      {
        if (v3)
        {
          return 0;
        }
      }

      else
      {
        result = v3;
      }

      ++v1;
      v3 = result;
      if (v1 == v2)
      {
        return result;
      }
    }
  }

  return 0;
}

void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitBlocks(void *result, uint64_t a2)
{
  v2 = result[4];
  v18 = result[5];
  if (v2 != v18)
  {
    v4 = result;
    v5 = (result + 7);
    do
    {
      v6 = *v2;
      mlir::SuccessorRange::SuccessorRange(&v19, *v2);
      v7 = v19;
      result = mlir::SuccessorRange::SuccessorRange(&v19, v6);
      v8 = v20;
      if (v20)
      {
        v9 = 0;
        do
        {
          while (1)
          {
            v12 = *(v7 + 32 * v9 + 24);
            result = v4[7];
            v13 = v4[8];
            if (v13 == result)
            {
              v16 = *(v4 + 19);
              if (v16)
              {
                v17 = 8 * v16;
                while (*result != v12)
                {
                  ++result;
                  v17 -= 8;
                  if (!v17)
                  {
                    goto LABEL_6;
                  }
                }
              }

              else
              {
LABEL_6:
                result = &v13[v16];
              }

              v10 = v4[8];
            }

            else
            {
              result = llvm::SmallPtrSetImplBase::doFind(v5, *(v7 + 32 * v9 + 24));
              v13 = v4[7];
              v10 = v4[8];
              if (!result)
              {
                if (v10 == v13)
                {
                  v14 = 20;
                }

                else
                {
                  v14 = 16;
                }

                result = &v10[*(v5 + v14)];
              }
            }

            v11 = v10 == v13 ? 20 : 16;
            if (result == &v10[*(v5 + v11)])
            {
              break;
            }

            if (++v9 == v8)
            {
              goto LABEL_3;
            }
          }

          v15 = *(a2 + 8);
          if (v15 >= *(a2 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a2 + 8 * v15) = v12;
          ++*(a2 + 8);
          ++v9;
        }

        while (v9 != v8);
      }

LABEL_3:
      ++v2;
    }

    while (v2 != v18);
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitBlock(uint64_t a1)
{
  v9 = a1;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *v1;
    mlir::SuccessorRange::SuccessorRange(v10, *v1);
    v6 = *&v10[0];
    mlir::SuccessorRange::SuccessorRange(v10, v5);
    v7 = v10[0];
    v10[0] = v6;
    v10[1] = v7;
    result = llvm::find_singleton_nested<mlir::Block,llvm::iterator_range<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block*,mlir::Block*,mlir::Block*>::iterator>,std::pair<mlir::Block *,BOOL> llvm::getExitBlockHelper<mlir::Block,mlir::CFGLoop>(llvm::LoopBase<mlir::Block,mlir::CFGLoop> const*,BOOL)::{lambda(mlir::Block*,BOOL)#1}>(v10, &v9, 0);
    if (v8)
    {
      break;
    }

    if (result)
    {
      if (v3)
      {
        return 0;
      }
    }

    else
    {
      result = v3;
    }

    ++v1;
    v3 = result;
  }

  while (v1 != v2);
  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::hasDedicatedExits(uint64_t a1)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  llvm::getUniqueExitBlocksHelper<mlir::Block,llvm::LoopBase<mlir::Block,mlir::CFGLoop>,llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getUniqueExitBlocks(llvm::SmallVectorImpl<mlir::Block*> &)::{lambda(mlir::Block const*)#1}>(a1, &v17);
  if (v18)
  {
    v2 = v17;
    v3 = v17 + 8 * v18;
    v4 = a1 + 56;
LABEL_3:
    v5 = *v2;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        if (++v2 != v3)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }

      v9 = mlir::PredecessorIterator::unwrap(v5);
      v6 = *(a1 + 56);
      v10 = *(a1 + 64);
      if (v10 == v6)
      {
        v12 = *(a1 + 76);
        if (v12)
        {
          v13 = 8 * v12;
          while (*v6 != v9)
          {
            ++v6;
            v13 -= 8;
            if (!v13)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
LABEL_4:
          v6 = &v10[v12];
        }

        v7 = *(a1 + 64);
      }

      else
      {
        v6 = llvm::SmallPtrSetImplBase::doFind((a1 + 56), v9);
        v10 = *(a1 + 56);
        v7 = *(a1 + 64);
        if (!v6)
        {
          if (v7 == v10)
          {
            v11 = 20;
          }

          else
          {
            v11 = 16;
          }

          v6 = &v7[*(v4 + v11)];
        }
      }

      if (v7 == v10)
      {
        v8 = 20;
      }

      else
      {
        v8 = 16;
      }
    }

    while (v6 != &v7[*(v4 + v8)]);
    v14 = 0;
    v15 = v17;
    if (v17 == v19)
    {
      return v14;
    }
  }

  else
  {
LABEL_23:
    v14 = 1;
    v15 = v17;
    if (v17 == v19)
    {
      return v14;
    }
  }

  free(v15);
  return v14;
}

void llvm::getUniqueExitBlocksHelper<mlir::Block,llvm::LoopBase<mlir::Block,mlir::CFGLoop>,llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getUniqueExitBlocks(llvm::SmallVectorImpl<mlir::Block*> &)::{lambda(mlir::Block const*)#1}>(uint64_t a1, uint64_t a2)
{
  v25 = v29;
  v26 = v29;
  v27 = 32;
  v28 = 0;
  v2 = *(a1 + 32);
  v24 = *(a1 + 40);
  if (v2 != v24)
  {
    v5 = (a1 + 56);
    while (1)
    {
      v6 = *v2;
      v7 = mlir::SuccessorRange::SuccessorRange(&v30, *v2);
      v8 = v30;
      mlir::SuccessorRange::SuccessorRange(v7, v6);
      v9 = v31;
      if (v31)
      {
        break;
      }

LABEL_3:
      if (++v2 == v24)
      {
        if (v26 != v25)
        {
          free(v26);
        }

        return;
      }
    }

    v10 = 0;
    while (1)
    {
      v14 = *(v8 + 32 * v10 + 24);
      v11 = *(a1 + 56);
      v15 = *(a1 + 64);
      if (v15 == v11)
      {
        v19 = *(a1 + 76);
        if (v19)
        {
          v20 = 8 * v19;
          while (*v11 != v14)
          {
            ++v11;
            v20 -= 8;
            if (!v20)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
LABEL_6:
          v11 = &v15[v19];
        }

        v12 = *(a1 + 64);
      }

      else
      {
        v11 = llvm::SmallPtrSetImplBase::doFind(v5, *(v8 + 32 * v10 + 24));
        v15 = *(a1 + 56);
        v12 = *(a1 + 64);
        if (!v11)
        {
          if (v12 == v15)
          {
            v16 = 20;
          }

          else
          {
            v16 = 16;
          }

          v11 = &v12[*(v5 + v16)];
        }
      }

      if (v12 == v15)
      {
        v13 = 20;
      }

      else
      {
        v13 = 16;
      }

      if (v11 != &v12[*(v5 + v13)])
      {
        goto LABEL_12;
      }

      if (v26 == v25)
      {
        v21 = HIDWORD(v27);
        if (HIDWORD(v27))
        {
          v22 = 8 * HIDWORD(v27);
          v23 = v25;
          while (*v23 != v14)
          {
            ++v23;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_12;
        }

LABEL_32:
        if (HIDWORD(v27) < v27)
        {
          break;
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp_big(&v25, v14);
      if (v17)
      {
        v18 = *(a2 + 8);
        if (v18 >= *(a2 + 12))
        {
          goto LABEL_34;
        }

LABEL_22:
        *(*a2 + 8 * v18) = v14;
        ++*(a2 + 8);
      }

LABEL_12:
      if (++v10 == v9)
      {
        goto LABEL_3;
      }
    }

    ++HIDWORD(v27);
    v25[v21] = v14;
    v18 = *(a2 + 8);
    if (v18 >= *(a2 + 12))
    {
LABEL_34:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    goto LABEL_22;
  }
}

void llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getUniqueNonLatchExitBlocks(uint64_t a1, uint64_t a2)
{
  v4 = ***(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 56;
    while (1)
    {
      v7 = mlir::PredecessorIterator::unwrap(v4);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v9 != v8)
      {
        break;
      }

      v14 = *(a1 + 76);
      if (!v14)
      {
LABEL_19:
        v10 = &v9[v14];
        v11 = *(a1 + 64);
LABEL_20:
        if (v11 == v9)
        {
          v16 = 20;
        }

        else
        {
          v16 = 16;
        }

        if (v10 == &v11[*(v6 + v16)])
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }

      v15 = 8 * v14;
      while (*v8 != v7)
      {
        ++v8;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_19;
        }
      }

      if (v8 == (*(a1 + 64) + 8 * *(v6 + 20)))
      {
LABEL_3:
        v7 = v5;
        goto LABEL_4;
      }

LABEL_24:
      if (v5)
      {
        goto LABEL_28;
      }

LABEL_4:
      v4 = *v4;
      v5 = v7;
      if (!v4)
      {
        goto LABEL_29;
      }
    }

    v10 = llvm::SmallPtrSetImplBase::doFind((a1 + 56), v7);
    v9 = *(a1 + 56);
    v11 = *(a1 + 64);
    if (!v10)
    {
      if (v11 == v9)
      {
        v12 = 20;
      }

      else
      {
        v12 = 16;
      }

      if (v11 == v9)
      {
        v13 = 20;
      }

      else
      {
        v13 = 16;
      }

      if (&v11[*(v6 + v12)] == &v11[*(v6 + v13)])
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_28:
  v7 = 0;
LABEL_29:

  llvm::getUniqueExitBlocksHelper<mlir::Block,llvm::LoopBase<mlir::Block,mlir::CFGLoop>,llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getUniqueNonLatchExitBlocks(llvm::SmallVectorImpl<mlir::Block*> &)::{lambda(mlir::Block const*)#1}>(a1, a2, v7);
}

const void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getLoopLatch(uint64_t a1)
{
  v1 = ***(a1 + 32);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 56);
    while (1)
    {
      v5 = mlir::PredecessorIterator::unwrap(v1);
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      if (v7 != v6)
      {
        break;
      }

      v12 = *(a1 + 76);
      if (!v12)
      {
LABEL_19:
        v8 = &v7[v12];
        v9 = *(a1 + 64);
LABEL_20:
        if (v9 == v7)
        {
          v14 = 5;
        }

        else
        {
          v14 = 4;
        }

        if (v8 == &v9[v4[v14]])
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }

      v13 = 8 * v12;
      while (*v6 != v5)
      {
        ++v6;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (v6 == (*(a1 + 64) + 8 * v4[5]))
      {
LABEL_3:
        v5 = v3;
        goto LABEL_4;
      }

LABEL_24:
      if (v3)
      {
        return 0;
      }

LABEL_4:
      v1 = *v1;
      v3 = v5;
      if (!v1)
      {
        return v5;
      }
    }

    v8 = llvm::SmallPtrSetImplBase::doFind(v4, v5);
    v7 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (!v8)
    {
      if (v9 == v7)
      {
        v10 = 5;
      }

      else
      {
        v10 = 4;
      }

      if (v9 == v7)
      {
        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      if (&v9[v4[v10]] == &v9[v4[v11]])
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  return 0;
}

void llvm::getUniqueExitBlocksHelper<mlir::Block,llvm::LoopBase<mlir::Block,mlir::CFGLoop>,llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getUniqueNonLatchExitBlocks(llvm::SmallVectorImpl<mlir::Block*> &)::{lambda(mlir::Block const*)#1}>(uint64_t a1, uint64_t a2, mlir::Block *a3)
{
  v28 = v32;
  v29 = v32;
  v30 = 32;
  v31 = 0;
  v6 = *(a1 + 32);
  for (i = *(a1 + 40); v6 != i; ++v6)
  {
    if (*v6 != a3)
    {
      break;
    }
  }

  if (v6 != i)
  {
    v7 = a1 + 56;
    v27 = *(a1 + 40);
    while (1)
    {
      v8 = *v6;
      v9 = mlir::SuccessorRange::SuccessorRange(&v33, *v6);
      v10 = v33;
      mlir::SuccessorRange::SuccessorRange(v9, v8);
      v11 = v34;
      if (v34)
      {
        break;
      }

LABEL_38:
      for (++v6; v6 != v27; ++v6)
      {
        if (*v6 != a3)
        {
          break;
        }
      }

      if (v6 == v27)
      {
        if (v29 != v28)
        {
          free(v29);
        }

        return;
      }
    }

    v12 = 0;
    while (1)
    {
      v16 = *(v10 + 32 * v12 + 24);
      v13 = *(a1 + 56);
      v17 = *(a1 + 64);
      if (v17 == v13)
      {
        v21 = *(a1 + 76);
        if (v21)
        {
          v22 = 8 * v21;
          while (*v13 != v16)
          {
            ++v13;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          v13 = &v17[v21];
        }

        v14 = *(a1 + 64);
      }

      else
      {
        v13 = llvm::SmallPtrSetImplBase::doFind((a1 + 56), *(v10 + 32 * v12 + 24));
        v17 = *(a1 + 56);
        v14 = *(a1 + 64);
        if (!v13)
        {
          if (v14 == v17)
          {
            v18 = 20;
          }

          else
          {
            v18 = 16;
          }

          v13 = &v14[*(v7 + v18)];
        }
      }

      if (v14 == v17)
      {
        v15 = 20;
      }

      else
      {
        v15 = 16;
      }

      if (v13 != &v14[*(v7 + v15)])
      {
        goto LABEL_15;
      }

      if (v29 == v28)
      {
        v23 = HIDWORD(v30);
        if (HIDWORD(v30))
        {
          v24 = 8 * HIDWORD(v30);
          v25 = v28;
          while (*v25 != v16)
          {
            ++v25;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_35;
            }
          }

          goto LABEL_15;
        }

LABEL_35:
        if (HIDWORD(v30) < v30)
        {
          break;
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp_big(&v28, v16);
      if (v19)
      {
        v20 = *(a2 + 8);
        if (v20 >= *(a2 + 12))
        {
          goto LABEL_37;
        }

LABEL_25:
        *(*a2 + 8 * v20) = v16;
        ++*(a2 + 8);
      }

LABEL_15:
      if (++v12 == v11)
      {
        goto LABEL_38;
      }
    }

    ++HIDWORD(v30);
    v28[v23] = v16;
    v20 = *(a2 + 8);
    if (v20 >= *(a2 + 12))
    {
LABEL_37:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    goto LABEL_25;
  }
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getUniqueExitBlock(uint64_t a1)
{
  v10 = a1;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *v1;
    mlir::SuccessorRange::SuccessorRange(v11, *v1);
    v5 = *&v11[0];
    mlir::SuccessorRange::SuccessorRange(v11, v4);
    v6 = v11[0];
    v11[0] = v5;
    v11[1] = v6;
    v7 = llvm::find_singleton_nested<mlir::Block,llvm::iterator_range<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block*,mlir::Block*,mlir::Block*>::iterator>,std::pair<mlir::Block *,BOOL> llvm::getExitBlockHelper<mlir::Block,mlir::CFGLoop>(llvm::LoopBase<mlir::Block,mlir::CFGLoop> const*,BOOL)::{lambda(mlir::Block*,BOOL)#1}>(v11, &v10, 1);
    if (v8)
    {
      break;
    }

    if (v7)
    {
      if (v3)
      {
        if (v3 != v7)
        {
          return 0;
        }
      }

      else
      {
        v3 = v7;
      }
    }

    if (++v1 == v2)
    {
      return v3;
    }
  }

  return v7;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::hasNoExitBlocks(uint64_t a1)
{
  v11 = a1;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == v2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v5 = *v1;
    mlir::SuccessorRange::SuccessorRange(v12, *v1);
    v6 = *&v12[0];
    mlir::SuccessorRange::SuccessorRange(v12, v5);
    v7 = v12[0];
    v12[0] = v6;
    v12[1] = v7;
    v4 = llvm::find_singleton_nested<mlir::Block,llvm::iterator_range<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block*,mlir::Block*,mlir::Block*>::iterator>,std::pair<mlir::Block *,BOOL> llvm::getExitBlockHelper<mlir::Block,mlir::CFGLoop>(llvm::LoopBase<mlir::Block,mlir::CFGLoop> const*,BOOL)::{lambda(mlir::Block*,BOOL)#1}>(v12, &v11, 0);
    if (v8)
    {
      goto LABEL_9;
    }

    if (v4)
    {
      if (v3)
      {
        v4 = 0;
LABEL_9:
        v9 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v4 = v3;
    }

    ++v1;
    v3 = v4;
  }

  while (v1 != v2);
  v9 = 1;
LABEL_12:
  if (v4)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitEdges(void *result, uint64_t a2)
{
  v2 = result[4];
  v19 = result[5];
  if (v2 != v19)
  {
    v4 = result;
    v5 = (result + 7);
    do
    {
      v20 = v2;
      v6 = *v2;
      mlir::SuccessorRange::SuccessorRange(&v21, *v2);
      v7 = v21;
      result = mlir::SuccessorRange::SuccessorRange(&v21, v6);
      v8 = v22;
      if (v22)
      {
        v9 = 0;
        do
        {
          while (1)
          {
            v12 = *(v7 + 32 * v9 + 24);
            result = v4[7];
            v13 = v4[8];
            if (v13 == result)
            {
              v17 = *(v4 + 19);
              if (v17)
              {
                v18 = 8 * v17;
                while (*result != v12)
                {
                  ++result;
                  v18 -= 8;
                  if (!v18)
                  {
                    goto LABEL_6;
                  }
                }
              }

              else
              {
LABEL_6:
                result = &v13[v17];
              }

              v10 = v4[8];
            }

            else
            {
              result = llvm::SmallPtrSetImplBase::doFind(v5, *(v7 + 32 * v9 + 24));
              v13 = v4[7];
              v10 = v4[8];
              if (!result)
              {
                if (v10 == v13)
                {
                  v14 = 20;
                }

                else
                {
                  v14 = 16;
                }

                result = &v10[*(v5 + v14)];
              }
            }

            v11 = v10 == v13 ? 20 : 16;
            if (result == &v10[*(v5 + v11)])
            {
              break;
            }

            if (++v9 == v8)
            {
              goto LABEL_3;
            }
          }

          v15 = *(a2 + 8);
          if (v15 >= *(a2 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = (*a2 + 16 * v15);
          *v16 = v6;
          v16[1] = v12;
          *(a2 + 8) = v15 + 1;
          ++v9;
        }

        while (v9 != v8);
      }

LABEL_3:
      v2 = v20 + 1;
    }

    while (v20 + 1 != v19);
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getLoopPreheader(uint64_t a1)
{
  v1 = ***(a1 + 32);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 56);
    do
    {
      v8 = mlir::PredecessorIterator::unwrap(v1);
      v5 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v9 == v5)
      {
        v11 = *(a1 + 76);
        if (v11)
        {
          v12 = 8 * v11;
          while (*v5 != v8)
          {
            ++v5;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
LABEL_3:
          v5 = &v9[v11];
        }

        v6 = *(a1 + 64);
      }

      else
      {
        v5 = llvm::SmallPtrSetImplBase::doFind(v4, v8);
        v9 = *(a1 + 56);
        v6 = *(a1 + 64);
        if (!v5)
        {
          if (v6 == v9)
          {
            v10 = 20;
          }

          else
          {
            v10 = 16;
          }

          v5 = &v6[*(v4 + v10)];
        }
      }

      if (v6 == v9)
      {
        v7 = 20;
      }

      else
      {
        v7 = 16;
      }

      if (v5 == &v6[*(v4 + v7)])
      {
        if (v3 && v3 != v8)
        {
          return 0;
        }
      }

      else
      {
        v8 = v3;
      }

      v1 = *v1;
      v3 = v8;
    }

    while (v1);
  }

  return 0;
}

const void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getLoopPredecessor(uint64_t a1)
{
  v1 = ***(a1 + 32);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 56);
    while (1)
    {
      v8 = mlir::PredecessorIterator::unwrap(v1);
      v5 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v9 == v5)
      {
        v11 = *(a1 + 76);
        if (v11)
        {
          v12 = 8 * v11;
          while (*v5 != v8)
          {
            ++v5;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
LABEL_3:
          v5 = &v9[v11];
        }

        v6 = *(a1 + 64);
      }

      else
      {
        v5 = llvm::SmallPtrSetImplBase::doFind(v4, v8);
        v9 = *(a1 + 56);
        v6 = *(a1 + 64);
        if (!v5)
        {
          if (v6 == v9)
          {
            v10 = 20;
          }

          else
          {
            v10 = 16;
          }

          v5 = &v6[*(v4 + v10)];
        }
      }

      if (v6 == v9)
      {
        v7 = 20;
      }

      else
      {
        v7 = 16;
      }

      if (v5 == &v6[*(v4 + v7)])
      {
        if (v3 && v3 != v8)
        {
          return 0;
        }
      }

      else
      {
        v8 = v3;
      }

      v1 = *v1;
      v3 = v8;
      if (!v1)
      {
        return v8;
      }
    }
  }

  return 0;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getLoopLatches(uint64_t result, uint64_t a2)
{
  v2 = ***(result + 32);
  if (v2)
  {
    v4 = result;
    v5 = (result + 56);
    while (1)
    {
      v6 = mlir::PredecessorIterator::unwrap(v2);
      result = *(v4 + 56);
      v7 = *(v4 + 64);
      if (v7 != result)
      {
        break;
      }

      v11 = *(v4 + 76);
      if (!v11)
      {
LABEL_19:
        result = v7 + 8 * v11;
        v8 = *(v4 + 64);
LABEL_20:
        if (v8 == v7)
        {
          v13 = 5;
        }

        else
        {
          v13 = 4;
        }

        if (result == v8 + 8 * v5[v13])
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }

      v12 = 8 * v11;
      while (*result != v6)
      {
        result += 8;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      if (result == *(v4 + 64) + 8 * v5[5])
      {
        goto LABEL_4;
      }

LABEL_24:
      v14 = *(a2 + 8);
      if (v14 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v14) = v6;
      ++*(a2 + 8);
LABEL_4:
      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    result = llvm::SmallPtrSetImplBase::doFind(v5, v6);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);
    if (!result)
    {
      if (v8 == v7)
      {
        v9 = 5;
      }

      else
      {
        v9 = 4;
      }

      result = v8 + 8 * v5[v9];
      if (v8 == v7)
      {
        v10 = 5;
      }

      else
      {
        v10 = 4;
      }

      if (result == v8 + 8 * v5[v10])
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  return result;
}

void llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getLoopsInPreorder(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = a1;
  *a2 = a2 + 2;
  a2[1] = 0x400000001;
  llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getInnerLoopsInPreorder<mlir::CFGLoop const*>(a1, a2);
}

{
  a2[2] = a1;
  *a2 = a2 + 2;
  a2[1] = 0x400000001;
  llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getInnerLoopsInPreorder<mlir::CFGLoop const*>(a1, a2);
}

void llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getInnerLoopsInPreorder<mlir::CFGLoop const*>(uint64_t a1, uint64_t a2)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v36 = 0x400000000;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v3 - v2;
  if (((v3 - v2) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3 != v2)
  {
    v5 = v37;
    v6 = v3 - v2 - 8;
    if (v6 < 0xA8 || v37 < v3 && v2 < &v37[v3 - v2])
    {
      goto LABEL_31;
    }

    v7 = (v6 >> 3) + 1;
    v8 = 8 * (v7 & 0x3FFFFFFFFFFFFFFCLL);
    v5 = &v37[v8];
    v9 = v3 - v8;
    v10 = v38;
    v11 = (v3 - 16);
    v12 = v7 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vextq_s8(v11[-1], v11[-1], 8uLL);
      v10[-1] = vextq_s8(*v11, *v11, 8uLL);
      *v10 = v13;
      v10 += 2;
      v11 -= 2;
      v12 -= 4;
    }

    while (v12);
    v3 = v9;
    if (v7 != (v7 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_31:
      do
      {
        v14 = *(v3 - 8);
        v3 -= 8;
        *v5 = v14;
        v5 += 8;
      }

      while (v3 != v2);
    }
  }

  v15 = v4 >> 3;
  LODWORD(v36) = v15;
  if (v15)
  {
    do
    {
      v16 = *&v37[8 * v15 - 8];
      v17 = (v15 - 1);
      LODWORD(v36) = v17;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = v19 - v18;
      if (v17 + ((v19 - v18) >> 3) > HIDWORD(v36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v21 = v19 - v18;
      if (v19 != v18)
      {
        v22 = &v37[8 * v17];
        v23 = v21 - 8;
        if ((v21 - 8) < 0x48)
        {
          goto LABEL_32;
        }

        v24 = v23 >> 3;
        v25 = &v37[8 * v17 + 8 + v23];
        if (v22 < v19 && v19 - 8 * v24 - 8 < v25)
        {
          goto LABEL_32;
        }

        v27 = v24 + 1;
        v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
        v22 = (v22 + v28);
        v29 = v19 - v28;
        v30 = &v37[8 * v17 + 16];
        v31 = (v19 - 16);
        v32 = v27 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v33 = vextq_s8(v31[-1], v31[-1], 8uLL);
          v30[-1] = vextq_s8(*v31, *v31, 8uLL);
          *v30 = v33;
          v30 += 2;
          v31 -= 2;
          v32 -= 4;
        }

        while (v32);
        v19 = v29;
        if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_32:
          do
          {
            v34 = *(v19 - 8);
            v19 -= 8;
            *v22++ = v34;
          }

          while (v19 != v18);
        }
      }

      LODWORD(v36) = v17 + (v20 >> 3);
      v35 = *(a2 + 8);
      if (v35 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v35) = v16;
      ++*(a2 + 8);
      v15 = v36;
    }

    while (v36);
  }
}

llvm::SmallPtrSetImplBase *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::addBasicBlockToLoop(uint64_t *a1, void *a2, uint64_t a3)
{
  v10 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a3, &v10);
  for (*result = a1; a1; a1 = *a1)
  {
    v11 = v10;
    std::vector<mlir::Operation *>::push_back[abi:nn200100]((a1 + 4), &v11);
    v5 = a1[7];
    result = (a1 + 7);
    v6 = v11;
    if (a1[8] != v5)
    {
      goto LABEL_3;
    }

    v7 = *(a1 + 19);
    if (v7)
    {
      v8 = 8 * v7;
      v9 = a1[7];
      while (*v9 != v11)
      {
        ++v9;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      continue;
    }

LABEL_10:
    if (v7 < *(a1 + 18))
    {
      *(a1 + 19) = v7 + 1;
      *(v5 + 8 * v7) = v6;
    }

    else
    {
LABEL_3:
      result = llvm::SmallPtrSetImplBase::insert_imp_big(result, v11);
    }
  }

  return result;
}

const void **llvm::LoopBase<mlir::Block,mlir::CFGLoop>::addBlockEntry(uint64_t a1, void *a2)
{
  v9 = a2;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 32, &v9);
  v4 = *(a1 + 56);
  result = (a1 + 56);
  v5 = v9;
  if (*(a1 + 64) != v4)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v9);
  }

  v6 = *(a1 + 76);
  if (!v6)
  {
LABEL_8:
    if (v6 < *(a1 + 72))
    {
      *(a1 + 76) = v6 + 1;
      *(v4 + 8 * v6) = v5;
      return result;
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v9);
  }

  v7 = 8 * v6;
  v8 = *(a1 + 56);
  while (*v8 != v9)
  {
    ++v8;
    v7 -= 8;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::replaceChildLoopWith(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = *(result + 16);
        break;
      }
    }
  }

  *v3 = a3;
  *a2 = 0;
  *a3 = result;
  return result;
}

void llvm::LoopBase<mlir::Block,mlir::CFGLoop>::addChildLoop(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = a1;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 8, &v2);
}

void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::removeChildLoop(uint64_t a1, char *__dst)
{
  v6 = *__dst;
  v4 = __dst + 8;
  v5 = v6;
  v7 = *(a1 + 16);
  v8 = v7 - v4;
  if (v7 != v4)
  {
    memmove(__dst, v4, v7 - v4);
  }

  *(a1 + 16) = &__dst[v8];
  *v5 = 0;
  return v5;
}

void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::removeChildLoop(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        v4 = *(a1 + 16);
        break;
      }
    }
  }

  v5 = *v4;
  v6 = v3 - (v4 + 1);
  if (v3 != (v4 + 1))
  {
    memmove(v4, v4 + 1, v3 - (v4 + 1));
  }

  *(a1 + 16) = v4 + v6;
  *v5 = 0;
  return v5;
}

int8x16_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::reverseBlock(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32) + 8 * a2;
  v4 = (v2 - 8);
  if (v3 != v2 && v4 > v3)
  {
    v6 = (v2 - 16);
    v7 = v3 + 8;
    if (v2 - 16 > v3 + 8)
    {
      v7 = v2 - 16;
    }

    v8 = v7 - 8;
    if (v8 == v3)
    {
      v9 = *(a1 + 32) + 8 * a2;
    }

    else
    {
      v9 = v3 + 1;
    }

    v10 = v8 == v3;
    v11 = (v8 - v9) >> 4;
    if (!v10)
    {
      ++v11;
    }

    if (v11 >= 0x13 && (v2 <= v3 || v2 - 8 * v11 - 8 >= v3 + 8 * v11 + 8))
    {
      v16 = v11 + 1;
      v17 = 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL);
      v4 = (v4 - v17);
      v12 = v3 + v17;
      v18 = (v3 + 16);
      v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = v18[-1];
        v21 = *v18;
        v22 = vextq_s8(v6[-1], v6[-1], 8uLL);
        v18[-1] = vextq_s8(*v6, *v6, 8uLL);
        *v18 = v22;
        result = vextq_s8(v20, v20, 8uLL);
        v6[-1] = vextq_s8(v21, v21, 8uLL);
        *v6 = result;
        v18 += 2;
        v6 -= 2;
        v19 -= 4;
      }

      while (v19);
      if (v16 == (v16 & 0x3FFFFFFFFFFFFFFCLL))
      {
        return result;
      }
    }

    else
    {
      v12 = *(a1 + 32) + 8 * a2;
    }

    v13 = v12 + 8;
    do
    {
      v14 = *(v13 - 8);
      *(v13 - 8) = *v4;
      *v4-- = v14;
      v15 = v13 >= v4;
      v13 += 8;
    }

    while (!v15);
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::reserveBlocks(uint64_t result, unsigned int a2)
{
  if (a2 > ((*(result + 48) - *(result + 32)) >> 3))
  {
    operator new();
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::moveToHeader(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (*v2 != a2)
  {
    v3 = 0;
    do
    {
      v4 = v3;
      v5 = v2[v3++];
    }

    while (v5 != a2);
    v2[v4] = *v2;
    *v2 = a2;
  }

  return result;
}

llvm::SmallPtrSetImplBase *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::removeBlockFromLoop(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      if (++v5 == v4)
      {
        v5 = *(a1 + 40);
        break;
      }
    }
  }

  v6 = v4 - (v5 + 1);
  if (v4 != v5 + 1)
  {
    memmove(v5, v5 + 1, v4 - (v5 + 1));
  }

  result = (a1 + 56);
  v8 = *(a1 + 56);
  *(a1 + 40) = v5 + v6;
  if (*(a1 + 64) == v8)
  {
    v9 = *(a1 + 76);
    if (v9)
    {
      v10 = 8 * v9;
      for (i = v8; *i != a2; ++i)
      {
        v10 -= 8;
        if (!v10)
        {
          return result;
        }
      }

      v12 = v9 - 1;
      *(a1 + 76) = v12;
      *i = v8[v12];
    }
  }

  else
  {
    result = llvm::SmallPtrSetImplBase::doFind(result, a2);
    if (result)
    {
      *result = -2;
      ++*(a1 + 80);
    }
  }

  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::verifyLoopNest(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, &v8, v9);
  v6 = *(a1 + 8);
  for (i = *(a1 + 16); v6 != i; result = llvm::LoopBase<mlir::Block,mlir::CFGLoop>::verifyLoopNest(v7, a2))
  {
    v7 = *v6++;
  }

  return result;
}

void *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::print(void *a1, llvm::raw_ostream *a2, char a3, char a4, int a5)
{
  llvm::raw_ostream::indent(a2, 2 * a5);
  v9 = *(a2 + 4);
  if (*(a2 + 3) - v9 > 0xDuLL)
  {
    qmemcpy(v9, "Loop at depth ", 14);
    *(a2 + 4) += 14;
    v10 = a2;
  }

  else
  {
    v10 = llvm::raw_ostream::write(a2, "Loop at depth ", 0xEuLL);
  }

  LODWORD(v11) = 0;
  v12 = a1;
  do
  {
    v12 = *v12;
    v11 = (v11 + 1);
  }

  while (v12);
  result = llvm::raw_ostream::operator<<(v10, v11);
  v14 = result[4];
  if (result[3] - v14 > 0xCuLL)
  {
    qmemcpy(v14, " containing: ", 13);
    result[4] += 13;
    v15 = a1[4];
    if (a1[5] == v15)
    {
      goto LABEL_28;
    }

LABEL_10:
    v16 = *v15;
    v17 = *v15;
    if (a3)
    {
      v18 = *(a2 + 4);
      if (*(a2 + 3) == v18)
      {
        llvm::raw_ostream::write(a2, "\n", 1uLL);
      }

      else
      {
        *v18 = 10;
        ++*(a2 + 4);
      }
    }

    else
    {
      mlir::Block::printAsOperand(v17, a2);
    }

    if (v17 == v16)
    {
      v19 = *(a2 + 4);
      if (*(a2 + 3) - v19 > 7uLL)
      {
        *v19 = 0x3E7265646165683CLL;
        *(a2 + 4) += 8;
        v20 = **a1[4];
        if (v20)
        {
LABEL_19:
          while (mlir::PredecessorIterator::unwrap(v20) != v17)
          {
            v20 = *v20;
            if (!v20)
            {
              goto LABEL_27;
            }
          }

          v21 = *(a2 + 4);
          if (*(a2 + 3) - v21 > 6uLL)
          {
            *(v21 + 3) = 1047028596;
            *v21 = 1952541756;
            *(a2 + 4) += 7;
          }

          else
          {
            llvm::raw_ostream::write(a2, "<latch>", 7uLL);
          }
        }

LABEL_27:
        llvm::LoopBase<mlir::Block,mlir::CFGLoop>::isLoopExiting();
      }

      llvm::raw_ostream::write(a2, "<header>", 8uLL);
    }

    v20 = **a1[4];
    if (v20)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  result = llvm::raw_ostream::write(result, " containing: ", 0xDuLL);
  v15 = a1[4];
  if (a1[5] != v15)
  {
    goto LABEL_10;
  }

LABEL_28:
  if ((a4 & 1) == 0)
  {
    return result;
  }

  v22 = *(a2 + 4);
  if (*(a2 + 3) == v22)
  {
    result = llvm::raw_ostream::write(a2, "\n", 1uLL);
    v24 = a1[1];
    v23 = a1[2];
    if (v24 == v23)
    {
      return result;
    }
  }

  else
  {
    *v22 = 10;
    ++*(a2 + 4);
    v24 = a1[1];
    v23 = a1[2];
    if (v24 == v23)
    {
      return result;
    }
  }

  do
  {
    v25 = *v24++;
    result = llvm::LoopBase<mlir::Block,mlir::CFGLoop>::print(v25, a2, 0, 1, (a5 + 2));
  }

  while (v24 != v23);
  return result;
}

double llvm::LoopBase<mlir::Block,mlir::CFGLoop>::LoopBase(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 88;
  *(a1 + 64) = a1 + 88;
  *&result = 8;
  *(a1 + 72) = 8;
  *(a1 + 80) = 0;
  return result;
}

{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = a1 + 88;
  *(a1 + 64) = a1 + 88;
  *&result = 8;
  *(a1 + 72) = 8;
  *(a1 + 80) = 0;
  return result;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::LoopBase(uint64_t a1, void *a2)
{
  v10 = a2;
  *(a1 + 56) = a1 + 88;
  v3 = (a1 + 56);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 64) = a1 + 88;
  *(a1 + 72) = 8;
  *(a1 + 80) = 0;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 32, &v10);
  v4 = v10;
  v5 = *v3;
  if (*(a1 + 64) != *v3)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 76);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *v3;
    while (*v9 != v10)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

LABEL_8:
  if (v7 >= *(a1 + 72))
  {
LABEL_2:
    llvm::SmallPtrSetImplBase::insert_imp_big(v3, v10);
    return a1;
  }

  *(a1 + 76) = v7 + 1;
  v5[v7] = v4;
  return a1;
}

{
  v10 = a2;
  *(a1 + 56) = a1 + 88;
  v3 = (a1 + 56);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 64) = a1 + 88;
  *(a1 + 72) = 8;
  *(a1 + 80) = 0;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](a1 + 32, &v10);
  v4 = v10;
  v5 = *v3;
  if (*(a1 + 64) != *v3)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 76);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *v3;
    while (*v9 != v10)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

LABEL_8:
  if (v7 >= *(a1 + 72))
  {
LABEL_2:
    llvm::SmallPtrSetImplBase::insert_imp_big(v3, v10);
    return a1;
  }

  *(a1 + 76) = v7 + 1;
  v5[v7] = v4;
  return a1;
}

uint64_t llvm::LoopBase<mlir::Block,mlir::CFGLoop>::~LoopBase(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      llvm::LoopBase<mlir::Block,mlir::CFGLoop>::~LoopBase(v4);
    }

    while (v2 != v3);
    v2 = *(a1 + 8);
  }

  v5 = *(a1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 40) = *(a1 + 32);
  if (*(a1 + 64) == v5)
  {
LABEL_11:
    *(a1 + 76) = 0;
    *(a1 + 80) = 0;
    *a1 = 0;
    v8 = *(a1 + 64);
    if (v8 == *(a1 + 56))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = *(a1 + 72);
  if (v6 < 0x21 || 4 * (*(a1 + 76) - *(a1 + 80)) >= v6)
  {
    memset(*(a1 + 64), 255, 8 * v6);
    goto LABEL_11;
  }

  llvm::SmallPtrSetImplBase::shrink_and_clear((a1 + 56));
  *a1 = 0;
  v8 = *(a1 + 64);
  if (v8 != *(a1 + 56))
  {
LABEL_12:
    free(v8);
  }

LABEL_13:
  v9 = *(a1 + 32);
  if (v9)
  {
    *(a1 + 40) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    *(a1 + 16) = v10;
    operator delete(v10);
  }

  return a1;
}

void llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::~LoopInfoBase()
{
  llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::releaseMemory();
}

{
  llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::releaseMemory();
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::releaseMemory(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (!v2 && !*(result + 12))
  {
LABEL_6:
    v4 = *(v1 + 24);
    if (v4 == *(v1 + 32))
    {
      goto LABEL_7;
    }

LABEL_19:
    llvm::LoopBase<mlir::Block,mlir::CFGLoop>::~LoopBase();
  }

  v3 = *(result + 16);
  if (v3 > 4 * v2 && v3 >= 0x41)
  {
    result = llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::shrink_and_clear(result);
    goto LABEL_6;
  }

  if (v3)
  {
    v5 = *result;
    v6 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v9 = &v5[2 * v8];
      v10 = v5 + 2;
      v11 = v8;
      do
      {
        *(v10 - 2) = -4096;
        *v10 = -4096;
        v10 += 4;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[2 * v3];
    do
    {
      *v9 = -4096;
      v9 += 2;
    }

    while (v9 != v12);
  }

LABEL_18:
  *(result + 8) = 0;
  v4 = *(result + 24);
  if (v4 != *(result + 32))
  {
    goto LABEL_19;
  }

LABEL_7:
  *(v1 + 32) = v4;
  if (*(v1 + 120))
  {
    llvm::deallocate_buffer(**(v1 + 112), *(*(v1 + 112) + 8));
  }

  *(v1 + 120) = 0;
  v13 = *(v1 + 72);
  if (v13)
  {
    *(v1 + 128) = 0;
    v14 = *(v1 + 64);
    v15 = *v14 + 4096;
    *(v1 + 48) = *v14;
    *(v1 + 56) = v15;
    if (v13 != 1)
    {
      v16 = ((v14 + 8 - *(v1 + 64)) >> 10) & 0x1FFFFFF;
      if (v16 >= 0x1E)
      {
        LOBYTE(v16) = 30;
      }

      llvm::deallocate_buffer(*(v14 + 8), (4096 << v16));
    }

    *(v1 + 72) = 1;
  }

  return result;
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::LoopInfoBase(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 12);
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = (a2 + 48);
  v7 = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 64) = a1 + 80;
  v8 = a1 + 64;
  *(v8 - 16) = v7;
  *(v8 + 8) = 0x400000000;
  if (*(a2 + 72))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=(v8, (a2 + 64));
  }

  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0;
  if (*(a2 + 120))
  {
    llvm::SmallVectorImpl<std::pair<void *,unsigned long>>::operator=(a1 + 112, (a2 + 112));
  }

  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a2 + 72) = 0;
  *(a2 + 120) = 0;
  *v6 = 0;
  v6[1] = 0;
  *(a2 + 32) = *(a2 + 24);
  return a1;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    llvm::deallocate_buffer(**(a1 + 16), 0x1000);
  }

  if (*(a1 + 72))
  {
    llvm::deallocate_buffer(**(a1 + 64), *(*(a1 + 64) + 8));
  }

  *a1 = *a2;
  *(a1 + 80) = *(a2 + 80);
  v4 = (a1 + 80);
  llvm::SmallVectorImpl<unsigned long>::operator=(a1 + 16, (a2 + 16));
  if (a1 != a2)
  {
    v6 = (a2 + 72);
    v5 = *(a2 + 72);
    if (v5)
    {
      v7 = *(a1 + 64);
      if (v7 != v4)
      {
        free(v7);
        v5 = *v6;
      }

      *(a1 + 64) = *(a2 + 64);
      v8 = *(a2 + 76);
      *(a1 + 72) = v5;
      *(a1 + 76) = v8;
      *(a2 + 64) = a2 + 80;
      *(a2 + 76) = 0;
    }

    else
    {
      v6 = (a1 + 72);
    }

    *v6 = 0;
  }

  *(a2 + 80) = 0;
  *(a2 + 24) = 0;
  *(a2 + 72) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  return a1;
}

void llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::getLoopsInPreorder(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v11 = v13;
  v12 = 0x400000000;
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3 != v4)
  {
    do
    {
      v5 = *(v3 - 8);
      v3 -= 8;
      __src = v10;
      v10[0] = v5;
      v9 = 0x400000001;
      llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getInnerLoopsInPreorder<mlir::CFGLoop const*>(v5, &__src);
      v6 = v9;
      v7 = *(a2 + 8);
      if (v7 + v9 > *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v9)
      {
        memcpy((*a2 + 8 * v7), __src, 8 * v9);
        LODWORD(v7) = *(a2 + 8);
      }

      *(a2 + 8) = v7 + v6;
      if (__src != v10)
      {
        free(__src);
      }
    }

    while (v3 != v4);
    if (v11 != v13)
    {
      free(v11);
    }
  }
}

void llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::getLoopsInReverseSiblingPreorder(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[4] = *MEMORY[0x277D85DE8];
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v22 = 0x400000000;
  v3 = *(a1 + 24);
  for (i = *(a1 + 32); v3 != i; ++v3)
  {
    if (!HIDWORD(v22))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23[0] = *v3;
    v5 = v22 + 1;
    do
    {
      v6 = v23[v5 - 1];
      v7 = v5 - 1;
      LODWORD(v22) = v7;
      v9 = *(v6 + 8);
      v8 = *(v6 + 16);
      v10 = v8 - v9;
      if (v7 + ((v8 - v9) >> 3) > HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v9 != v8)
      {
        v11 = &v23[v7];
        if (v10 - 8 < 0x18)
        {
          goto LABEL_22;
        }

        v12 = v7;
        if ((&v23[v12] - v9) < 0x20)
        {
          goto LABEL_22;
        }

        v13 = ((v10 - 8) >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (v11 + v14);
        v15 = &v9[v14];
        v16 = (v9 + 16);
        v17 = &v23[v12 + 2];
        v18 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = *v16;
          *(v17 - 1) = *(v16 - 1);
          *v17 = v19;
          v16 += 2;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        v9 = v15;
        if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_22:
          do
          {
            v20 = *v9;
            v9 += 8;
            *v11++ = v20;
          }

          while (v9 != v8);
        }
      }

      LODWORD(v22) = v7 + (v10 >> 3);
      v21 = *(a2 + 8);
      if (v21 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v21) = v6;
      ++*(a2 + 8);
      v5 = v22;
    }

    while (v22);
  }
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::getLoopFor(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(*a1 + 16 * v5);
    if (v6 == a2)
    {
      return *(v3 + 16 * v5 + 8);
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        return *(v3 + 16 * v5 + 8);
      }
    }
  }

  return 0;
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::operator[](uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(*a1 + 16 * v5);
    if (v6 == a2)
    {
      return *(v3 + 16 * v5 + 8);
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        return *(v3 + 16 * v5 + 8);
      }
    }
  }

  return 0;
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::getLoopDepth(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(*a1 + 16 * v5);
  if (v6 != a2)
  {
    v9 = 1;
    while (v6 != -4096)
    {
      v10 = v5 + v9++;
      v5 = v10 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  v7 = *(v3 + 16 * v5 + 8);
  if (!v7)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v7 = *v7;
    result = (result + 1);
  }

  while (v7);
  return result;
}

BOOL llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::isLoopHeader(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(*a1 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      v7 = *(v3 + 16 * v5 + 8);
      if (v7)
      {
        return **(v7 + 32) == a2;
      }
    }

    else
    {
      v9 = 1;
      while (v6 != -4096)
      {
        v10 = v5 + v9++;
        v5 = v10 & v4;
        v6 = *(v3 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::removeLoop(uint64_t a1, char *__dst)
{
  v6 = *__dst;
  v4 = __dst + 8;
  v5 = v6;
  v7 = *(a1 + 32);
  v8 = v7 - v4;
  if (v7 != v4)
  {
    memmove(__dst, v4, v7 - v4);
  }

  *(a1 + 32) = &__dst[v8];
  return v5;
}

int32x2_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::changeLoopFor(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1, &v11) = a3;
  }

  else
  {
    v4 = a1[2].i32[0];
    if (v4)
    {
      v5 = *a1;
      v6 = v4 - 1;
      v7 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
      v8 = *(*a1 + 16 * v7);
      if (v8 == a2)
      {
LABEL_6:
        *(*&v5 + 16 * v7) = -8192;
        result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
        a1[1] = result;
      }

      else
      {
        v9 = 1;
        while (v8 != -4096)
        {
          v10 = v7 + v9++;
          v7 = v10 & v6;
          v8 = *(*&v5 + 16 * v7);
          if (v8 == a2)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::changeTopLevelLoop(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  v4 = *(result + 32);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = *(result + 32);
        break;
      }
    }
  }

  *v3 = a3;
  return result;
}

unsigned int *llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::removeBlock(unsigned int *result, void *a2)
{
  v2 = result[4];
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(*result + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      if (v6 != v2)
      {
        v8 = (v5 + 16 * v6);
        for (i = v8[1]; i; i = *i)
        {
          v12 = i[4];
          v11 = i[5];
          if (v12 != v11)
          {
            while (*v12 != a2)
            {
              if (++v12 == v11)
              {
                v12 = i[5];
                break;
              }
            }
          }

          v13 = v11 - (v12 + 1);
          if (v11 != v12 + 1)
          {
            memmove(v12, v12 + 1, v11 - (v12 + 1));
          }

          result = (i + 7);
          v14 = i[7];
          i[5] = v12 + v13;
          if (i[8] == v14)
          {
            v15 = *(i + 19);
            if (v15)
            {
              v16 = 8 * v15;
              v17 = v14;
              while (*v17 != a2)
              {
                ++v17;
                v16 -= 8;
                if (!v16)
                {
                  goto LABEL_7;
                }
              }

              v10 = v15 - 1;
              *(i + 19) = v10;
              *v17 = v14[v10];
            }
          }

          else
          {
            result = llvm::SmallPtrSetImplBase::doFind(result, a2);
            if (result)
            {
              *result = -2;
              ++*(i + 20);
            }
          }

LABEL_7:
          ;
        }

        *v8 = -8192;
        v4[1] = vadd_s32(v4[1], 0x1FFFFFFFFLL);
      }
    }

    else
    {
      v18 = 1;
      while (v7 != -4096)
      {
        v19 = v6 + v18++;
        v6 = v19 & (v2 - 1);
        v7 = *(v5 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

BOOL llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::isNotAlreadyContainedIn(void *a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = a1;
  while (1)
  {
    result = v2 != a2;
    if (v2 == a2)
    {
      break;
    }

    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

void llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::analyze(uint64_t *a1, uint64_t a2)
{
  v49[24] = *MEMORY[0x277D85DE8];
  v24[0] = *(a2 + 112);
  llvm::post_order<llvm::DomTreeNodeBase<mlir::Block> const*>(v24, &v40);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v34, &v36, &v40);
  v37 = v39;
  v38 = 0x800000000;
  v4 = v43;
  if (v43)
  {
    if (v43 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v39, __src, 24 * v43);
    LODWORD(v38) = v4;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, &v30, &v45);
  v31 = v33;
  v32 = 0x800000000;
  v5 = v48;
  if (v48)
  {
    if (v48 >= 9uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v33, v47, 24 * v48);
    LODWORD(v32) = v5;
  }

  while (v38 != v5)
  {
LABEL_22:
    v9 = *(v37 + 3 * v38 - 3);
    v23 = *v9;
    v25 = v27;
    v26 = 0x400000000;
    v10 = *v23;
    if (!*v23)
    {
      goto LABEL_54;
    }

    do
    {
      v11 = mlir::PredecessorIterator::unwrap(v10);
      v12 = *(a2 + 104);
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = *(a2 + 88);
      v14 = ((v11 >> 4) ^ (v11 >> 9)) & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 == v11)
      {
LABEL_29:
        if (v14 == v12)
        {
          goto LABEL_26;
        }

        v16 = *(v13 + 16 * v14 + 8);
        if (*(a2 + 32) <= v16)
        {
          goto LABEL_26;
        }

        v17 = *(*(a2 + 24) + 8 * v16);
        if (!v17)
        {
          goto LABEL_26;
        }

        if (v17 == v9 || *(v17 + 8) == v9)
        {
          goto LABEL_24;
        }

        if (*(v9 + 8) == v17)
        {
          goto LABEL_26;
        }

        v18 = *(v9 + 16);
        if (v18 >= *(v17 + 16))
        {
          goto LABEL_26;
        }

        if (*(a2 + 128) == 1)
        {
          if (*(v17 + 72) < *(v9 + 72) || *(v17 + 76) > *(v9 + 76))
          {
            goto LABEL_26;
          }

LABEL_24:
          if (v26 >= HIDWORD(v26))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v25 + v26) = v11;
          LODWORD(v26) = v26 + 1;
          goto LABEL_26;
        }

        v19 = *(a2 + 132) + 1;
        *(a2 + 132) = v19;
        if (v19 > 0x20)
        {
          llvm::DominatorTreeBase<mlir::Block,false>::updateDFSNumbers();
        }

        do
        {
          v20 = v17;
          v17 = *(v17 + 8);
        }

        while (v17 && *(v17 + 16) >= v18);
        if (v20 == v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = 1;
        while (v15 != -4096)
        {
          v22 = v14 + v21++;
          v14 = v22 & (v12 - 1);
          v15 = *(v13 + 16 * v14);
          if (v15 == v11)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_26:
      v10 = *v10;
    }

    while (v10);
    if (v26)
    {
      llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::AllocateLoop<mlir::Block*&>(a1, &v23);
      memset(&v24[1], 0, 24);
      if (v26)
      {
        operator new();
      }
    }

LABEL_54:
    if (v25 != v27)
    {
      free(v25);
    }

    LODWORD(v38) = v38 - 1;
    if (v38)
    {
      llvm::po_iterator<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::SmallPtrSet<llvm::DomTreeNodeBase<mlir::Block> const*,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> const*>>::traverseChild(&v34);
    }

    v5 = v32;
  }

  if (v5)
  {
    v6 = v31;
    v7 = v37;
    do
    {
      v8 = *v7 == *v6 && v7[1] == v6[1];
      if (!v8 || v7[2] != v6[2])
      {
        goto LABEL_22;
      }

      v7 += 3;
      v6 += 3;
    }

    while (v7 != (v37 + 24 * v5));
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v29 != v28)
  {
    free(v29);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v35 != v34)
  {
    free(v35);
  }

  if (v47 != v49)
  {
    free(v47);
  }

  if (v46 != v45)
  {
    free(v46);
  }

  if (__src != &v44)
  {
    free(__src);
  }

  if (v41 != v40)
  {
    free(v41);
  }

  v40 = a1;
  llvm::PopulateLoopsDFS<mlir::Block,mlir::CFGLoop>::traverse(&v40, *v24[0]);
}

void llvm::post_order<llvm::DomTreeNodeBase<mlir::Block> const*>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20[24] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v13 = v17;
  v14 = v17;
  v16 = 0;
  v15 = 0x100000008;
  v18 = v20;
  v17[0] = v3;
  v4 = *(v3 + 24);
  v5 = v4 + 8 * *(v3 + 32);
  v20[0] = v3;
  v20[1] = v4;
  v20[2] = v5;
  v19 = 0x800000001;
  llvm::po_iterator<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::SmallPtrSet<llvm::DomTreeNodeBase<mlir::Block> const*,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> const*>>::traverseChild(&v13);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[0] = 0;
  memset(v9, 0, sizeof(v9));
  v6 = v9 + 8;
  v7 = v9 + 8;
  v8 = 8;
  v10[1] = v11 + 8;
  DWORD1(v11[0]) = 8;
  llvm::make_range<llvm::po_iterator<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::SmallPtrSet<llvm::DomTreeNodeBase<mlir::Block> const*,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> const*>>>(&v13, &v6, a2);
  if (v10[1] != v11 + 8)
  {
    free(v10[1]);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v14 != v13)
  {
    free(v14);
  }
}

unint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::AllocateLoop<mlir::Block*&>(uint64_t a1, void **a2)
{
  v3 = *(a1 + 48);
  v2 = (a1 + 48);
  v2[10] += 152;
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 152;
  if (v3)
  {
    v6 = v5 > v2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v13 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v2, 152, 152, 3);
    a2 = v13;
    v4 = Slow;
  }

  else
  {
    *v2 = v5;
  }

  v15 = *a2;
  *(v4 + 56) = v4 + 88;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 64) = v4 + 88;
  *(v4 + 72) = 8;
  *(v4 + 80) = 0;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](v4 + 32, &v15);
  v7 = v15;
  v8 = *(v4 + 56);
  if (*(v4 + 64) != v8)
  {
    goto LABEL_7;
  }

  v10 = *(v4 + 76);
  if (v10)
  {
    v11 = 8 * v10;
    v12 = *(v4 + 56);
    while (*v12 != v15)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    return v4;
  }

LABEL_13:
  if (v10 >= *(v4 + 72))
  {
LABEL_7:
    llvm::SmallPtrSetImplBase::insert_imp_big((v4 + 56), v15);
    return v4;
  }

  *(v4 + 76) = v10 + 1;
  *(v8 + 8 * v10) = v7;
  return v4;
}

void llvm::PopulateLoopsDFS<mlir::Block,mlir::CFGLoop>::traverse(uint64_t **a1, mlir::Block *a2)
{
  v30[40] = *MEMORY[0x277D85DE8];
  v8 = a2;
  llvm::post_order<mlir::Block *>(&v8, &v21);
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v15, &v17, &v21);
  v18 = v20;
  v19 = 0x800000000;
  v3 = v24;
  if (v24)
  {
    if (v24 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v20, __src, 40 * v24);
    LODWORD(v19) = v3;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v9, &v11, &v26);
  v12 = v14;
  v13 = 0x800000000;
  v4 = v29;
  if (v29)
  {
    if (v29 >= 9uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v14, v28, 40 * v29);
    LODWORD(v13) = v4;
  }

  while (1)
  {
    if (v19 != v4)
    {
      goto LABEL_22;
    }

    if (!v4)
    {
      break;
    }

    v5 = v12;
    v6 = v18;
    while (1)
    {
      v7 = *v6 == *v5 && v6[2] == v5[2];
      if (!v7 || v6[4] != v5[4])
      {
        break;
      }

      v6 += 5;
      v5 += 5;
      if (v6 == (v18 + 40 * v4))
      {
        goto LABEL_24;
      }
    }

LABEL_22:
    llvm::PopulateLoopsDFS<mlir::Block,mlir::CFGLoop>::insertIntoLoop(a1, *(v18 + 5 * v19 - 5));
    LODWORD(v19) = v19 - 1;
    if (v19)
    {
      llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::traverseChild(&v15);
    }

    v4 = v13;
  }

LABEL_24:
  if (v12 != v14)
  {
    free(v12);
  }

  if (v10 != v9)
  {
    free(v10);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v16 != v15)
  {
    free(v16);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  if (v27 != v26)
  {
    free(v27);
  }

  if (__src != &v25)
  {
    free(__src);
  }

  if (v22 != v21)
  {
    free(v22);
  }
}

uint64_t llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::print(uint64_t result)
{
  if (*(result + 32) != *(result + 24))
  {
    llvm::LoopBase<mlir::Block,mlir::CFGLoop>::print();
  }

  return result;
}

void llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::verify(uint64_t a1)
{
  if (*(a1 + 24) != *(a1 + 32))
  {
    llvm::LoopBase<mlir::Block,mlir::CFGLoop>::verifyLoopNest();
  }

  llvm::deallocate_buffer(0, 0);
}

mlir::CFGLoop *mlir::CFGLoop::CFGLoop(mlir::CFGLoop *this, mlir::Block *a2)
{
  v10 = a2;
  *(this + 7) = this + 88;
  v3 = (this + 56);
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 8) = this + 88;
  *(this + 9) = 8;
  *(this + 20) = 0;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](this + 32, &v10);
  v4 = v10;
  v5 = *v3;
  if (*(this + 8) != *v3)
  {
    goto LABEL_2;
  }

  v7 = *(this + 19);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *v3;
    while (*v9 != v10)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    return this;
  }

LABEL_8:
  if (v7 >= *(this + 18))
  {
LABEL_2:
    llvm::SmallPtrSetImplBase::insert_imp_big(v3, v10);
    return this;
  }

  *(this + 19) = v7 + 1;
  v5[v7] = v4;
  return this;
}

{
  v10 = a2;
  *(this + 7) = this + 88;
  v3 = (this + 56);
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 8) = this + 88;
  *(this + 9) = 8;
  *(this + 20) = 0;
  std::vector<mlir::Operation *>::push_back[abi:nn200100](this + 32, &v10);
  v4 = v10;
  v5 = *v3;
  if (*(this + 8) != *v3)
  {
    goto LABEL_2;
  }

  v7 = *(this + 19);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *v3;
    while (*v9 != v10)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    return this;
  }

LABEL_8:
  if (v7 >= *(this + 18))
  {
LABEL_2:
    llvm::SmallPtrSetImplBase::insert_imp_big(v3, v10);
    return this;
  }

  *(this + 19) = v7 + 1;
  v5[v7] = v4;
  return this;
}

void mlir::CFGLoopInfo::CFGLoopInfo(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 0x400000000;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0;
  *(a1 + 136) = 1;
  llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::analyze();
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 0x400000000;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0;
  *(a1 + 136) = 1;
  llvm::LoopInfoBase<mlir::Block,mlir::CFGLoop>::analyze();
}

mlir::Block *llvm::LoopBase<mlir::Block,mlir::CFGLoop>::getExitingBlock(void)const::{lambda(mlir::Block*,BOOL)#1}::operator()(uint64_t **a1, mlir::Block *a2)
{
  mlir::SuccessorRange::SuccessorRange(&v23, a2);
  v4 = v23;
  mlir::SuccessorRange::SuccessorRange(&v23, a2);
  v5 = v24;
  if (!v24)
  {
    return 0;
  }

  v6 = **a1;
  v7 = *(v6 + 64);
  v9 = (v6 + 56);
  v8 = *(v6 + 56);
  if (v7 != v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v4 + 32 * v10 + 24);
      if (v7 != v8)
      {
        break;
      }

      v14 = *(v6 + 76);
      if (!v14)
      {
        goto LABEL_14;
      }

      v15 = 8 * v14;
      v12 = v8;
      while (*v12 != v11)
      {
        ++v12;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      if (v7 == v8)
      {
        v16 = 20;
      }

      else
      {
        v16 = 16;
      }

      if (v12 == &v7[*(v9 + v16)])
      {
        return a2;
      }

      if (++v10 == v5)
      {
        return 0;
      }
    }

    v12 = llvm::SmallPtrSetImplBase::doFind(v9, v11);
    v8 = *(v6 + 56);
    v7 = *(v6 + 64);
    if (v12)
    {
      goto LABEL_15;
    }

    if (v7 == v8)
    {
      v13 = 20;
    }

    else
    {
      v13 = 16;
    }

    v14 = *(v9 + v13);
LABEL_14:
    v12 = &v7[v14];
    goto LABEL_15;
  }

  v18 = *(v6 + 76);
  if (v18)
  {
    v19 = 0;
    v20 = &v7[v18];
    while (1)
    {
      v21 = 8 * v18;
      for (i = *(v6 + 56); *i != *(v4 + 32 * v19 + 24); ++i)
      {
        v21 -= 8;
        if (!v21)
        {
          return a2;
        }
      }

      if (i == v20)
      {
        break;
      }

      result = 0;
      if (++v19 == v24)
      {
        return result;
      }
    }
  }

  return a2;
}

uint64_t llvm::find_singleton_nested<mlir::Block,llvm::iterator_range<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block*,mlir::Block*,mlir::Block*>::iterator>,std::pair<mlir::Block *,BOOL> llvm::getExitBlockHelper<mlir::Block,mlir::CFGLoop>(llvm::LoopBase<mlir::Block,mlir::CFGLoop> const*,BOOL)::{lambda(mlir::Block*,BOOL)#1}>(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = a1[1];
  v4 = a1[3];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(*a2 + 64);
  if (v9 == *(*a2 + 56))
  {
    v22 = *(*a2 + 76);
    if (v22)
    {
      v23 = (v9 + 8 * v22);
      if (a3)
      {
        result = 0;
        v24 = 8 * v22;
        while (1)
        {
          v25 = result;
          result = *(v8 + 32 * v3 + 24);
          v26 = v24;
          v27 = *(*a2 + 56);
          while (*v27 != result)
          {
            ++v27;
            v26 -= 8;
            if (!v26)
            {
              v27 = v23;
              break;
            }
          }

          if (v27 == v23 && result)
          {
            if (v25)
            {
              v21 = v25 == result;
              result = v25;
              if (!v21)
              {
                return 0;
              }
            }
          }

          else
          {
            result = v25;
          }

          if (++v3 == v4)
          {
            return result;
          }
        }
      }

      result = 0;
      v29 = 8 * v22;
      while (1)
      {
        v30 = result;
        result = *(v8 + 32 * v3 + 24);
        v31 = v29;
        v32 = *(*a2 + 56);
        while (*v32 != result)
        {
          ++v32;
          v31 -= 8;
          if (!v31)
          {
            v32 = v23;
            break;
          }
        }

        if (v32 == v23 && result)
        {
          if (v30)
          {
            return 0;
          }
        }

        else
        {
          result = v30;
        }

        if (++v3 == v4)
        {
          return result;
        }
      }
    }

    if (a3)
    {
      result = 0;
      for (i = (v8 + 32 * v3 + 24); ; i += 4)
      {
        if (*i)
        {
          if (result)
          {
            if (result != *i)
            {
              return 0;
            }
          }

          else
          {
            result = *i;
          }
        }

        if (!--v5)
        {
          return result;
        }
      }
    }

    v33 = 0;
    for (j = (v8 + 32 * v3 + 24); ; j += 4)
    {
      result = *j;
      if (*j)
      {
        if (v33)
        {
          return 0;
        }
      }

      else
      {
        result = v33;
      }

      v33 = result;
      if (!--v5)
      {
        return result;
      }
    }
  }

  v10 = 0;
  do
  {
    v11 = v10;
    v10 = *(v8 + 32 * v3 + 24);
    v12 = *a2;
    v14 = (*a2 + 56);
    v13 = *v14;
    v15 = *(*a2 + 64);
    if (v15 == *v14)
    {
      v18 = *(v12 + 76);
      if (v18)
      {
        v19 = 8 * v18;
        while (*v13 != v10)
        {
          ++v13;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        v13 = &v15[v18];
      }

      v16 = *(*a2 + 64);
    }

    else
    {
      v13 = llvm::SmallPtrSetImplBase::doFind((*a2 + 56), *(v8 + 32 * v3 + 24));
      v15 = *(v12 + 56);
      v16 = *(v12 + 64);
      if (!v13)
      {
        if (v16 == v15)
        {
          v17 = 20;
        }

        else
        {
          v17 = 16;
        }

        v13 = &v16[*(v14 + v17)];
      }
    }

    if (v16 == v15)
    {
      v20 = 20;
    }

    else
    {
      v20 = 16;
    }

    v21 = v13 != &v16[*(v14 + v20)] || v10 == 0;
    if (v21)
    {
      v10 = v11;
    }

    else if (v11)
    {
      result = 0;
      if (!a3)
      {
        return result;
      }

      v21 = v11 == v10;
      v10 = v11;
      if (!v21)
      {
        return result;
      }
    }

    ++v3;
  }

  while (v3 != v4);
  return v10;
}

uint64_t llvm::SmallVectorImpl<std::pair<void *,unsigned long>>::operator=(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_23;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (!v8)
      {
        v21 = result;
        v8 = 0;
        v22 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v15 = *result;
      v16 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v16 >= 0xF)
      {
        v37 = 16 * v8 - 8;
        v38 = v15 + v37;
        v39 = v2 + v37;
        v41 = (v15 + 1) < v2 + 16 * v8 && v2 + 8 < &v15[2 * v8];
        v17 = *a2;
        if ((v2 >= v38 || v15 >= v39) && !v41)
        {
          v43 = v16 + 1;
          v44 = 2 * (v43 & 0x1FFFFFFFFFFFFFFCLL);
          v45 = &v15[v44];
          v17 = (v2 + v44 * 8);
          v46 = (v2 + 32);
          v47 = (v15 + 4);
          v48 = v43 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v49 = v46 - 4;
            v52 = vld2q_f64(v49);
            v54 = vld2q_f64(v46);
            v50 = v47 - 4;
            vst2q_f64(v50, v52);
            vst2q_f64(v47, v54);
            v46 += 8;
            v47 += 8;
            v48 -= 4;
          }

          while (v48);
          v15 = v45;
          if (v43 == (v43 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_20:
            v21 = result;
            v22 = v7 - v8;
            if (v7 == v8)
            {
LABEL_22:
              result = v21;
              *(v21 + 8) = v7;
              goto LABEL_23;
            }

LABEL_21:
            memcpy((*v21 + 16 * v8), (*a2 + 16 * v8), 16 * v22);
            goto LABEL_22;
          }
        }
      }

      else
      {
        v17 = *a2;
      }

      v18 = (v2 + 16 * v8);
      do
      {
        v19 = *v17;
        v20 = v17[1];
        v17 += 2;
        *v15 = v19;
        v15[1] = v20;
        v15 += 2;
      }

      while (v17 != v18);
      goto LABEL_20;
    }

    if (v7)
    {
      v9 = *result;
      v10 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v10 >= 0xF)
      {
        v23 = 16 * v7 - 8;
        v24 = v9 + v23;
        v25 = v2 + v23;
        v27 = (v9 + 1) < v2 + 16 * v7 && v2 + 8 < &v9[2 * v7];
        v11 = *a2;
        if ((v2 >= v24 || v9 >= v25) && !v27)
        {
          v29 = v10 + 1;
          v30 = 2 * (v29 & 0x1FFFFFFFFFFFFFFCLL);
          v31 = &v9[v30];
          v11 = (v2 + v30 * 8);
          v32 = (v2 + 32);
          v33 = (v9 + 4);
          v34 = v29 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v35 = v32 - 4;
            v51 = vld2q_f64(v35);
            v53 = vld2q_f64(v32);
            v36 = v33 - 4;
            vst2q_f64(v36, v51);
            vst2q_f64(v33, v53);
            v32 += 8;
            v33 += 8;
            v34 -= 4;
          }

          while (v34);
          v9 = v31;
          if (v29 == (v29 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v11 = *a2;
      }

      v12 = (v2 + 16 * v7);
      do
      {
        v13 = *v11;
        v14 = v11[1];
        v11 += 2;
        *v9 = v13;
        v9[1] = v14;
        v9 += 2;
      }

      while (v11 != v12);
    }

LABEL_14:
    *(result + 8) = v7;
LABEL_23:
    *v6 = 0;
  }

  return result;
}

void llvm::make_range<llvm::po_iterator<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::SmallPtrSet<llvm::DomTreeNodeBase<mlir::Block> const*,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> const*>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19[24] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, 8, a1);
  v17 = v19;
  v18 = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>>::operator=(&v17, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, 8, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>>::operator=(&v11, (a2 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, a3 + 4, 8, &v14);
  *(v6 + 96) = a3 + 14;
  v7 = v6 + 96;
  *(v7 + 8) = 0x800000000;
  if (v18)
  {
    llvm::SmallVectorImpl<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>>::operator=(v7, &v17);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((a3 + 38), a3 + 42, 8, &v8);
  a3[50] = a3 + 52;
  a3[51] = 0x800000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>>::operator=((a3 + 50), &v11);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v15 != v14)
  {
    free(v15);
  }
}

uint64_t llvm::SmallVectorImpl<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>>::operator=(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_22;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (!v8)
      {
        v18 = result;
        v8 = 0;
        v19 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v13 = *result;
      v14 = 24 * v8 - 24;
      if (v14 < 0x168 || ((v34 = v14 / 0x18, v35 = 24 * v34 + 24, v13 + 8 < v2 + v35) ? (v36 = v2 + 8 >= v13 + v35) : (v36 = 1), v36 ? (v37 = 0) : (v37 = 1), v2 < v13 + 24 * v34 + 8 ? (v38 = v13 >= v2 + 24 * v34 + 8) : (v38 = 1), !v38 || (v37 & 1) != 0))
      {
        v15 = *result;
        v16 = *a2;
      }

      else
      {
        v39 = v34 + 1;
        v40 = (v34 + 1) & 0x1FFFFFFFFFFFFFFCLL;
        v15 = v13 + 3 * v40;
        v16 = v2 + 24 * v40;
        v41 = *a2;
        v42 = v40;
        do
        {
          v43 = v41[1];
          v45 = v41[4];
          v44 = v41[5];
          v46 = v41[2];
          v47 = v41[3];
          *v13 = *v41;
          v13[1] = v43;
          v13[2] = v46;
          v13[3] = v47;
          v41 += 6;
          v13[4] = v45;
          v13[5] = v44;
          v13 += 6;
          v42 -= 4;
        }

        while (v42);
        if (v39 == v40)
        {
LABEL_19:
          v18 = result;
          v19 = v7 - v8;
          if (v7 == v8)
          {
LABEL_21:
            result = v18;
            *(v18 + 8) = v7;
            goto LABEL_22;
          }

LABEL_20:
          memcpy((*v18 + 24 * v8), (*a2 + 24 * v8), 24 * v19);
          goto LABEL_21;
        }
      }

      v17 = v2 + 24 * v8;
      do
      {
        *v15 = *v16;
        v15[2] = *(v16 + 16);
        v16 += 24;
        v15 += 3;
      }

      while (v16 != v17);
      goto LABEL_19;
    }

    if (v7)
    {
      v9 = *result;
      v10 = 24 * v7 - 24;
      if (v10 < 0x168 || ((v20 = v10 / 0x18, v21 = 24 * v20 + 24, v9 + 8 < v2 + v21) ? (v22 = v2 + 8 >= v9 + v21) : (v22 = 1), v22 ? (v23 = 0) : (v23 = 1), v2 < v9 + 24 * v20 + 8 ? (v24 = v9 >= v2 + 24 * v20 + 8) : (v24 = 1), !v24 || (v23 & 1) != 0))
      {
        v11 = *result;
        v12 = *a2;
      }

      else
      {
        v25 = v20 + 1;
        v26 = (v20 + 1) & 0x1FFFFFFFFFFFFFFCLL;
        v11 = v9 + 3 * v26;
        v12 = v2 + 24 * v26;
        v27 = *a2;
        v28 = v26;
        do
        {
          v29 = v27[1];
          v31 = v27[4];
          v30 = v27[5];
          v32 = v27[2];
          v33 = v27[3];
          *v9 = *v27;
          v9[1] = v29;
          v9[2] = v32;
          v9[3] = v33;
          v27 += 6;
          v9[4] = v31;
          v9[5] = v30;
          v9 += 6;
          v28 -= 4;
        }

        while (v28);
        if (v25 == v26)
        {
          goto LABEL_13;
        }
      }

      do
      {
        *v11 = *v12;
        v11[2] = *(v12 + 16);
        v12 += 24;
        v11 += 3;
      }

      while (v12 != v2 + 24 * v7);
    }

LABEL_13:
    *(result + 8) = v7;
LABEL_22:
    *v6 = 0;
  }

  return result;
}

uint64_t llvm::po_iterator<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::SmallPtrSet<llvm::DomTreeNodeBase<mlir::Block> const*,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> const*>>::traverseChild(uint64_t this)
{
  v1 = (this + 96);
  v2 = *(this + 104);
  v3 = *(this + 96) + 24 * v2;
  v5 = *(v3 - 16);
  v6 = *(v3 - 8);
  v4 = (v3 - 16);
  if (v5 != v6)
  {
    v7 = this;
    while (1)
    {
      v12 = *v5;
      *v4 = v5 + 1;
      v20 = v12;
      v13 = *v7;
      if (*(v7 + 8) == *v7)
      {
        v15 = *(v7 + 20);
        if (v15)
        {
          v16 = 8 * v15;
          v17 = *v7;
          while (*v17 != v12)
          {
            ++v17;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_6;
        }

LABEL_14:
        if (v15 < *(v7 + 16))
        {
          break;
        }
      }

      this = llvm::SmallPtrSetImplBase::insert_imp_big(v7, v12);
      v2 = *(v7 + 104);
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_6:
      v10 = *v1 + 24 * v2;
      v5 = *(v10 - 16);
      v11 = *(v10 - 8);
      v4 = (v10 - 16);
      if (v5 == v11)
      {
        return this;
      }
    }

    *(v7 + 20) = v15 + 1;
    v13[v15] = v12;
LABEL_4:
    v8 = *(v20 + 3);
    v18 = (v8 + 8 * *(v20 + 8));
    v19 = v8;
    if (v2 >= *(v7 + 108))
    {
      this = llvm::SmallVectorTemplateBase<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>,true>::growAndEmplaceBack<llvm::DomTreeNodeBase<mlir::Block> const*&,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>(v1, &v20, &v19, &v18);
      v2 = *(v7 + 104);
    }

    else
    {
      v9 = (*(v7 + 96) + 24 * v2);
      *v9 = v20;
      v9[1] = v8;
      v9[2] = v18;
      *(v7 + 104) = ++v2;
    }

    goto LABEL_6;
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::DomTreeNodeBase<mlir::Block> const*,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>,true>::growAndEmplaceBack<llvm::DomTreeNodeBase<mlir::Block> const*&,llvm::DomTreeNodeBase<mlir::Block>* const*,llvm::DomTreeNodeBase<mlir::Block>* const*>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *&v10 = *a2;
  *(&v10 + 1) = v4;
  v11 = *a4;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= *(a1 + 12))
  {
    if (v6 > &v10 || v6 + 24 * v5 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v6 + 24 * *(a1 + 8);
  v8 = v10;
  *(v7 + 16) = v11;
  *v7 = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

char *std::vector<mlir::Block *>::__insert_with_size[abi:nn200100]<mlir::PredecessorIterator,mlir::PredecessorIterator>(uint64_t a1, char *__src, void *a3, uint64_t (*a4)(void *), void *a5, uint64_t a6, uint64_t a7)
{
  if (a7 < 1)
  {
    return __src;
  }

  v10 = a3;
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (a7 > (v12 - v13) >> 3)
  {
    v14 = *a1;
    v15 = a7 + ((v13 - *a1) >> 3);
    if (v15 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v16 = v12 - v14;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v38 = (8 * ((__src - v14) >> 3));
    v39 = 8 * a7;
    v40 = &v38[8 * a7];
    v41 = v38;
    do
    {
      *v41++ = a4(v10);
      v10 = *v10;
      v39 -= 8;
    }

    while (v39);
    v42 = *(a1 + 8) - __src;
    memcpy(v40, __src, v42);
    v43 = &v40[v42];
    *(a1 + 8) = __src;
    v44 = *a1;
    v45 = &__src[-*a1];
    v46 = v38 - v45;
    memcpy((v38 - v45), *a1, v45);
    *a1 = v46;
    *(a1 + 8) = v43;
    *(a1 + 16) = 0;
    if (v44)
    {
      operator delete(v44);
    }

    return v38;
  }

  v18 = (v13 - __src) >> 3;
  if (v18 >= a7)
  {
    v24 = a7;
    v25 = &__src[8 * a7];
    v26 = (v13 - 8 * a7);
    if (v26 >= v13)
    {
      v30 = *(a1 + 8);
    }

    else
    {
      v27 = v26 + 1;
      if (v13 > (v26 + 1))
      {
        v27 = *(a1 + 8);
      }

      v28 = &v27[v24] + ~v13;
      v29 = v28 < 0x18 || (a7 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v30 = *(a1 + 8);
      if (v29)
      {
        goto LABEL_69;
      }

      v31 = (v28 >> 3) + 1;
      v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
      v26 = (v26 + v32);
      v30 = (v13 + v32);
      v33 = (v13 + 16);
      v34 = (v13 + 16 - v24 * 8);
      v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 4;
      }

      while (v35);
      if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_69:
        do
        {
          v37 = *v26++;
          *v30++ = v37;
        }

        while (v26 < v13);
      }
    }

    *(a1 + 8) = v30;
    if (v13 != v25)
    {
      memmove(&__src[8 * a7], __src, v13 - v25);
    }

    *__src = a4(v10);
    if (a7 != 1)
    {
      v62 = __src + 8;
      v63 = a7 + 1;
      do
      {
        v10 = *v10;
        *v62++ = a4(v10);
        --v63;
      }

      while (v63 > 2);
    }

    return __src;
  }

  v20 = a3;
  if (v18 >= 1)
  {
    v21 = v18 + 1;
    v20 = a3;
    do
    {
      v20 = *v20;
      --v21;
    }

    while (v21 > 1);
  }

  v66 = (v13 - __src) >> 3;
  v22 = *(a1 + 8);
  if (v20 == a5)
  {
    v23 = *(a1 + 8);
  }

  else
  {
    v47 = v20;
    v23 = *(a1 + 8);
    do
    {
      *v23 = a4(v47);
      v23 += 8;
      v47 = *v47;
      v22 += 8;
    }

    while (v47 != a5);
  }

  *(a1 + 8) = v22;
  if (v66 < 1)
  {
    return __src;
  }

  v48 = a7;
  v49 = &__src[8 * a7];
  v50 = (v22 - 8 * a7);
  if (v50 >= v13)
  {
    v54 = v22;
  }

  else
  {
    v51 = v50 + 1;
    if (v13 > (v50 + 1))
    {
      v51 = v13;
    }

    v52 = &v51[v48] + ~v22;
    v53 = v52 < 0x18 || (a7 & 0x1FFFFFFFFFFFFFFCLL) == 0;
    v54 = v22;
    if (v53)
    {
      goto LABEL_70;
    }

    v55 = (v52 >> 3) + 1;
    v56 = 8 * (v55 & 0x3FFFFFFFFFFFFFFCLL);
    v50 = (v50 + v56);
    v54 = (v22 + v56);
    v57 = (v22 + 16);
    v58 = (v22 + 16 - v48 * 8);
    v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v60 = *v58;
      *(v57 - 1) = *(v58 - 1);
      *v57 = v60;
      v57 += 2;
      v58 += 2;
      v59 -= 4;
    }

    while (v59);
    if (v55 != (v55 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_70:
      do
      {
        v61 = *v50++;
        *v54++ = v61;
      }

      while (v50 < v13);
    }
  }

  *(a1 + 8) = v54;
  if (v23 != v49)
  {
    memmove(v49, __src, v22 - v49);
  }

  if (v10 == v20)
  {
    return __src;
  }

  v38 = __src;
  v65 = __src;
  do
  {
    *v65++ = a4(v10);
    v10 = *v10;
  }

  while (v10 != v20);
  return v38;
}

void llvm::PopulateLoopsDFS<mlir::Block,mlir::CFGLoop>::insertIntoLoop(uint64_t **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  if (v3)
  {
    v5 = *v2;
    v6 = v3 - 1;
    v7 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v8 = *(*v2 + 16 * v7);
    if (v8 == a2)
    {
LABEL_3:
      i = *(v5 + 16 * v7 + 8);
      v59 = i;
      if (i)
      {
        if (*i[4] != a2)
        {
          goto LABEL_62;
        }

        if (*i)
        {
          std::vector<mlir::Operation *>::push_back[abi:nn200100](*i + 8, &v59);
          i = v59;
          v11 = v59[4];
          v10 = v59[5];
          v12 = v11 + 8;
          v13 = (v10 - 8);
          if (v11 + 8 == v10 || v13 <= v12)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v60 = i;
          std::vector<mlir::Operation *>::push_back[abi:nn200100]((v2 + 3), &v60);
          v11 = i[4];
          v10 = i[5];
          v12 = v11 + 8;
          v13 = (v10 - 8);
          if (v11 + 8 == v10 || v13 <= v12)
          {
            goto LABEL_30;
          }
        }

        v16 = (v10 - 16);
        v17 = v11 + 16;
        if (v10 - 16 > v17)
        {
          v17 = v10 - 16;
        }

        v18 = v17 - 8;
        if (v18 == v12)
        {
          v19 = v12;
        }

        else
        {
          v19 = v12 + 1;
        }

        v20 = v18 == v12;
        v21 = (v18 - v19) >> 4;
        if (!v20)
        {
          ++v21;
        }

        if (v21 >= 0x13 && (v10 <= v12 || v10 - 8 * v21 - 8 >= v12 + 8 * v21 + 8))
        {
          v45 = v21 + 1;
          v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
          v13 = (v13 - v46);
          v22 = v12 + v46;
          v47 = (v12 + 16);
          v48 = v45 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v49 = v47[-1];
            v50 = *v47;
            v51 = vextq_s8(v16[-1], v16[-1], 8uLL);
            v47[-1] = vextq_s8(*v16, *v16, 8uLL);
            *v47 = v51;
            v16[-1] = vextq_s8(v50, v50, 8uLL);
            *v16 = vextq_s8(v49, v49, 8uLL);
            v47 += 2;
            v16 -= 2;
            v48 -= 4;
          }

          while (v48);
          if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_30:
            v26 = i[1];
            v27 = i[2];
            v28 = (v27 - 8);
            if (v26 != v27 && v28 > v26)
            {
              v30 = (v27 - 16);
              v31 = v26 + 8;
              if (v27 - 16 > v26 + 8)
              {
                v31 = v27 - 16;
              }

              v32 = v31 - 8;
              if (v32 == v26)
              {
                v33 = i[1];
              }

              else
              {
                v33 = v26 + 1;
              }

              v20 = v32 == v26;
              v34 = (v32 - v33) >> 4;
              if (!v20)
              {
                ++v34;
              }

              if (v34 < 0x13 || v26 < v27 && v27 - 8 * v34 - 8 < v26 + 8 * v34 + 8)
              {
                goto LABEL_48;
              }

              v35 = v34 + 1;
              v36 = (v34 + 1) & 0x3FFFFFFFFFFFFFFCLL;
              v28 -= v36;
              v37 = v26 + 8 * v36;
              v38 = (v26 + 16);
              v39 = v36;
              do
              {
                v40 = v38[-1];
                v41 = *v38;
                v42 = vextq_s8(v30[-1], v30[-1], 8uLL);
                v38[-1] = vextq_s8(*v30, *v30, 8uLL);
                *v38 = v42;
                v30[-1] = vextq_s8(v41, v41, 8uLL);
                *v30 = vextq_s8(v40, v40, 8uLL);
                v38 += 2;
                v30 -= 2;
                v39 -= 4;
              }

              while (v39);
              v26 = v37;
              if (v35 != v36)
              {
LABEL_48:
                v43 = v26 + 8;
                do
                {
                  v44 = *(v43 - 8);
                  *(v43 - 8) = *v28;
                  *v28-- = v44;
                  v25 = v43 >= v28;
                  v43 += 8;
                }

                while (!v25);
              }

              i = v59;
            }

            for (i = *i; ; i = *v59)
            {
              v59 = i;
              if (!i)
              {
                return;
              }

LABEL_62:
              v60 = a2;
              std::vector<mlir::Operation *>::push_back[abi:nn200100]((i + 4), &v60);
              v54 = i[7];
              v55 = v60;
              if (i[8] != v54)
              {
                break;
              }

              v56 = *(i + 19);
              if (v56)
              {
                v57 = 8 * v56;
                v58 = i[7];
                while (*v58 != v60)
                {
                  ++v58;
                  v57 -= 8;
                  if (!v57)
                  {
                    goto LABEL_69;
                  }
                }
              }

              else
              {
LABEL_69:
                if (v56 >= *(i + 18))
                {
                  break;
                }

                *(i + 19) = v56 + 1;
                *(v54 + 8 * v56) = v55;
              }

LABEL_64:
              ;
            }

            llvm::SmallPtrSetImplBase::insert_imp_big((i + 7), v60);
            goto LABEL_64;
          }
        }

        else
        {
          v22 = v12;
        }

        v23 = v22 + 8;
        do
        {
          v24 = *(v23 - 8);
          *(v23 - 8) = *v13;
          *v13-- = v24;
          v25 = v23 >= v13;
          v23 += 8;
        }

        while (!v25);
        goto LABEL_30;
      }
    }

    else
    {
      v52 = 1;
      while (v8 != -4096)
      {
        v53 = v7 + v52++;
        v7 = v53 & v6;
        v8 = *(v5 + 16 * v7);
        if (v8 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

void mlir::getForwardSlice(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  getForwardSliceImpl(a1, a2, a3);
  if ((*(a3 + 32) & 1) == 0)
  {
    v6 = a2[2].i32[0];
    if (v6)
    {
      v7 = *a2;
      v8 = v6 - 1;
      v9 = (v6 - 1) & ((a1 >> 4) ^ (a1 >> 9));
      v10 = *(*a2 + 8 * v9);
      if (v10 == a1)
      {
LABEL_4:
        *(*&v7 + 8 * v9) = -8192;
        a2[1] = vadd_s32(a2[1], 0x1FFFFFFFFLL);
        v11 = a2[3];
        v12 = a2[4].u32[0];
        v13 = &v11[v12];
        if (v12)
        {
          v14 = 8 * v12;
          while (*v11 != a1)
          {
            ++v11;
            v14 -= 8;
            if (!v14)
            {
              v11 = v13;
              break;
            }
          }
        }

        if (v13 != v11 + 1)
        {
          memmove(v11, v11 + 1, v13 - (v11 + 1));
          LODWORD(v12) = a2[4].i32[0];
        }

        a2[4].i32[0] = v12 - 1;
      }

      else
      {
        v29 = 1;
        while (v10 != -4096)
        {
          v30 = v9 + v29++;
          v9 = v30 & v8;
          v10 = *(*&v7 + 8 * v9);
          if (v10 == a1)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  v15 = a2[1].i32[0];
  if (!v15 && !a2[1].i32[1])
  {
LABEL_17:
    v31 = v33;
    v32 = 0;
    if (!a2[4].i32[0])
    {
      return;
    }

    goto LABEL_27;
  }

  v16 = a2[2].u32[0];
  if (v16 > 4 * v15 && v16 >= 0x41)
  {
    llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(a2);
    goto LABEL_17;
  }

  if (v16)
  {
    v17 = *a2;
    v18 = (v16 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v19 = *a2;
    if (v18 <= 2)
    {
      goto LABEL_24;
    }

    v20 = v18 + 1;
    v19 = (*&v17 + 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL));
    v21 = (*&v17 + 16);
    v22 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v23 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v21[-1] = v22;
      *v21 = v22;
      v21 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_24:
      v24 = (*&v17 + 8 * v16);
      do
      {
        *v19++ = -4096;
      }

      while (v19 != v24);
    }
  }

  a2[1] = 0;
  v31 = v33;
  v32 = 0;
  if (a2[4].i32[0])
  {
LABEL_27:
    llvm::SmallVectorImpl<long long>::operator=(&v31, &a2[3]);
    v25 = v31;
    if (v32)
    {
      v26 = v31 + 8 * v32 - 8;
      v27 = -8 * v32;
      do
      {
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, v26, v33);
        if (v33[16] == 1)
        {
          v28 = a2[4].u32[0];
          if (v28 >= a2[4].u32[1])
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*&a2[3] + 8 * v28) = *v26;
          ++a2[4].i32[0];
        }

        --v26;
        v27 += 8;
      }

      while (v27);
      v25 = v31;
    }

    if (v25 != v33)
    {
      free(v25);
    }
  }
}

uint64_t getForwardSliceImpl(uint64_t result, uint64_t a2, uint64_t a3)
{
  v32 = result;
  if (result)
  {
    v4 = result;
    v5 = *(a3 + 24);
    if (!v5 || (v33[0] = v4, result = (*(*v5 + 48))(v5, v33), result))
    {
      v6 = v4[11];
      if ((v6 & 0x7FFFFF) != 0)
      {
        v7 = ((&v4[4 * ((v6 >> 23) & 1) + 17] + ((v6 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v4[10];
        v8 = v7 + 24 * (v6 & 0x7FFFFF);
        do
        {
          for (i = *(v7 + 8); i != v7; i = *(i + 8))
          {
            v10 = i - 8;
            if (!i)
            {
              v10 = 0;
            }

            v11 = v10 + 32;
            for (j = *(v10 + 40); j != v11; j = *(j + 8))
            {
              ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
              v14 = *(a2 + 16);
              if (!v14)
              {
                goto LABEL_13;
              }

              v15 = v14 - 1;
              v16 = ((ValuePtr >> 4) ^ (ValuePtr >> 9)) & v15;
              v17 = *(*a2 + 8 * v16);
              if (v17 != ValuePtr)
              {
                v18 = 1;
                while (v17 != -4096)
                {
                  v19 = v16 + v18++;
                  v16 = v19 & v15;
                  v17 = *(*a2 + 8 * v16);
                  if (v17 == ValuePtr)
                  {
                    goto LABEL_14;
                  }
                }

LABEL_13:
                getForwardSliceImpl();
                continue;
              }

LABEL_14:
              ;
            }
          }

          v7 += 24;
        }

        while (v7 != v8);
      }

      v20 = v4[9];
      if (v20)
      {
        v21 = (v4 - 4);
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
          v23 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v22);
          if (v23)
          {
            break;
          }

LABEL_27:
          if (++v22 == v20)
          {
            goto LABEL_38;
          }
        }

        while (1)
        {
          v24 = v23[2];
          v25 = *(a2 + 16);
          if (v25)
          {
            v26 = v25 - 1;
            v27 = ((v24 >> 4) ^ (v24 >> 9)) & v26;
            v28 = *(*a2 + 8 * v27);
            if (v28 == v24)
            {
              goto LABEL_31;
            }

            v29 = 1;
            while (v28 != -4096)
            {
              v30 = v27 + v29++;
              v27 = v30 & v26;
              v28 = *(*a2 + 8 * v27);
              if (v28 == v24)
              {
                goto LABEL_31;
              }
            }
          }

          getForwardSliceImpl();
LABEL_31:
          v23 = *v23;
          if (!v23)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_38:
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, &v32, v33);
      if (v34 == 1)
      {
        v31 = *(a2 + 32);
        if (v31 >= *(a2 + 36))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*(a2 + 24) + 8 * v31) = v32;
        ++*(a2 + 32);
      }
    }
  }

  return result;
}

void mlir::getForwardSlice(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*a1)
  {
    do
    {
      getForwardSliceImpl(v4[2], a2, a3);
      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(a2 + 8);
  if (!v6 && !*(a2 + 12))
  {
LABEL_8:
    v20 = v22;
    v21 = 0;
    if (!*(a2 + 32))
    {
      return;
    }

    goto LABEL_18;
  }

  v7 = *(a2 + 16);
  if (v7 > 4 * v6 && v7 >= 0x41)
  {
    llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(a2);
    goto LABEL_8;
  }

  if (v7)
  {
    v8 = *a2;
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v10 = *a2;
    if (v9 <= 2)
    {
      goto LABEL_15;
    }

    v11 = v9 + 1;
    v10 = (v8 + 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL));
    v12 = v8 + 1;
    v13 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v14 = v11 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12[-1] = v13;
      *v12 = v13;
      v12 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v11 != (v11 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_15:
      v15 = (v8 + 8 * v7);
      do
      {
        v10->i64[0] = -4096;
        v10 = (v10 + 8);
      }

      while (v10 != v15);
    }
  }

  *(a2 + 8) = 0;
  v20 = v22;
  v21 = 0;
  if (*(a2 + 32))
  {
LABEL_18:
    llvm::SmallVectorImpl<long long>::operator=(&v20, (a2 + 24));
    v16 = v20;
    if (v21)
    {
      v17 = v20 + 8 * v21 - 8;
      v18 = -8 * v21;
      do
      {
        llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, v17, v22);
        if (v22[16] == 1)
        {
          v19 = *(a2 + 32);
          if (v19 >= *(a2 + 36))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*(a2 + 24) + 8 * v19) = *v17;
          ++*(a2 + 32);
        }

        --v17;
        v18 += 8;
      }

      while (v18);
      v16 = v20;
    }

    if (v16 != v22)
    {
      free(v16);
    }
  }
}

void *mlir::getBackwardSlice(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  result = getBackwardSliceImpl(a1, a2, a3);
  if ((*(a3 + 32) & 1) == 0)
  {
    v7 = a2[2].i32[0];
    if (v7)
    {
      v8 = *a2;
      v9 = v7 - 1;
      v10 = (v7 - 1) & ((a1 >> 4) ^ (a1 >> 9));
      v11 = *(*a2 + 8 * v10);
      if (v11 == a1)
      {
LABEL_4:
        *(*&v8 + 8 * v10) = -8192;
        a2[1] = vadd_s32(a2[1], 0x1FFFFFFFFLL);
        result = a2[3];
        v12 = a2[4].u32[0];
        v13 = &result[v12];
        if (v12)
        {
          v14 = 8 * v12;
          while (*result != a1)
          {
            ++result;
            v14 -= 8;
            if (!v14)
            {
              result = v13;
              break;
            }
          }
        }

        if (v13 != result + 1)
        {
          result = memmove(result, result + 1, v13 - (result + 1));
          LODWORD(v12) = a2[4].i32[0];
        }

        a2[4].i32[0] = v12 - 1;
      }

      else
      {
        v15 = 1;
        while (v11 != -4096)
        {
          v16 = v10 + v15++;
          v10 = v16 & v9;
          v11 = *(*&v8 + 8 * v10);
          if (v11 == a1)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t getBackwardSliceImpl(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = result;
  if (result)
  {
    {
      v25 = result;
      mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
      result = v25;
    }

    result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
    if ((result & 1) == 0)
    {
      v5 = *(a3 + 24);
      if (!v5 || (v27[0] = v26, result = (*(*v5 + 48))(v5, v27), result))
      {
        if ((*(v26 + 46) & 0x80) != 0)
        {
          v6 = *(v26 + 68);
          if (v6)
          {
            v7 = 0;
            v8 = *(v26 + 72);
            do
            {
              v27[0] = *(v8 + 32 * v7 + 24);
              DefiningOp = mlir::Value::getDefiningOp(v27);
              if (DefiningOp)
              {
                v10 = *(a2 + 16);
                if (v10)
                {
                  v11 = v10 - 1;
                  v12 = v11 & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
                  v13 = *(*a2 + 8 * v12);
                  if (v13 == DefiningOp)
                  {
                    goto LABEL_11;
                  }

                  v14 = 1;
                  while (v13 != -4096)
                  {
                    v15 = v12 + v14++;
                    v12 = v15 & v11;
                    v13 = *(*a2 + 8 * v12);
                    if (v13 == DefiningOp)
                    {
                      goto LABEL_11;
                    }
                  }
                }
              }

              else
              {
                v16 = v27[0];
                if ((~*(v27[0] + 8) & 7) != 0)
                {
                  v16 = 0;
                }

                if (*(a3 + 33))
                {
                  goto LABEL_11;
                }

                ParentOp = mlir::Block::getParentOp(*(v16 + 16));
                if (!ParentOp)
                {
                  goto LABEL_11;
                }

                v18 = *(a2 + 16);
                if (v18)
                {
                  v19 = v18 - 1;
                  v20 = v19 & ((ParentOp >> 4) ^ (ParentOp >> 9));
                  v21 = *(*a2 + 8 * v20);
                  if (v21 == ParentOp)
                  {
                    goto LABEL_11;
                  }

                  v22 = 1;
                  while (v21 != -4096)
                  {
                    v23 = v20 + v22++;
                    v20 = v23 & v19;
                    v21 = *(*a2 + 8 * v20);
                    if (v21 == ParentOp)
                    {
                      goto LABEL_11;
                    }
                  }
                }
              }

              getBackwardSliceImpl();
LABEL_11:
              ++v7;
            }

            while (v7 != v6);
          }
        }

        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2, &v26, v27);
        if (v28 == 1)
        {
          v24 = *(a2 + 32);
          if (v24 >= *(a2 + 36))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*(a2 + 24) + 8 * v24) = v26;
          ++*(a2 + 32);
        }
      }
    }
  }

  return result;
}

void *mlir::getBackwardSlice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v33);
  if (DefiningOp)
  {
    v6 = DefiningOp;
    result = getBackwardSliceImpl(DefiningOp, a2, a3);
    if ((*(a3 + 32) & 1) == 0)
    {
      v8 = *(a2 + 16);
      if (v8)
      {
        v9 = *a2;
        v10 = v8 - 1;
        v11 = (v8 - 1) & ((v6 >> 4) ^ (v6 >> 9));
        v12 = *(*a2 + 8 * v11);
        if (v12 == v6)
        {
LABEL_5:
          *(v9 + 8 * v11) = -8192;
          v15 = *(a2 + 32);
          v14 = (a2 + 32);
          v13 = v15;
          v14[-3] = vadd_s32(v14[-3], 0x1FFFFFFFFLL);
          result = v14[-1];
          v16 = &result[v15];
          if (v15)
          {
            v17 = 8 * v13;
            while (*result != v6)
            {
              ++result;
              v17 -= 8;
              if (!v17)
              {
                result = v16;
                break;
              }
            }
          }

          v18 = result + 1;
          v19 = v16 - (result + 1);
          if (v16 == result + 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v29 = 1;
        while (v12 != -4096)
        {
          v30 = v11 + v29++;
          v11 = v30 & v10;
          v12 = *(v9 + 8 * v11);
          if (v12 == v6)
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

  else
  {
    ParentOp = mlir::Block::getParentOp(*(v33 + 16));
    result = getBackwardSliceImpl(ParentOp, a2, a3);
    if ((*(a3 + 32) & 1) == 0)
    {
      v21 = *(a2 + 16);
      if (v21)
      {
        v22 = *a2;
        v23 = v21 - 1;
        v24 = (v21 - 1) & ((ParentOp >> 4) ^ (ParentOp >> 9));
        v25 = *(*a2 + 8 * v24);
        if (v25 == ParentOp)
        {
LABEL_15:
          *(v22 + 8 * v24) = -8192;
          v26 = *(a2 + 32);
          v14 = (a2 + 32);
          v13 = v26;
          v14[-3] = vadd_s32(v14[-3], 0x1FFFFFFFFLL);
          result = v14[-1];
          v27 = &result[v26];
          if (v26)
          {
            v28 = 8 * v13;
            while (*result != ParentOp)
            {
              ++result;
              v28 -= 8;
              if (!v28)
              {
                result = v27;
                break;
              }
            }
          }

          v18 = result + 1;
          v19 = v27 - (result + 1);
          if (v27 == result + 1)
          {
            goto LABEL_22;
          }

LABEL_21:
          result = memmove(result, v18, v19);
          LODWORD(v13) = v14->i32[0];
LABEL_22:
          v14->i32[0] = v13 - 1;
          return result;
        }

        v31 = 1;
        while (v25 != -4096)
        {
          v32 = v24 + v31++;
          v24 = v32 & v23;
          v25 = *(v22 + 8 * v24);
          if (v25 == ParentOp)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

void mlir::getSlice(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106[0] = a1;
  v103 = 0;
  *v102 = 0u;
  v104 = v106;
  v105 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v102, v106, v98);
  v6 = v105;
  if (v99 == 1)
  {
    if (v105 >= HIDWORD(v105))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v104 + v105) = v106[0];
    v6 = v105 + 1;
    LODWORD(v105) = v105 + 1;
  }

  v99 = 0;
  *v98 = 0u;
  v100 = v102;
  v101 = 0;
  v95 = 0;
  *v94 = 0u;
  v96 = v98;
  v97 = 0;
  if (!v6)
  {
LABEL_161:
    mlir::topologicalSort(v102, a4);
  }

  v7 = 0;
  v8 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v93 = v8;
  while (1)
  {
    v9 = *(v104 + v7);
    if (!LODWORD(v98[1]))
    {
      break;
    }

    v10 = v99;
    if (v99 <= 4 * LODWORD(v98[1]) || v99 < 0x41)
    {
      goto LABEL_24;
    }

    v11 = 1 << (33 - __clz(LODWORD(v98[1]) - 1));
    if (v11 <= 64)
    {
      v12 = 64;
    }

    else
    {
      v12 = v11;
    }

    if (v12 != v99)
    {
LABEL_23:
      llvm::deallocate_buffer(v98[0], (8 * v10));
    }

    v98[1] = 0;
    v13 = v98[0];
    v14 = (v99 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = v98[0];
    if (v14 < 3)
    {
      goto LABEL_18;
    }

    v16 = v14 + 1;
    v15 = (v98[0] + 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
    v17 = (v98[0] + 16);
    v18 = v16 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v17[-1] = v8;
      *v17 = v8;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v19 = (v13 + 8 * v10);
      do
      {
        *v15 = -4096;
        v15 = (v15 + 8);
      }

      while (v15 != v19);
    }

LABEL_32:
    LODWORD(v101) = 0;
    getBackwardSliceImpl(v9, v98, a2);
    if ((*(a2 + 32) & 1) == 0 && v99)
    {
      v27 = (v99 - 1) & ((v9 >> 4) ^ (v9 >> 9));
      v28 = *(v98[0] + v27);
      if (v28 == v9)
      {
LABEL_35:
        *(v98[0] + v27) = -8192;
        v98[1] = vadd_s32(v98[1], 0x1FFFFFFFFLL);
        v29 = v100;
        v30 = v101;
        v31 = v100 + 8 * v101;
        if (v101)
        {
          v32 = 8 * v101;
          do
          {
            if (*v29 == v9)
            {
              goto LABEL_40;
            }

            ++v29;
            v32 -= 8;
          }

          while (v32);
          v29 = v100 + 8 * v101;
        }

LABEL_40:
        if (v31 != (v29 + 1))
        {
          memmove(v29, v29 + 1, v31 - (v29 + 1));
          v30 = v101;
        }

        v33 = v93;
        v34 = v30 - 1;
        LODWORD(v101) = v34;
        if (!v34)
        {
          goto LABEL_92;
        }

LABEL_49:
        v37 = v100;
        v38 = v100 + 8 * v34;
        while (2)
        {
          v42 = v103;
          if (!v103)
          {
LABEL_72:
            v42 = 2 * v103;
            goto LABEL_73;
          }

          v39 = ((*v37 >> 4) ^ (*v37 >> 9)) & (v103 - 1);
          v40 = v102[0] + 8 * v39;
          v41 = *v40;
          if (*v37 == *v40)
          {
LABEL_51:
            if (++v37 == v38)
            {
              goto LABEL_92;
            }

            continue;
          }

          break;
        }

        v44 = 0;
        v45 = 1;
        while (v41 != -4096)
        {
          if (v44)
          {
            v46 = 0;
          }

          else
          {
            v46 = v41 == -8192;
          }

          if (v46)
          {
            v44 = v40;
          }

          v47 = v39 + v45++;
          v39 = v47 & (v103 - 1);
          v40 = v102[0] + 8 * v39;
          v41 = *v40;
          if (*v37 == *v40)
          {
            goto LABEL_51;
          }
        }

        if (v44)
        {
          v48 = v44;
        }

        else
        {
          v48 = v40;
        }

        if (4 * LODWORD(v102[1]) + 4 >= 3 * v103)
        {
          goto LABEL_72;
        }

        if (v103 + ~LODWORD(v102[1]) - HIDWORD(v102[1]) <= v103 >> 3)
        {
LABEL_73:
          llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(v102, v42);
          if (v103)
          {
            v49 = v103 - 1;
            v50 = ((*v37 >> 4) ^ (*v37 >> 9)) & (v103 - 1);
            v48 = v102[0] + 8 * v50;
            v51 = *v48;
            if (*v37 != *v48)
            {
              v52 = 0;
              v53 = 1;
              while (v51 != -4096)
              {
                if (v52)
                {
                  v54 = 0;
                }

                else
                {
                  v54 = v51 == -8192;
                }

                if (v54)
                {
                  v52 = v48;
                }

                v55 = v50 + v53++;
                v50 = v55 & v49;
                v48 = v102[0] + 8 * (v55 & v49);
                v51 = *v48;
                v33 = v93;
                if (*v37 == *v48)
                {
                  goto LABEL_87;
                }
              }

              if (v52)
              {
                v48 = v52;
              }
            }
          }

          else
          {
            v48 = 0;
          }

          v33 = v93;
LABEL_87:
          ++LODWORD(v102[1]);
          if (*v48 != -4096)
          {
LABEL_56:
            --HIDWORD(v102[1]);
          }
        }

        else
        {
          ++LODWORD(v102[1]);
          if (*v48 != -4096)
          {
            goto LABEL_56;
          }
        }

        v43 = *v37;
        *v48 = *v37;
        if (v105 >= HIDWORD(v105))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v104 + v105) = v43;
        LODWORD(v105) = v105 + 1;
        goto LABEL_51;
      }

      v35 = 1;
      while (v28 != -4096)
      {
        v36 = v27 + v35++;
        v27 = v36 & (v99 - 1);
        v28 = *(v98[0] + v27);
        if (v28 == v9)
        {
          goto LABEL_35;
        }
      }
    }

    v34 = v101;
    v33 = v93;
    if (v101)
    {
      goto LABEL_49;
    }

LABEL_92:
    if (!LODWORD(v94[1]))
    {
      if (!HIDWORD(v94[1]))
      {
        goto LABEL_117;
      }

      v56 = v95;
      if (v95 > 0x40)
      {
        goto LABEL_108;
      }

LABEL_109:
      if (v56)
      {
        v66 = v94[0];
        v67 = (v56 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v68 = v94[0];
        if (v67 <= 2)
        {
          goto LABEL_114;
        }

        v69 = v67 + 1;
        v68 = (v94[0] + 8 * (v69 & 0x3FFFFFFFFFFFFFFCLL));
        v70 = (v94[0] + 16);
        v71 = v69 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v70[-1] = v33;
          *v70 = v33;
          v70 += 2;
          v71 -= 4;
        }

        while (v71);
        if (v69 != (v69 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_114:
          v72 = (v66 + 8 * v56);
          do
          {
            *v68 = -4096;
            v68 = (v68 + 8);
          }

          while (v68 != v72);
        }
      }

      v94[1] = 0;
      goto LABEL_117;
    }

    v56 = v95;
    if (v95 <= 4 * LODWORD(v94[1]) || v95 < 0x41)
    {
      goto LABEL_109;
    }

    v57 = 1 << (33 - __clz(LODWORD(v94[1]) - 1));
    if (v57 <= 64)
    {
      v58 = 64;
    }

    else
    {
      v58 = v57;
    }

    if (v58 != v95)
    {
LABEL_108:
      llvm::deallocate_buffer(v94[0], (8 * v56));
    }

    v94[1] = 0;
    v59 = v94[0];
    v60 = (v95 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v61 = v94[0];
    if (v60 < 3)
    {
      goto LABEL_103;
    }

    v62 = v60 + 1;
    v61 = (v94[0] + 8 * (v62 & 0x3FFFFFFFFFFFFFFCLL));
    v63 = (v94[0] + 16);
    v64 = v62 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v63[-1] = v33;
      *v63 = v33;
      v63 += 2;
      v64 -= 4;
    }

    while (v64);
    if (v62 != (v62 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_103:
      v65 = (v59 + 8 * v56);
      do
      {
        *v61 = -4096;
        v61 = (v61 + 8);
      }

      while (v61 != v65);
    }

LABEL_117:
    LODWORD(v97) = 0;
    mlir::getForwardSlice(v9, v94, a3);
    v8 = v93;
    if (v97)
    {
      v73 = v96;
      v74 = v96 + 8 * v97;
      while (1)
      {
        v78 = v103;
        if (!v103)
        {
          goto LABEL_141;
        }

        v75 = ((*v73 >> 4) ^ (*v73 >> 9)) & (v103 - 1);
        v76 = v102[0] + 8 * v75;
        v77 = *v76;
        if (*v73 != *v76)
        {
          break;
        }

LABEL_120:
        if (++v73 == v74)
        {
          goto LABEL_6;
        }
      }

      v80 = 0;
      v81 = 1;
      while (v77 != -4096)
      {
        if (v80)
        {
          v82 = 0;
        }

        else
        {
          v82 = v77 == -8192;
        }

        if (v82)
        {
          v80 = v76;
        }

        v83 = v75 + v81++;
        v75 = v83 & (v103 - 1);
        v76 = v102[0] + 8 * v75;
        v77 = *v76;
        if (*v73 == *v76)
        {
          goto LABEL_120;
        }
      }

      if (v80)
      {
        v84 = v80;
      }

      else
      {
        v84 = v76;
      }

      if (4 * LODWORD(v102[1]) + 4 < 3 * v103)
      {
        if (v103 + ~LODWORD(v102[1]) - HIDWORD(v102[1]) > v103 >> 3)
        {
          ++LODWORD(v102[1]);
          if (*v84 == -4096)
          {
LABEL_126:
            v79 = *v73;
            *v84 = *v73;
            if (v105 >= HIDWORD(v105))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v104 + v105) = v79;
            LODWORD(v105) = v105 + 1;
            goto LABEL_120;
          }

LABEL_125:
          --HIDWORD(v102[1]);
          goto LABEL_126;
        }
      }

      else
      {
LABEL_141:
        v78 = 2 * v103;
      }

      llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(v102, v78);
      if (v103)
      {
        v85 = v103 - 1;
        v86 = ((*v73 >> 4) ^ (*v73 >> 9)) & (v103 - 1);
        v84 = v102[0] + 8 * v86;
        v87 = *v84;
        if (*v73 != *v84)
        {
          v88 = 0;
          v89 = 1;
          while (v87 != -4096)
          {
            if (v88)
            {
              v90 = 0;
            }

            else
            {
              v90 = v87 == -8192;
            }

            if (v90)
            {
              v88 = v84;
            }

            v91 = v86 + v89++;
            v86 = v91 & v85;
            v84 = v102[0] + 8 * (v91 & v85);
            v87 = *v84;
            v8 = v93;
            if (*v73 == *v84)
            {
              goto LABEL_156;
            }
          }

          if (v88)
          {
            v84 = v88;
          }
        }
      }

      else
      {
        v84 = 0;
      }

      v8 = v93;
LABEL_156:
      ++LODWORD(v102[1]);
      if (*v84 == -4096)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

LABEL_6:
    if (v105 == ++v7)
    {
      goto LABEL_161;
    }
  }

  if (!HIDWORD(v98[1]))
  {
    goto LABEL_32;
  }

  v10 = v99;
  if (v99 > 0x40)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v10)
  {
    v20 = v98[0];
    v21 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = v98[0];
    if (v21 <= 2)
    {
      goto LABEL_29;
    }

    v23 = v21 + 1;
    v22 = (v98[0] + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = (v98[0] + 16);
    v25 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24[-1] = v8;
      *v24 = v8;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_29:
      v26 = (v20 + 8 * v10);
      do
      {
        *v22 = -4096;
        v22 = (v22 + 8);
      }

      while (v22 != v26);
    }
  }

  v98[1] = 0;
  goto LABEL_32;
}

uint64_t std::__function::__func<dependsOnCarriedVals(mlir::Value,llvm::ArrayRef<mlir::BlockArgument>,mlir::Operation *)::$_0,std::allocator<dependsOnCarriedVals(mlir::Value,llvm::ArrayRef<mlir::BlockArgument>,mlir::Operation *)::$_0>,BOOL ()(mlir::Operation *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286892958;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dependsOnCarriedVals(mlir::Value,llvm::ArrayRef<mlir::BlockArgument>,mlir::Operation *)::$_0,std::allocator<dependsOnCarriedVals(mlir::Value,llvm::ArrayRef<mlir::BlockArgument>,mlir::Operation *)::$_0>,BOOL ()(mlir::Operation *)>::operator()(uint64_t a1, Operation **a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (v3 == v2)
  {
    return 0;
  }

  else
  {
    return mlir::Operation::isProperAncestor(v3, v2) ^ 1;
  }
}

uint64_t std::__function::__func<dependsOnCarriedVals(mlir::Value,llvm::ArrayRef<mlir::BlockArgument>,mlir::Operation *)::$_0,std::allocator<dependsOnCarriedVals(mlir::Value,llvm::ArrayRef<mlir::BlockArgument>,mlir::Operation *)::$_0>,BOOL ()(mlir::Operation *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZL20dependsOnCarriedValsN4mlir5ValueEN4llvm8ArrayRefINS_13BlockArgumentEEEPNS_9OperationEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZL20dependsOnCarriedValsN4mlir5ValueEN4llvm8ArrayRefINS_13BlockArgumentEEEPNS_9OperationEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZL20dependsOnCarriedValsN4mlir5ValueEN4llvm8ArrayRefINS_13BlockArgumentEEEPNS_9OperationEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZL20dependsOnCarriedValsN4mlir5ValueEN4llvm8ArrayRefINS_13BlockArgumentEEEPNS_9OperationEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Operation *)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*result, (8 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = (v1 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v7 = *result;
    if (v6 < 3)
    {
      goto LABEL_12;
    }

    v8 = v6 + 1;
    v7 = (v5 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
    v9 = (v5 + 16);
    v10 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v11 = v8 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v9[-1] = v10;
      *v9 = v10;
      v9 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_12:
      v12 = (v5 + 8 * v1);
      do
      {
        *v7 = -4096;
        v7 = (v7 + 8);
      }

      while (v7 != v12);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_10()
{
  v3 = *(v0 + 36);
  if (v3)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  *(v2 - 136) = v4;
  *(v2 - 128) = v3;
}

void mlir::walkSlice(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t, unint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v39 = v41;
  v40 = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v22 = a1;
  v23 = 0;
  if (a2)
  {
    v9 = 0;
    v10 = v41;
    do
    {
      *v10++ = mlir::ValueRange::dereference_iterator(&v22, v9);
      v9 = (v23 + 1);
      v23 = v9;
    }

    while (v9 != a2);
    v11 = v40;
  }

  else
  {
    v11 = 0;
  }

  v23 = -4096;
  v24 = -4096;
  v25 = -4096;
  v26 = -4096;
  v27 = -4096;
  v28 = -4096;
  v29 = -4096;
  v30 = -4096;
  v31 = -4096;
  v32 = -4096;
  v33 = -4096;
  v34 = -4096;
  v35 = -4096;
  v36 = -4096;
  v37 = -4096;
  v38 = -4096;
  v22 = 1;
  v12 = v11 + a2;
  LODWORD(v40) = v12;
  if (v12)
  {
    do
    {
      v13 = *&v39[8 * v12 - 8];
      LODWORD(v40) = v12 - 1;
      v45[0] = v13;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v22, v45, &v42);
      if (v44)
      {
        a3(a4, v45[0]);
        if (*a5 != 2)
        {
          if (!*a5)
          {
            goto LABEL_27;
          }

          v14 = *(a5 + 16);
          v15 = v40;
          if (v40 + v14 > HIDWORD(v40))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v14)
          {
            memcpy(&v39[8 * v40], *(a5 + 8), 8 * v14);
            v15 = v40;
          }

          LODWORD(v40) = v15 + v14;
        }

        v16 = *(a5 + 8);
        if (v16 != (a5 + 24))
        {
          free(v16);
        }
      }

      v12 = v40;
    }

    while (v40);
  }

  mlir::ValueRange::ValueRange(v45, 0, 0);
  v18 = v45[0];
  v17 = v45[1];
  *a5 = 2;
  *(a5 + 8) = a5 + 24;
  *(a5 + 16) = 0x600000000;
  if (v17 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v42 = v18;
  v43 = 0;
  if (v17)
  {
    v19 = (a5 + 24);
    for (i = 0; i != v17; v43 = i)
    {
      *v19++ = mlir::ValueRange::dereference_iterator(&v42, i);
      i = v43 + 1;
    }

    v21 = *(a5 + 16);
  }

  else
  {
    v21 = 0;
  }

  *(a5 + 16) = v21 + v17;
LABEL_27:
  if ((v22 & 1) == 0)
  {
    llvm::deallocate_buffer(v23, (8 * v24));
  }

  if (v39 != v41)
  {
    free(v39);
  }
}

void mlir::getControlFlowPredecessors(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[6] = *MEMORY[0x277D85DE8];
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v29 = v3;
  if (v3)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v29);
    v5 = DefiningOp;
    if (DefiningOp)
    {
      if (!mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp))
      {
        __src = 0;
        v38 = 0;
LABEL_30:
        v19 = mlir::Value::getDefiningOp(&v29);
        ParentOp = v19;
        if (!v19 || !mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v19) || (InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp), !ParentOp))
        {
LABEL_56:
          *a2 = 0;
          *(a2 + 64) = 0;
          return;
        }

        v23 = *(ParentOp + 36);
        if (v23)
        {
          v24 = ParentOp - 16;
        }

        else
        {
          v24 = 0;
        }

        *&v33 = 0;
        mlir::ValueRange::ValueRange(&v33 + 1, v24, v23);
        v31 = v33;
        v32 = v34;
        if (v29 && (*(v29 + 8) & 7) == 6)
        {
          v25 = *(v29 + 16) + 6;
        }

        else
        {
          v25 = *(v29 + 8) & 7;
        }

        goto LABEL_52;
      }

      DefiningOp = mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    }

    __src = v5;
    v38 = DefiningOp;
    if (v5)
    {
      TrueValue = mlir::SelectLikeOpInterface::getTrueValue(&__src);
      FalseValue = mlir::SelectLikeOpInterface::getFalseValue(&__src);
      *(a2 + 16) = TrueValue;
      *a2 = a2 + 16;
      *(a2 + 24) = FalseValue;
      *(a2 + 8) = 0x600000002;
      *(a2 + 64) = 1;
      return;
    }

    goto LABEL_30;
  }

  v28 = a1;
  v9 = *(a1 + 16);
  if (!mlir::Block::isEntryBlock(v9))
  {
    v12 = *(a1 + 16);
    __src = v39;
    v38 = 0x600000000;
    *&v31 = *v12;
    *(&v31 + 1) = mlir::PredecessorIterator::unwrap;
    if (v31)
    {
      while (1)
      {
        v13 = (*(&v31 + 1))();
        Terminator = mlir::Block::getTerminator(v13);
        if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
        {
          v29 = 0;
          v30 = 0;
          goto LABEL_37;
        }

        if (!Terminator)
        {
          break;
        }

        v15 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
        v29 = Terminator;
        v30 = v15;
        SuccessorIndex = mlir::PredecessorIterator::getSuccessorIndex(&v31);
        mlir::BranchOpInterface::getSuccessorOperands(&v29, SuccessorIndex);
        v17 = *(a1 + 24);
        if (v17 >= v33)
        {
          v18 = *(mlir::MutableOperandRange::operator[](&v33 + 2, v17 - v33) + 24);
          if (v18)
          {
            if (v38 >= HIDWORD(v38))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(__src + v38) = v18;
            LODWORD(v38) = v38 + 1;
          }
        }

        if (v35 != &v36)
        {
          free(v35);
        }

        *&v31 = *v31;
        if (!v31)
        {
          v21 = v38;
          *a2 = a2 + 16;
          *(a2 + 8) = 0x600000000;
          if (v21 && &__src != a2)
          {
            if (__src == v39)
            {
              if (v21 >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy((a2 + 16), __src, 8 * v21);
              *(a2 + 8) = v21;
            }

            else
            {
              *a2 = __src;
              v22 = HIDWORD(v38);
              *(a2 + 8) = v21;
              *(a2 + 12) = v22;
              __src = v39;
              HIDWORD(v38) = 0;
            }

            LODWORD(v38) = 0;
          }

          goto LABEL_68;
        }
      }

      v29 = 0;
      v30 = 0;
LABEL_37:
      *a2 = 0;
      *(a2 + 64) = 0;
      v20 = __src;
      if (__src != v39)
      {
        goto LABEL_62;
      }
    }

    else
    {
      *a2 = a2 + 16;
      *(a2 + 8) = 0x600000000;
LABEL_68:
      *(a2 + 64) = 1;
      v20 = __src;
      if (__src != v39)
      {
        goto LABEL_62;
      }
    }

    return;
  }

  ParentOp = mlir::Block::getParentOp(v9);
  if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp) || !ParentOp)
  {
    goto LABEL_56;
  }

  InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
  *&v33 = mlir::Value::getParentRegion(&v28);
  mlir::ValueRange::ValueRange(&v33 + 1, 0, 0);
  v31 = v33;
  v32 = v34;
  v25 = *(v28 + 24);
LABEL_52:
  getRegionPredecessorOperands(&__src, ParentOp, InterfaceFor, &v31, v25);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v26 = v38;
  v20 = __src;
  if (v38 && &__src != a2)
  {
    if (__src == v39)
    {
      if (v38 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a2, __src, 8 * v38);
      v20 = __src;
      *(a2 + 8) = v26;
    }

    else
    {
      *a2 = __src;
      v27 = HIDWORD(v38);
      *(a2 + 8) = v26;
      *(a2 + 12) = v27;
      __src = v39;
      HIDWORD(v38) = 0;
      v20 = v39;
    }

    LODWORD(v38) = 0;
  }

  *(a2 + 64) = 1;
  if (v20 != v39)
  {
LABEL_62:
    free(v20);
  }
}

void getRegionPredecessorOperands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v32[0] = a2;
  v32[1] = a3;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v8 = *(a2 + 68);
    v42 = v44;
    v43 = 0x600000000;
    if (v8)
    {
      if (v8 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v44, 8 * v8);
      LODWORD(v43) = v8;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v42 = v44;
    v43 = 0x600000000;
  }

  v39 = v41;
  v40 = 0x200000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorRegions(v32, v44, v8, &v39);
  v9 = *a4;
  if (v40)
  {
    v10 = 24 * v40;
    v11 = v39;
    while (*v11 != v9)
    {
      v11 += 3;
      v10 -= 24;
      if (!v10)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v11 = v39;
  }

  if (v11 != (v39 + 24 * v40))
  {
    v12 = *(mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v32, v9) + 32 * a5 + 24);
    v13 = *(a1 + 8);
    if (v13 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v13) = v12;
    ++*(a1 + 8);
  }

LABEL_16:
  v14 = *(v32[0] + 44);
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = ((v32[0] + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v32[0] + 40);
    v29 = v15 + 24 * (v14 & 0x7FFFFF);
    v16 = a5;
    do
    {
      for (i = *(v15 + 8); i != v15; i = *(i + 8))
      {
        if (i)
        {
          v18 = (i - 8);
        }

        else
        {
          v18 = 0;
        }

        Terminator = mlir::Block::getTerminator(v18);
        if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
        {
          if (Terminator)
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
            v30 = Terminator;
            v31 = InterfaceFor;
            if ((*(Terminator + 46) & 0x80) != 0)
            {
              v21 = *(Terminator + 68);
              v36 = v38;
              v37 = 0x600000000;
              if (v21)
              {
                if (v21 >= 7)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                bzero(v38, 8 * v21);
                LODWORD(v37) = v21;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
              v36 = v38;
              v37 = 0x600000000;
            }

            v33 = v35;
            v34 = 0x200000000;
            mlir::RegionBranchTerminatorOpInterface::getSuccessorRegions(&v30, v38, v21, &v33);
            v22 = v33;
            v23 = *a4;
            v24 = v33;
            if (v34)
            {
              v25 = 24 * v34;
              v24 = v33;
              while (*v24 != v23)
              {
                v24 += 3;
                v25 -= 24;
                if (!v25)
                {
                  goto LABEL_46;
                }
              }
            }

            if (v24 != (v33 + 24 * v34))
            {
              mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(&v30, v23);
              v26 = mlir::MutableOperandRange::operator mlir::OperandRange(v45);
              if (v46 != v47)
              {
                free(v46);
              }

              v27 = *(v26 + 32 * v16 + 24);
              v28 = *(a1 + 8);
              if (v28 >= *(a1 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*a1 + 8 * v28) = v27;
              ++*(a1 + 8);
              v22 = v33;
            }

LABEL_46:
            if (v22 != v35)
            {
              free(v22);
            }

            if (v36 != v38)
            {
              free(v36);
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }
      }

      v15 += 24;
    }

    while (v15 != v29);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 16;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v12 = 0;
      v15 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = HIDWORD(*a2);
  v9 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v8);
  LODWORD(v9) = -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)));
  v10 = v6 - 1;
  v11 = v9 & (v6 - 1);
  v12 = (v7 + 8 * v11);
  v13 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v5)
    {
      v14 = 16;
    }

    else
    {
      v4 = *(result + 8);
      v14 = *(result + 16);
    }

    *a3 = v12;
    *(a3 + 8) = v4 + 8 * v14;
    *(a3 + 16) = 0;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v13 != -4096)
  {
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13 == -8192;
    }

    if (v19)
    {
      v17 = v12;
    }

    v20 = v11 + v18++;
    v11 = v20 & v10;
    v12 = (v7 + 8 * (v20 & v10));
    v13 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v17)
  {
    v12 = v17;
  }

  v24 = v12;
  if (v5)
  {
    v15 = 16;
  }

  else
  {
    v15 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v15)
  {
    v15 *= 2;
    goto LABEL_34;
  }

  if (v15 + ~(v3 >> 1) - *(result + 4) <= v15 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v21 = a3;
    llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v15);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v21;
    v3 = *v23;
    v12 = v24;
    v5 = *v23 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v12 != -4096)
  {
    --*(result + 4);
  }

  *v12 = *a2;
  if (*result)
  {
    v16 = 16;
  }

  else
  {
    v4 = *(result + 8);
    v16 = *(result + 16);
  }

  *a3 = v12;
  *(a3 + 8) = v4 + 8 * v16;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 16;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v3 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v32[15] = *MEMORY[0x277D85DE8];
  if (a2 >= 0x11)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 0x10)
    {
      v27 = a2;
      v28 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v28;
      *(v28 + 8) = buffer;
      *(v28 + 16) = v27;
    }

    else
    {
      *a1 |= 1u;
    }

    v30 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v5, &v30[v5]);

    llvm::deallocate_buffer(v5, v30);
  }

  v7 = &v31;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 16);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = *(a1 + 8);
    v7 = v32;
    v8 = *(a1 + 16);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }
  }

  *v7++ = v8;
  v9 = *(a1 + 24);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 32);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *v7++ = v9;
  v10 = *(a1 + 32);
  if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v11 = *(a1 + 40);
    if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *v7++ = v10;
  v11 = *(a1 + 40);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 48);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *v7++ = v11;
  v12 = *(a1 + 48);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_14:
    v13 = *(a1 + 56);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *v7++ = v12;
  v13 = *(a1 + 56);
  if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_15:
    v14 = *(a1 + 64);
    if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *v7++ = v13;
  v14 = *(a1 + 64);
  if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_16:
    v15 = *(a1 + 72);
    if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *v7++ = v14;
  v15 = *(a1 + 72);
  if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_17:
    v16 = *(a1 + 80);
    if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *v7++ = v15;
  v16 = *(a1 + 80);
  if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_18:
    v17 = *(a1 + 88);
    if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *v7++ = v16;
  v17 = *(a1 + 88);
  if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_19:
    v18 = *(a1 + 96);
    if ((v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *v7++ = v17;
  v18 = *(a1 + 96);
  if ((v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_20:
    v19 = *(a1 + 104);
    if ((v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *v7++ = v18;
  v19 = *(a1 + 104);
  if ((v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_21:
    v20 = *(a1 + 112);
    if ((v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  *v7++ = v19;
  v20 = *(a1 + 112);
  if ((v20 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_22:
    v21 = *(a1 + 120);
    if ((v21 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  *v7++ = v20;
  v21 = *(a1 + 120);
  if ((v21 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_23:
    v22 = *(a1 + 128);
    if ((v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_24;
    }

LABEL_46:
    *v7++ = v22;
    if (a2 < 0x11)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v31, v7);
    }

    goto LABEL_25;
  }

LABEL_45:
  *v7++ = v21;
  v22 = *(a1 + 128);
  if ((v22 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_46;
  }

LABEL_24:
  if (a2 >= 0x11)
  {
LABEL_25:
    *a1 &= ~1u;
    v23 = a2;
    v24 = a1;
    v25 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v24;
    *(v24 + 8) = v25;
    *(v24 + 16) = v23;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v31, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,16u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = (result + 34);
    v5 = (result + 2);
    v7 = 120;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5->i64[v4];
    v7 = v6 - v5 - 8;
    if (v7 < 0x18)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9++ = -4096;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 3) + 1;
  v9 = &v5->i64[v8 & 0x3FFFFFFFFFFFFFFCLL];
  v10 = v5 + 1;
  v11 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v10[-1] = v11;
    *v10 = v11;
    v10 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v20 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v14 = 15;
        v13 = result + 2;
      }

      else
      {
        v13 = *(result + 1);
        v14 = result[4] - 1;
      }

      v15 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v15 >> 47) ^ v15);
      v17 = v14 & (-348639895 * ((v16 >> 47) ^ v16));
      v18 = &v13[2 * v17];
      v19 = *v18;
      if (v20 != *v18)
      {
        v21 = 0;
        v22 = 1;
        while (v19 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v19 == -8192;
          }

          if (v23)
          {
            v21 = v18;
          }

          v24 = v17 + v22++;
          v17 = v24 & v14;
          v18 = &v13[2 * (v24 & v14)];
          v19 = *v18;
          if (v20 == *v18)
          {
            goto LABEL_15;
          }
        }

        if (v21)
        {
          v18 = v21;
        }
      }

LABEL_15:
      *v18 = v20;
      *result += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::SelectLikeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::SelectLikeOpInterface,mlir::detail::SelectLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[117];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::SelectLikeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SelectLikeOpInterface]";
  v6 = 77;
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

uint64_t mlir::sortTopologically(mlir::Block *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    v45[2] = v18;
    v45[3] = v17;
    v45[4] = v14;
    v45[5] = v13;
    v45[6] = v12;
    v45[7] = v11;
    v45[8] = v10;
    v45[9] = v9;
    v45[10] = v8;
    v45[11] = v7;
    v45[12] = v6;
    v45[13] = v5;
    v45[14] = v15;
    v45[15] = v16;
    v23 = a2;
    v39 = 0;
    v40 = 0;
    v25 = a2;
    v41 = 0;
    do
    {
      v45[0] = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v25);
      llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v39, v45, v43);
      v25 = v25[1];
    }

    while (v25 != a3);
    while (v40.i32[0])
    {
      if (v23 != a3)
      {
        v30 = 0;
        v31 = v23;
        do
        {
          v32 = v31;
          v31 = v31[1];
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v32);
          v45[0] = a4;
          v45[1] = a5;
          v42 = v43;
          v43[0] = v45;
          v43[1] = &v44;
          v43[2] = &v39;
          v44 = ValuePtr;
          if (mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<isOpReady(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::function_ref<BOOL ()(mlir::Value,mlir::Operation *)>)::$_0>, &v42, 1))
          {
            if (v41)
            {
              v34 = (v41 - 1) & ((ValuePtr >> 4) ^ (ValuePtr >> 9));
              v35 = *(v39 + v34);
              if (ValuePtr == v35)
              {
LABEL_19:
                *(v39 + v34) = -8192;
                v40 = vadd_s32(v40, 0x1FFFFFFFFLL);
              }

              else
              {
                v36 = 1;
                while (v35 != -4096)
                {
                  v37 = v34 + v36++;
                  v34 = v37 & (v41 - 1);
                  v35 = *(v39 + v34);
                  if (ValuePtr == v35)
                  {
                    goto LABEL_19;
                  }
                }
              }
            }

            mlir::Operation::moveBefore(ValuePtr, a1, v23);
            if (ValuePtr == llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v23))
            {
              v23 = v23[1];
            }

            v30 = 1;
          }
        }

        while (v31 != a3);
        if (v30)
        {
          continue;
        }
      }

      v38 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v23);
      if (v41)
      {
        v28 = ((v38 >> 4) ^ (v38 >> 9)) & (v41 - 1);
        v29 = *(v39 + v28);
        if (v38 == v29)
        {
LABEL_9:
          *(v39 + v28) = -8192;
          v40 = vadd_s32(v40, 0x1FFFFFFFFLL);
        }

        else
        {
          v27 = 1;
          while (v29 != -4096)
          {
            v26 = v28 + v27++;
            v28 = v26 & (v41 - 1);
            v29 = *(v39 + v28);
            if (v38 == v29)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v23 = v23[1];
    }

    llvm::deallocate_buffer(v39, (8 * v41));
  }

  return 1;
}

uint64_t mlir::sortTopologically(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 4;
  v4 = a1[4];
  if (v4 == v5)
  {
    return 1;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
  {
    v13 = ValuePtr;
    ValuePtr = v13;
  }

  v9 = (*(**(ValuePtr + 48) + 32))(*(ValuePtr + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
  v10 = a1[5];
  if (v9)
  {
    v11 = v10 == v5;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v5 = *v5;
  }

  return mlir::sortTopologically(a1, v10, v5, a2, a3);
}

uint64_t mlir::computeTopologicalSorting(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v27 = 0;
    v28 = 0;
    v8 = 8 * a2;
    v9 = a1;
    v29 = 0;
    do
    {
      v10 = *v9++;
      v33[0] = v10;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v27, v33, v31);
      v8 -= 8;
    }

    while (v8);
    if (!v28.i32[0])
    {
LABEL_30:
      llvm::deallocate_buffer(v27, (8 * v29));
    }

    v11 = 0;
    while (1)
    {
      while (1)
      {
        v13 = v11;
        if (a2 <= v11)
        {
          LODWORD(v12) = v11;
        }

        else
        {
          v14 = 0;
          v12 = v11;
          do
          {
            v20 = a1[v13];
            v33[0] = a3;
            v33[1] = a4;
            v30 = v31;
            v31[0] = v33;
            v31[1] = &v32;
            v31[2] = &v27;
            v32 = v20;
            if (mlir::detail::walk<mlir::ForwardIterator>(v20, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<isOpReady(mlir::Operation *,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::function_ref<BOOL ()(mlir::Value,mlir::Operation *)>)::$_0>, &v30, 1))
            {
              v19 = a1[v13];
              if (v29)
              {
                v17 = ((v19 >> 4) ^ (v19 >> 9)) & (v29 - 1);
                v18 = *(v27 + v17);
                if (v19 == v18)
                {
LABEL_13:
                  *(v27 + v17) = -8192;
                  v28 = vadd_s32(v28, 0x1FFFFFFFFLL);
                  v19 = a1[v13];
                }

                else
                {
                  v16 = 1;
                  while (v18 != -4096)
                  {
                    v15 = v17 + v16++;
                    v17 = v15 & (v29 - 1);
                    v18 = *(v27 + v17);
                    if (v19 == v18)
                    {
                      goto LABEL_13;
                    }
                  }
                }
              }

              a1[v13] = a1[v12];
              a1[v12] = v19;
              v12 = (v12 + 1);
              v14 = 1;
            }

            LODWORD(v11) = v11 + 1;
            v13 = v11;
          }

          while (a2 > v11);
          if (v14)
          {
            goto LABEL_7;
          }
        }

        v11 = (v12 + 1);
        if (v29)
        {
          break;
        }

LABEL_6:
        v12 = (v12 + 1);
LABEL_7:
        v11 = v12;
        if (!v28.i32[0])
        {
          goto LABEL_30;
        }
      }

      v21 = a1[v12];
      v22 = ((v21 >> 4) ^ (v21 >> 9)) & (v29 - 1);
      v23 = *(v27 + v22);
      if (v21 != v23)
      {
        v24 = 1;
        while (v23 != -4096)
        {
          v25 = v22 + v24++;
          v22 = v25 & (v29 - 1);
          v23 = *(v27 + v22);
          if (v21 == v23)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_6;
      }

LABEL_23:
      *(v27 + v22) = -8192;
      v28 = vadd_s32(v28, 0x1FFFFFFFFLL);
      if (!v28.i32[0])
      {
        goto LABEL_30;
      }
    }
  }

  return 1;
}

void mlir::getBlocksSortedByDominance(mlir *this@<X0>, uint64_t a2@<X8>)
{
  v40[8] = *MEMORY[0x277D85DE8];
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  for (i = *(this + 1); i != this; i = *(i + 1))
  {
    v9 = (i - 8);
    if (!i)
    {
      v9 = 0;
    }

    v10 = *(a2 + 16);
    if (v10)
    {
      v6 = v10 - 1;
      v7 = v6 & ((v9 >> 4) ^ (v9 >> 9));
      v8 = *(*a2 + 8 * v7);
      if (v8 == v9)
      {
        continue;
      }

      v35 = 1;
      while (v8 != -4096)
      {
        v36 = v7 + v35++;
        v7 = v36 & v6;
        v8 = *(*a2 + 8 * v7);
        if (v8 == v9)
        {
          goto LABEL_4;
        }
      }
    }

    v37 = v9;
    v38 = v40;
    v39 = 0x800000000;
    llvm::ReversePostOrderTraversal<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::Initialize(&v38, &v37);
    v11 = v38;
    if (v39)
    {
      v12 = (v38 + 8 * v39);
      v13 = *a2;
      while (1)
      {
        --v12;
        v17 = *(a2 + 16);
        if (!v17)
        {
          goto LABEL_32;
        }

        v14 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v17 - 1);
        v15 = (v13 + 8 * v14);
        v16 = *v15;
        if (*v12 != *v15)
        {
          break;
        }

LABEL_11:
        if (v12 == v11)
        {
          v11 = v38;
          goto LABEL_53;
        }
      }

      v20 = 0;
      v21 = 1;
      while (v16 != -4096)
      {
        if (v20)
        {
          v22 = 0;
        }

        else
        {
          v22 = v16 == -8192;
        }

        if (v22)
        {
          v20 = v15;
        }

        v23 = v14 + v21++;
        v14 = v23 & (v17 - 1);
        v15 = (v13 + 8 * v14);
        v16 = *v15;
        if (*v12 == *v15)
        {
          goto LABEL_11;
        }
      }

      if (v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v15;
      }

      v25 = *(a2 + 8);
      if (4 * v25 + 4 >= 3 * v17)
      {
LABEL_32:
        v26 = v11;
        llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(a2, 2 * v17);
        v27 = *(a2 + 16);
        if (v27)
        {
          goto LABEL_33;
        }

LABEL_45:
        v24 = 0;
        goto LABEL_46;
      }

      if (v17 + ~v25 - *(a2 + 12) <= v17 >> 3)
      {
        v26 = v11;
        llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(a2, v17);
        v27 = *(a2 + 16);
        if (!v27)
        {
          goto LABEL_45;
        }

LABEL_33:
        v28 = v27 - 1;
        v29 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v27 - 1);
        v24 = (*a2 + 8 * v29);
        v30 = *v24;
        if (*v12 == *v24)
        {
LABEL_46:
          v11 = v26;
        }

        else
        {
          v31 = 0;
          v32 = 1;
          v11 = v26;
          while (v30 != -4096)
          {
            if (v31)
            {
              v33 = 0;
            }

            else
            {
              v33 = v30 == -8192;
            }

            if (v33)
            {
              v31 = v24;
            }

            v34 = v29 + v32++;
            v29 = v34 & v28;
            v24 = (*a2 + 8 * (v34 & v28));
            v30 = *v24;
            if (*v12 == *v24)
            {
              goto LABEL_47;
            }
          }

          if (v31)
          {
            v24 = v31;
          }
        }

LABEL_47:
        ++*(a2 + 8);
        if (*v24 != -4096)
        {
LABEL_16:
          --*(a2 + 12);
        }
      }

      else
      {
        *(a2 + 8) = v25 + 1;
        if (*v24 != -4096)
        {
          goto LABEL_16;
        }
      }

      v18 = *v12;
      *v24 = *v12;
      v19 = *(a2 + 32);
      if (v19 >= *(a2 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a2 + 24) + 8 * v19) = v18;
      ++*(a2 + 32);
      v13 = *a2;
      goto LABEL_11;
    }

LABEL_53:
    if (v11 != v40)
    {
      free(v11);
    }

LABEL_4:
    ;
  }
}

void mlir::topologicalSort(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59[8] = *MEMORY[0x277D85DE8];
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v2 = *(a1 + 32);
  if (v2 <= 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    llvm::deallocate_buffer(0, 0);
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  v3 = *(a1 + 24);
  v4 = &v3[v2];
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    if (v6)
    {
      Parent = mlir::Block::getParent(v6);
      v55 = *(v5 + 16);
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v52, &v55, v59);
      if (Parent)
      {
        ParentRegion = Parent;
        while (2)
        {
          v12 = v58;
          if (!v58)
          {
            goto LABEL_37;
          }

          v13 = v58 - 1;
          v14 = ((ParentRegion >> 4) ^ (ParentRegion >> 9)) & (v58 - 1);
          v15 = v56 + 16 * v14;
          v16 = *v15;
          if (ParentRegion == *v15)
          {
            goto LABEL_27;
          }

          v17 = 0;
          v18 = 1;
          while (v16 != -4096)
          {
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v16 == -8192;
            }

            if (v19)
            {
              v17 = v15;
            }

            v20 = v14 + v18++;
            v14 = v20 & v13;
            v15 = v56 + 16 * (v20 & v13);
            v16 = *v15;
            if (ParentRegion == *v15)
            {
              goto LABEL_27;
            }
          }

          if (v17)
          {
            v15 = v17;
          }

          if (4 * v57 + 4 >= 3 * v58)
          {
LABEL_37:
            v24 = ParentRegion;
            v12 = 2 * v58;
            goto LABEL_53;
          }

          if (v58 + ~v57 - HIDWORD(v57) <= v58 >> 3)
          {
            v24 = ParentRegion;
LABEL_53:
            llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(&v56, v12);
            if (v58)
            {
              ParentRegion = v24;
              v31 = v58 - 1;
              v32 = (v58 - 1) & ((v24 >> 4) ^ (v24 >> 9));
              v15 = v56 + 16 * v32;
              v33 = *v15;
              if (v24 != *v15)
              {
                v34 = 0;
                v35 = 1;
                while (v33 != -4096)
                {
                  if (v34)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v33 == -8192;
                  }

                  if (v36)
                  {
                    v34 = v15;
                  }

                  v37 = v32 + v35++;
                  v32 = v37 & v31;
                  v15 = v56 + 16 * (v37 & v31);
                  v33 = *v15;
                  if (v24 == *v15)
                  {
                    goto LABEL_77;
                  }
                }

                if (v34)
                {
                  v15 = v34;
                }
              }
            }

            else
            {
              v15 = 0;
              ParentRegion = v24;
            }

LABEL_77:
            LODWORD(v57) = v57 + 1;
            if (*v15 != -4096)
            {
LABEL_25:
              --HIDWORD(v57);
            }
          }

          else
          {
            LODWORD(v57) = v57 + 1;
            if (*v15 != -4096)
            {
              goto LABEL_25;
            }
          }

          *v15 = ParentRegion;
          *(v15 + 1) = 0;
LABEL_27:
          v21 = *(v15 + 1) + 1;
          *(v15 + 1) = v21;
          if (v21 == v2)
          {
            break;
          }

          v22 = *(*(ParentRegion + 2) + 16);
          v23 = v54;
          if (!v54)
          {
            goto LABEL_51;
          }

          v9 = ((v22 >> 4) ^ (v22 >> 9)) & (v54 - 1);
          v10 = v52 + 8 * v9;
          v11 = *v10;
          if (v22 != *v10)
          {
            v25 = 0;
            v26 = 1;
            while (v11 != -4096)
            {
              if (v25)
              {
                v27 = 0;
              }

              else
              {
                v27 = v11 == -8192;
              }

              if (v27)
              {
                v25 = v10;
              }

              v28 = v9 + v26++;
              v9 = v28 & (v54 - 1);
              v10 = v52 + 8 * v9;
              v11 = *v10;
              if (v22 == *v10)
              {
                goto LABEL_10;
              }
            }

            if (v25)
            {
              v29 = v25;
            }

            else
            {
              v29 = v10;
            }

            if (4 * v53 + 4 >= 3 * v54)
            {
LABEL_51:
              v30 = ParentRegion;
              v23 = 2 * v54;
              goto LABEL_65;
            }

            if (v54 + ~v53 - HIDWORD(v53) > v54 >> 3)
            {
              LODWORD(v53) = v53 + 1;
              if (*v29 != -4096)
              {
                goto LABEL_32;
              }

              goto LABEL_33;
            }

            v30 = ParentRegion;
LABEL_65:
            llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(&v52, v23);
            if (v54)
            {
              v38 = v54 - 1;
              v39 = (v54 - 1) & ((v22 >> 4) ^ (v22 >> 9));
              v29 = v52 + 8 * v39;
              v40 = *v29;
              if (v22 != *v29)
              {
                v41 = 0;
                v42 = 1;
                ParentRegion = v30;
                while (v40 != -4096)
                {
                  if (v41)
                  {
                    v43 = 0;
                  }

                  else
                  {
                    v43 = v40 == -8192;
                  }

                  if (v43)
                  {
                    v41 = v29;
                  }

                  v44 = v39 + v42++;
                  v39 = v44 & v38;
                  v29 = v52 + 8 * (v44 & v38);
                  v40 = *v29;
                  if (v22 == *v29)
                  {
                    goto LABEL_81;
                  }
                }

                if (v41)
                {
                  v29 = v41;
                }

LABEL_81:
                LODWORD(v53) = v53 + 1;
                if (*v29 != -4096)
                {
LABEL_32:
                  --HIDWORD(v53);
                }

LABEL_33:
                *v29 = v22;
                goto LABEL_10;
              }
            }

            else
            {
              v29 = 0;
            }

            ParentRegion = v30;
            goto LABEL_81;
          }

LABEL_10:
          ParentRegion = mlir::Region::getParentRegion(ParentRegion);
          if (!ParentRegion)
          {
            break;
          }

          continue;
        }
      }
    }

    else
    {
      v55 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v52, &v55, v59);
    }

    if (++v3 == v4)
    {
      v45 = v56;
      v46 = v58;
      if (v57)
      {
        v47 = v56;
        if (v58)
        {
          v48 = 16 * v58;
          v47 = v56;
          while ((*v47 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v47 = (v47 + 16);
            v48 -= 16;
            if (!v48)
            {
              goto LABEL_102;
            }
          }
        }

        v49 = (v56 + 16 * v58);
        if (v47 != v49)
        {
          do
          {
            llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v50, v47, v59);
            do
            {
              v47 = (v47 + 16);
              if (v47 == v49)
              {
                goto LABEL_101;
              }
            }

            while ((*v47 | 0x1000) == 0xFFFFFFFFFFFFF000);
          }

          while (v47 != v49);
LABEL_101:
          v45 = v56;
          v46 = v58;
        }
      }

LABEL_102:
      llvm::deallocate_buffer(v45, (16 * v46));
    }
  }
}