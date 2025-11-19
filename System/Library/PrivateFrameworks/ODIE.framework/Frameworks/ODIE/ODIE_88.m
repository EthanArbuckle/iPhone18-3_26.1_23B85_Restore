double llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4 + 32 * v5 - 16;
    v7 = -32 * v5;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 32 * v2 - 16;
    v4 = -32 * v2;
    do
    {
      v5 = *(v3 - 16);
      if (v3 != v5)
      {
        free(v5);
      }

      v3 -= 32;
      v4 += 32;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = 32 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x200000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(a2, v5);
      }

      a2 += 4;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *a1 + 32 * v7 - 16;
      v9 = -32 * v7;
      do
      {
        v10 = *(v8 - 16);
        if (v8 != v10)
        {
          free(v10);
        }

        v8 -= 32;
        v9 += 32;
      }

      while (v9);
    }
  }
}

void llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<llvm::SmallVector<long long,2u>>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v8);
  v6 = &v5[4 * *(a1 + 8)];
  *v6 = v6 + 2;
  v6[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(v6, a2);
  }

  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(a1, v5);
  v7 = v8;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v7;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<long long,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::AffineExpr,2u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = 32 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x200000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(a2, v5);
      }

      a2 += 4;
      v5 += 32;
      v6 -= 32;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = *a1 + 32 * v7 - 16;
      v9 = -32 * v7;
      do
      {
        v10 = *(v8 - 16);
        if (v8 != v10)
        {
          free(v10);
        }

        v8 -= 32;
        v9 += 32;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::AffineExpr>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::AffineExpr>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

unsigned int **llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<unsigned int getMaxPosOfType<mlir::AffineDimExpr>(llvm::ArrayRef<llvm::SmallVector<mlir::AffineExpr,2u>>)::{lambda(mlir::AffineExpr)#1}>(unsigned int **result, uint64_t a2)
{
  if (a2 && *(a2 + 8) == 6)
  {
    v2 = *(a2 + 16);
    if (**result > v2)
    {
      v2 = **result;
    }

    **result = v2;
  }

  return result;
}

char *mlir::clone(mlir::OpBuilder *a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v12 = *(this + 3);
  v13 = *(this + 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  mlir::OperationState::OperationState(v21, v12, v13, a5, a6, a3, a4, v15, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0, 0, 0);
  v16 = *(this + 11);
  if ((v16 & 0x7FFFFF) != 0)
  {
    v17 = ((this + 16 * ((v16 >> 23) & 1) + ((v16 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
    mlir::OperationState::addRegion(v21);
  }

  v18 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert(a1, v18);
  mlir::OperationState::~OperationState(v21);
  MEMORY[0x25F891030](0, 8);
  MEMORY[0x25F891030](0, 8);
  MEMORY[0x25F891030](0, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t mlir::getPrunedAttributeList@<X0>(mlir::Operation *this@<X0>, uint64_t a2@<X1>, const unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0x800000000;
  if (a3)
  {
    v6 = a2;
    v7 = a2 + 16 * a3;
    do
    {
      v8 = *v6;
      v9 = *(v6 + 8);
      v6 += 16;
      v10 = llvm::xxh3_64bits(v8, v9, a3);
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(&v19, v8, v9, v10);
    }

    while (v6 != v7);
  }

  *a4 = a4 + 2;
  a4[1] = 0x300000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = *(AttrDictionary + 16);
  if (v12)
  {
    v13 = *(AttrDictionary + 8);
    v14 = &v13[2 * v12];
    do
    {
      v15 = *v13;
      v16 = v13[1];
      v17 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::find(&v19, *(*v13 + 16), *(*v13 + 24));
      if (v19 + 8 * v20 == v17)
      {
        llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(a4, v15, v16);
      }

      v13 += 2;
    }

    while (v13 != v14);
  }

  return llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(&v19);
}

uint64_t llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

unint64_t mlir::getConstantIntValue(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v1)
  {
    v14 = 1;
    v15 = 0;
    v12 = &v13;
    v13 = 0;
    v2 = *(v1 + 8) & 7;
    v3 = v2 == 7;
    if (v2 == 7)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      goto LABEL_8;
    }

    v7 = *(v4 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v4 + 24 * *(v4 + 16);
      v9 = (v8 + 120);
      if (v8 == -120)
      {
LABEL_8:
        v5 = 0;
        LOBYTE(v6) = 0;
        return v5 | v6;
      }
    }

    else
    {
      v9 = (v4 + 16 * v7 + 16);
    }

    if (mlir::detail::constant_int_value_binder::match(&v12, v9))
    {
      if (v14 > 0x40)
      {
        v6 = *v13;
      }

      else if (v14)
      {
        v6 = (v13 << -v14) >> -v14;
      }

      else
      {
        v6 = 0;
      }

      v5 = v6 & 0xFFFFFFFFFFFFFF00;
    }

    else
    {
      LOBYTE(v6) = 0;
      v5 = 0;
    }

    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x25F891010](v13, 0x1000C8000313F17);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    v5 = 0;
    if (v1 && (a1 & 4) == 0)
    {
      if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v10 = *(v1 + 24);
        if (v10 > 0x40)
        {
          operator new[]();
        }

        if (v10)
        {
          v6 = (*(v1 + 16) << -v10) >> -v10;
        }

        else
        {
          v6 = 0;
        }

        v5 = v6 & 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        LOBYTE(v6) = 0;
        v5 = 0;
      }
    }
  }

  return v5 | v6;
}

void mlir::dispatchIndexOpFoldResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v4)
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a2, v4);
    v5 = a3;
    v6 = 0x8000000000000000;
  }

  else
  {
    v7 = *(v4 + 24);
    if (v7 > 0x40)
    {
      operator new[]();
    }

    if (v7)
    {
      v6 = (*(v4 + 16) << -v7) >> -v7;
    }

    else
    {
      v6 = 0;
    }

    v5 = a3;
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(v5, v6);
}

unint64_t mlir::getAsOpFoldResult(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v8 = &v9;
    v9 = 0;
    v2 = *(result + 8) & 7;
    v3 = v2 == 7;
    if (v2 == 7)
    {
      v4 = 0;
    }

    else
    {
      v4 = result;
    }

    if (v3)
    {
      return v1 | 4;
    }

    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16);
      v7 = v6 + 120;
      if (v6 == -120)
      {
        return v1 | 4;
      }
    }

    else
    {
      v7 = v4 + 16 * v5 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v8, v7))
    {
      return v9 & 0xFFFFFFFFFFFFFFFBLL;
    }

    return v1 | 4;
  }

  return result;
}

uint64_t mlir::isEqualConstantIntOrValue(uint64_t a1, uint64_t a2)
{
  ConstantIntValue = mlir::getConstantIntValue(a1);
  v6 = v5;
  v7 = mlir::getConstantIntValue(a2);
  if ((v6 & 1) != 0 && (v8 & 1) != 0 && ConstantIntValue == v7)
  {
    return 1;
  }

  v10 = (a1 & 0xFFFFFFFFFFFFFFF8) != 0 && (a1 & 0xFFFFFFFFFFFFFFF8) == (a2 & (a2 << 61 >> 63) & 0xFFFFFFFFFFFFFFF8);
  return (a1 & 4) != 0 && v10;
}

void mlir::getMixedValues(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  LODWORD(v7) = a2;
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a3;
  v14[1] = a4;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (a2 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 2, a2, 8);
  }

  v7 = v7;
  if (v7)
  {
    v10 = 0;
    do
    {
      if (*a1 == 0x8000000000000000)
      {
        v11 = mlir::ValueRange::dereference_iterator(v14, v10++) | 4;
      }

      else
      {
        v12 = mlir::IntegerType::get(a5, 64, 0);
        v11 = mlir::IntegerAttr::get(v12, *a1) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a6, v11);
      ++a1;
      --v7;
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void mlir::decomposeMixedValues(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x600000000;
  v9[0] = v10;
  v9[1] = 0x600000000;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      if ((*v4 & 4) != 0 || (*v4 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v11, 0x8000000000000000);
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v9, *v4 & 0xFFFFFFFFFFFFFFF8);
      }

      else
      {
        v8 = *v4 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v8);
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v11, Int);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  std::pair<llvm::SmallVector<long long,6u>,llvm::SmallVector<mlir::Value,6u>>::pair[abi:nn200100]<llvm::SmallVector<long long,6u>&,llvm::SmallVector<mlir::Value,6u>&,0>(a2, v11, v9);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::constantTripCount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    ConstantIntValue = mlir::getConstantIntValue(a1);
    if (v8 & 1) != 0 && (v9 = ConstantIntValue, v10 = mlir::getConstantIntValue(a2), (v11) && (v12 = v10, v13 = mlir::getConstantIntValue(a3), (v14))
    {
      v3 = v12 - v9;
      if (v12 != v9)
      {
        if ((v13 ^ v3) < 0)
        {
          v3 /= v13;
        }

        else
        {
          if (v13 < 0)
          {
            v15 = v3 + 1;
          }

          else
          {
            v15 = v3 - 1;
          }

          v3 = v15 / v13 + 1;
        }
      }

      v4 = v3 & 0xFFFFFFFFFFFFFF00;
      v3 = v3;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }
  }

  return v4 | v3;
}

uint64_t mlir::foldDynamicIndexList(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 8 * v3;
    while (1)
    {
      v9 = *v7;
      if ((*v7 & 4) == 0)
      {
        goto LABEL_17;
      }

      v15 = &v16;
      v16 = 0;
      v10 = v9 & 0xFFFFFFFFFFFFFFF8;
      if ((~*(v10 + 8) & 7) == 0)
      {
        v10 = 0;
      }

      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = *(v10 + 8) & 7;
      if (v11 != 6)
      {
        break;
      }

      v12 = v10 + 24 * *(v10 + 16);
      v13 = v12 + 120;
      if (v12 != -120)
      {
        goto LABEL_11;
      }

LABEL_17:
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        return v6 & 1;
      }
    }

    v13 = v10 + 16 * v11 + 16;
LABEL_11:
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v15, v13) && (!a2 || (mlir::getConstantIntValue(v16 & 0xFFFFFFFFFFFFFFFBLL) & 0x8000000000000000) == 0) && (!a3 || mlir::getConstantIntValue(v16 & 0xFFFFFFFFFFFFFFFBLL)))
    {
      *v7 = v16 & 0xFFFFFFFFFFFFFFFBLL;
      v6 = 1;
    }

    goto LABEL_17;
  }

  v6 = 0;
  return v6 & 1;
}

void *std::pair<llvm::SmallVector<long long,6u>,llvm::SmallVector<mlir::Value,6u>>::pair[abi:nn200100]<llvm::SmallVector<long long,6u>&,llvm::SmallVector<mlir::Value,6u>&,0>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(a1, a2);
  }

  a1[8] = a1 + 10;
  a1[9] = 0x600000000;
  if (*(a3 + 8))
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=((a1 + 8), a3);
  }

  return a1;
}

void mlir::tensor::TensorDialect::TensorDialect(mlir::tensor::TensorDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "tensor";
  *(this + 2) = 6;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E9B088;
  mlir::MLIRContext::loadDialect<mlir::affine::AffineDialect>(a2, a2, a3, a4);
  mlir::MLIRContext::loadDialect<mlir::arith::ArithDialect>(*(this + 4), v5, v6, v7);
  mlir::MLIRContext::loadDialect<mlir::complex::ComplexDialect>(*(this + 4), v8, v9, v10);
  mlir::tensor::TensorDialect::initialize(this);
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::affine::AffineDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "affine", 6, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "affine", 6uLL, &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::affine::AffineDialect * mlir::MLIRContext::getOrLoadDialect<mlir::affine::AffineDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::complex::ComplexDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "complex", 7, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "complex", 7uLL, &mlir::detail::TypeIDResolver<mlir::complex::ComplexDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::complex::ComplexDialect * mlir::MLIRContext::getOrLoadDialect<mlir::complex::ComplexDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::tensor::TensorDialect::~TensorDialect(mlir::tensor::TensorDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::BitcastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::BitcastOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::tensor::BitcastOp::verifyInvariantsImpl(&v9)))
  {
    v7 = mlir::impl::verifyCastInterfaceOp(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::CastOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v9 = a1, mlir::tensor::CastOp::verifyInvariantsImpl(&v9)))
  {
    v7 = mlir::impl::verifyCastInterfaceOp(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::CollapseShapeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::CollapseShapeOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "collapsed", 9);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::CollapseShapeOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::CollapseShapeOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::CollapseShapeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::CollapseShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    return mlir::tensor::CollapseShapeOp::verify(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ConcatOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ConcatOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "concat", 6);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::ConcatOp::fold(&v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23460))
  {
    v1 = llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>();
    _MergedGlobals_51 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23460);
  }

  return _MergedGlobals_51;
}

uint64_t llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23478))
  {
    qword_27FC23468 = llvm::detail::getTypeNameImpl<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>();
    unk_27FC23470 = v1;
    __cxa_guard_release(&qword_27FC23478);
  }

  return qword_27FC23468;
}

const char *llvm::detail::getTypeNameImpl<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ReifyRankedShapedTypeOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ConcatOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (v7 = a1, mlir::tensor::ConcatOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::ConcatOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::DimOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "dim", 3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ShapedDimOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[144];
}

uint64_t llvm::getTypeName<mlir::ShapedDimOpInterface>()
{
  {
    llvm::getTypeName<mlir::ShapedDimOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface>();
    *algn_27FC1B498 = v1;
  }

  return llvm::getTypeName<mlir::ShapedDimOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedDimOpInterface]";
  v6 = 88;
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

uint64_t mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::inferResultRanges(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::intrange::detail::defaultInferResultRangesFromOptional(v6, InterfaceFor, a3, a4);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  *v19 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v16;
  v22[1] = v15;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22) & 1) == 0)
  {
    v23 = "tensor.dim";
    v24 = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v15 = a2;
  v16[0] = v7;
  v16[1] = v8;
  v17 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = a3;
  v21 = a4;
  v12 = mlir::tensor::DimOp::fold(&v15, v16);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v12 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[12] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v11[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v11[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v11[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23488))
  {
    v9 = llvm::getTypeName<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>();
    qword_27FC23480 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23488);
  }

  v11[9] = qword_27FC23480;
  v11[10] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[139];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>();
    unk_27FC1B470 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<Empty>]";
  v6 = 121;
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

uint64_t llvm::getTypeName<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC234A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234A0))
  {
    qword_27FC23490 = llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>();
    *algn_27FC23498 = v1;
    __cxa_guard_release(&qword_27FC234A0);
  }

  return qword_27FC23490;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedDimOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::DimOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v8 = a1, mlir::tensor::DimOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::detail::verifyShapedDimOpInterface(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::EmptyOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (v7 = a1, mlir::tensor::EmptyOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::EmptyOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::foldHook(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::printAssembly(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::ExpandShapeOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ExpandShapeOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "expanded", 8);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::ExpandShapeOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::ExpandShapeOp::fold(&v12, v13);
  if (v9 < 8 || (a2 - 16) == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ExpandShapeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::tensor::ExpandShapeOp *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && (v7 = a1, mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::ExpandShapeOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "extracted", 9);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::tensor::ExtractOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "tensor.extract";
      v23 = 14;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v15 = a2;
  v16[0] = v7;
  v16[1] = v8;
  v17 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = a3;
  v21 = a4;
  v12 = mlir::tensor::ExtractOp::fold(&v15, v16);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v12 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ExtractOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && (v7 = a1, mlir::tensor::ExtractOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::ExtractOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "extracted_slice", 15);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 88);
  LODWORD(v3) = *(v3 + 92);
  if ((v2 & 0x800000) != 0)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = 0;
  }

  return v5 + 32 * v4;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  LODWORD(v3) = v3[24];
  if ((v2 & 0x800000) != 0)
  {
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
  }

  return v6 + 32 * (v5 + v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  v6 = v3[24];
  LODWORD(v3) = v3[25];
  if ((v2 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * (v6 + v5 + v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getStaticOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getStaticSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getStaticStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
  v5 = 8 * a3;
  do
  {
    v6 = *v4++;
    if (v6 == 0x8000000000000000)
    {
      ++v3;
    }

    v5 -= 8;
  }

  while (v5);
  return (v3 + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
    v5 = 8 * a3;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
    v7 = (v3 + 1);
  }

  else
  {
    v7 = 1;
  }

  return *(*(a2 + 72) + 32 * v7 + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicSize(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicSize + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicStride = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicStride(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicStride + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v11, &v12);
  v2 = v12;
  if (v13)
  {
    v3 = 8 * v13 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v14)
  {
    free(v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::tensor::ExtractSliceOp::getODSOperands(mlir::tensor::ExtractSliceOp *this, unsigned int a2)
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

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(mlir::tensor::ExtractSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(a1, 1u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(mlir::tensor::ExtractSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(a1, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(mlir::tensor::ExtractSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(a1, 3u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicSize(mlir::tensor::ExtractSliceOp *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 24);
    v4 = 8 * a2;
    do
    {
      v5 = *v3++;
      if (v5 == 0x8000000000000000)
      {
        ++v2;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = v2 + 1;
  }

  else
  {
    v6 = 1;
  }

  mlir::tensor::ExtractSliceOp::getODSOperands(a1, 1u);
  return (v6 + v7);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicStride(mlir::tensor::ExtractSliceOp *this, unsigned int a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 24);
    v5 = 8 * a2;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
  }

  mlir::tensor::ExtractSliceOp::getODSOperands(this, 1u);
  v8 = v7;
  mlir::tensor::ExtractSliceOp::getODSOperands(this, 2u);
  return (v8 + v9 + v3 + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::isSameAs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5)
{
  v9 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v9, InterfaceFor, a2, a3, a4, a5);
}

uint64_t mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(mlir::tensor::ExtractSliceOp *a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(a1, &v10);
  v1 = v10;
  if (v11)
  {
    v2 = 8 * v11 - 8;
    do
    {
      v3 = *v1++;
      v4 = mlir::getConstantIntValue(v3) == 1;
      v6 = v5 & v4;
      v7 = v6 != 1 || v2 == 0;
      v2 -= 8;
    }

    while (!v7);
    v1 = v10;
  }

  else
  {
    v6 = 1;
  }

  if (v1 != v12)
  {
    free(v1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>();
      mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[149];
}

uint64_t llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>()
{
  {
    llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface>();
    unk_27FC1B4C0 = v1;
  }

  return llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface]";
  v6 = 98;
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::ExtractSliceOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::ExtractSliceOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[14] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[13] = v3;
  do
  {
    v5 = v9[v4];
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

uint64_t mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC234B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234B0))
  {
    v1 = llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>();
    qword_27FC234A8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC234B0);
  }

  return qword_27FC234A8;
}

uint64_t llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC234C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234C8))
  {
    qword_27FC234B8 = llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>();
    unk_27FC234C0 = v1;
    __cxa_guard_release(&qword_27FC234C8);
  }

  return qword_27FC234B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ExtractSliceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5) && (v8 = a1, mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(&v8)) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::verifyTrait(a1) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::tensor::ExtractSliceOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::verifyTrait(void **a1)
{
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::FromElementsOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "from_elements", 13);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v15 = a2;
  v16[0] = v7;
  v16[1] = v8;
  v17 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = a3;
  v21 = a4;
  v12 = mlir::tensor::FromElementsOp::fold(&v15, v16);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v12 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::FromElementsOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v7 = a1;
    return mlir::tensor::FromElementsOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::GatherOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::GatherOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "gather", 6);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::GatherOpGenericAdaptorBase::GatherOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::GatherOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::GatherOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v7 = a1, mlir::tensor::GatherOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::GatherOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::GenerateOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "generated", 9);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC234D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234D8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>();
    qword_27FC234D0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC234D8);
  }

  return qword_27FC234D0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC234F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234F0))
  {
    qword_27FC234E0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>();
    *algn_27FC234E8 = v1;
    __cxa_guard_release(&qword_27FC234F0);
  }

  return qword_27FC234E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<Empty>]";
  v6 = 142;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::GenerateOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_21;
  }

  v5 = a1[11];
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) == 0)
  {
LABEL_19:
    v20 = a1;
    if (!mlir::tensor::GenerateOp::verifyInvariantsImpl(&v20))
    {
      goto LABEL_21;
    }

    v20 = a1;
    v14 = mlir::tensor::GenerateOp::verify(&v20);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = (((&a1[4 * ((v5 >> 23) & 1) + 17] + ((v5 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
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
      v18 = 257;
      mlir::Operation::emitOpError(a1, v17, &v20);
      if (v20)
      {
        mlir::Diagnostic::operator<<<26ul>(v21, "expects a non-empty block");
      }

      v13 = v21[192];
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_10:
    ++v7;
    v8 += 3;
    if (v6 == v7)
    {
      goto LABEL_19;
    }
  }

  v19 = v7;
  v17[0] = "expects region #";
  v18 = 259;
  mlir::Operation::emitOpError(a1, v17, &v20);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v19);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  if (v12 != 1)
  {
    goto LABEL_19;
  }

LABEL_21:
  v14 = 0;
LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v1 = a1[11];
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) != 0)
  {
    v3 = (((&a1[4 * ((v1 >> 23) & 1) + 17] + ((v1 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    do
    {
      if (v3 != *v3)
      {
        v4 = v3[1];
        if (v4)
        {
          v5 = v4 - 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = *(*(v5 + 32) + 48);
        if (*(v6 + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
        {
          v12 = 1283;
          v11[0] = "expects regions to end with '";
          v11[2] = "tensor.yield";
          v11[3] = 12;
          v13[0] = v11;
          v13[2] = "', found '";
          v14 = 770;
          v8 = *(v6 + 8);
          v15 = v13;
          v16 = *(v8 + 16);
          v17 = 1282;
          v18[0] = &v15;
          v18[2] = "'";
          v19 = 770;
          mlir::Operation::emitOpError(a1, v18, &v20);
          mlir::Diagnostic::attachNote(v21, 0, 0);
        }
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v20 = a1;
  v7 = mlir::tensor::GenerateOp::verifyRegions(&v20);
  v9 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "inserted", 8);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  v3 = *(a1 + 72) + 32 * mlir::tensor::InsertOp::getODSOperandIndexAndLength(&v7, 1u);
  v4 = *(v3 + 16);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = (v3 - v5) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::tensor::InsertOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "tensor.insert";
      v23 = 13;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 48);
  v15[0] = *(a2 + 56);
  v15[1] = v7;
  v16 = 1;
  v8 = *(a2 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v10 = ((a2 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v17 = v10;
  v18 = v9;
  v19 = a3;
  v20 = a4;
  v11 = mlir::tensor::InsertOp::fold(v14, v15);
  if (v11 < 8 || a2 - 16 == (v11 & ((v11 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v11 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v11);
    result = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::InsertOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) && (v7 = a1, (mlir::tensor::InsertOp::verifyInvariantsImpl(&v7) & 1) != 0))
  {
    v7 = a1;
    return mlir::tensor::InsertOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32) && *(a3 + 40) == *(a2 + 40);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "inserted_slice", 14);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72) + 32 * *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 88);
  v3 = *(v2 + 16);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = (v2 - v4) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getArrayAttrMaxRanks(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 36))
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *((*(v2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v3 | (v3 << 32);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  LODWORD(v3) = v3[24];
  if ((v2 & 0x800000) != 0)
  {
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
  }

  return v6 + 32 * (v5 + v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  v6 = v3[24];
  LODWORD(v3) = v3[25];
  if ((v2 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * (v6 + v5 + v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 88);
  LODWORD(v3) = *(v3 + 104);
  if ((v2 & 0x800000) != 0)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = 0;
  }

  return v5 + 32 * vaddvq_s32(v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getStaticOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getStaticSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getStaticStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 2;
  }

  v3 = 0;
  v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
  v5 = 8 * a3;
  do
  {
    v6 = *v4++;
    if (v6 == 0x8000000000000000)
    {
      ++v3;
    }

    v5 -= 8;
  }

  while (v5);
  return (v3 + 2);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
    v5 = 8 * a3;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
    v7 = (v3 + 2);
  }

  else
  {
    v7 = 2;
  }

  return *(*(a2 + 72) + 32 * v7 + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicSize(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicSize + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicStride = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicStride(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicStride + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v11, &v12);
  v2 = v12;
  if (v13)
  {
    v3 = 8 * v13 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 1;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v14)
  {
    free(v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v11, &v12);
  v2 = v12;
  if (v13)
  {
    v3 = 8 * v13 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v14)
  {
    free(v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::tensor::InsertSliceOp::getODSOperands(mlir::tensor::InsertSliceOp *this, unsigned int a2)
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

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(mlir::tensor::InsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(mlir::tensor::InsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 3u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(mlir::tensor::InsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 4u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicSize(mlir::tensor::InsertSliceOp *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 24);
    v4 = 8 * a2;
    do
    {
      v5 = *v3++;
      if (v5 == 0x8000000000000000)
      {
        ++v2;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = v2 + 2;
  }

  else
  {
    v6 = 2;
  }

  mlir::tensor::InsertSliceOp::getODSOperands(a1, 2u);
  return (v6 + v7);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicStride(mlir::tensor::InsertSliceOp *this, unsigned int a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 24);
    v5 = 8 * a2;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
  }

  mlir::tensor::InsertSliceOp::getODSOperands(this, 2u);
  v8 = v7;
  mlir::tensor::InsertSliceOp::getODSOperands(this, 3u);
  return (v8 + v9 + v3 + 2);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::isSameAs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5)
{
  v9 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v9, InterfaceFor, a2, a3, a4, a5);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::tensor::InsertSliceOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "tensor.insert_slice";
      v23 = 19;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::InsertSliceOp::fold(&v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[16] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[13] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[14] = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[15] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 15);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::InsertSliceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5) && (v15 = a1, (mlir::tensor::InsertSliceOp::verifyInvariantsImpl(&v15) & 1) != 0) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::verifyTrait(a1) & 1) != 0))
  {
    v15 = a1;
    v13 = mlir::tensor::InsertSliceOp::verify(&v15, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::verifyTrait(void **a1)
{
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "pack", 4);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72) + 32 * *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 88);
  v3 = *(v2 + 16);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = (v2 - v4) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::tensor::RelayoutOpInterface>();
      mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[162];
}

uint64_t llvm::getTypeName<mlir::tensor::RelayoutOpInterface>()
{
  {
    llvm::getTypeName<mlir::tensor::RelayoutOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface>();
    *algn_27FC1B528 = v1;
  }

  return llvm::getTypeName<mlir::tensor::RelayoutOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::RelayoutOpInterface]";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::tensor::PackOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "tensor.pack";
      v23 = 11;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::PackOpGenericAdaptorBase::PackOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::PackOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[15] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[13] = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[14] = v3;
  do
  {
    v5 = v9[v4];
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

uint64_t mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23500))
  {
    v1 = llvm::getTypeName<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>();
    qword_27FC234F8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23500);
  }

  return qword_27FC234F8;
}

uint64_t llvm::getTypeName<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23518))
  {
    qword_27FC23508 = llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>();
    unk_27FC23510 = v1;
    __cxa_guard_release(&qword_27FC23518);
  }

  return qword_27FC23508;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::RelayoutOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::PackOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5) && (v8 = a1, mlir::tensor::PackOp::verifyInvariantsImpl(&v8))))
  {
    v8 = a1;
    v6 = mlir::tensor::PackOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::PadOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "padded", 6);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::PadOpGenericAdaptorBase::PadOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::PadOp::fold(&v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[14] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[13] = v3;
  do
  {
    v5 = v9[v4];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::PadOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_25;
  }

  v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5))
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 44);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) == 0)
  {
LABEL_23:
    v21 = a1;
    if (!mlir::tensor::PadOp::verifyInvariantsImpl(&v21))
    {
      goto LABEL_25;
    }

    v21 = a1;
    v15 = mlir::tensor::PadOp::verify(&v21);
    goto LABEL_26;
  }

  v8 = 0;
  v9 = (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v9 == *v9)
    {
      goto LABEL_14;
    }

    v10 = v9[1];
    if (v9 == v10 || v9 != *(v10 + 8))
    {
      break;
    }

    if (*(v10 + 24) == v10 + 24)
    {
      v19 = 257;
      mlir::Operation::emitOpError(a1, v18, &v21);
      if (v21)
      {
        mlir::Diagnostic::operator<<<26ul>(v22, "expects a non-empty block");
      }

      v14 = v22[192];
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
      if (v14)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    ++v8;
    v9 += 3;
    if (v7 == v8)
    {
      goto LABEL_23;
    }
  }

  v20 = v8;
  v18[0] = "expects region #";
  v19 = 259;
  mlir::Operation::emitOpError(a1, v18, &v21);
  v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v20);
  v12 = v11;
  if (*v11)
  {
    mlir::Diagnostic::operator<<<23ul>((v11 + 1), " to have 0 or 1 blocks");
  }

  v13 = *(v12 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  if (v13 != 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  v15 = 0;
LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v1 = a1[11];
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) != 0)
  {
    v3 = (((&a1[4 * ((v1 >> 23) & 1) + 17] + ((v1 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    do
    {
      if (v3 != *v3)
      {
        v4 = v3[1];
        if (v4)
        {
          v5 = v4 - 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = *(*(v5 + 32) + 48);
        if (*(v6 + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
        {
          v12 = 1283;
          v11[0] = "expects regions to end with '";
          v11[2] = "tensor.yield";
          v11[3] = 12;
          v13[0] = v11;
          v13[2] = "', found '";
          v14 = 770;
          v8 = *(v6 + 8);
          v15 = v13;
          v16 = *(v8 + 16);
          v17 = 1282;
          v18[0] = &v15;
          v18[2] = "'";
          v19 = 770;
          mlir::Operation::emitOpError(a1, v18, &v20);
          mlir::Diagnostic::attachNote(v21, 0, 0);
        }
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v20 = a1;
  v7 = mlir::tensor::PadOp::verifyRegions(&v20);
  v9 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32) && *(a3 + 40) == *(a2 + 40);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  LODWORD(v3) = v3[24];
  if ((v2 & 0x800000) != 0)
  {
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
  }

  return v6 + 32 * (v5 + v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  v6 = v3[24];
  LODWORD(v3) = v3[25];
  if ((v2 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * (v6 + v5 + v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 88);
  LODWORD(v3) = *(v3 + 104);
  if ((v2 & 0x800000) != 0)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = 0;
  }

  return v5 + 32 * vaddvq_s32(v4);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getStaticOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getStaticSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getStaticStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  result = *(v2 + 24);
  v4 = *(v2 + 32) >> 3;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
  v5 = 8 * a3;
  do
  {
    v6 = *v4++;
    if (v6 == 0x8000000000000000)
    {
      ++v3;
    }

    v5 -= 8;
  }

  while (v5);
  return (v3 + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
    v5 = 8 * a3;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
    v7 = (v3 + 1);
  }

  else
  {
    v7 = 1;
  }

  return *(*(a2 + 72) + 32 * v7 + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicSize(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicSize + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicStride = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicStride(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicStride + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::isSameAs(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v10 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v10, InterfaceFor, a3, a4, a5, a6);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v11, &v12);
  v2 = v12;
  if (v13)
  {
    v3 = 8 * v13 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 1;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v14)
  {
    free(v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v11, &v12);
  v2 = v12;
  if (v13)
  {
    v3 = 8 * v13 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v14)
  {
    free(v2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(mlir::tensor::ParallelInsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(mlir::tensor::ParallelInsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 3u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(mlir::tensor::ParallelInsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 4u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v10);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v10);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicSize(mlir::tensor::ParallelInsertSliceOp *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 24);
    v4 = 8 * a2;
    do
    {
      v5 = *v3++;
      if (v5 == 0x8000000000000000)
      {
        ++v2;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = v2 + 1;
  }

  else
  {
    v6 = 1;
  }

  mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 2u);
  return (v6 + v7);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicStride(mlir::tensor::ParallelInsertSliceOp *this, unsigned int a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 24);
    v5 = 8 * a2;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
  }

  mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 2u);
  v8 = v7;
  mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 3u);
  return (v8 + v9 + v3 + 1);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[7] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ParallelInsertSliceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5) && (v8 = a1, (mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl(&v8) & 1) != 0) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::verifyTrait(a1) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::tensor::ParallelInsertSliceOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::verifyTrait(void **a1)
{
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::RankOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::RankOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  *v19 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v16;
  v22[1] = v15;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22) & 1) == 0)
  {
    v23 = "tensor.rank";
    v24 = 11;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::RankOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v7 = mlir::tensor::RankOp::fold(v10);
  if (v7 < 8 || a2 - 16 == (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v7 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::RankOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::tensor::RankOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ReshapeOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "reshape", 7);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v15 = a2;
  v16[0] = v7;
  v16[1] = v8;
  v17 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = a3;
  v21 = a4;
  v12 = mlir::tensor::ReshapeOp::fold(&v15, v16);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v12 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ReshapeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (v7 = a1, mlir::tensor::ReshapeOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::tensor::ReshapeOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "scatter", 7);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ScatterOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3) && (v7 = a1, mlir::tensor::ScatterOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::tensor::ScatterOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v15 = a2;
  v16[0] = v7;
  v16[1] = v8;
  v17 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v18 = v11;
  v19 = v10;
  v20 = a3;
  v21 = a4;
  v12 = mlir::tensor::SplatOp::fold(&v15, v16);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v12 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::SplatOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && (v7 = a1, mlir::tensor::SplatOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::SplatOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "unpack", 6);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  v3 = *(a1 + 72) + 32 * mlir::tensor::UnPackOp::getODSOperandIndexAndLength(&v7, 1u);
  v4 = *(v3 + 16);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = (v3 - v5) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::tensor::UnPackOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "tensor.unpack";
      v23 = 13;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::UnPackOpGenericAdaptorBase::UnPackOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::UnPackOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[14] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[13] = v3;
  do
  {
    v5 = v9[v4];
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::UnPackOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) && (v7 = a1, (mlir::tensor::UnPackOp::verifyInvariantsImpl(&v7) & 1) != 0))
  {
    v7 = a1;
    v5 = mlir::tensor::UnPackOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
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

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v11[12] = *MEMORY[0x277D85DE8];
  v11[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v11[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v11[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v11[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23528))
  {
    v9 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>();
    qword_27FC23520 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23528);
  }

  v11[4] = qword_27FC23520;
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

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23540))
  {
    qword_27FC23530 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>();
    *algn_27FC23538 = v1;
    __cxa_guard_release(&qword_27FC23540);
  }

  return qword_27FC23530;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::tensor::GenerateOp, mlir::tensor::PadOp>::Impl<Empty>]";
  v6 = 146;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::YieldOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(*(v9 + 48) + 16);
        if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v17 = 257;
  mlir::Operation::emitOpError(a1, v16, &v21);
  if (v21)
  {
    mlir::Diagnostic::operator<<<19ul>(v22, "expects parent op ");
    if (v21)
    {
      v18 = "to be one of '";
      v20 = 259;
      mlir::Diagnostic::operator<<(v22, &v18);
      if (v21)
      {
        v20 = 262;
        v18 = "tensor.generate";
        v19 = 15;
        mlir::Diagnostic::operator<<(v22, &v18);
        v18 = ", ";
        v20 = 259;
        mlir::Diagnostic::operator<<(v22, &v18);
        v20 = 262;
        v18 = "tensor.pad";
        v19 = 10;
        mlir::Diagnostic::operator<<(v22, &v18);
        if (v21)
        {
          mlir::Diagnostic::operator<<<2ul>(v22, "'");
        }
      }
    }
  }

  v12 = v22[192];
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  if ((v12 & 1) == 0)
  {
LABEL_20:
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
  }

  else
  {
LABEL_18:
    IsTerminator = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t anonymous namespace::TensorInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23550))
  {
    PayloadReplacementOp = llvm::getTypeName<mlir::transform::FindPayloadReplacementOpInterface>();
    qword_27FC23548 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(PayloadReplacementOp, v2);
    __cxa_guard_release(&qword_27FC23550);
  }

  return qword_27FC23548;
}

uint64_t llvm::getTypeName<mlir::transform::FindPayloadReplacementOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23568))
  {
    qword_27FC23558 = llvm::detail::getTypeNameImpl<mlir::transform::FindPayloadReplacementOpInterface>();
    unk_27FC23560 = v1;
    __cxa_guard_release(&qword_27FC23568);
  }

  return qword_27FC23558;
}

const char *llvm::detail::getTypeNameImpl<mlir::transform::FindPayloadReplacementOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::transform::FindPayloadReplacementOpInterface]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::TilingInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23578))
  {
    v1 = llvm::getTypeName<mlir::TilingInterface>();
    qword_27FC23570 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23578);
  }

  return qword_27FC23570;
}

uint64_t llvm::getTypeName<mlir::TilingInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23590))
  {
    qword_27FC23580 = llvm::detail::getTypeNameImpl<mlir::TilingInterface>();
    *algn_27FC23588 = v1;
    __cxa_guard_release(&qword_27FC23590);
  }

  return qword_27FC23580;
}

const char *llvm::detail::getTypeNameImpl<mlir::TilingInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TilingInterface]";
  v6 = 83;
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

char *mlir::tensor::TensorDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, _DWORD *a4, uint64_t **a5)
{
  v11 = a4;
  result = mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  if (!result)
  {
    if (mlir::complex::ConstantOp::isBuildableWith(a3, a4))
    {
      v10 = a3;
      return mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(a2, a5, &v11, &v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::complex::ConstantOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v15[2] = &v16;
  v15[3] = 0x400000000;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  v9 = *a4;
  v14 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(v15) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v17, &v14, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t mlir::tensor::getMixedSize(mlir::arith::ConstantIndexOp *a1, uint64_t a2, uint64_t a3, mlir::OperationState *a4)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  v4 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v13;
  v12 = 0x600000000;
  v5 = *(*(v4 + 8) + 8 * a4);
  if (v5 == 0x8000000000000000)
  {
    v6 = mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, a2, &v10, &v9) | 4;
  }

  else
  {
    v6 = mlir::Builder::getIndexAttr(a1, v5) & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v11 != v13)
  {
    free(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, uint64_t *a3, mlir::OperationState **a4)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7[0] = v8;
  v7[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, v7, a2, a3, a4);
  v4 = *v7[0];
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::tensor::getMixedSizes(mlir::arith::ConstantIndexOp *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  *a4 = a4 + 2;
  a4[1] = 0x600000000;
  if (*(v5 + 16) >= 1)
  {
    v9 = 0;
    do
    {
      MixedSize = mlir::tensor::getMixedSize(a1, a2, a3, v9);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a4, MixedSize);
      v9 = (v9 + 1);
    }

    while (v9 < *(v5 + 16));
  }
}

BOOL mlir::tensor::isSameTypeWithoutEncoding(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      return 0;
    }

    v6 = *(a1 + 16);
    if (v6 != *(a2 + 16) || memcmp(*(a1 + 8), *(a2 + 8), 8 * v6))
    {
      return 0;
    }

    return *(a1 + 24) == *(a2 + 24);
  }

  else
  {
    return a1 == a2;
  }
}

BOOL mlir::tensor::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v26[7] = v4;
    v26[8] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(*v10 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }

    v18 = *(*v13 + 136);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v20 = 3;
    }

    else
    {
      if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v19 = 0;
        goto LABEL_25;
      }

      v20 = 1;
    }

    v19 = v13[v20];
LABEL_25:
    v26[0] = v19;
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v26);
    v22 = *(*v16 + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 3;
    }

    else
    {
      if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v23 = 0;
        goto LABEL_31;
      }

      v24 = 1;
    }

    v23 = v16[v24];
LABEL_31:
    v26[0] = v23;
    if (IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(v26))
    {
      return mlir::verifyCompatibleShape(v13, v16);
    }

    return 0;
  }

  return v7;
}

uint64_t mlir::tensor::preservesStaticInformation(void *a1, void *a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v2[3] != v3[3])
  {
    return 0;
  }

  v5 = v2[2];
  if (v5 != v3[2] || v2[4] != v3[4])
  {
    return 0;
  }

  if (v5)
  {
    v7 = v2[1];
    v8 = v3[1];
    v9 = 8 * v5 - 8;
    result = 1;
    while (1)
    {
      v10 = v9;
      if (*v7 != 0x8000000000000000 && *v8 == 0x8000000000000000)
      {
        break;
      }

      ++v7;
      ++v8;
      v9 -= 8;
      if (!v10)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void mlir::tensor::getUpdatedOperandsAfterCastOpFolding(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28[0] = a2;
  v28[1] = a3;
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 68);
    if (v7 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v7, 8);
      if ((*(a2 + 46) & 0x80) == 0)
      {
        return;
      }

      LODWORD(v7) = *(a2 + 68);
    }

    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 72);
      v10 = (v9 + 24);
      for (i = 32 * v7; i; i -= 32)
      {
        v12 = *v10;
        if ((~*(*v10 + 8) & 7) != 0)
        {
          v13 = *v10;
        }

        else
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
              goto LABEL_20;
            }
          }

          else
          {
            v15 = v13 + 16 * v14 + 16;
          }

          if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
          {
            v16 = *(v15 + 72);
            v18 = *(v16 + 24);
            v17 = (v16 + 24);
            if (mlir::tensor::preservesStaticInformation((*(v15 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8)))
            {
              v19 = v17;
            }

            else
            {
              v19 = v10;
            }

            v12 = *v19;
          }
        }

LABEL_20:
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, v12);
        DpsInits = mlir::DestinationStyleOpInterface::getDpsInits(v28);
        if (v21)
        {
          v22 = *(v10 - 1);
          if ((*(v22 + 46) & 0x80) != 0)
          {
            v23 = *(v22 + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = (v9 - v23) >> 5;
          v25 = *(DpsInits + 16);
          if ((*(v25 + 46) & 0x80) != 0)
          {
            v26 = *(v25 + 72);
            if (v24 >= ((DpsInits - v26) >> 5))
            {
              goto LABEL_25;
            }
          }

          else if (v24 >= (DpsInits >> 5))
          {
            v26 = 0;
LABEL_25:
            if (v21 + ((DpsInits - v26) >> 5) > v24)
            {
              v27 = *(*(*a1 + 8 * *(a1 + 2) - 8) + 8) & 0xFFFFFFFFFFFFFFF8;
              if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                *(*a4 + 8 * v8++) = v27;
              }
            }
          }
        }

        v9 += 32;
        v10 += 4;
      }
    }
  }
}

BOOL mlir::tensor::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = *(*v7 + 136);
    if (v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v8 + 136);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }

    v16 = *(*v11 + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = 3;
    }

    else
    {
      if (v16 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v17 = 0;
        goto LABEL_25;
      }

      v18 = 1;
    }

    v17 = v11[v18];
LABEL_25:
    v19 = *(*v14 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 3;
    }

    else
    {
      if (v19 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v20 = 0;
        goto LABEL_31;
      }

      v21 = 1;
    }

    v20 = v14[v21];
LABEL_31:
    if (v17 == v20)
    {
      return mlir::verifyCompatibleShape(v11, v14);
    }

    return 0;
  }

  return v5;
}

BOOL mlir::tensor::ConcatOp::verify(mlir::Operation **this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0 || (v3 = *(v2 + 17), !v3))
  {
    v59 = "requires at least one input";
    v61[8] = 259;
    mlir::Operation::emitOpError(v2, &v59, &v62);
    v36 = (v65 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
    goto LABEL_54;
  }

  LODWORD(v4) = 0;
  v59 = v61;
  v60 = 0x600000000;
  v5 = *(v2 + 9) + 24;
  do
  {
    v6 = *(*v5 + 8);
    if (v4 >= HIDWORD(v60))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v4 + 1, 8);
      LODWORD(v4) = v60;
    }

    *(v59 + v4) = v6 & 0xFFFFFFFFFFFFFFF8;
    v4 = (v60 + 1);
    LODWORD(v60) = v60 + 1;
    v5 += 32;
    --v3;
  }

  while (v3);
  v7 = *this;
  if (*(*this + 9))
  {
    v8 = *this - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  v53 = v9;
  v10 = v9[2];
  if (v4)
  {
    v11 = v59;
    v12 = 8 * v4;
    v13 = v12;
    v14 = v59;
    do
    {
      if (*(*v14 + 16) != v10)
      {
        v37 = "rank of concatenated inputs must match result rank";
        goto LABEL_50;
      }

      v14 += 8;
      v13 -= 8;
    }

    while (v13);
    while (v9[3] == *(*v11 + 24))
    {
      v11 += 8;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v37 = "inputs and result element type must match";
LABEL_50:
    v55 = v37;
    v58 = 259;
  }

  else
  {
LABEL_16:
    Dim = mlir::tensor::ConcatOp::getDim(v7);
    if (Dim < v10)
    {
      v16 = Dim;
      v55 = v57;
      v56 = 0x600000000;
      llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v55, v10);
      v17 = v59;
      v18 = v60;
      if (v10 >= 1)
      {
        v19 = 0;
        v20 = v55;
        do
        {
          if (v19 != v16)
          {
            if (v18)
            {
              v21 = 0;
              v22 = 8 * v18;
              v23 = v17;
              v24 = 1;
              while (1)
              {
                v25 = *(*(*v23 + 8) + 8 * v19);
                if (v24)
                {
                  if (v25 != 0x8000000000000000)
                  {
                    v21 = *(*(*v23 + 8) + 8 * v19);
                    v24 = 0;
                  }
                }

                else if (v25 != 0x8000000000000000 && v21 != v25)
                {
                  v51[0] = "static concatenation size mismatch along ";
                  v52 = 259;
                  mlir::Operation::emitOpError(*this, v51, &v62);
                  if (v62)
                  {
                    mlir::Diagnostic::operator<<<28ul>(&v62 + 8, "non-concatenated dimension ");
                    if (v62)
                    {
                      LODWORD(v54[0]) = 2;
                      v54[1] = v19;
                      v40 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, v54, 1);
                      v41 = v63 + 24 * v64;
                      v42 = *v40;
                      *(v41 + 16) = *(v40 + 16);
                      *v41 = v42;
                      ++v64;
                    }
                  }

                  goto LABEL_58;
                }

                ++v23;
                v22 -= 8;
                if (!v22)
                {
                  if (v24)
                  {
                    v21 = 0x8000000000000000;
                  }

                  goto LABEL_35;
                }
              }
            }

            v21 = 0x8000000000000000;
LABEL_35:
            v20[v19] = v21;
          }

          ++v19;
        }

        while (v19 != v10);
      }

      if (v18)
      {
        v27 = 0;
        v28 = 0;
        v29 = 8 * v18;
        v30 = v17;
        do
        {
          v31 = *v30++;
          v32 = *(*(v31 + 8) + 8 * v16);
          v33 = v32 == 0x8000000000000000;
          v34 = v32 + v27;
          v28 |= v33;
          if (v28)
          {
            v27 = 0;
          }

          else
          {
            v27 = v34;
          }

          v29 -= 8;
        }

        while (v29);
        v35 = 0x8000000000000000;
        if ((v28 & 1) == 0)
        {
          v35 = v34;
        }
      }

      else
      {
        v35 = 0;
      }

      v43 = v55;
      *(v55 + v16) = v35;
      v44 = *(*v17 + 24);
      *&v62 = v43;
      *(&v62 + 1) = v56;
      v51[0] = v44;
      v54[0] = 0;
      v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v44 + 32), &v62, v51, v54);
      v54[0] = v45;
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = *(v45 + 8);
        v48 = v9[1];
        v49 = 8 * v46;
        while (*v47 == 0x8000000000000000 || *v48 == 0x8000000000000000 || *v47 == *v48)
        {
          ++v47;
          ++v48;
          v49 -= 8;
          if (!v49)
          {
            goto LABEL_69;
          }
        }

        v51[0] = "result type ";
        v52 = 259;
        mlir::Operation::emitOpError(*this, v51, &v62);
        if (v62)
        {
          mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v62 + 8, &v53);
          if (v62)
          {
            mlir::Diagnostic::operator<<<31ul>(&v62 + 8, "does not match inferred shape ");
            if (v62)
            {
              mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v62 + 8, v54);
              if (v62)
              {
                mlir::Diagnostic::operator<<<14ul>(&v62 + 8, " static sizes");
              }
            }
          }
        }

LABEL_58:
        v36 = (v65 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
      }

      else
      {
LABEL_69:
        v36 = 1;
      }

      if (v55 != v57)
      {
        free(v55);
      }

      goto LABEL_52;
    }

    v55 = "concatenation dim must be less than the tensor rank";
    v58 = 259;
    v7 = *this;
  }

  mlir::Operation::emitOpError(v7, &v55, &v62);
  v36 = (v65 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
LABEL_52:
  if (v59 != v61)
  {
    free(v59);
  }

LABEL_54:
  v38 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t mlir::tensor::ConcatOp::getDim(mlir::tensor::ConcatOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
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
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
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

uint64_t mlir::tensor::ConcatOp::reifyResultShapes(uint64_t *a1, mlir::arith::ConstantIndexOp *a2, void **a3)
{
  v102[8] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 68);
    v7 = *(v5 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v6 = 0;
    v7 = 2;
  }

  v90[0] = v7;
  v90[1] = v6;
  Dim = mlir::tensor::ConcatOp::getDim(v5);
  v84 = Dim;
  v94 = v7;
  v95 = 0;
  v96 = v7;
  v97 = v6;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v88, &v94);
  v10 = v88;
  v9 = v89;
  __src = v93;
  v92 = 0x400000000;
  if (v89 < 5)
  {
    v11 = 0;
    v12 = v93;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v93, v89, 8);
    v11 = v92;
    v12 = __src;
  }

  v13 = 0;
  v14 = &v12[v11];
  do
  {
    v14[v13] = mlir::TypeRange::dereference_iterator(v10, v13);
    ++v13;
  }

  while (v9 != v13);
  v15 = *__src;
  LODWORD(v92) = v92 + v9;
  v16 = *(v15 + 16);
  v94 = &v96;
  v95 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v94, v16);
  v18 = __src;
  v19 = v92;
  v20 = 8 * v92;
  if (v16 >= 1)
  {
    v21 = 0;
    v22 = v94;
    do
    {
      if (v21 != Dim)
      {
        if (v19)
        {
          v23 = 0;
          v24 = v20;
          v25 = v18;
          v26 = 1;
          do
          {
            v27 = *(*(*v25 + 8) + 8 * v21);
            if (v26)
            {
              if (v27 != 0x8000000000000000)
              {
                v26 = 0;
                v23 = *(*(*v25 + 8) + 8 * v21);
              }
            }

            else if (v27 != 0x8000000000000000 && v23 != v27)
            {
              v26 = 0;
              v23 = v17;
            }

            ++v25;
            v17 = v23;
            v24 -= 8;
          }

          while (v24);
          if (v26)
          {
            v29 = 0x8000000000000000;
          }

          else
          {
            v29 = v23;
          }

          v17 = v23;
        }

        else
        {
          v29 = 0x8000000000000000;
        }

        v22[v21] = v29;
      }

      v21 = (v21 + 1);
    }

    while (v21 != v16);
  }

  if (v19)
  {
    v30 = 0;
    v31 = 0;
    v32 = v18;
    v33 = a1;
    do
    {
      v34 = *v32++;
      v35 = *(*(v34 + 8) + 8 * Dim);
      v36 = v35 == 0x8000000000000000;
      v37 = v35 + v31;
      v30 |= v36;
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v37;
      }

      v20 -= 8;
    }

    while (v20);
    v38 = 0x8000000000000000;
    if ((v30 & 1) == 0)
    {
      v38 = v37;
    }
  }

  else
  {
    v38 = 0;
    v33 = a1;
  }

  v39 = v94;
  *(v94 + Dim) = v38;
  v40 = *(*v18 + 24);
  *&v87 = v39;
  *(&v87 + 1) = v95;
  v85 = 0;
  v86 = v40;
  v83 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v40 + 32), &v87, &v86, &v85);
  if (v94 != &v96)
  {
    free(v94);
  }

  if (__src != v93)
  {
    free(__src);
  }

  v41 = v90[0] & 0xFFFFFFFFFFFFFFF8;
  if ((v90[0] & 6) != 0 || !v41)
  {
    if ((v90[0] & 6) == 2 && v41)
    {
      v41 = *(v41 + 24);
    }
  }

  else
  {
    v41 = *v41;
  }

  v88 = v41;
  v42 = *((*(*v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v94 = &v96;
  v95 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(&v94, v42);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, &v94);
  if (v94 != &v96)
  {
    free(v94);
  }

  if (v42 >= 1)
  {
    v43 = 0;
    while (Dim == v43)
    {
LABEL_74:
      v43 = (v43 + 1);
      if (v42 == v43)
      {
        goto LABEL_75;
      }
    }

    v44 = *(*((*(*v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * v43);
    if (v44 == 0x8000000000000000)
    {
      v45 = *(*(v83 + 8) + 8 * v43);
      if (v45 == 0x8000000000000000)
      {
        v46 = a3;
        if ((~*(v41 + 8) & 7) != 0)
        {
          v47 = v41;
        }

        else
        {
          v47 = 0;
        }

        v48 = v41 + 32;
        if (!v47)
        {
          goto LABEL_67;
        }

        v49 = *(v47 + 8) & 7;
        if (v49 == 6)
        {
          v48 = v41 + 32;
          v50 = v47 + 24 * *(v47 + 16) + 120;
          if (!v50)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v50 = v47 + 16 * v49 + 16;
        }

        v48 = v50 + 24;
LABEL_67:
        v54 = *v48;
        v55 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(***v48 + 32));
        v94 = v54;
        v95 = v55;
        v96 = v98;
        v97 = 0x400000000;
        v98[4] = v99;
        v98[5] = 0x400000000;
        v99[4] = v100;
        v99[5] = 0x400000000;
        v100[8] = 4;
        v100[9] = v101;
        v100[10] = 0x100000000;
        v101[1] = v102;
        v101[2] = 0x100000000;
        v102[1] = 0;
        v102[2] = 0;
        v102[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v102[4] = 0;
        v102[6] = 0;
        __src = v43;
        v56 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a2, v54, &__src);
        mlir::tensor::DimOp::build(a2, &v94, v41, (v56 - 16));
        v57 = mlir::Operation::create(&v94);
        mlir::OpBuilder::insert(a2, v57);
        v58 = *(*(v57 + 6) + 16);
        mlir::OperationState::~OperationState(&v94);
        if (v58 == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
        {
          v59 = v57;
        }

        else
        {
          v59 = 0;
        }

        v60 = *(v59 + 9);
        v51 = (v59 - 16) | 4;
        if (!v60)
        {
          v51 = 4;
        }

        a3 = v46;
        v33 = a1;
        goto LABEL_73;
      }

      v52 = *(*v33 + 24);
      IndexAttr = mlir::Builder::getIndexAttr(a2, v45);
      v51 = mlir::getValueOrCreateConstantIndexOp(a2, v52, IndexAttr & 0xFFFFFFFFFFFFFFFBLL) | 4;
    }

    else
    {
      v51 = mlir::Builder::getIndexAttr(a2, v44) & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_73:
    *(**a3 + 8 * v43) = v51;
    goto LABEL_74;
  }

LABEL_75:
  v61 = *(*((*(*v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * Dim);
  if (v61 != 0x8000000000000000)
  {
    *(**a3 + 8 * Dim) = mlir::Builder::getIndexAttr(a2, v61) & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_101;
  }

  AffineDimOrSymbol = getAffineDimOrSymbol(6u, 0, *a2);
  v86 = AffineDimOrSymbol;
  if ((~*(v41 + 8) & 7) != 0)
  {
    v63 = v41;
  }

  else
  {
    v63 = 0;
  }

  if (!v63)
  {
    goto LABEL_82;
  }

  v64 = *(v63 + 8) & 7;
  if (v64 != 6)
  {
    v65 = v63 + 16 * v64 + 16;
    goto LABEL_85;
  }

  v65 = v63 + 24 * *(v63 + 16) + 120;
  if (v65)
  {
LABEL_85:
    v66 = (v65 + 24);
    goto LABEL_86;
  }

LABEL_82:
  v66 = (v41 + 32);
LABEL_86:
  __src = (mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a2, *v66, &v88, &v84) | 4);
  v94 = &v96;
  v95 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v94, &__src, &v92);
  v67 = mlir::ValueRange::offset_base(v90, 1);
  __src = 0;
  v92 = v67;
  v93[0] = 0;
  if (v6 != 1)
  {
    v68 = 1;
    while (1)
    {
      v69 = mlir::ValueRange::dereference_iterator(&v92, v68 - 1);
      *&v87 = v68 - 1;
      *(&v87 + 1) = v69;
      v70 = getAffineDimOrSymbol(6u, v68, *a2);
      v86 = mlir::AffineExpr::operator+(&v86, v70, v71);
      if ((~*(*(&v87 + 1) + 8) & 7) != 0)
      {
        v72 = *(&v87 + 1);
      }

      else
      {
        v72 = 0;
      }

      if (v72)
      {
        v73 = *(v72 + 8) & 7;
        if (v73 != 6)
        {
          v74 = v72 + 16 * v73 + 16;
LABEL_96:
          v75 = (v74 + 24);
          goto LABEL_97;
        }

        v74 = v72 + 24 * *(v72 + 16) + 120;
        if (v74)
        {
          goto LABEL_96;
        }
      }

      v75 = (*(&v87 + 1) + 32);
LABEL_97:
      v76 = mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a2, *v75, &v87 + 1, &v84);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v94, v76 | 4);
      __src = v68;
      v93[0] = v68++;
      if (v6 == v68)
      {
        AffineDimOrSymbol = v86;
        break;
      }
    }
  }

  v77 = *(*a1 + 24);
  ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a2, v77, AffineDimOrSymbol, v94, v95);
  ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp(a2, v77, ComposedFoldedAffineApply);
  *(**a3 + 8 * v84) = ConstantIndexOp | 4;
  if (v94 != &v96)
  {
    free(v94);
  }

LABEL_101:
  v80 = *MEMORY[0x277D85DE8];
  return 1;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6)
  {
    if (v5)
    {

      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a1, v6, a3);
    }

    else
    {
      v8 = (*a1 + (v4 << 6) - 64);
      v9 = (a2 << 6) - (v4 << 6);
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
      *(a1 + 8) = a2;
    }
  }
}

uint64_t mlir::tensor::ConcatOp::fold(uint64_t *a1)
{
  v1 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0 || *(v1 + 68) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 72) & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *(v1 + 36);
  v7 = v1 - 16;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v7 + 8) ^ v5;
  if (v8 > 7 || v2 == 0)
  {
    return 4 * (v8 < 8);
  }

  else
  {
    return *(v2 + 24) | 4;
  }
}

char *mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, mlir::OperationState **a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(a1, *(**a2 + 32));
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
  mlir::arith::ConstantIndexOp::build(a1, v11, *a3);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (v7 && *(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    if (*(*(*(v7 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::tensor::DimOp::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  __src = v12;
  v11 = 0x200000000;
  v6 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v6 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v11);
  if (__src != v12)
  {
    free(__src);
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::DimOp::getSpeculatability(mlir::tensor::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) != 0 && (v4 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id))
  {
    return v4[2] > ConstantIntValue;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::DimOp::inferResultRangesFromOptional(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v8 = *a1;
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  mlir::intrange::inferShapedDimOpInterface(v8, InterfaceFor, a2 + 72, &v12);
  v21 = v13;
  v20 = v12;
  v23 = v15;
  v22 = v14;
  v13 = 0;
  v15 = 0;
  v25 = v17;
  v24 = v16;
  v27 = v19;
  v26 = v18;
  v17 = 0;
  v19 = 0;
  v28 = 1;
  result = a4(a5, v9, &v20);
  if (v28 == 1)
  {
    if (v27 >= 0x41)
    {
      result = v26;
      if (v26)
      {
        result = MEMORY[0x25F891010](v26, 0x1000C8000313F17);
      }
    }

    if (v25 >= 0x41)
    {
      result = v24;
      if (v24)
      {
        result = MEMORY[0x25F891010](v24, 0x1000C8000313F17);
      }
    }

    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        result = MEMORY[0x25F891010](v22, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x25F891010](v20, 0x1000C8000313F17);
      }
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t mlir::tensor::DimOp::fold(uint64_t *a1, uint64_t a2)
{
  v2 = *(*(a2 + 40) + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? *(*(a2 + 40) + 8) : 0;
  v46 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v46);
  if (Int < 0 || Int >= v5[2])
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v46);
  v9 = v5[1];
  if (*(v9 + 8 * v8) != 0x8000000000000000)
  {
    v45 = *(***(*a1 + 24) + 32);
    v14 = mlir::IntegerAttr::getInt(&v46);
    return mlir::Builder::getIndexAttr(&v45, *(v9 + 8 * v14)) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = *(*(*a1 + 72) + 24);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
    v13 = 0;
LABEL_19:
    v15 = 1;
    goto LABEL_23;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = v10 + 16 * v11 + 16;
  }

  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
  {
    if (*(v13 + 36))
    {
      v35 = v13 - 16;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v35 + 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v13 + 46) & 0x80) != 0)
    {
      v37 = *(v13 + 72);
    }

    else
    {
      v37 = 0;
    }

    v38 = *(v36 + 8);
    v39 = *(v36 + 16);
    v40 = mlir::IntegerAttr::getInt(&v46);
    v41 = 0;
    if (v39 >= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v39;
    }

    if (v42)
    {
      v43 = 8 * v42;
      do
      {
        v44 = *v38++;
        if (v44 == 0x8000000000000000)
        {
          ++v41;
        }

        v43 -= 8;
      }

      while (v43);
    }

    v22 = v37 + 32 * v41;
    return *(v22 + 24) | 4;
  }

  v15 = 0;
LABEL_23:
  if (*(v3 + 24) > 0x40u)
  {
    operator new[]();
  }

  v16 = *(v3 + 16);
  if ((v15 & 1) == 0)
  {
    v17 = *(*(v13 + 48) + 16);
    v18 = v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    v19 = v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v13 : 0;
    v45 = v19;
    if (v18)
    {
      v20 = *(v13 + 36) ? v13 - 16 : 0;
      if (*((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8) + 16) == *((*(*(*(v13 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16) && *(*(*(v13 + 88) + 24) + 8 * v16) == 0x8000000000000000)
      {
        IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicSize(&v45, v16);
        v22 = *(v45 + 72) + 32 * IndexOfDynamicSize;
        return *(v22 + 24) | 4;
      }
    }
  }

  v23 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v24 = *(v23 + 68);
  if (!v24)
  {
    return 0;
  }

  v25 = 0;
  v26 = *(v23 + 72);
  v27 = &v26[4 * v24];
  do
  {
    while (1)
    {
      v28 = v26[3];
      if ((~*(v28 + 8) & 7) == 0)
      {
        v28 = 0;
      }

      if (!v28)
      {
        break;
      }

      v29 = *(v28 + 8) & 7;
      if (v29 == 6)
      {
        v30 = v28 + 24 * *(v28 + 16) + 120;
        if (!v30)
        {
          break;
        }
      }

      else
      {
        v30 = v28 + 16 * v29 + 16;
      }

      if (*(*(v30 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        break;
      }

      v31 = *(*(v30 + 72) + 24);
      if (!mlir::tensor::preservesStaticInformation((*(v30 - 8) & 0xFFFFFFFFFFFFFFF8), (v31[1] & 0xFFFFFFFFFFFFFFF8)))
      {
        break;
      }

      v32 = v26[1];
      if (v32)
      {
        v33 = *v26;
        *v32 = *v26;
        if (v33)
        {
          *(v33 + 8) = v26[1];
        }
      }

      v26[3] = v31;
      v26[1] = v31;
      v34 = *v31;
      *v26 = *v31;
      if (v34)
      {
        *(v34 + 8) = v26;
      }

      *v31 = v26;
      v26 += 4;
      v25 = 1;
      if (v26 == v27)
      {
        goto LABEL_60;
      }
    }

    v26 += 4;
  }

  while (v26 != v27);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  if (*(*a1 + 36))
  {
    return (*a1 - 16) | 4;
  }

  else
  {
    return 4;
  }
}

BOOL mlir::tensor::EmptyOp::verify(mlir::tensor::EmptyOp *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(v4 + 8);
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      if (v9 == 0x8000000000000000)
      {
        ++v6;
      }

      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  if ((*(v2 + 46) & 0x80) != 0)
  {
    v10 = *(v2 + 68);
  }

  else
  {
    v10 = 0;
  }

  if (v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v26 = "incorrect number of dynamic sizes, has ";
    v27 = 259;
    mlir::Operation::emitOpError(v2, &v26, v28);
    if ((*(*this + 46) & 0x80) != 0)
    {
      v12 = *(*this + 68);
    }

    else
    {
      v12 = 0;
    }

    v25 = v12;
    v13 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v28, &v25);
    v14 = v13;
    if (*v13)
    {
      mlir::Diagnostic::operator<<<12ul>((v13 + 1), ", expected ");
    }

    v15 = *this - 16;
    if (!*(*this + 36))
    {
      v15 = 0;
    }

    v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = *(v16 + 8);
      v20 = 8 * v17;
      do
      {
        v21 = *v19++;
        if (v21 == 0x8000000000000000)
        {
          ++v18;
        }

        v20 -= 8;
      }

      while (v20);
    }

    else
    {
      v18 = 0;
    }

    v24 = v18;
    v11 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v14, &v24) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}