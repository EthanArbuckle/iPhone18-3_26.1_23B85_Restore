void mlir::ValueBoundsConstraintSet::BoundBuilder::operator<=(uint64_t *a1, mlir::MLIRContext **a2)
{
  v4 = a2;
  v3 = mlir::AffineExpr::operator+(&v4, 1);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator<(a1, v3);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator>(uint64_t *a1, mlir::MLIRContext **a2)
{
  v4 = a2;
  v3 = mlir::AffineExpr::operator+(&v4, 1);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(a1, v3);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[3])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = -1;
  }

  v5 = *(v3 + 72);
  v6 = *(v3 + 88);
  if (v6)
  {
    v7 = a1[1];
    v8 = 0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7));
    v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v8 >> 47) ^ v8);
    v10 = 0xBF58476D1CE4E5B9 * ((0xEB382D6900000000 * ((v9 >> 47) ^ v9)) | (37 * v4));
    v11 = (v6 - 1) & ((v10 >> 31) ^ v10);
    v12 = (v5 + 24 * v11);
    v14 = *v12;
    v13 = v12[1];
    if (*v12 != v7 || v4 != v13)
    {
      v16 = 1;
      do
      {
        if (v14 == -4096 && v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v17 = v11 + v16++;
        v11 = v17 & (v6 - 1);
        v18 = (v5 + 24 * v11);
        v14 = *v18;
        v13 = v18[1];
      }

      while (*v18 != v7 || v4 != v13);
    }
  }

  mlir::AffineMap::get(*(v3 + 156) + *(v3 + 152), *(v3 + 160), a2);

  mlir::FlatLinearConstraints::addBound();
}

{
  v3 = *a1;
  if ((a2 & 4) != 0 && (a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    Expr = mlir::ValueBoundsConstraintSet::getExpr(*a1, a2 & 0xFFFFFFFFFFFFFFF8, 0, 0);
    v5 = a1;
  }

  else
  {
    ConstantIntValue = getConstantIntValue(a2);
    Expr = mlir::Builder::getAffineConstantExpr((v3 + 768), ConstantIntValue, v7);
    v5 = a1;
  }

  mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(v5, Expr);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator<=(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((a2 & 4) != 0 && (a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    Expr = mlir::ValueBoundsConstraintSet::getExpr(*a1, a2 & 0xFFFFFFFFFFFFFFF8, 0, 0);
  }

  else
  {
    ConstantIntValue = getConstantIntValue(a2);
    Expr = mlir::Builder::getAffineConstantExpr((v3 + 768), ConstantIntValue, v6);
  }

  v8 = Expr;
  v7 = mlir::AffineExpr::operator+(&v8, 1);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator<(a1, v7);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((a2 & 4) != 0 && (a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    Expr = mlir::ValueBoundsConstraintSet::getExpr(*a1, a2 & 0xFFFFFFFFFFFFFFF8, 0, 0);
  }

  else
  {
    ConstantIntValue = getConstantIntValue(a2);
    Expr = mlir::Builder::getAffineConstantExpr((v3 + 768), ConstantIntValue, v6);
  }

  v8 = Expr;
  v7 = mlir::AffineExpr::operator+(&v8, 1);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(a1, v7);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator<(uint64_t *a1, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::Builder::getAffineConstantExpr((*a1 + 768), a2, a3);

  mlir::ValueBoundsConstraintSet::BoundBuilder::operator<(a1, AffineConstantExpr);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator<=(uint64_t *a1, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::Builder::getAffineConstantExpr((*a1 + 768), a2, a3);
  v4 = mlir::AffineExpr::operator+(&AffineConstantExpr, 1);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator<(a1, v4);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator>(uint64_t *a1, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::Builder::getAffineConstantExpr((*a1 + 768), a2, a3);
  v4 = mlir::AffineExpr::operator+(&AffineConstantExpr, 1);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(a1, v4);
}

void mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(uint64_t *a1, mlir *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::Builder::getAffineConstantExpr((*a1 + 768), a2, a3);

  mlir::ValueBoundsConstraintSet::BoundBuilder::operator>=(a1, AffineConstantExpr);
}

void sub_256E1D4E4()
{
  v1 = *(v0 + 8);
  if (v1 != (v0 + 24))
  {
    free(v1);
  }

  JUMPOUT(0x259C63180);
}

void **llvm::SmallVectorImpl<std::pair<mlir::Value,std::optional<long long>>>::operator=(void **result, void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 2)
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
      result[1] = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_19;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 2);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = *result;
        v10 = &v2[24 * v7];
        do
        {
          *v9 = *v2;
          v11 = *(v2 + 1);
          v9[16] = v2[16];
          *(v9 + 1) = v11;
          v2 += 24;
          v9 += 24;
        }

        while (v2 != v10);
      }

      *(result + 2) = v7;
      goto LABEL_19;
    }

    if (*(result + 3) < v7)
    {
      *(result + 2) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v12 = &v2[24 * v8];
      v13 = result;
      v14 = *result;
      do
      {
        *v14 = *v2;
        v15 = *(v2 + 1);
        v14[16] = v2[16];
        *(v14 + 1) = v15;
        v2 += 24;
        v14 += 24;
      }

      while (v2 != v12);
      v16 = *v6 - v8;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = result;
      v8 = 0;
      v16 = *v6;
      if (!*v6)
      {
        goto LABEL_18;
      }
    }

    memcpy(*v13 + 24 * v8, *a2 + 24 * v8, 24 * v16);
LABEL_18:
    result = v13;
    *(v13 + 2) = v7;
LABEL_19:
    *v6 = 0;
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ValueBoundsOpInterface,mlir::detail::ValueBoundsOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::scf::SCFDialect::initialize();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[190];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void mlir::presburger::IntegerRelation::~IntegerRelation(mlir::presburger::IntegerRelation *this)
{
  *this = &unk_286893110;
  v2 = *(this + 44);
  v3 = *(this + 90);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = &v2[16 * v3 - 8];
    v6 = -v4;
    v7 = v5;
    do
    {
      v9 = *v7;
      v7 -= 4;
      v8 = v9;
      if (v9)
      {
        if (v8 >= 0x41)
        {
          v10 = *(v5 - 8);
          if (v10)
          {
            MEMORY[0x259C63150](v10, 0x1000C8000313F17);
          }
        }
      }

      v5 = v7;
      v6 += 16;
    }

    while (v6);
    v2 = *(this + 44);
  }

  if (v2 != this + 368)
  {
    free(v2);
  }

  v11 = *(this + 8);
  v12 = *(this + 18);
  if (v12)
  {
    v13 = 16 * v12;
    v14 = &v11[16 * v12 - 8];
    v15 = -v13;
    v16 = v14;
    do
    {
      v18 = *v16;
      v16 -= 4;
      v17 = v18;
      if (v18)
      {
        if (v17 >= 0x41)
        {
          v19 = *(v14 - 8);
          if (v19)
          {
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }
        }
      }

      v14 = v16;
      v15 += 16;
    }

    while (v15);
    v11 = *(this + 8);
  }

  if (v11 != this + 80)
  {
    free(v11);
  }

  v20 = *(this + 4);
  if (v20 != this + 48)
  {
    free(v20);
  }
}

{
  mlir::presburger::IntegerRelation::~IntegerRelation(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Value,std::optional<long long>>,true>::growAndEmplaceBack<mlir::Value&,std::optional<long long>&>(uint64_t a1, void *a2, _OWORD *a3)
{
  *v8 = *a2;
  *&v8[8] = *a3;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    if (v4 > v8 || v4 + 24 * v3 <= v8)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = v4 + 24 * *(a1 + 8);
  v6 = *v8;
  *(v5 + 16) = *&v8[16];
  *v5 = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 24 * v5 - 24;
}

void *llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &result[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &result[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::optional<std::pair<mlir::Value,long long>>>::insert_one_impl<std::optional<std::pair<mlir::Value,long long>> const&>(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a1 + 24 * v4;
  if (v5 == a2)
  {
    if (v4 >= *(a1 + 3))
    {
      if (v3 > a3 || a2 <= a3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v3 + 24 * *(a1 + 2);
    v16 = *a3;
    *(v15 + 16) = *(a3 + 16);
    *v15 = v16;
    LODWORD(v15) = *(a1 + 2) + 1;
    *(a1 + 2) = v15;
    return *a1 + 24 * v15 - 24;
  }

  else
  {
    if (v4 >= *(a1 + 3))
    {
      if (v3 > a3 || v5 <= a3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v3 + 24 * *(a1 + 2);
    *v6 = *(v6 - 24);
    *(v6 + 16) = *(v6 - 8);
    v7 = *a1;
    v8 = *(a1 + 2);
    v9 = (*a1 + 24 * v8 - 24);
    if (v9 != a2)
    {
      do
      {
        v10 = v9;
        v9 = (v9 - 24);
        if (*(v10 + 16) == *(v10 - 8))
        {
          if (*(v10 + 16))
          {
            *v10 = *(v10 - 24);
          }
        }

        else if (*(v10 + 16))
        {
          *(v10 + 16) = 0;
        }

        else
        {
          *v10 = *v9;
          *(v10 + 16) = 1;
        }
      }

      while (v9 != a2);
      v8 = *(a1 + 2);
      v7 = *a1;
    }

    *(a1 + 2) = v8 + 1;
    if (a3 < v7 + 24 * (v8 + 1) && a3 >= a2)
    {
      v12 = 24;
    }

    else
    {
      v12 = 0;
    }

    v13 = a3 + v12;
    if (*(a2 + 16) == *(v13 + 16))
    {
      if (*(a2 + 16))
      {
        *a2 = *v13;
      }

      return a2;
    }

    else
    {
      if (*(a2 + 16))
      {
        *(a2 + 16) = 0;
      }

      else
      {
        *a2 = *v13;
        *(a2 + 16) = 1;
      }

      return a2;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>,std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>::LookupBucketFor<std::pair<mlir::Value,long long>>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = a2[1];
    v6 = HIDWORD(*a2);
    v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
    v8 = 0xBF58476D1CE4E5B9 * ((0xEB382D6900000000 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) | (37 * v5));
    LODWORD(v7) = (v8 >> 31) ^ v8;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v7;
    v11 = (*a1 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (*a2 == *v11 && v5 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -4096 || v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == 0x8000000000000000;
        }

        if (v18 && v13 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 24 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (*a2 == *v11 && v5 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

_OWORD *llvm::DenseMap<std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>,std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = (result + 24 * v11);
      do
      {
        *v13 = xmmword_25738E0B0;
        v13 = (v13 + 24);
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = (result + 24 * (v14 & 0x1FFFFFFFFFFFFFFELL));
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = xmmword_25738E0B0;
      *(v15 + 24) = xmmword_25738E0B0;
      v15 += 3;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>,std::pair<mlir::Value,long long>,long long,llvm::DenseMapInfo<std::pair<mlir::Value,long long>,void>,llvm::detail::DenseMapPair<std::pair<mlir::Value,long long>,long long>>::moveFromOldBuckets(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 24 * v4 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
      do
      {
LABEL_7:
        *v6 = xmmword_25738E0B0;
        v6 = (v6 + 24);
      }

      while (v6 != (v3 + 24 * v4));
      goto LABEL_8;
    }

    v7 = v5 / 0x18 + 1;
    v6 = (v3 + 24 * (v7 & 0x1FFFFFFFFFFFFFFELL));
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = xmmword_25738E0B0;
      *(v8 + 24) = xmmword_25738E0B0;
      v8 += 3;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  if (a2 != a3)
  {
    v10 = 0;
    v11 = v4 - 1;
    do
    {
      v22 = *a2;
      v23 = a2[1];
      if ((*a2 != -4096 || v23 != 0x7FFFFFFFFFFFFFFFLL) && (v22 != -8192 || v23 != 0x8000000000000000))
      {
        v26 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
        v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v22) ^ (v26 >> 47) ^ v26);
        v28 = 0xBF58476D1CE4E5B9 * ((0xEB382D6900000000 * ((v27 >> 47) ^ v27)) | (37 * v23));
        v17 = v11 & ((v28 >> 31) ^ v28);
        v18 = v3 + 3 * v17;
        v19 = *v18;
        v20 = v18[1];
        if (v22 != *v18 || v23 != v20)
        {
          v14 = 0;
          v16 = 1;
          while (v19 != -4096 || v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v14)
            {
              v12 = 0;
            }

            else
            {
              v12 = v20 == 0x8000000000000000;
            }

            if (v12 && v19 == -8192)
            {
              v14 = v18;
            }

            v15 = v17 + v16++;
            v17 = v15 & v11;
            v18 = v3 + 3 * (v15 & v11);
            v19 = *v18;
            v20 = v18[1];
            if (v22 == *v18 && v23 == v20)
            {
              goto LABEL_27;
            }
          }

          if (v14)
          {
            v18 = v14;
          }
        }

LABEL_27:
        *v18 = v22;
        v18[1] = v23;
        v18[2] = a2[2];
        *(result + 8) = ++v10;
      }

      a2 += 3;
    }

    while (a2 != a3);
  }

  return result;
}

void *std::deque<long long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<long long *>::emplace_back<long long *&>(a1, &v11);
}

void *std::__split_buffer<long long *>::emplace_back<long long *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **std::__split_buffer<long long *>::emplace_front<long long *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::computeDependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u>,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeDependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u>,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286892498;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<mlir::ValueBoundsConstraintSet::computeDependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u>,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeDependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u>,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = *v3 + 24 * v5;
  if (!v5)
  {
    return v4 != v6;
  }

  v7 = *(a3 + 8);
  v8 = 24 * v5;
  do
  {
    if (*v4 == *a2)
    {
      v9 = *(v4 + 16);
      if (v9 != v7 || v9 == 0)
      {
        if (v9 == v7)
        {
          return v4 != v6;
        }
      }

      else if (*(v4 + 8) == *a3)
      {
        return v4 != v6;
      }
    }

    v4 += 24;
    v8 -= 24;
  }

  while (v8);
  return 0;
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::computeDependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u>,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeDependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u>,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir24ValueBoundsConstraintSet21computeDependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableESB_bE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir24ValueBoundsConstraintSet21computeDependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableESB_bE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir24ValueBoundsConstraintSet21computeDependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableESB_bE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir24ValueBoundsConstraintSet21computeDependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableESB_bE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::computeIndependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueRange,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeIndependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueRange,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286892528;
  a2[1] = v2;
  return result;
}

void std::__function::__func<mlir::ValueBoundsConstraintSet::computeIndependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueRange,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeIndependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueRange,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *a2;
  v31 = &v34;
  v33 = 6;
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v34 = v3;
  v4 = 1;
  while (1)
  {
    while (1)
    {
      v5 = v31[v4 - 1];
      v32 = v4 - 1;
      v28 = v5;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v29, &v28, &v35);
      if (v37 == 1)
      {
        v6 = *v2;
        v7 = (*v2)[1];
        v35 = **v2;
        v36 = 0;
        if (!v7)
        {
          goto LABEL_11;
        }

        v8 = 0;
        do
        {
          v9 = mlir::ValueRange::dereference_iterator(&v35, v8);
          v10 = v36;
          if (v28 == v9)
          {
            if (v36 != v6[1])
            {
              goto LABEL_32;
            }

            goto LABEL_11;
          }

          v8 = ++v36;
        }

        while (v10 + 1 != v7);
        if (v7 != v6[1])
        {
          goto LABEL_32;
        }

LABEL_11:
        DefiningOp = mlir::Value::getDefiningOp(&v28);
        if (DefiningOp)
        {
          break;
        }
      }

      v4 = v32;
      if (!v32)
      {
        goto LABEL_32;
      }
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = *(DefiningOp + 68);
      v14 = v32;
      if (v13 + v32 > v33)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = v32;
      if (v32 > v33)
      {
LABEL_14:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    if (v13)
    {
      v15 = &v31[v14];
      if (v13 >= 7 && (v15 >= v12 + 32 * v13 || v12 + 24 >= &v31[v13 + v14]))
      {
        v17 = v13 & 3;
        if ((v13 & 3) == 0)
        {
          v17 = 4;
        }

        v16 = v13 - v17;
        v18 = &v15[v16];
        v19 = (v12 + 88);
        v20 = (v15 + 2);
        v21 = v16;
        do
        {
          v22 = v19 - 8;
          v23 = vld4q_f64(v22);
          v24 = vld4q_f64(v19);
          *(v20 - 1) = v23;
          *v20 = v24;
          v19 += 16;
          v20 += 2;
          v21 -= 4;
        }

        while (v21);
        v15 = v18;
      }

      else
      {
        v16 = 0;
      }

      v25 = v13 - v16;
      v26 = (v12 + 32 * v16 + 24);
      do
      {
        v27 = *v26;
        v26 += 4;
        *v15++ = v27;
        --v25;
      }

      while (v25);
      LODWORD(v14) = v32;
    }

    v4 = v14 + v13;
    v32 = v14 + v13;
    if (!(v14 + v13))
    {
LABEL_32:
      llvm::deallocate_buffer(v29[0], (8 * v30));
    }
  }
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::computeIndependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueRange,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeIndependentBound(mlir::AffineMap &,llvm::SmallVector<std::pair<mlir::Value,std::optional<long long>>,2u> &,mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueRange,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir24ValueBoundsConstraintSet23computeIndependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableENS_10ValueRangeEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir24ValueBoundsConstraintSet23computeIndependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableENS_10ValueRangeEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir24ValueBoundsConstraintSet23computeIndependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableENS_10ValueRangeEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir24ValueBoundsConstraintSet23computeIndependentBoundERNS_9AffineMapERN4llvm11SmallVectorINSt3__14pairINS_5ValueENS5_8optionalIxEEEELj2EEENS_10presburger9BoundTypeERKNS0_8VariableENS_10ValueRangeEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<mlir::ValueBoundsConstraintSet::computeConstantBound(mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,std::function<BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeConstantBound(mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,std::function<BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868925A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::computeConstantBound(mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,std::function<BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeConstantBound(mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,std::function<BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::getConstantBound(a4 + 144, **(a1 + 8), **(a1 + 16), &v6);
  result = v8;
  if (v8 == 1)
  {
    if (v7)
    {
      v5 = v8;
      llvm::detail::SlowDynamicAPInt::operator long long(&v6);
      result = v5;
      if ((v8 & 1) != 0 && v7 > 0x40)
      {
        if (v6)
        {
          MEMORY[0x259C63150](v6, 0x1000C8000313F17);
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::computeConstantBound(mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,std::function<BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>,BOOL)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::computeConstantBound(mlir::presburger::BoundType,mlir::ValueBoundsConstraintSet::Variable const&,std::function<BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>,BOOL)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir24ValueBoundsConstraintSet20computeConstantBoundENS_10presburger9BoundTypeERKNS0_8VariableENSt3__18functionIFbNS_5ValueENS6_8optionalIxEERS0_EEEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir24ValueBoundsConstraintSet20computeConstantBoundENS_10presburger9BoundTypeERKNS0_8VariableENSt3__18functionIFbNS_5ValueENS6_8optionalIxEERS0_EEEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir24ValueBoundsConstraintSet20computeConstantBoundENS_10presburger9BoundTypeERKNS0_8VariableENSt3__18functionIFbNS_5ValueENS6_8optionalIxEERS0_EEEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir24ValueBoundsConstraintSet20computeConstantBoundENS_10presburger9BoundTypeERKNS0_8VariableENSt3__18functionIFbNS_5ValueENS6_8optionalIxEERS0_EEEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<mlir::ValueBoundsConstraintSet::compare(mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueBoundsConstraintSet::ComparisonOperator,mlir::ValueBoundsConstraintSet::Variable const&)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::compare(mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueBoundsConstraintSet::ComparisonOperator,mlir::ValueBoundsConstraintSet::Variable const&)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286892628;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::compare(mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueBoundsConstraintSet::ComparisonOperator,mlir::ValueBoundsConstraintSet::Variable const&)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::compare(mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueBoundsConstraintSet::ComparisonOperator,mlir::ValueBoundsConstraintSet::Variable const&)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = **(a1 + 8);
  v5 = *(a4 + 16);
  if (v4 >= v5)
  {
    return 0;
  }

  v6 = **(a1 + 16);
  if (v6 >= v5)
  {
    return 0;
  }

  else
  {
    return mlir::ValueBoundsConstraintSet::comparePos(a4, v4, **(a1 + 24), v6);
  }
}

uint64_t std::__function::__func<mlir::ValueBoundsConstraintSet::compare(mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueBoundsConstraintSet::ComparisonOperator,mlir::ValueBoundsConstraintSet::Variable const&)::$_0,std::allocator<mlir::ValueBoundsConstraintSet::compare(mlir::ValueBoundsConstraintSet::Variable const&,mlir::ValueBoundsConstraintSet::ComparisonOperator,mlir::ValueBoundsConstraintSet::Variable const&)::$_0>,BOOL ()(mlir::Value,std::optional<long long>,mlir::ValueBoundsConstraintSet&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir24ValueBoundsConstraintSet7compareERKNS0_8VariableENS0_18ComparisonOperatorES3_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir24ValueBoundsConstraintSet7compareERKNS0_8VariableENS0_18ComparisonOperatorES3_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir24ValueBoundsConstraintSet7compareERKNS0_8VariableENS0_18ComparisonOperatorES3_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir24ValueBoundsConstraintSet7compareERKNS0_8VariableENS0_18ComparisonOperatorES3_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::AliasResult::merge(int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2 == 2)
    {
      if (a2 == 3)
      {
        return 2;
      }
    }

    else if (a2 == 2 && v2 == 3)
    {
      return 2;
    }

    return 1;
  }

  return a2;
}

void *mlir::AliasResult::print(void *this, llvm::raw_ostream *a2)
{
  v2 = *this;
  if (*this > 1)
  {
    if (v2 == 2)
    {
      v6 = *(a2 + 4);
      if ((*(a2 + 3) - v6) <= 0xB)
      {
        return llvm::raw_ostream::write(a2, "PartialAlias", 0xCuLL);
      }

      *(v6 + 8) = 1935763820;
      *v6 = *"PartialAlias";
      v7 = *(a2 + 4) + 12;
    }

    else
    {
      if (v2 != 3)
      {
        return this;
      }

      v4 = *(a2 + 4);
      if ((*(a2 + 3) - v4) <= 8)
      {
        return llvm::raw_ostream::write(a2, "MustAlias", 9uLL);
      }

      *(v4 + 8) = 115;
      *v4 = *"MustAlias";
      v7 = *(a2 + 4) + 9;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    v5 = *(a2 + 4);
    if (*(a2 + 3) - v5 <= 6uLL)
    {
      return llvm::raw_ostream::write(a2, "NoAlias", 7uLL);
    }

    *(v5 + 3) = 1935763820;
    *v5 = 1816227662;
    v7 = *(a2 + 4) + 7;
    goto LABEL_19;
  }

  if (v2 != 1)
  {
    return this;
  }

  v3 = *(a2 + 4);
  if (*(a2 + 3) - v3 > 7uLL)
  {
    *v3 = 0x7361696C4179614DLL;
    v7 = *(a2 + 4) + 8;
LABEL_19:
    *(a2 + 4) = v7;
    return this;
  }

  return llvm::raw_ostream::write(a2, "MayAlias", 8uLL);
}

void *mlir::ModRefResult::print(void *this, llvm::raw_ostream *a2)
{
  v2 = *this;
  if (*this > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return this;
      }

      v4 = *(a2 + 4);
      if ((*(a2 + 3) - v4) <= 5)
      {
        return llvm::raw_ostream::write(a2, "ModRef", 6uLL);
      }

      *(v4 + 4) = 26213;
      *v4 = 1382313805;
      v7 = *(a2 + 4) + 6;
      goto LABEL_20;
    }

    v3 = *(a2 + 4);
    if ((*(a2 + 3) - v3) <= 2)
    {
      return llvm::raw_ostream::write(a2, "Mod", 3uLL);
    }

    *(v3 + 2) = 100;
    v6 = 28493;
LABEL_19:
    *v3 = v6;
    v7 = *(a2 + 4) + 3;
LABEL_20:
    *(a2 + 4) = v7;
    return this;
  }

  if (!v2)
  {
    v5 = *(a2 + 4);
    if (*(a2 + 3) - v5 <= 7uLL)
    {
      return llvm::raw_ostream::write(a2, "NoModRef", 8uLL);
    }

    *v5 = 0x666552646F4D6F4ELL;
    v7 = *(a2 + 4) + 8;
    goto LABEL_20;
  }

  if (v2 != 1)
  {
    return this;
  }

  v3 = *(a2 + 4);
  if ((*(a2 + 3) - v3) > 2)
  {
    *(v3 + 2) = 102;
    v6 = 25938;
    goto LABEL_19;
  }

  return llvm::raw_ostream::write(a2, "Ref", 3uLL);
}

void mlir::AliasAnalysis::AliasAnalysis(mlir::AliasAnalysis *this, mlir::Operation *a2)
{
  *this = this + 16;
  *(this + 1) = 0x400000000;
  mlir::AliasAnalysis::addAnalysisImplementation<mlir::LocalAliasAnalysis>();
}

{
  *this = this + 16;
  *(this + 1) = 0x400000000;
  mlir::AliasAnalysis::addAnalysisImplementation<mlir::LocalAliasAnalysis>();
}

uint64_t mlir::AliasAnalysis::alias(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 1;
  }

  v6 = *a1;
  v7 = 8 * v3;
  while (1)
  {
    result = (*(**v6 + 16))(*v6, a2, a3);
    if (result != 1)
    {
      break;
    }

    ++v6;
    v7 -= 8;
    if (!v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::AliasAnalysis::getModRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 3;
  }

  v6 = *a1;
  v7 = 8 * v3;
  LODWORD(v8) = 3;
  do
  {
    v8 = (*(**v6 + 24))(*v6, a2, a3) & v8;
    if (!v8)
    {
      break;
    }

    ++v6;
    v7 -= 8;
  }

  while (v7);
  return v8;
}

uint64_t mlir::CallGraphNode::addAbstractEdge(mlir::CallGraphNode *this, unint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a2 & 0xFFFFFFFFFFFFFFF9;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 8, v6, v5);
  if (v5[16] == 1)
  {
    v4 = *(this + 14);
    if (v4 >= *(this + 15))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(this + 6) + 8 * v4) = v6[0];
    ++*(this + 14);
  }

  return result;
}

uint64_t mlir::CallGraphNode::addEdge(uint64_t a1, uint64_t a2, int a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = a2 & 0xFFFFFFFFFFFFFFF9 | (2 * a3);
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 8, v7, v6);
  if (v6[16] == 1)
  {
    v5 = *(a1 + 56);
    if (v5 >= *(a1 + 60))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 48) + 8 * v5) = v7[0];
    ++*(a1 + 56);
  }

  return result;
}

uint64_t mlir::CallGraphNode::addCallEdge(mlir::CallGraphNode *this, unint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a2 & 0xFFFFFFFFFFFFFFF9 | 2;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 8, v6, v5);
  if (v5[16] == 1)
  {
    v4 = *(this + 14);
    if (v4 >= *(this + 15))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(this + 6) + 8 * v4) = v6[0];
    ++*(this + 14);
  }

  return result;
}

uint64_t mlir::CallGraphNode::addChildEdge(mlir::CallGraphNode *this, unint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 8, v6, v5);
  if (v5[16] == 1)
  {
    v4 = *(this + 14);
    if (v4 >= *(this + 15))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(this + 6) + 8 * v4) = v6[0];
    ++*(this + 14);
  }

  return result;
}

BOOL mlir::CallGraphNode::hasChildren(mlir::CallGraphNode *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 6);
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    v5 = v4 & 6;
    result = v5 == 4;
    v7 = v5 == 4 || v3 == 0;
    v3 -= 8;
  }

  while (!v7);
  return result;
}

void mlir::CallGraph::CallGraph(mlir::CallGraph *this, mlir::Operation *a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = 0u;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  *(this + 6) = 1;
  memset_pattern16(this + 56, &unk_25738E810, 0x20uLL);
  *(this + 11) = this + 104;
  *(this + 12) = 0x400000000;
  *(this + 17) = 0;
  *(this + 18) = 1;
  memset_pattern16(this + 152, &unk_25738E810, 0x20uLL);
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  computeCallGraph(a2, this, v9, 0, 0);
  computeCallGraph(a2, this, v9, 0, 1);
  v4 = v9[0];
  if (v10)
  {
    v5 = (v9[0] + 8);
    v6 = 16 * v10;
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          llvm::deallocate_buffer(*(v7 + 8), (16 * *(v7 + 24)));
        }
      }

      v5 += 2;
      v6 -= 16;
    }

    while (v6);
    v4 = v9[0];
    v8 = (16 * v10);
  }

  else
  {
    v8 = 0;
  }

  llvm::deallocate_buffer(v4, v8);
}

mlir::Region *computeCallGraph(uint64_t a1, uint64_t *a2, mlir::SymbolTableCollection *a3, mlir::Region *a4, _BOOL4 a5)
{
  v25 = *MEMORY[0x277D85DE8];
  result = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (result)
  {
    if (a1)
    {
      result = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
      v11 = result;
    }

    else
    {
      v11 = 0;
    }

    v12 = a1;
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (!a4)
    {
      goto LABEL_13;
    }
  }

  if (a5 && v12)
  {
    *&v23 = mlir::CallGraph::resolveCallable(a2, v12, v11, a3) & 0xFFFFFFFFFFFFFFF9 | 2;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>(a4 + 8, &v23, &v19);
    if (v20 == 1)
    {
      v13 = *(a4 + 14);
      if (v13 >= *(a4 + 15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a4 + 6) + 8 * v13) = v23;
      ++*(a4 + 14);
    }

    return result;
  }

LABEL_13:
  if (v12)
  {
    return result;
  }

  result = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (result)
  {
    if (a1)
    {
      result = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      result = 0;
    }

    *&v19 = a1;
    *(&v19 + 1) = result;
    if (a1)
    {
      result = mlir::CallableOpInterface::getCallableRegion(&v19);
      if (!result)
      {
        return result;
      }

      result = mlir::CallGraph::getOrAddNode(a2, result, a4);
      a4 = result;
    }
  }

  else
  {
    v19 = 0uLL;
  }

  v14 = *(a1 + 44);
  if ((v14 & 0x7FFFFF) != 0)
  {
    v15 = (((a1 + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    v16 = (v15 + 24 * (v14 & 0x7FFFFF));
    do
    {
      mlir::Region::OpIterator::OpIterator(&v23, v15, 0);
      mlir::Region::OpIterator::OpIterator(&v21, v15, 1);
      result = v24;
      v20 = v24;
      v19 = v23;
      for (i = v22; v24 != i; result = v24)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
        computeCallGraph(ValuePtr, a2, a3, a4, a5);
        mlir::Region::OpIterator::operator++(&v23);
      }

      v15 = (v15 + 24);
    }

    while (v15 != v16);
  }

  return result;
}

uint64_t mlir::CallGraph::getOrAddNode(mlir::CallGraph *this, mlir::Region *a2, mlir::CallGraphNode *a3)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = a2;
  v3 = llvm::MapVector<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>,llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>>::operator[](this, v5);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

uint64_t llvm::MapVector<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>,llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>>::operator[](uint64_t a1, unint64_t *a2)
{
  v15 = *a2;
  v16 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(a1, &v15, &v16, &v13);
  v4 = v13;
  if (v14)
  {
    v5 = *(a1 + 24);
    v12 = *a2;
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 > &v12 || v5 + 16 * v6 <= &v12)
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow();
      }

      llvm::SmallVectorTemplateBase<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,false>::grow();
    }

    v7 = *(a1 + 32);
    v8 = v12;
    *(&v12 + 1) = 0;
    *(v5 + 16 * v7) = v8;
    *(a1 + 32) = v7 + 1;
    v9 = *(&v12 + 1);
    *(&v12 + 1) = 0;
    if (v9)
    {
      v10 = *(v9 + 48);
      if (v10 != (v9 + 64))
      {
        free(v10);
      }

      if ((*(v9 + 8) & 1) == 0)
      {
        llvm::deallocate_buffer(*(v9 + 16), (8 * *(v9 + 24)));
      }

      MEMORY[0x259C63180](v9, 0x10A0C40D4B41969);
      LODWORD(v7) = *(a1 + 32) - 1;
    }

    *(v4 + 8) = v7;
  }

  else
  {
    LODWORD(v7) = *(v13 + 8);
  }

  return *(a1 + 24) + 16 * v7 + 8;
}

uint64_t mlir::CallGraph::lookupNode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v5 = *(*a1 + 16 * v4);
  if (v5 != a2)
  {
    v8 = 1;
    while (v5 != -4096)
    {
      v9 = v4 + v8++;
      v4 = v9 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  v7 = *(v3 + 16 * v4 + 8);
  if (v7 == *(a1 + 8))
  {
    return 0;
  }

  return *(a1[3] + 16 * v7 + 8);
}

uint64_t *mlir::CallGraph::resolveCallable(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a2;
  v18[1] = a3;
  InterfaceFor = mlir::CallOpInterface::resolveCallableInTable(v18, a4);
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      v16 = 0;
      v17 = 0;
      return a1 + 17;
    }

    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
  }

  v16 = v6;
  v17 = InterfaceFor;
  if (!v6)
  {
    return a1 + 17;
  }

  CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v16);
  v8 = *(a1 + 4);
  if (!v8)
  {
    return a1 + 17;
  }

  v9 = *a1;
  v10 = ((CallableRegion >> 4) ^ (CallableRegion >> 9)) & (v8 - 1);
  v11 = *(*a1 + 16 * v10);
  if (v11 != CallableRegion)
  {
    v14 = 1;
    while (v11 != -4096)
    {
      v15 = v10 + v14++;
      v10 = v15 & (v8 - 1);
      v11 = *(v9 + 16 * v10);
      if (v11 == CallableRegion)
      {
        goto LABEL_7;
      }
    }

    return a1 + 17;
  }

LABEL_7:
  if (v10 == v8)
  {
    return a1 + 17;
  }

  v12 = *(v9 + 16 * v10 + 8);
  if (v12 == *(a1 + 8))
  {
    return a1 + 17;
  }

  result = *(a1[3] + 16 * v12 + 8);
  if (!result)
  {
    return a1 + 17;
  }

  return result;
}

uint64_t mlir::CallGraph::eraseNode(uint64_t this, mlir::CallGraphNode *a2)
{
  v3 = this;
  v4 = *(a2 + 14);
  if (v4)
  {
    v5 = *(a2 + 6);
    v6 = 8 * v4;
    v7 = 8 * v4;
    v8 = v5;
    while ((*v8 & 6) != 4)
    {
      ++v8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    do
    {
      v35 = *v5++;
      v34 = v35;
      if ((v35 & 6) == 4)
      {
        this = mlir::CallGraph::eraseNode(v3, (v34 & 0xFFFFFFFFFFFFFFF8));
      }

      v6 -= 8;
    }

    while (v6);
  }

LABEL_5:
  v9 = *(v3 + 32);
  if (v9)
  {
    v10 = *(v3 + 24);
    v11 = v10 + 16 * v9;
    do
    {
      v12 = *(v10 + 8);
      v13 = *(v12 + 48);
      v14 = *(v12 + 56);
      v15 = &v13[v14];
      v16 = v15;
      if (!v14)
      {
        goto LABEL_19;
      }

      v17 = 8 * v14;
      while (1)
      {
        v18 = *v13;
        this = *v13 & 0xFFFFFFFFFFFFFFF8;
        if (this == a2)
        {
          break;
        }

        ++v13;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_36;
        }
      }

      if (*(v12 + 8))
      {
        v19 = v12 + 16;
        LODWORD(this) = 4;
      }

      else
      {
        this = *(v12 + 24);
        if (!this)
        {
          goto LABEL_19;
        }

        v19 = *(v12 + 16);
      }

      v20 = this - 1;
      this = (this - 1) & ((v18 >> 9) ^ v18);
      v21 = *(v19 + 8 * this);
      if (v21 == v18)
      {
LABEL_18:
        *(v19 + 8 * this) = -16;
        v22 = *(v12 + 12) + 1;
        *(v12 + 8) -= 2;
        *(v12 + 12) = v22;
      }

      else
      {
        v32 = 1;
        while (v21 != -2)
        {
          v33 = this + v32++;
          this = v33 & v20;
          v21 = *(v19 + 8 * this);
          if (v21 == v18)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_19:
      if (v13 != v15)
      {
        v23 = v13 + 1;
        if (v13 + 1 != v15)
        {
          v16 = v13;
          while (1)
          {
            v24 = *v23;
            this = *v23 & 0xFFFFFFFFFFFFFFF8;
            if (this == a2)
            {
              this = *(v12 + 8);
              if (this)
              {
                v25 = 4;
                this = v12 + 16;
LABEL_29:
                v26 = v25 - 1;
                v27 = (v25 - 1) & ((v24 >> 9) ^ v24);
                v28 = *(this + 8 * v27);
                if (v28 == v24)
                {
LABEL_30:
                  *(this + 8 * v27) = -16;
                  this = (*(v12 + 12) + 1);
                  *(v12 + 8) -= 2;
                  *(v12 + 12) = this;
                }

                else
                {
                  v29 = 1;
                  while (v28 != -2)
                  {
                    v30 = v27 + v29++;
                    v27 = v30 & v26;
                    v28 = *(this + 8 * v27);
                    if (v28 == v24)
                    {
                      goto LABEL_30;
                    }
                  }
                }

                goto LABEL_23;
              }

              v25 = *(v12 + 24);
              if (v25)
              {
                this = *(v12 + 16);
                goto LABEL_29;
              }
            }

            else
            {
              *v16++ = v24;
            }

LABEL_23:
            if (++v23 == v15)
            {
              goto LABEL_36;
            }
          }
        }

        v16 = v13;
      }

LABEL_36:
      v31 = *(v12 + 48);
      if (v16 != (v31 + 8 * *(v12 + 56)))
      {
        *(v12 + 56) = (v16 - v31) >> 3;
      }

      v10 += 16;
    }

    while (v10 != v11);
  }

  v36 = *(v3 + 16);
  v37 = (v3 + 32);
  if (!v36)
  {
    goto LABEL_49;
  }

  v38 = *v3;
  v39 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v36 - 1);
  v40 = *(*v3 + 16 * v39);
  if (v40 == *a2)
  {
LABEL_47:
    v37 = (v38 + 16 * v39 + 8);
    if (v39 == v36)
    {
      v37 = (v3 + 32);
    }

LABEL_49:
    v41 = *v37;
    if (v41 != *(v3 + 32))
    {
      v44 = (*(v3 + 24) + 16 * v41);

      return llvm::MapVector<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>,llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>>::erase(v3, v44);
    }

    return this;
  }

  v42 = 1;
  while (v40 != -4096)
  {
    v43 = v39 + v42++;
    v39 = v43 & (v36 - 1);
    v40 = *(v38 + 16 * v39);
    if (v40 == *a2)
    {
      goto LABEL_47;
    }
  }

  return this;
}

void mlir::CallGraph::dump(mlir::CallGraph *this)
{
  v2 = llvm::errs(this);

  mlir::CallGraph::print(this, v2);
}

void mlir::CallGraph::print(mlir::CallGraph *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x16uLL)
  {
    qmemcpy(v4, "// ---- CallGraph ----\n", 23);
    *(a2 + 4) += 23;
    v77 = this;
    v78 = a2;
    v50 = this;
    v5 = *(this + 8);
    if (!v5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    llvm::raw_ostream::write(a2, "// ---- CallGraph ----\n", 0x17uLL);
    v77 = this;
    v78 = a2;
    v50 = this;
    v5 = *(this + 8);
    if (!v5)
    {
LABEL_34:
      v20 = *(a2 + 4);
      if (*(a2 + 3) - v20 > 0xDuLL)
      {
        qmemcpy(v20, "// -- SCCs --\n", 14);
        *(a2 + 4) += 14;
      }

      else
      {
        llvm::raw_ostream::write(a2, "// -- SCCs --\n", 0xEuLL);
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      *v56 = 0u;
      memset(v57, 0, sizeof(v57));
      *v58 = 0u;
      v59 = 0;
      v60[0] = v50 + 40;
      v52 = 1;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](&v53, v60) = 1;
      v21 = v56[1];
      if (v56[1] >= v57[0])
      {
        v24 = v56[0];
        v25 = v56[1] - v56[0];
        v26 = (v56[1] - v56[0]) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v28 = v57[0] - v56[0];
        if ((v57[0] - v56[0]) >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (!(v29 >> 61))
          {
            operator new();
          }

          goto LABEL_64;
        }

        v22 = v60[0];
        *(8 * v26) = v60[0];
        v23 = (8 * v26 + 8);
        memcpy(0, v24, v25);
        v56[0] = 0;
        v56[1] = v23;
        v57[0] = 0;
        if (v24)
        {
          operator delete(v24);
          v22 = v60[0];
        }
      }

      else
      {
        v22 = v60[0];
        *v56[1] = v60[0];
        v23 = v21 + 8;
      }

      v56[1] = v23;
      v30 = *(v22 + 48);
      v31 = v52;
      v32 = v58[1];
      if (v58[1] < v59)
      {
        *v58[1] = v22;
        v32[1] = v30;
        v32[2] = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
        *(v32 + 6) = v31;
        v33 = v32 + 4;
        goto LABEL_63;
      }

      v34 = v58[0];
      v35 = v58[1] - v58[0];
      v36 = (v58[1] - v58[0]) >> 5;
      v37 = v36 + 1;
      if ((v36 + 1) >> 59)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v38 = v59 - v58[0];
      if ((v59 - v58[0]) >> 4 > v37)
      {
        v37 = v38 >> 4;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFE0)
      {
        v39 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (!v39)
      {
        v40 = (v58[1] - v58[0]) >> 5;
        v41 = 32 * v36;
        *v41 = v22;
        *(v41 + 8) = v30;
        *(v41 + 16) = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
        *(v41 + 24) = v31;
        v33 = (32 * v36 + 32);
        v42 = (32 * v36 - 32 * v40);
        memcpy(v42, v34, v35);
        v58[0] = v42;
        v58[1] = v33;
        v59 = 0;
        if (v34)
        {
          operator delete(v34);
        }

LABEL_63:
        v58[1] = v33;
        llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(&v52);
        v43 = v55;
        v55 = 0;
        v44 = *v56;
        v56[0] = 0;
        v56[1] = 0;
        v45 = v57[0];
        v46 = v57[3];
        memset(v57, 0, sizeof(v57));
        v47 = v59;
        v48 = *v58;
        v58[1] = 0;
        v59 = 0;
        v58[0] = 0;
        LODWORD(v60[0]) = v52;
        v60[1] = v53;
        v49 = v54;
        v53 = 0;
        v54 = 0;
        v60[2] = v49;
        v61 = v43;
        v62 = v44;
        v64 = *&v57[1];
        v63 = v45;
        v65 = v46;
        v66 = v48;
        v67 = v47;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v76 = 0;
        v75 = 0u;
        v74 = 0u;
        v73 = 0u;
        v72 = 0u;
        llvm::deallocate_buffer(0, 0);
      }

      if (!(v39 >> 59))
      {
        operator new();
      }

LABEL_64:
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  v6 = *(v50 + 3);
  v51 = v6 + 16 * v5;
  while (1)
  {
    v7 = *(v6 + 8);
    v8 = *(a2 + 4);
    if ((*(a2 + 3) - v8) > 0xB)
    {
      *(v8 + 8) = 540680293;
      *v8 = *"// - Node : ";
      *(a2 + 4) += 12;
      mlir::CallGraph::print(llvm::raw_ostream &)const::$_0::operator()(&v77, v7);
      v9 = *(a2 + 4);
      if (*(a2 + 3) != v9)
      {
LABEL_9:
        *v9 = 10;
        ++*(a2 + 4);
        v10 = *(v7 + 56);
        if (v10)
        {
          break;
        }

        goto LABEL_32;
      }
    }

    else
    {
      llvm::raw_ostream::write(a2, "// - Node : ", 0xCuLL);
      mlir::CallGraph::print(llvm::raw_ostream &)const::$_0::operator()(&v77, v7);
      v9 = *(a2 + 4);
      if (*(a2 + 3) != v9)
      {
        goto LABEL_9;
      }
    }

    llvm::raw_ostream::write(a2, "\n", 1uLL);
    v10 = *(v7 + 56);
    if (v10)
    {
      break;
    }

LABEL_32:
    v19 = *(a2 + 4);
    if ((*(a2 + 3) - v19) > 2)
    {
      *(v19 + 2) = 10;
      *v19 = 12079;
      *(a2 + 4) += 3;
      v6 += 16;
      if (v6 == v51)
      {
        goto LABEL_34;
      }
    }

    else
    {
      llvm::raw_ostream::write(a2, "//\n", 3uLL);
      v6 += 16;
      if (v6 == v51)
      {
        goto LABEL_34;
      }
    }
  }

  v11 = *(v7 + 48);
  v12 = 8 * v10;
  while (1)
  {
    v13 = *(a2 + 4);
    if ((*(a2 + 3) - v13) > 5)
    {
      *(v13 + 4) = 8237;
      *v13 = 757083951;
      *(a2 + 4) += 6;
      v14 = *v11 & 6;
      if (v14 != 4)
      {
LABEL_17:
        if (v14 != 2)
        {
          goto LABEL_24;
        }

        v15 = *(a2 + 4);
        if (*(a2 + 3) - v15 > 3uLL)
        {
          *v15 = 1819042115;
          *(a2 + 4) += 4;
          v16 = *(a2 + 4);
          if (*(a2 + 3) - v16 > 7uLL)
          {
            goto LABEL_29;
          }
        }

        else
        {
          llvm::raw_ostream::write(a2, "Call", 4uLL);
          v16 = *(a2 + 4);
          if (*(a2 + 3) - v16 > 7uLL)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      llvm::raw_ostream::write(a2, "// -- ", 6uLL);
      v14 = *v11 & 6;
      if (v14 != 4)
      {
        goto LABEL_17;
      }
    }

    v17 = *(a2 + 4);
    if ((*(a2 + 3) - v17) <= 4)
    {
      llvm::raw_ostream::write(a2, "Child", 5uLL);
LABEL_24:
      v16 = *(a2 + 4);
      if (*(a2 + 3) - v16 > 7uLL)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    *(v17 + 4) = 100;
    *v17 = 1818847299;
    *(a2 + 4) += 5;
    v16 = *(a2 + 4);
    if (*(a2 + 3) - v16 > 7uLL)
    {
LABEL_29:
      *v16 = 0x203A20656764452DLL;
      *(a2 + 4) += 8;
      goto LABEL_30;
    }

LABEL_25:
    llvm::raw_ostream::write(a2, "-Edge : ", 8uLL);
LABEL_30:
    mlir::CallGraph::print(llvm::raw_ostream &)const::$_0::operator()(&v77, (*v11 & 0xFFFFFFFFFFFFFFF8));
    v18 = *(a2 + 4);
    if (*(a2 + 3) == v18)
    {
      llvm::raw_ostream::write(a2, "\n", 1uLL);
      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v18 = 10;
      ++*(a2 + 4);
      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_32;
      }
    }
  }
}

void mlir::CallGraph::print(llvm::raw_ostream &)const::$_0::operator()(void *a1, unint64_t *a2)
{
  if ((*a1 + 40) == a2)
  {
    v9 = a1[1];
    v10 = v9[4];
    if (v9[3] - v10 > 0x15uLL)
    {
      qmemcpy(v10, "<External-Caller-Node>", 22);
      v9[4] += 22;
      return;
    }

    v11 = "<External-Caller-Node>";
    v12 = 22;

    goto LABEL_8;
  }

  if ((*a1 + 136) == a2)
  {
    v9 = a1[1];
    v13 = v9[4];
    if (v9[3] - v13 > 0x14uLL)
    {
      qmemcpy(v13, "<Unknown-Callee-Node>", 21);
      v9[4] += 21;
      return;
    }

    v11 = "<Unknown-Callee-Node>";
    v12 = 21;

LABEL_8:
    llvm::raw_ostream::write(v9, v11, v12);
    return;
  }

  v19[5] = v2;
  v19[6] = v3;
  v4 = *a2;
  v5 = *(*a2 + 16);
  v7 = a1[1];
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    v7 = llvm::raw_ostream::write(a1[1], "'", 1uLL);
  }

  else
  {
    *v8 = 39;
    ++*(v7 + 4);
  }

  v19[0] = *(*(v4 + 16) + 48);
  mlir::OperationName::print(v19, v7);
  v14 = *(v7 + 4);
  if ((*(v7 + 3) - v14) > 0xB)
  {
    *(v14 + 8) = 589327983;
    *v14 = *"' - Region #";
    *(v7 + 4) += 12;
  }

  else
  {
    v7 = llvm::raw_ostream::write(v7, "' - Region #", 0xCuLL);
  }

  RegionNumber = mlir::Region::getRegionNumber(v4);
  llvm::raw_ostream::operator<<(v7, RegionNumber);
  AttrDictionary = mlir::Operation::getAttrDictionary(v5);
  if (mlir::DictionaryAttr::size(&AttrDictionary))
  {
    v16 = a1[1];
    v17 = *(v16 + 4);
    if ((*(v16 + 3) - v17) > 2)
    {
      *(v17 + 2) = 32;
      *v17 = 14880;
      *(v16 + 4) += 3;
    }

    else
    {
      v16 = llvm::raw_ostream::write(a1[1], " : ", 3uLL);
    }

    v19[0] = AttrDictionary;
    mlir::Attribute::print(v19, v16);
  }
}

void llvm::iterator_range<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>>::~iterator_range(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 168) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    *(a1 + 144) = v4;
    operator delete(v4);
  }

  llvm::deallocate_buffer(*(a1 + 112), (16 * *(a1 + 128)));
}

void sub_256E21878()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    *(v0 + 88) = v1;
    operator delete(v1);
  }

  v2 = *(v0 + 56);
  if (v2)
  {
    *(v0 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    *(v0 + 40) = v3;
    operator delete(v3);
  }

  llvm::deallocate_buffer(*(v0 + 8), (16 * *(v0 + 24)));
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = v6 - 1;
  v9 = (v6 - 1) & ((*a2 >> 9) ^ *a2);
  v10 = (v7 + 8 * v9);
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 8);
      v12 = *(result + 16);
    }

    *a3 = v10;
    *(a3 + 8) = v4 + 8 * v12;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -2)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -16;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = (v7 + 8 * (v18 & v8));
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - *(result + 4) <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -2)
  {
    --*(result + 4);
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v14 = *(result + 16);
  }

  *a3 = v10;
  *(a3 + 8) = v4 + 8 * v14;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::LookupBucketFor<mlir::CallGraphNode::Edge>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (v4 - 1) & ((*a2 >> 9) ^ *a2);
    v7 = (v3 + 8 * v6);
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
      while (v8 != -2)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::grow(uint64_t a1, unsigned int a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
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
    if (a2 > 4)
    {
      v13 = a2;
      v14 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v14;
      *(v14 + 8) = buffer;
      *(v14 + 16) = v13;
    }

    else
    {
      *a1 |= 1u;
    }

    v16 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, v5, &v16[v5]);

    llvm::deallocate_buffer(v5, v16);
  }

  v7 = *(a1 + 8);
  v8 = &v22;
  if (v7 == -16 || v7 == -2)
  {
    v10 = *(a1 + 16);
    if (v10 != -16 && v10 != -2)
    {
LABEL_28:
      *v8++ = v10;
      v12 = *(a1 + 24);
      if (v12 == -16)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v22 = *(a1 + 8);
    v8 = v23;
    v10 = *(a1 + 16);
    if (v10 != -16 && v10 != -2)
    {
      goto LABEL_28;
    }
  }

  v12 = *(a1 + 24);
  if (v12 == -16)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (v12 != -2)
  {
    *v8++ = v12;
  }

LABEL_31:
  v18 = *(a1 + 32);
  if (v18 != -16 && v18 != -2)
  {
    *v8++ = v18;
  }

  if (a2 >= 5)
  {
    *a1 &= ~1u;
    v19 = a2;
    v20 = a1;
    v21 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v20;
    *(v20 + 8) = v21;
    *(v20 + 16) = v19;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(a1, &v22, v8);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,4u,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>,mlir::CallGraphNode::Edge,llvm::detail::DenseSetEmpty,mlir::CallGraphNode::EdgeKeyInfo,llvm::detail::DenseSetPair<mlir::CallGraphNode::Edge>>::moveFromOldBuckets(_DWORD *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v8 = 4;
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 1);
  }

  memset_pattern16(v9, &unk_25738E810, 8 * v8);
LABEL_10:
  while (a2 != a3)
  {
    v15 = *a2;
    if (*a2 != -16 && v15 != -2)
    {
      if (*a1)
      {
        v11 = 3;
        v10 = v7;
      }

      else
      {
        v10 = *(a1 + 1);
        v11 = a1[4] - 1;
      }

      v12 = v11 & ((v15 >> 9) ^ v15);
      v13 = &v10[2 * v12];
      v14 = *v13;
      if (v15 != *v13)
      {
        v17 = 0;
        v18 = 1;
        while (v14 != -2)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v14 == -16;
          }

          if (v19)
          {
            v17 = v13;
          }

          v20 = v12 + v18++;
          v12 = v20 & v11;
          v13 = &v10[2 * (v20 & v11)];
          v14 = *v13;
          if (v15 == *v13)
          {
            goto LABEL_8;
          }
        }

        if (v17)
        {
          v13 = v17;
        }
      }

LABEL_8:
      *v13 = v15;
      *a1 += 2;
    }

    ++a2;
  }
}

uint64_t llvm::MapVector<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>,llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,llvm::SmallVector<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>,0u>>::erase(uint64_t *a1, void *a2)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v5));
    if (*a2 == v7)
    {
LABEL_3:
      *(v4 + 16 * v6) = -8192;
      a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v16 = 1;
      while (v7 != -4096)
      {
        v17 = v6 + v16++;
        v6 = v17 & v5;
        v7 = *(v4 + 16 * v6);
        if (*a2 == v7)
        {
          goto LABEL_3;
        }
      }
    }
  }

  result = llvm::SmallVectorImpl<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>>::erase(a1 + 3, a2);
  v9 = a1[3];
  if (result != v9 + 16 * *(a1 + 8) && *(a1 + 2))
  {
    v10 = *(a1 + 4);
    if (v10)
    {
      v11 = 16 * v10;
      for (i = *a1; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 16)
      {
        v11 -= 16;
        if (!v11)
        {
          return result;
        }
      }
    }

    else
    {
      i = *a1;
    }

    v13 = *a1 + 16 * v10;
    if (i != v13)
    {
      v14 = (result - v9) >> 4;
      do
      {
        v15 = *(i + 8);
        if (v14 < v15)
        {
          *(i + 8) = v15 - 1;
        }

        do
        {
          i += 16;
        }

        while (i != v13 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (i != v13);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::Region *,std::unique_ptr<mlir::CallGraphNode>>>::erase(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *a1 + 16 * v6;
  if (a2 + 16 == v7)
  {
    v8 = v6 - 1;
    *(a1 + 2) = v8;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;
    if (!v10)
    {
      return a2;
    }
  }

  else
  {
    do
    {
      v12 = *(v4 - 1);
      v13 = *v4;
      *(v4 + 1) = 0;
      *(v4 - 1) = v13;
      if (v12)
      {
        v14 = *(v12 + 48);
        if (v14 != (v12 + 64))
        {
          free(v14);
        }

        if ((*(v12 + 8) & 1) == 0)
        {
          llvm::deallocate_buffer(*(v12 + 16), (8 * *(v12 + 24)));
        }

        MEMORY[0x259C63180](v12, 0x10A0C40D4B41969);
      }

      ++v4;
    }

    while (v4 != v7);
    v15 = *a1;
    v16 = *(a1 + 2) - 1;
    *(a1 + 2) = v16;
    v17 = v15 + 16 * v16;
    v10 = *(v17 + 8);
    *(v17 + 8) = 0;
    if (!v10)
    {
      return a2;
    }
  }

  v18 = *(v10 + 48);
  if (v18 != (v10 + 64))
  {
    free(v18);
  }

  if ((*(v10 + 8) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v10 + 16), (8 * *(v10 + 24)));
  }

  MEMORY[0x259C63180](v10, 0x10A0C40D4B41969);
  return a2;
}

void llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::scc_iterator(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  llvm::deallocate_buffer(0, 0);
}

uint64_t sub_256E222E8()
{
  v3 = *(v1 + 24);
  *(v0 + 24) = v3;
  if (v3)
  {
    buffer = llvm::allocate_buffer(16 * v3, 8uLL);
    *(v0 + 8) = buffer;
    *(v0 + 16) = *(v1 + 16);
    memcpy(buffer, *(v1 + 8), 16 * *(v0 + 24));
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_14;
  }

  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_14:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v10 = *(v1 + 80);
  v9 = *(v1 + 88);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return v0;
}

void mlir::AnalysisState::~AnalysisState(mlir::AnalysisState *this)
{
  *this = &unk_286892700;
  v2 = *(this + 5);
  if (v2 != this + 56)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 2), (16 * *(this + 8)));
}

uint64_t mlir::AnalysisState::addDependency(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 16, v7, v6);
  if (v6[16] == 1)
  {
    v5 = *(a1 + 48);
    if (v5 >= *(a1 + 52))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 40) + 16 * v5) = *v7;
    ++*(a1 + 48);
  }

  return result;
}

uint64_t mlir::AnalysisState::dump(mlir::AnalysisState *this)
{
  v2 = llvm::errs(this);
  v3 = *(*this + 16);

  return v3(this, v2);
}

uint64_t *mlir::ProgramPoint::print(uint64_t *this, llvm::raw_ostream *a2)
{
  v2 = *this;
  if (*this > 7)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((v2 & 4) == 0 && v4)
    {
      mlir::OpPrintingFlags::OpPrintingFlags(v7);
      v6 = mlir::OpPrintingFlags::skipRegions(v7, 1);
      mlir::Operation::print(v4, a2, v6);
    }

    return mlir::Block::print((v2 & 0xFFFFFFFFFFFFFFF8), a2);
  }

  else
  {
    v3 = *(a2 + 4);
    if ((*(a2 + 3) - v3) > 0xB)
    {
      *(v3 + 8) = 1045712457;
      *v3 = *"<NULL POINT>";
      *(a2 + 4) += 12;
    }

    else
    {

      return llvm::raw_ostream::write(a2, "<NULL POINT>", 0xCuLL);
    }
  }

  return this;
}

uint64_t *mlir::LatticeAnchor::print(uint64_t *this, llvm::raw_ostream *a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*this > 3)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    if ((v2 & 3) != 0 || v4 == 0)
    {
      if ((v2 & 3) == 2)
      {
        v6 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      }

      else
      {
        v6 = 0;
      }

      v10 = v6;
      if (v6)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v11);
        v8 = mlir::OpPrintingFlags::skipRegions(v11, 1);
        return mlir::Value::print(&v10, a2, v8);
      }

      else
      {
        v11[0] = v2 & 0xFFFFFFFFFFFFFFFCLL;
        return mlir::ProgramPoint::print(v11, a2);
      }
    }

    else
    {
      v9 = *(*v4 + 24);

      return v9();
    }
  }

  else
  {
    v3 = *(a2 + 4);
    if ((*(a2 + 3) - v3) > 0xB)
    {
      *(v3 + 8) = 1045712457;
      *v3 = *"<NULL POINT>";
      *(a2 + 4) += 12;
    }

    else
    {

      return llvm::raw_ostream::write(a2, "<NULL POINT>", 0xCuLL);
    }
  }

  return this;
}

uint64_t mlir::LatticeAnchor::getLoc(mlir::LatticeAnchor *this)
{
  v1 = *this;
  v2 = *this & 3;
  v3 = *this & 0xFFFFFFFFFFFFFFFCLL;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    if (v2 == 2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    v10 = v5;
    if (v5)
    {
      return mlir::Value::getLoc(&v10);
    }

    else
    {
      v8 = (v1 & 0xFFFFFFFFFFFFFFF8);
      if ((v1 & 4) != 0 || !v8)
      {
        Parent = mlir::Block::getParent(v8);

        return mlir::Region::getLoc(Parent);
      }

      else
      {
        return *(v8 + 3);
      }
    }
  }

  else
  {
    v7 = *(*v3 + 16);

    return v7();
  }
}

uint64_t mlir::DataFlowSolver::initializeAndRun(mlir::DataFlowSolver *this, Operation *a2)
{
  v3 = *(this + 16);
  if (v3)
  {
    v5 = *(this + 7);
    v6 = 8 * v3;
    while (((*(**v5 + 16))(*v5, a2) & 1) != 0)
    {
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v7 = *(this + 6);
      if (!v7)
      {
        break;
      }

      v8 = *(this + 2);
      v9 = *(this + 5);
      v10 = (*(v8 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
      v11 = *v10;
      v12 = v10[1];
      *(this + 5) = ++v9;
      *(this + 6) = v7 - 1;
      if (v9 >= 0x200)
      {
        operator delete(*v8);
        *(this + 2) += 8;
        *(this + 5) -= 256;
      }

      if (((*(*v12 + 24))(v12, v11) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t mlir::DataFlowSolver::propagateIfChanged(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return (*(*a2 + 24))(a2, result);
  }

  return result;
}

void *mlir::DataFlowAnalysis::DataFlowAnalysis(void *this, mlir::DataFlowSolver *a2)
{
  *this = &unk_286892730;
  this[1] = a2;
  return this;
}

uint64_t mlir::DataFlowAnalysis::addDependency(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = a3;
  v7[1] = a1;
  result = llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a2 + 16, v7, v6);
  if (v6[16] == 1)
  {
    v5 = *(a2 + 48);
    if (v5 >= *(a2 + 52))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 40) + 16 * v5) = *v7;
    ++*(a2 + 48);
  }

  return result;
}

uint64_t mlir::DataFlowAnalysis::propagateIfChanged(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    return (*(*a2 + 24))(a2, *(result + 8));
  }

  return result;
}

void *mlir::AnalysisState::onUpdate(void *this, mlir::DataFlowSolver *a2)
{
  v2 = *(this + 12);
  if (v2)
  {
    v4 = this[5];
    v5 = *(a2 + 6);
    v6 = 16 * v2;
    do
    {
      v7 = *(a2 + 3);
      v8 = *(a2 + 2);
      v9 = *v4;
      if (v7 == v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = 32 * (v7 - v8) - 1;
      }

      v11 = v5 + *(a2 + 5);
      if (v10 == v11)
      {
        v12 = *v4;
        this = std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
        v9 = v12;
        v8 = *(a2 + 2);
        v11 = *(a2 + 6) + *(a2 + 5);
      }

      *(*(v8 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11) = v9;
      v5 = *(a2 + 6) + 1;
      *(a2 + 6) = v5;
      ++v4;
      v6 -= 16;
    }

    while (v6);
  }

  return this;
}

void *std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v4 = *result;
  v5 = a2[1];
  v6 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * *a2) | (v5 >> 4) ^ (v5 >> 9));
  v7 = v3 - 1;
  v8 = (v3 - 1) & ((v6 >> 31) ^ v6);
  v9 = (*result + 16 * v8);
  v11 = *v9;
  v10 = v9[1];
  if (*a2 != *v9 || v5 != v10)
  {
    v15 = 0;
    v16 = 1;
    while (v11 != -4096 || v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17 && v11 == -8192)
      {
        v15 = v9;
      }

      v19 = v8 + v16++;
      v8 = v19 & v7;
      v9 = (v4 + 16 * (v19 & v7));
      v11 = *v9;
      v10 = v9[1];
      if (*a2 == *v9 && v5 == v10)
      {
        goto LABEL_7;
      }
    }

    if (v15)
    {
      v9 = v15;
    }

LABEL_9:
    v24 = v9;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v3)
    {
      v3 *= 2;
    }

    else if (v3 + ~v14 - *(result + 12) > v3 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v9 != -4096)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v21 = result;
    v22 = a2;
    v23 = a3;
    llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::grow(result, v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::LookupBucketFor<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>(v21, v22, &v24);
    a2 = v22;
    result = v21;
    a3 = v23;
    v9 = v24;
    ++*(v21 + 8);
    if (*v9 != -4096)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (v9[1] == -4096)
    {
LABEL_14:
      *v9 = *a2;
      v9[1] = a2[1];
      v4 = *result;
      v3 = *(result + 16);
      v13 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v13 = 0;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v4 + 16 * v3;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::LookupBucketFor<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * *a2) | (v6 >> 4) ^ (v6 >> 9));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    if (*a2 == *v11 && v6 == v13)
    {
      result = 1;
      *a3 = v11;
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

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

void llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {

    memset_pattern16(buffer, &unk_257371D60, 16 * v10);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>,std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>,void>,llvm::detail::DenseSetPair<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    memset_pattern16(*a1, &unk_257371D60, 16 * v6);
  }

  for (; a2 != a3; a2 += 2)
  {
    v15 = *a2;
    v16 = a2[1];
    if ((*a2 != -4096 || v16 != -4096) && (v15 != -8192 || v16 != -8192))
    {
      v7 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v15) | (v16 >> 4) ^ (v16 >> 9));
      v8 = (v7 >> 31) ^ v7;
      v9 = *(a1 + 16) - 1;
      v10 = v9 & v8;
      v11 = (*a1 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      if (v15 != *v11 || v16 != v13)
      {
        v17 = 0;
        v18 = 1;
        while (v12 != -4096 || v13 != -4096)
        {
          if (v17)
          {
            v19 = 0;
          }

          else
          {
            v19 = v13 == -8192;
          }

          if (v19 && v12 == -8192)
          {
            v17 = v11;
          }

          v21 = v10 + v18++;
          v10 = v21 & v9;
          v11 = (*a1 + 16 * (v21 & v9));
          v12 = *v11;
          v13 = v11[1];
          if (v15 == *v11 && v16 == v13)
          {
            goto LABEL_10;
          }
        }

        if (v17)
        {
          v11 = v17;
        }
      }

LABEL_10:
      *v11 = v15;
      v11[1] = a2[1];
      ++*(a1 + 8);
    }
  }
}

void mlir::DataLayoutAnalysis::DataLayoutAnalysis(mlir::DataLayoutAnalysis *this, mlir::Operation *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  operator new();
}

uint64_t mlir::DataLayoutAnalysis::DataLayoutAnalysis(mlir::Operation *)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result && a2)
  {
    mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    operator new();
  }

  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      operator new();
    }
  }

  return result;
}

uint64_t mlir::DataLayoutAnalysis::getAbove(mlir::DataLayoutAnalysis *this, mlir::Operation *a2)
{
  for (i = *(a2 + 2); i; i = *(ParentOp + 16))
  {
    ParentOp = mlir::Block::getParentOp(i);
    if (!ParentOp)
    {
      break;
    }

    v6 = *(this + 4);
    if (v6)
    {
      v7 = *this;
      v8 = (v6 - 1) & ((ParentOp >> 4) ^ (ParentOp >> 9));
      v9 = *(*this + 16 * v8);
      if (v9 == ParentOp)
      {
LABEL_7:
        if (v8 != v6)
        {
          return *(v7 + 16 * v8 + 8);
        }
      }

      else
      {
        v10 = 1;
        while (v9 != -4096)
        {
          v11 = v8 + v10++;
          v8 = v11 & (v6 - 1);
          v9 = *(v7 + 16 * v8);
          if (v9 == ParentOp)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return *(this + 3);
}

uint64_t mlir::DataLayoutAnalysis::getAtOrAbove(mlir::DataLayoutAnalysis *this, mlir::Operation *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *this;
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(*this + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 != v3)
      {
        return *(v4 + 16 * v5 + 8);
      }
    }

    else
    {
      v14 = 1;
      while (v6 != -4096)
      {
        v15 = v5 + v14++;
        v5 = v15 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  for (i = *(a2 + 2); i; i = *(ParentOp + 16))
  {
    ParentOp = mlir::Block::getParentOp(i);
    if (!ParentOp)
    {
      break;
    }

    v10 = *(this + 4);
    if (v10)
    {
      v4 = *this;
      v5 = ((ParentOp >> 4) ^ (ParentOp >> 9)) & (v10 - 1);
      v11 = *(*this + 16 * v5);
      if (v11 == ParentOp)
      {
LABEL_10:
        if (v5 != v10)
        {
          return *(v4 + 16 * v5 + 8);
        }
      }

      else
      {
        v12 = 1;
        while (v11 != -4096)
        {
          v13 = v5 + v12++;
          v5 = v13 & (v10 - 1);
          v11 = *(v4 + 16 * v5);
          if (v11 == ParentOp)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return *(this + 3);
}

uint64_t mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::DataLayoutOpInterface,mlir::detail::DataLayoutOpInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[115];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::DataLayoutOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DataLayoutOpInterface]";
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::DataLayout>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::DataLayout>>>,mlir::Operation *,std::unique_ptr<mlir::DataLayout>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::DataLayout>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::DataLayout>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::DataLayout>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::DataLayout>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::DataLayout>>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
          ++*(a1 + 8);
          std::unique_ptr<mlir::DataLayout>::reset[abi:nn200100](v16 + 1, 0);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t mlir::getFlattenedAffineExpr(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v20[1] = *MEMORY[0x277D85DE8];
  __p = 0;
  v18 = 0;
  v19 = 0;
  v20[0] = a1;
  FlattenedAffineExprs = getFlattenedAffineExprs(v20, 1, a2, a3, &__p, a5, a6);
  v8 = __p;
  if (__p != a4)
  {
    v9 = *(__p + 2);
    v10 = *(a4 + 8);
    if (v10 >= v9)
    {
      if (v9)
      {
        memmove(*a4, *__p, 8 * v9);
      }

      goto LABEL_10;
    }

    if (*(a4 + 12) < v9)
    {
      *(a4 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v10)
    {
      memmove(*a4, *__p, 8 * v10);
      v11 = v8[2] - v10;
      if (!v11)
      {
LABEL_10:
        *(a4 + 8) = v9;
        v8 = __p;
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(__p + 2);
      if (!*(__p + 2))
      {
        goto LABEL_10;
      }
    }

    memcpy((*a4 + 8 * v10), (*v8 + 8 * v10), 8 * v11);
    goto LABEL_10;
  }

LABEL_11:
  if (v8)
  {
    v12 = v18;
    v13 = v8;
    if (v18 != v8)
    {
      do
      {
        v15 = *(v12 - 10);
        v12 -= 20;
        v14 = v15;
        if (v12 + 4 != v15)
        {
          free(v14);
        }
      }

      while (v12 != v8);
      v13 = __p;
    }

    v18 = v8;
    operator delete(v13);
  }

  return FlattenedAffineExprs;
}

uint64_t getFlattenedAffineExprs(int a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14[84] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a7)
    {
    }
  }

  if (a6)
  {
    LODWORD(v8) = 0;
    DWORD1(v8) = a3;
    *(&v8 + 1) = a4;
    v9 = &unk_286893110;
    v11 = 0;
    *__p = v8;
    __src = v14;
    v13 = 0;
    mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
  }

  return 1;
}

uint64_t mlir::getFlattenedAffineExprs(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v25[72] = *MEMORY[0x277D85DE8];
  v15 = a1;
  if (mlir::AffineMap::getNumResults(&v15))
  {
    Results = mlir::AffineMap::getResults(&v15);
    v9 = v8;
    NumDims = mlir::AffineMap::getNumDims(&v15);
    NumSymbols = mlir::AffineMap::getNumSymbols(&v15);
    return getFlattenedAffineExprs(Results, v9, NumDims, NumSymbols, a2, a3, a4);
  }

  else
  {
    if (a3)
    {
      v13 = mlir::AffineMap::getNumDims(&v15);
      v14 = mlir::AffineMap::getNumSymbols(&v15);
      LODWORD(v16) = 0;
      DWORD1(v16) = v13;
      *(&v16 + 1) = v14;
      v17 = 0;
      v18 = &v20;
      v19 = 0;
      v20 = &unk_286893110;
      v22 = 0;
      v21 = v16;
      __src = v25;
      v24 = 0;
      mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
    }

    return 1;
  }
}

uint64_t mlir::getFlattenedAffineExprs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[72] = *MEMORY[0x277D85DE8];
  v13 = a1;
  if (mlir::IntegerSet::getNumConstraints(&v13))
  {
    Constraints = mlir::IntegerSet::getConstraints(&v13);
    v7 = v6;
    NumDims = mlir::IntegerSet::getNumDims(&v13);
    NumSymbols = mlir::IntegerSet::getNumSymbols(&v13);
    return getFlattenedAffineExprs(Constraints, v7, NumDims, NumSymbols, a2, a3, 0);
  }

  else
  {
    if (a3)
    {
      v11 = mlir::IntegerSet::getNumDims(&v13);
      v12 = mlir::IntegerSet::getNumSymbols(&v13);
      LODWORD(v14) = 0;
      DWORD1(v14) = v11;
      *(&v14 + 1) = v12;
      v15 = 0;
      v16 = &v18;
      v17 = 0;
      v18 = &unk_286893110;
      v20 = 0;
      v19 = v14;
      __src = v23;
      v22 = 0;
      mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
    }

    return 1;
  }
}

uint64_t mlir::FlatLinearConstraints::getLowerAndUpperBound(_DWORD *a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  mlir::presburger::IntegerRelation::getLowerAndUpperBoundIndices(a1, a3 + a2, &v38, &v35, &v32);
  v29 = v31;
  v30 = 0x800000000;
  v26 = v28;
  v27 = 0x800000000;
  v23 = v25;
  v24 = 0x400000000;
  v19 = a5 - a4;
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  if (v33 + v39 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = v12 - a5;
  v17 = v13 + v14;
  if (v39)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  v20 = v22;
  v21 = 0x400000000;
  if (v33 + v36 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (v33)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  v15 = mlir::AffineMap::get(v19, v18 + v17, v23, v24, a8);
  mlir::AffineMap::get(v19, v18 + v17, v20, v21, a8);
  if (v20 != v22)
  {
    free(v20);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  return v15;
}

void mlir::FlatLinearConstraints::getSliceBounds(uint64_t a1, unsigned int a2, unsigned int a3, mlir::MLIRContext *a4, void *a5, void *a6, int a7)
{
  v118[8] = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::normalizeConstraintsByGCD(a1);
  v11 = *(a1 + 8);
  v12 = *(a1 + 12);
  v13 = (a1 + 8);
  v14 = v12 + v11;
  v15 = *(a1 + 16) + *(a1 + 20);
  v116 = v118;
  v117 = 0x800000000;
  v16 = v12 + v11 + v15;
  if (v16)
  {
    if (v16 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v14 + v15)
    {
      bzero(v116, 8 * (v14 + v15));
    }

    LODWORD(v117) = v16;
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    v14 = v12 + v11;
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  v17 = 0;
  v18 = v14;
  do
  {
    if (v17 < a2)
    {
      v19 = v17;
LABEL_10:
      v116->i64[v17] = mlir::getAffineDimExpr(v19, a4, v10);
      goto LABEL_11;
    }

    if (v17 >= a3 + a2)
    {
      v19 = v17 - a3;
      goto LABEL_10;
    }

LABEL_11:
    ++v17;
  }

  while (v18 != v17);
  v11 = *(a1 + 8);
  v12 = *(a1 + 12);
  v14 = v12 + v11;
LABEL_16:
  v20 = *(a1 + 16);
  v92 = a3;
  if (v14 < v14 + v20)
  {
    v21 = v14;
    do
    {
      v116->i64[v21] = mlir::getAffineSymbolExpr((v21 - (*(a1 + 8) + *(a1 + 12))), a4, v10);
      ++v21;
      --v20;
    }

    while (v20);
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    v20 = *(a1 + 16);
  }

  v22 = *(a1 + 20);
  v96 = a4;
  while (2)
  {
    if (v12 + v11 + v20 + v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_28:
      if (v116->i64[v24])
      {
        goto LABEL_27;
      }

      mlir::presburger::IntegerRelation::getConstantBound(a1, 1, v24, &v112);
      v27 = v114;
      if (v114 == 1)
      {
        if (v113)
        {
          v28 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
          if ((v114 & 1) != 0 && v113 > 0x40 && v112)
          {
            MEMORY[0x259C63150](v112, 0x1000C8000313F17);
          }
        }

        else
        {
          v28 = v112;
        }
      }

      else
      {
        v28 = 0;
      }

      mlir::presburger::IntegerRelation::getConstantBound(a1, 2, v24, &v112);
      if ((v114 & 1) == 0)
      {
        goto LABEL_86;
      }

      if (v113)
      {
        v30 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
        if ((v114 & 1) != 0 && v113 > 0x40 && v112)
        {
          MEMORY[0x259C63150](v112, 0x1000C8000313F17);
        }
      }

      else
      {
        v30 = v112;
      }

      if (v27)
      {
        if (v28 != v30)
        {
          if (!v28 && v30 >= 1)
          {
            v31 = *(a1 + 48);
            if (v31)
            {
              v32 = 0;
              v94 = v30 + 1;
              v93 = v25;
              v97 = *(a1 + 48);
              while (1)
              {
                v33 = (*(a1 + 64) + 16 * (v24 + *(a1 + 56) * v32));
                v34 = *v33;
                v112 = *v33;
                v35 = *(v33 + 2);
                if (v35)
                {
                  v113 = *(v33 + 2);
                  if (v35 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v112, v33);
                  }

                  v34 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
                  if (v113 >= 0x41 && v112)
                  {
                    MEMORY[0x259C63150](v112, 0x1000C8000313F17);
                  }
                }

                if (v34)
                {
                  v36 = (*(a1 + 64) + 16 * (vaddvq_s32(*(a1 + 8)) + *(a1 + 56) * v32));
                  v37 = *v36;
                  v112 = *v36;
                  v38 = *(v36 + 2);
                  if (v38)
                  {
                    v113 = *(v36 + 2);
                    if (v38 >= 0x41)
                    {
                      llvm::APInt::initSlowCase(&v112, v36);
                    }

                    v37 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
                    if (v113 >= 0x41 && v112)
                    {
                      v48 = v37;
                      MEMORY[0x259C63150](v112, 0x1000C8000313F17);
                      v37 = v48;
                      v31 = v97;
                    }
                  }

                  if (!v37)
                  {
                    break;
                  }
                }

LABEL_51:
                if (++v32 == v31)
                {
                  goto LABEL_86;
                }
              }

              AffineConstantExpr = mlir::getAffineConstantExpr(0, a4, v29);
              if (*(a1 + 12) + *(a1 + 8) + *(a1 + 16))
              {
                v39 = 0;
                v40 = 0;
                v98 = 0;
                v41 = 8 * (*(a1 + 12) + *(a1 + 8) + *(a1 + 16));
                do
                {
                  if (v23 != v40)
                  {
                    v42 = (*(a1 + 64) + 16 * (v39 + v32 * *(a1 + 56)));
                    v43 = *v42;
                    v112 = *v42;
                    v44 = *(v42 + 2);
                    if (v44)
                    {
                      v113 = *(v42 + 2);
                      if (v44 >= 0x41)
                      {
                        llvm::APInt::initSlowCase(&v112, v42);
                      }

                      v43 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
                      if (v113 >= 0x41 && v112)
                      {
                        v95 = v43;
                        MEMORY[0x259C63150](v112, 0x1000C8000313F17);
                        v43 = v95;
                      }
                    }

                    if (v43)
                    {
                      if (v43 % (v34 * v94))
                      {
                        if (!v116->i64[v40 / 8])
                        {
                          a4 = v96;
                          v13 = (a1 + 8);
                          v25 = v93;
                          v31 = v97;
                          goto LABEL_51;
                        }

                        v45 = mlir::AffineExpr::operator*(&v116->i64[v40 / 8], v43);
                        AffineConstantExpr = mlir::AffineExpr::operator+(&AffineConstantExpr, v45);
                      }

                      else
                      {
                        ++v98;
                      }
                    }
                  }

                  v40 += 8;
                  ++v39;
                }

                while (v41 != v40);
                if (v34 >= 1)
                {
LABEL_72:
                  v112 = mlir::AffineExpr::operator-(&AffineConstantExpr);
                  p_AffineConstantExpr = &v112;
                  v47 = v34;
                  goto LABEL_75;
                }
              }

              else if (v34 >= 1)
              {
                goto LABEL_72;
              }

              v47 = -v34;
              p_AffineConstantExpr = &AffineConstantExpr;
LABEL_75:
              AffineConstantExpr = mlir::AffineExpr::floorDiv(p_AffineConstantExpr, v47);
              mlir::simplifyAffineExpr(AffineConstantExpr, (*(a1 + 12) + *(a1 + 8)), *(a1 + 16));
            }
          }

          goto LABEL_86;
        }

        v26 = mlir::getAffineConstantExpr(v28, a4, v29);
LABEL_25:
        v116->i64[v24] = v26;
      }

      else
      {
LABEL_86:
        if (!detectAsFloorDiv(a1, v24, a4, &v116))
        {
          v99[0] = 0;
          if (!mlir::presburger::IntegerRelation::findConstraintWithNonZeroAt(a1, v24, 1, v99))
          {
            goto LABEL_27;
          }

          AffineConstantExpr = mlir::getAffineConstantExpr(0, a4, v49);
          v50 = vaddvq_s32(*v13);
          if (v50)
          {
            v51 = 0;
            v52 = 0;
            v53 = 8 * v50;
            do
            {
              if (v23 != v52)
              {
                v55 = (*(a1 + 64) + 16 * (v51 + *(a1 + 56) * v99[0]));
                v56 = *v55;
                v112 = *v55;
                v57 = *(v55 + 2);
                if (v57)
                {
                  v113 = *(v55 + 2);
                  if (v57 >= 0x41)
                  {
                    llvm::APInt::initSlowCase(&v112, v55);
                  }

                  v56 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
                  if (v113 >= 0x41 && v112)
                  {
                    v58 = v25;
                    v59 = v56;
                    MEMORY[0x259C63150](v112, 0x1000C8000313F17);
                    v56 = v59;
                    v25 = v58;
                  }
                }

                if (v56)
                {
                  if (!v116->i64[v52 / 8])
                  {
                    goto LABEL_27;
                  }

                  v54 = mlir::AffineExpr::operator*(&v116->i64[v52 / 8], v56);
                  AffineConstantExpr = mlir::AffineExpr::operator+(&AffineConstantExpr, v54);
                }
              }

              v52 += 8;
              ++v51;
            }

            while (v53 != v52);
            v50 = vaddvq_s32(*v13);
          }

          v60 = (*(a1 + 64) + 16 * (v50 + *(a1 + 56) * v99[0]));
          v61 = *v60;
          v112 = *v60;
          v62 = *(v60 + 2);
          if (v62)
          {
            v113 = *(v60 + 2);
            if (v62 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v112, v60);
            }

            v61 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
            if (v113 >= 0x41 && v112)
            {
              v68 = v61;
              MEMORY[0x259C63150](v112, 0x1000C8000313F17);
              v61 = v68;
            }
          }

          AffineConstantExpr = mlir::AffineExpr::operator+(&AffineConstantExpr, v61);
          v63 = (*(a1 + 64) + 16 * (v24 + *(a1 + 56) * v99[0]));
          v64 = *v63;
          v112 = *v63;
          v65 = *(v63 + 2);
          if (v65)
          {
            v113 = *(v63 + 2);
            if (v65 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v112, v63);
            }

            v64 = llvm::detail::SlowDynamicAPInt::operator long long(&v112);
            if (v113 >= 0x41 && v112)
            {
              MEMORY[0x259C63150](v112, 0x1000C8000313F17);
            }
          }

          if (v64 < 1)
          {
            v67 = -v64;
            v66 = &AffineConstantExpr;
          }

          else
          {
            v112 = mlir::AffineExpr::operator-(&AffineConstantExpr);
            v66 = &v112;
            v67 = v64;
          }

          v26 = mlir::AffineExpr::floorDiv(v66, v67);
          goto LABEL_25;
        }
      }

      v25 = 1;
LABEL_27:
      ++v24;
      v11 = *(a1 + 8);
      v12 = *(a1 + 12);
      v20 = *(a1 + 16);
      v22 = *(a1 + 20);
      v23 += 8;
      if (v24 >= (v12 + v11 + v20 + v22))
      {
        if (v25)
        {
          continue;
        }

        break;
      }

      goto LABEL_28;
    }

    break;
  }

  LOBYTE(v112) = 0;
  v115 = 0;
  v69 = v92;
  if (!v92)
  {
    goto LABEL_160;
  }

  v70 = 0;
  v71 = 0;
  while (2)
  {
    v72 = *(a1 + 12);
    v73 = *(a1 + 8) - v69;
    v74 = *(a1 + 16);
    v75 = a2 + v71;
    v76 = v116->i64[a2 + v71];
    *v99 = v76;
    if (v76)
    {
      mlir::simplifyAffineExpr(v76, v73 + v72, v74);
    }

    v77 = (*a5 + 8 * v71);
    v78 = (*a6 + 8 * v71);
    if (*(a1 + 20))
    {
      if (*v77)
      {
        goto LABEL_139;
      }

      goto LABEL_140;
    }

    if ((v115 & 1) == 0)
    {
      v101 = *(a1 + 8);
      v102 = *(a1 + 24);
      AffineConstantExpr = &unk_286893110;
      __dst = &v105;
      v104 = 0;
      if (&AffineConstantExpr != a1 && *(a1 + 40))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v105 = *(a1 + 48);
      v106 = *(a1 + 56);
      v107[0] = v108;
      v107[1] = 0x1000000000;
      if (*(a1 + 72))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v107, (a1 + 64));
      }

      v108[32] = *(a1 + 336);
      v109 = *(a1 + 344);
      v110[0] = &v111;
      v110[1] = 0x1000000000;
      if (*(a1 + 360))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v110, (a1 + 352));
      }

      AffineConstantExpr = &unk_286892830;
      if (v115 == 1)
      {
        mlir::presburger::IntegerRelation::~IntegerRelation(&v112);
        v115 = 0;
      }

      mlir::FlatLinearConstraints::FlatLinearConstraints(&v112, &AffineConstantExpr);
      v115 = 1;
      mlir::presburger::IntegerRelation::~IntegerRelation(&AffineConstantExpr);
      mlir::presburger::IntegerRelation::removeRedundantInequalities(&v112);
    }

    *v77 = mlir::FlatLinearConstraints::getLowerAndUpperBound(&v112, v71, a2, v92, *(a1 + 12) + *(a1 + 8), 0, 0, v96);
    *v78 = v79;
    if (!*v77)
    {
LABEL_140:
      mlir::presburger::IntegerRelation::getConstantBound(a1, 1, v75, &AffineConstantExpr);
      if (BYTE8(v101) == 1)
      {
        if (v101)
        {
          v81 = llvm::detail::SlowDynamicAPInt::operator long long(&AffineConstantExpr);
          if ((BYTE8(v101) & 1) != 0 && v101 > 0x40 && AffineConstantExpr)
          {
            v87 = v81;
            MEMORY[0x259C63150](AffineConstantExpr, 0x1000C8000313F17);
            v81 = v87;
          }
        }

        else
        {
          v81 = AffineConstantExpr;
        }

        v82 = mlir::getAffineConstantExpr(v81, v96, v80);
        *v77 = mlir::AffineMap::get(v73 + v72, v74, v82);
      }

      goto LABEL_148;
    }

LABEL_139:
    if (mlir::AffineMap::getNumResults(v77) >= 2)
    {
      goto LABEL_140;
    }

LABEL_148:
    if (!*v78 || mlir::AffineMap::getNumResults(v78) >= 2)
    {
      mlir::presburger::IntegerRelation::getConstantBound(a1, 2, v75, &AffineConstantExpr);
      if (BYTE8(v101) == 1)
      {
        if (v101)
        {
          v84 = llvm::detail::SlowDynamicAPInt::operator long long(&AffineConstantExpr);
          if ((BYTE8(v101) & 1) != 0 && v101 > 0x40 && AffineConstantExpr)
          {
            v85 = v84;
            MEMORY[0x259C63150](AffineConstantExpr, 0x1000C8000313F17);
            v84 = v85;
          }
        }

        else
        {
          v84 = AffineConstantExpr;
        }

        v86 = mlir::getAffineConstantExpr((v84 + (a7 ^ 1u)), v96, v83);
        *v78 = mlir::AffineMap::get(v73 + v72, v74, v86);
      }
    }

    ++v71;
    v70 += 8;
    v69 = v92;
    if (8 * v92 != v70)
    {
      continue;
    }

    break;
  }

  if (v115)
  {
    mlir::presburger::IntegerRelation::~IntegerRelation(&v112);
  }

LABEL_160:
  if (v116 != v118)
  {
    free(v116);
  }
}

BOOL detectAsFloorDiv(uint64_t a1, unsigned int a2, mlir::MLIRContext *a3, int64x2_t **a4)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 12) + *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = (v8 + v9 + v10);
  v40 = v43;
  v42 = 8;
  if (v11 > 8)
  {
    v41 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (!v11)
  {
    v41 = (v8 + v9 + v10);
    goto LABEL_28;
  }

  bzero(v43, (v8 + v9 + v10));
  v41 = (v8 + v9 + v10);
  v12 = *a4;
  v13 = v40;
  if (v11 >= 4 && (v40 >= v12 + 8 * v11 || v12 >= (v40 + v11)))
  {
    v18 = v11 & 0xFFFFFFFC;
    v19 = -v18;
    v20 = *a4;
    v21 = v40 + 1;
    while (1)
    {
      v22 = v20[1];
      v23 = vmovn_s64(vtstq_s64(*v20, *v20));
      if (vuzp1_s16(v23, *v22.i8).u8[0])
      {
        *(v21 - 1) = 1;
        if ((vuzp1_s16(v23, *&v22).i8[2] & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((vuzp1_s16(v23, *&v22).i8[2] & 1) == 0)
      {
LABEL_20:
        v24 = vmovn_s64(vtstq_s64(v22, v22));
        if (vuzp1_s16(v24, v24).i32[1])
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      *v21 = 1;
      v24 = vmovn_s64(vtstq_s64(v22, v22));
      if (vuzp1_s16(v24, v24).i32[1])
      {
LABEL_21:
        v21[1] = 1;
        if (vuzp1_s16(v24, v24).i8[6])
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }

LABEL_25:
      if (vuzp1_s16(v24, v24).i8[6])
      {
LABEL_26:
        v21[2] = 1;
      }

LABEL_17:
      v20 += 2;
      v21 += 4;
      v19 += 4;
      if (!v19)
      {
        if (v18 == v11)
        {
          goto LABEL_28;
        }

        goto LABEL_12;
      }
    }
  }

  v18 = 0;
LABEL_12:
  v15 = &v13[v18];
  v16 = v11 - v18;
  v17 = &v12->i64[v18];
  do
  {
    if (*v17)
    {
      *v15 = 1;
    }

    ++v17;
    ++v15;
    --v16;
  }

  while (v16);
LABEL_28:
  v25 = v8 + v9 + v10;
  v37 = v39;
  v38 = 0x800000000;
  v26 = (v25 + 1);
  if (v25 != -1)
  {
    if (v26 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v37, 8 * v26);
    LODWORD(v38) = v26;
    v11 = v41;
  }

  v36[0] = 0;
  v28 = mlir::presburger::computeSingleVarRepr(a1, v40, v11, a2, &v37, v36) - 3;
  if (v28 < 0xFFFFFFFE)
  {
    AffineConstantExpr = mlir::getAffineConstantExpr(*(v37 + v38 - 1), a3, v27);
    v29 = vaddvq_s32(*(a1 + 8));
    if (v29)
    {
      v30 = 0;
      v31 = 8 * v29;
      do
      {
        v32 = *(v37 + v30);
        if (v32)
        {
          *&v36[1] = (*a4)->i64[v30 / 8];
          v33 = mlir::AffineExpr::operator*(&v36[1], v32);
          AffineConstantExpr = mlir::AffineExpr::operator+(&AffineConstantExpr, v33);
        }

        v30 += 8;
      }

      while (v31 != v30);
    }

    (*a4)->i64[a2] = mlir::AffineExpr::floorDiv(&AffineConstantExpr, v36[0]);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v43)
  {
    free(v40);
  }

  return v28 < 0xFFFFFFFE;
}

void mlir::FlatLinearConstraints::addBound()
{
  mlir::FlatLinearConstraints::flattenAlignedMapAndMergeLocals();
}

{
  mlir::FlatLinearConstraints::addBound();
}

BOOL mlir::FlatLinearConstraints::computeLocalVars(_DWORD *a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = (v7 + v6);
  if (v7 + v6)
  {
    v10 = 0;
    do
    {
      *(*a2 + 8 * v10) = mlir::getAffineDimExpr(v10, a3, a3);
      v10 = (v10 + 1);
    }

    while (v9 != v10);
  }

  if (v9 < v9 + v8)
  {
    v11 = 0;
    v12 = 8 * (v7 + v6);
    do
    {
      *(*a2 + v12) = mlir::getAffineSymbolExpr(v11, a3, a3);
      v11 = (v11 + 1);
      v12 += 8;
    }

    while (v8 != v11);
  }

  v13 = a1[5];
  if (v13)
  {
    v14 = v7 + v6 + v8;
    do
    {
      if (!v13)
      {
        break;
      }

      v15 = 0;
      v16 = v13;
      v17 = v14;
      do
      {
        if (!*(*a2 + 8 * v17))
        {
          v15 |= detectAsFloorDiv(a1, v17, a3, a2);
        }

        ++v17;
        --v16;
      }

      while (v16);
      v13 = a1[5];
    }

    while ((v15 & 1) != 0);
  }

  v18 = *(a2 + 8);
  v19 = v18 - v13;
  if (v18 <= v13)
  {
    v19 = 0;
  }

  if (v18 >= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v18;
  }

  if (!v18)
  {
    return 1;
  }

  v20 = (*a2 + 8 * v19);
  v21 = 8 * v18 - 8;
  do
  {
    v22 = *v20++;
    result = v22 != 0;
    if (v22)
    {
      v24 = v21 == 0;
    }

    else
    {
      v24 = 1;
    }

    v21 -= 8;
  }

  while (!v24);
  return result;
}

uint64_t mlir::FlatLinearConstraints::getAsIntegerSet(mlir::FlatLinearConstraints *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v36[8] = *MEMORY[0x277D85DE8];
  v26 = (this + 48);
  if (!(*(this + 12) + *(this + 84)))
  {
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = *(this + 4);
    AffineConstantExpr = mlir::getAffineConstantExpr(0, a2, a3);
    LOBYTE(v27) = 1;
    return mlir::IntegerSet::get(v6 + v5, v7, &AffineConstantExpr, 1, &v27, 1);
  }

  v9 = vaddvq_s32(*(this + 8));
  v10 = v9;
  AffineConstantExpr = v36;
  v35 = 8;
  if (v9 >= 9)
  {
    v34 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    bzero(v36, 8 * v9);
  }

  v34 = v10;
  v11 = mlir::FlatLinearConstraints::computeLocalVars(this, &AffineConstantExpr, a2);
  v13 = *(this + 2);
  v12 = *(this + 3);
  v14 = *(this + 4);
  v15 = *(this + 5);
  if (v11)
  {
LABEL_23:
    v25 = v26 + 72;
    v20 = v26[72];
    v21 = *v26;
    v30 = v32;
    v31 = xmmword_25738E870;
    v22 = v21 + v20;
    if (v21 + v20)
    {
      if (v22 >= 0x11)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v21 + v20)
      {
        bzero(v32, v22);
      }

      *&v31 = v22;
      v21 = *v26;
      v23 = *v26;
      if (!*v26)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = v21;
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    memset(v32, 1, v23);
LABEL_32:
    if ((v22 - v23) >= 1)
    {
      bzero(&v32[v23], v22 - v23);
    }

    v27 = v29;
    v28 = 0x800000000;
    if (*v25 + v21 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v21)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
    }

    if (*v25)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
    }

    v8 = mlir::IntegerSet::get(v12 + v13, v14, v27, v28, v30, v31);
    if (v27 != v29)
    {
      free(v27);
    }

    if (v30 != v32)
    {
      free(v30);
    }

    goto LABEL_44;
  }

  v27 = v29;
  v28 = 0xC00000000;
  v16 = v12 + v13 + v14;
  if (v16 >= v16 + v15)
  {
    goto LABEL_20;
  }

  v17 = 0;
  v18 = v13 + v14 + v12;
  v19 = 8 * v16;
  do
  {
    if (!*&AffineConstantExpr[v19] && (mlir::presburger::IntegerRelation::isColZero(this, (v18 + v17)) & 1) == 0)
    {
      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = v17;
      LODWORD(v28) = v28 + 1;
    }

    ++v17;
    v19 += 8;
  }

  while (v15 != v17);
  if (!v28)
  {
LABEL_20:
    if (v27 != v29)
    {
      free(v27);
    }

    v13 = *(this + 2);
    v12 = *(this + 3);
    v14 = *(this + 4);
    goto LABEL_23;
  }

  if (v27 != v29)
  {
    free(v27);
  }

  v8 = 0;
LABEL_44:
  if (AffineConstantExpr != v36)
  {
    free(AffineConstantExpr);
  }

  return v8;
}

void mlir::FlatLinearValueConstraints::FlatLinearValueConstraints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, int32x4_t a6)
{
  v16[94] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v16[73] = a3;
  v16[74] = a4;
  mlir::IntegerSet::getNumInequalities(&v11, a5, a6);
  mlir::IntegerSet::getNumEqualities(&v11, v7, v8);
  mlir::IntegerSet::getNumDims(&v11);
  mlir::IntegerSet::getNumSymbols(&v11);
  NumDims = mlir::IntegerSet::getNumDims(&v11);
  NumSymbols = mlir::IntegerSet::getNumSymbols(&v11);
  LODWORD(v12) = 0;
  DWORD1(v12) = NumDims;
  *(&v12 + 1) = NumSymbols;
  LOBYTE(v13) = 0;
  v14 = v16;
  v15 = 0;
  *a1 = &unk_286893110;
  *(a1 + 24) = 0;
  *(a1 + 8) = v12;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

uint64_t mlir::FlatLinearValueConstraints::setValue(uint64_t a1, unsigned int a2, uint64_t a3)
{
  VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt((a1 + 8), a2);
  VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset((a1 + 8), VarKindAt);
  v22 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::Value]";
  v23 = 61;
  v8 = llvm::StringRef::find(&v22, "DesiredTypeName = ", 0x12uLL, 0);
  v9 = v22;
  v10 = v23;
  if ((*(a1 + 24) & 1) == 0)
  {
    *(a1 + 40) = 0;
    v11 = *(a1 + 12) + *(a1 + 8);
    v12 = *(a1 + 16);
    v13 = (v11 + v12);
    if (v11 + v12)
    {
      if (*(a1 + 44) < v13)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v11 + v12)
      {
        v14 = v8;
        bzero(*(a1 + 32), 24 * ((24 * v13 - 24) / 0x18uLL) + 24);
        v8 = v14;
      }

      *(a1 + 40) = v13;
    }

    *(a1 + 24) = 1;
  }

  if (v10 >= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  v16 = 18;
  if (v10 - v15 < 0x12)
  {
    v16 = v10 - v15;
  }

  v17 = v10 - v15 - v16;
  if (v17 >= v17 - 1)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = v10 - v15 - v16;
  }

  v19 = &v9[v15 + v16];
  result = mlir::presburger::PresburgerSpace::getVarKindOffset((a1 + 8), VarKindAt);
  v21 = (*(a1 + 32) + 24 * (a2 - VarKindOffset + result));
  *v21 = a3;
  v21[1] = v19;
  v21[2] = v18;
  return result;
}

void mlir::FlatLinearValueConstraints::appendDimVar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = a2;
  v6 = a3;
  mlir::presburger::IntegerPolyhedron::insertVar(a1, 3, (v4 + v3), a3);
}

void mlir::FlatLinearValueConstraints::insertVar(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a5;
  mlir::presburger::IntegerPolyhedron::insertVar(a1, a2, a3, a5);
}

void mlir::FlatLinearValueConstraints::appendSymbolVar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = a2;
  v6 = a3;
  mlir::presburger::IntegerPolyhedron::insertVar(a1, 0, v4, a3);
}

void mlir::FlatLinearValueConstraints::insertDimVar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a4;
  mlir::presburger::IntegerPolyhedron::insertVar(a1, 3, a2, a4);
}

void mlir::FlatLinearValueConstraints::insertSymbolVar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a4;
  mlir::presburger::IntegerPolyhedron::insertVar(a1, 0, a2, a4);
}

BOOL mlir::FlatLinearValueConstraints::areVarsAlignedWithOther(mlir::FlatLinearValueConstraints *this, const mlir::FlatLinearConstraints *a2)
{
  v5[78] = *MEMORY[0x277D85DE8];
  mlir::FlatLinearConstraints::FlatLinearConstraints(v5, a2);
  v5[0] = &unk_2868927C8;
  v3 = areVarsAligned(this, v5);
  mlir::presburger::IntegerRelation::~IntegerRelation(v5);
  return v3;
}

BOOL areVarsAligned(const mlir::FlatLinearValueConstraints *a1, const mlir::FlatLinearValueConstraints *a2)
{
  v19[6] = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  mlir::FlatLinearValueConstraints::getMaybeValues(a1, &v17);
  mlir::FlatLinearValueConstraints::getMaybeValues(a2, &v14);
  v3 = v17;
  if (v18 == v15)
  {
    v4 = v14;
    v5 = v17;
    if (v18)
    {
      v6 = 0;
      do
      {
        v7 = *(v17 + v6 + 8);
        v8 = *(v14 + v6 + 8);
        v9 = v7 != v8 || v7 == 0;
        if (v9)
        {
          if (v7 != v8)
          {
            goto LABEL_27;
          }
        }

        else if (*(v17 + v6) != *(v14 + v6))
        {
          goto LABEL_27;
        }

        v10 = v6 + 16;
        if (16 * v18 - 16 == v6)
        {
          break;
        }

        v9 = 16 * v15 - 16 == v6;
        v6 += 16;
      }

      while (!v9);
      v5 = v17 + v10;
      v4 = v14 + v10;
    }

    v12 = v5 == v17 + 16 * v18 && v4 == v14 + 16 * v15;
  }

  else
  {
LABEL_27:
    v12 = 0;
  }

  if (v14 != &v16)
  {
    free(v14);
    v3 = v17;
  }

  if (v3 != v19)
  {
    free(v3);
  }

  return v12;
}

void mergeAndAlignVars(uint64_t a1, mlir::FlatLinearValueConstraints *a2, mlir::FlatLinearValueConstraints *a3)
{
  v5 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v27 = &v29;
  v6 = (a2 + 8);
  v7 = *(a2 + 3) + *(a2 + 2);
  v28 = 0x400000000;
  if (v7 - a1 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7 <= a1)
  {
    v12 = v28;
  }

  else
  {
    v8 = a1;
    do
    {
      VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt(v6, v8);
      VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(v6, VarKindAt);
      if (*(a2 + 24) == 1)
      {
        v11 = *(*(a2 + 4) + 24 * (v8 + mlir::presburger::PresburgerSpace::getVarKindOffset(v6, VarKindAt) - VarKindOffset));
      }

      else
      {
        v11 = 0;
      }

      if (v28 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v28) = v11;
      v12 = v28 + 1;
      LODWORD(v28) = v28 + 1;
      ++v8;
    }

    while (v7 != v8);
  }

  if (!v12)
  {
LABEL_29:
    v20 = *(a2 + 3) + *(a2 + 2);
    if (v20 < *(a3 + 3) + *(a3 + 2))
    {
      v21 = mlir::presburger::PresburgerSpace::getVarKindAt((a3 + 8), v20);
      v22 = mlir::presburger::PresburgerSpace::getVarKindOffset(a3 + 2, v21);
      if (*(a3 + 24) == 1)
      {
        v23 = *(*(a3 + 4) + 24 * (v20 + mlir::presburger::PresburgerSpace::getVarKindOffset(a3 + 2, v21) - v22));
      }

      else
      {
        v23 = 0;
      }

      v26 = v23;
      v24 = *(a2 + 2);
      v25 = *(a2 + 3);
      v33 = &v26;
      v34 = 1;
      mlir::presburger::IntegerPolyhedron::insertVar(a2, 3, (v25 + v24), 1u);
    }

    mlir::FlatLinearValueConstraints::mergeSymbolVars(a2, a3);
    mlir::presburger::IntegerRelation::mergeLocalVars(a2, a3);
  }

  v13 = v27;
  v14 = v27 + 8 * v12;
  while (1)
  {
    v15 = *v13;
    v26 = *v13;
    mlir::FlatLinearValueConstraints::getMaybeValues(a3, &v30);
    if (v31 <= v5)
    {
      v19 = 0;
      v18 = 0;
LABEL_23:
      if (v30 == v32)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = v5 + 1;
      v17 = v30 + 16 * v5 + 8;
      v18 = 1;
      v19 = v5;
      do
      {
        if (*v17 == 1 && *(v17 - 1) == v15)
        {
          goto LABEL_23;
        }

        v18 = v16 < v31;
        v19 = (v19 + 1);
        ++v16;
        v17 += 16;
      }

      while (v31 != v19);
      v19 = 0;
      if (v30 == v32)
      {
        goto LABEL_25;
      }
    }

    free(v30);
LABEL_25:
    if (!v18)
    {
      v33 = &v26;
      v34 = 1;
      mlir::presburger::IntegerPolyhedron::insertVar(a3, 3, v5, 1u);
    }

    (*(*a3 + 48))(a3, v5, v19);
    v5 = (v5 + 1);
    if (++v13 == v14)
    {
      goto LABEL_29;
    }
  }
}

void mlir::FlatLinearValueConstraints::mergeSymbolVars(mlir::FlatLinearValueConstraints *this, mlir::FlatLinearValueConstraints *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = v33;
  v4 = (this + 8);
  v5 = *(this + 4);
  v6 = *(this + 3) + *(this + 2);
  v32 = 0x400000000;
  if (v5 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v6 >= v6 + v5)
  {
    v10 = v32;
  }

  else
  {
    do
    {
      VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt(v4, v6);
      VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(v4, VarKindAt);
      if (*(this + 24) == 1)
      {
        v9 = *(*(this + 4) + 24 * (v6 + mlir::presburger::PresburgerSpace::getVarKindOffset(v4, VarKindAt) - VarKindOffset));
      }

      else
      {
        v9 = 0;
      }

      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = v9;
      v10 = v32 + 1;
      LODWORD(v32) = v32 + 1;
      ++v6;
      --v5;
    }

    while (v5);
  }

  if (v10)
  {
    v11 = v31;
    v12 = (*(a2 + 3) + *(a2 + 2));
    v29 = v31 + 8 * v10;
    v13 = -v12;
    v14 = -v12;
    while (1)
    {
      v15 = *v11;
      v30 = *v11;
      mlir::FlatLinearValueConstraints::getMaybeValues(a2, &v34);
      if (v35 <= v12)
      {
        v19 = 0;
        v18 = 0;
        if (v34 != v36)
        {
LABEL_23:
          free(v34);
        }
      }

      else
      {
        v16 = 0;
        v17 = v34 + 16 * v12 + 8;
        v18 = 1;
        do
        {
          if (*v17 == 1 && *(v17 - 1) == v15)
          {
            v19 = (v16 - v14);
            if (v34 != v36)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          v18 = v12 + 1 + v16++ < v35;
          v17 += 16;
        }

        while (v35 + v13 != v16);
        v19 = 0;
        if (v34 != v36)
        {
          goto LABEL_23;
        }
      }

LABEL_24:
      v20 = *(a2 + 2);
      v21 = *(a2 + 3);
      if (!v18)
      {
        break;
      }

      v22 = v21 + v20;
      if (v19 < v22 || v19 >= *(a2 + 4) + v22)
      {
        goto LABEL_29;
      }

      (*(*a2 + 48))(a2, v12, v19);
      v12 = (v12 + 1);
      ++v11;
      --v14;
      --v13;
      if (v11 == v29)
      {
        goto LABEL_32;
      }
    }

    v22 = v20 + v21;
LABEL_29:
    v37 = &v30;
    v38 = 1;
    mlir::presburger::IntegerPolyhedron::insertVar(a2, 0, v12 - v22, 1u);
  }

LABEL_32:
  v23 = *(a2 + 3) + *(a2 + 2);
  v24 = v23 + *(this + 4);
  if (v24 < *(a2 + 4) + v23)
  {
    v25 = *(this + 4);
    v26 = mlir::presburger::PresburgerSpace::getVarKindAt((a2 + 8), v24);
    v27 = mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, v26);
    if (*(a2 + 24) == 1)
    {
      v28 = *(*(a2 + 4) + 24 * (v24 + mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, v26) - v27));
    }

    else
    {
      v28 = 0;
    }

    v30 = v28;
    v37 = &v30;
    v38 = 1;
    mlir::presburger::IntegerPolyhedron::insertVar(this, 0, v25, 1u);
  }

  if (v31 != v33)
  {
    free(v31);
  }
}

BOOL mlir::FlatLinearValueConstraints::findVar(_DWORD *a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::FlatLinearValueConstraints::getMaybeValues(a1, &v13);
  v7 = v13;
  if (v14 <= a4)
  {
    v11 = 0;
  }

  else
  {
    v8 = a4;
    v9 = v13 + 16 * a4 + 8;
    v10 = v14 - a4;
    v11 = 1;
    while (*v9 != 1 || *(v9 - 1) != a2)
    {
      v11 = ++v8 < v14;
      v9 += 16;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    *a3 = v8;
  }

LABEL_8:
  if (v7 != v15)
  {
    free(v7);
  }

  return v11;
}

uint64_t mlir::FlatLinearValueConstraints::computeAlignedMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x600000000;
  v21 = v23;
  v22 = 0x600000000;
  v6 = (a1 + 8);
  if ((*(a1 + 12) + *(a1 + 8)) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (*(a1 + 16) > 6u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(v6, 3);
  if (NumVarKind)
  {
    v9 = NumVarKind;
    for (i = 0; i != v9; ++i)
    {
      if (*(a1 + 24) == 1)
      {
        v11 = *(*(a1 + 32) + 24 * (mlir::presburger::PresburgerSpace::getVarKindOffset(v6, 3) + i));
      }

      else
      {
        v11 = 0;
      }

      if (v25 >= HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v24 + v25) = v11;
      LODWORD(v25) = v25 + 1;
    }
  }

  v12 = mlir::presburger::PresburgerSpace::getNumVarKind(v6, 0);
  if (v12)
  {
    v13 = v12;
    for (j = 0; j != v13; ++j)
    {
      if (*(a1 + 24) == 1)
      {
        v15 = *(*(a1 + 32) + 24 * (mlir::presburger::PresburgerSpace::getVarKindOffset(v6, 0) + j));
      }

      else
      {
        v15 = 0;
      }

      if (v22 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v21 + v22) = v15;
      LODWORD(v22) = v22 + 1;
    }
  }

  mlir::ValueRange::ValueRange(v20, v24, v25);
  mlir::ValueRange::ValueRange(v19, v21, v22);
  v16 = mlir::alignAffineMapWithValues(a2, a3, a4, v20[0], v20[1], v19[0], v19[1], 0);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v16;
}

uint64_t mlir::alignAffineMapWithValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x277D85DE8];
  v42 = a1;
  Context = mlir::AffineMap::getContext(&v42);
  NumDims = mlir::AffineMap::getNumDims(&v42);
  v15 = NumDims;
  v50 = v53;
  v52 = 6;
  if (NumDims >= 7)
  {
    v51 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (NumDims)
  {
    bzero(v53, 8 * NumDims);
  }

  v51 = v15;
  NumSymbols = mlir::AffineMap::getNumSymbols(&v42);
  v17 = NumSymbols;
  v46 = v49;
  v48 = 6;
  if (NumSymbols >= 7)
  {
    v47 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (NumSymbols)
  {
    bzero(v49, 8 * NumSymbols);
  }

  v47 = v17;
  if (a8)
  {
    *(a8 + 8) = 0;
    if (a7 > *(a8 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = *a8;
    v43 = a6;
    v44 = 0;
    if (a7)
    {
      v19 = 0;
      v20 = v18;
      do
      {
        *v20++ = mlir::ValueRange::dereference_iterator(&v43, v19);
        v19 = v44 + 1;
        v44 = v19;
      }

      while (v19 != a7);
      v21 = *(a8 + 8);
    }

    else
    {
      v21 = 0;
    }

    *(a8 + 8) = v21 + a7;
  }

  v43 = 0;
  v44 = a2;
  v45 = 0;
  if (a3)
  {
    v22 = 0;
    v23 = 0;
    v24 = a7;
    v25 = a4;
    while (1)
    {
      v29 = mlir::ValueRange::dereference_iterator(&v44, v23);
      v54 = v25;
      v55 = 0;
      if (a5)
      {
        v30 = 0;
        while (1)
        {
          v31 = mlir::ValueRange::dereference_iterator(&v54, v30);
          v32 = v55;
          if (v29 == v31)
          {
            break;
          }

          v30 = v55 + 1;
          v55 = (v55 + 1);
          if ((v32 + 1) == a5)
          {
            v32 = a5;
            break;
          }
        }

        v54 = a6;
        v55 = 0;
        if (!a7)
        {
          if (v32 != a5)
          {
            goto LABEL_41;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v32 = 0;
        v54 = a6;
        v55 = 0;
        if (!a7)
        {
          goto LABEL_36;
        }
      }

      v33 = 0;
      while (1)
      {
        v34 = mlir::ValueRange::dereference_iterator(&v54, v33);
        v35 = v55;
        if (v29 == v34)
        {
          break;
        }

        v33 = v55 + 1;
        v55 = v33;
        if (v33 == a7)
        {
          v35 = a7;
          break;
        }
      }

      if (v32 != a5)
      {
LABEL_41:
        AffineDimExpr = mlir::Builder::getAffineDimExpr(&Context, v32, v28);
        if (v22 < mlir::AffineMap::getNumDims(&v42))
        {
          goto LABEL_44;
        }

        goto LABEL_19;
      }

      if (v35 != a7)
      {
        AffineDimExpr = mlir::Builder::getAffineSymbolExpr(&Context, v35, v28);
        if (v22 < mlir::AffineMap::getNumDims(&v42))
        {
          goto LABEL_44;
        }

        goto LABEL_19;
      }

LABEL_36:
      AffineDimExpr = mlir::Builder::getAffineSymbolExpr(&Context, v24, v28);
      if (a8)
      {
        v37 = *(a8 + 8);
        if (v37 >= *(a8 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a8 + 8 * v37) = v29;
        ++*(a8 + 8);
      }

      v24 = (v24 + 1);
      v25 = a4;
      if (v22 < mlir::AffineMap::getNumDims(&v42))
      {
LABEL_44:
        v27 = v50 + 8 * v22;
        goto LABEL_20;
      }

LABEL_19:
      v26 = mlir::AffineMap::getNumDims(&v42);
      v27 = v46 + 8 * (v22 - v26);
LABEL_20:
      *v27 = AffineDimExpr;
      v22 = v43 + 1;
      v23 = v45 + 1;
      ++v43;
      v45 = v23;
      if (v23 == a3)
      {
        goto LABEL_47;
      }
    }
  }

  LODWORD(v24) = a7;
LABEL_47:
  v38 = mlir::AffineMap::replaceDimsAndSymbols(&v42, v50, v51, v46, v47, a5, v24);
  if (v46 != v49)
  {
    free(v46);
  }

  if (v50 != v53)
  {
    free(v50);
  }

  return v38;
}

_DWORD *mlir::FlatLinearValueConstraints::getMaybeValues@<X0>(_DWORD *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  v6 = a2 + 16;
  *a2 = a2 + 16;
  v7 = this[2];
  v8 = this[3];
  v9 = (this + 2);
  *(a2 + 8) = 0x300000000;
  v10 = v8 + v7 + this[4];
  if (v10 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt(v9, i);
      this = mlir::presburger::PresburgerSpace::getVarKindOffset(v9, VarKindAt);
      if (*(v4 + 24) == 1 && (v13 = this, this = mlir::presburger::PresburgerSpace::getVarKindOffset(v9, VarKindAt), *(*(v4 + 4) + 24 * (i + this - v13))))
      {
        v14 = mlir::presburger::PresburgerSpace::getVarKindAt(v9, i);
        this = mlir::presburger::PresburgerSpace::getVarKindOffset(v9, v14);
        if (*(v4 + 24) == 1)
        {
          v15 = this;
          this = mlir::presburger::PresburgerSpace::getVarKindOffset(v9, v14);
          v16 = *(*(v4 + 4) + 24 * (i + this - v15));
        }

        else
        {
          v16 = 0;
        }

        v17 = v6 & 0xFFFFFFFFFFFFFF00 | 1;
        v18 = *(a2 + 8);
        v6 = v17;
        if (v18 >= *(a2 + 12))
        {
LABEL_14:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      else
      {
        v16 = v2 & 0xFFFFFFFFFFFFFF00;
        v17 = v3 & 0xFFFFFFFFFFFFFF00;
        v18 = *(a2 + 8);
        v3 &= 0xFFFFFFFFFFFFFF00;
        v2 &= 0xFFFFFFFFFFFFFF00;
        if (v18 >= *(a2 + 12))
        {
          goto LABEL_14;
        }
      }

      v19 = (*a2 + 16 * v18);
      *v19 = v16;
      v19[1] = v17;
      ++*(a2 + 8);
    }
  }

  return this;
}

BOOL mlir::FlatLinearValueConstraints::containsVar(_DWORD *a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  mlir::FlatLinearValueConstraints::getMaybeValues(a1, &v8);
  if (v9)
  {
    v3 = v8 + 8;
    v4 = 1;
    v5 = v9;
    v6 = 1;
    do
    {
      if (*v3 == 1 && *(v3 - 1) == a2)
      {
        break;
      }

      v6 = v4++ < v9;
      v3 += 16;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v8 != v10)
  {
    free(v8);
  }

  return v6;
}

void mlir::FlatLinearValueConstraints::addBound(_DWORD *a1, int a2, uint64_t a3, void *a4)
{
  v12[6] = *MEMORY[0x277D85DE8];
  mlir::FlatLinearValueConstraints::getMaybeValues(a1, &v10);
  if (v11)
  {
    v8 = 0;
    v9 = v10 + 8;
    while (*v9 != 1 || *(v9 - 1) != a3)
    {
      ++v8;
      v9 += 16;
      if (v11 == v8)
      {
        goto LABEL_9;
      }
    }

    if (v10 != v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
LABEL_9:
    if (v10 != v12)
    {
LABEL_7:
      free(v10);
    }
  }

  v10 = a4;
  v11 = 0;
  mlir::presburger::IntegerRelation::addBound(a1, a2);
}

void *mlir::FlatLinearConstraints::printSpace(mlir::FlatLinearConstraints *this, llvm::raw_ostream *a2)
{
  mlir::presburger::IntegerRelation::printSpace(this, a2);
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    llvm::raw_ostream::write(a2, "(", 1uLL);
    v9 = *(this + 2);
    v10 = *(this + 3);
    v7 = (this + 8);
    for (i = v10 + v9 + v7[2]; i; --i)
    {
LABEL_7:
      while (1)
      {
        v11 = *(a2 + 4);
        if ((*(a2 + 3) - v11) > 4)
        {
          break;
        }

        llvm::raw_ostream::write(a2, "None\t", 5uLL);
        if (!--i)
        {
          goto LABEL_9;
        }
      }

      *(v11 + 4) = 9;
      *v11 = 1701736270;
      *(a2 + 4) += 5;
    }
  }

  else
  {
    *v4 = 40;
    ++*(a2 + 4);
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = (this + 8);
    i = v6 + v5 + v7[2];
    if (i)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(v7, 1);
  result = mlir::presburger::PresburgerSpace::getVarKindEnd(v7, 1);
  v14 = result >= VarKindOffset;
  v15 = result - VarKindOffset;
  if (v15 != 0 && v14)
  {
    do
    {
      while (1)
      {
        v16 = *(a2 + 4);
        if ((*(a2 + 3) - v16) <= 5)
        {
          break;
        }

        *(v16 + 4) = 2412;
        *v16 = 1633906508;
        *(a2 + 4) += 6;
        if (!--v15)
        {
          goto LABEL_15;
        }
      }

      result = llvm::raw_ostream::write(a2, "Local\t", 6uLL);
      --v15;
    }

    while (v15);
  }

LABEL_15:
  v17 = *(a2 + 4);
  if (*(a2 + 3) - v17 > 6uLL)
  {
    *(v17 + 3) = 170488947;
    *v17 = 1936617315;
    *(a2 + 4) += 7;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "const)\n", 7uLL);
  }

  return result;
}

void *mlir::FlatLinearValueConstraints::printSpace(mlir::FlatLinearValueConstraints *this, llvm::raw_ostream *a2)
{
  mlir::presburger::IntegerRelation::printSpace(this, a2);
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    llvm::raw_ostream::write(a2, "(", 1uLL);
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = (this + 8);
    v8 = *(this + 4);
    if (!(v6 + v5 + v8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v4 = 40;
    ++*(a2 + 4);
    v5 = *(this + 2);
    v6 = *(this + 3);
    v7 = (this + 8);
    v8 = *(this + 4);
    if (!(v6 + v5 + v8))
    {
      goto LABEL_16;
    }
  }

  v9 = 0;
  v10 = v5 + v8 + v6;
  do
  {
    while (1)
    {
      while (1)
      {
        VarKindAt = mlir::presburger::PresburgerSpace::getVarKindAt(v7, v9);
        VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(v7, VarKindAt);
        if (*(this + 24) == 1)
        {
          if (*(*(this + 4) + 24 * (v9 + mlir::presburger::PresburgerSpace::getVarKindOffset(v7, VarKindAt) - VarKindOffset)))
          {
            break;
          }
        }

        v14 = *(a2 + 4);
        if ((*(a2 + 3) - v14) <= 4)
        {
          llvm::raw_ostream::write(a2, "None\t", 5uLL);
          if (v10 == ++v9)
          {
            goto LABEL_16;
          }
        }

        else
        {
          *(v14 + 4) = 9;
          *v14 = 1701736270;
          *(a2 + 4) += 5;
          if (v10 == ++v9)
          {
            goto LABEL_16;
          }
        }
      }

      v13 = *(a2 + 4);
      if ((*(a2 + 3) - v13) > 5)
      {
        break;
      }

      llvm::raw_ostream::write(a2, "Value\t", 6uLL);
      if (v10 == ++v9)
      {
        goto LABEL_16;
      }
    }

    *(v13 + 4) = 2405;
    *v13 = 1970037078;
    *(a2 + 4) += 6;
    ++v9;
  }

  while (v10 != v9);
LABEL_16:
  v15 = mlir::presburger::PresburgerSpace::getVarKindOffset(v7, 1);
  result = mlir::presburger::PresburgerSpace::getVarKindEnd(v7, 1);
  v17 = result - v15;
  if (result > v15)
  {
    do
    {
      while (1)
      {
        v18 = *(a2 + 4);
        if ((*(a2 + 3) - v18) <= 5)
        {
          break;
        }

        *(v18 + 4) = 2412;
        *v18 = 1633906508;
        *(a2 + 4) += 6;
        if (!--v17)
        {
          goto LABEL_21;
        }
      }

      result = llvm::raw_ostream::write(a2, "Local\t", 6uLL);
      --v17;
    }

    while (v17);
  }

LABEL_21:
  v19 = *(a2 + 4);
  if (*(a2 + 3) - v19 > 6uLL)
  {
    *(v19 + 3) = 170488947;
    *v19 = 1936617315;
    *(a2 + 4) += 7;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "const)\n", 7uLL);
  }

  return result;
}

uint64_t mlir::FlatLinearValueConstraints::projectOut(_DWORD *a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  mlir::FlatLinearValueConstraints::getMaybeValues(a1, &v7);
  if (!v8)
  {
LABEL_9:
    v4 = 0;
    if (v7 == v9)
    {
      return (*(*a1 + 64))(a1, v4, 0, 0);
    }

    goto LABEL_7;
  }

  v4 = 0;
  v5 = v7 + 8;
  while (*v5 != 1 || *(v5 - 1) != a2)
  {
    ++v4;
    v5 += 16;
    if (v8 == v4)
    {
      goto LABEL_9;
    }
  }

  if (v7 != v9)
  {
LABEL_7:
    free(v7);
  }

  return (*(*a1 + 64))(a1, v4, 0, 0);
}

void mlir::FlatLinearValueConstraints::unionBoundingBox(mlir::FlatLinearValueConstraints *this, void **a2)
{
  v17[8] = *MEMORY[0x277D85DE8];
  mlir::FlatLinearValueConstraints::getMaybeValues(this, v17);
  mlir::FlatLinearValueConstraints::getMaybeValues(a2, v16);
  if (areVarsAligned(this, a2))
  {
    mlir::presburger::IntegerRelation::unionBoundingBox(this, a2);
  }

  v4 = &unk_286893110;
  v5 = *(a2 + 1);
  v6 = *(a2 + 24);
  __dst = &v9;
  v8 = 0;
  if (&v4 != a2 && *(a2 + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = a2[6];
  v10 = *(a2 + 14);
  v11[0] = v12;
  v11[1] = 0x1000000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v11, a2 + 8);
  }

  v12[32] = a2[42];
  v13 = *(a2 + 86);
  v14[0] = &v15;
  v14[1] = 0x1000000000;
  if (*(a2 + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v14, a2 + 44);
  }

  v4 = &unk_2868927C8;
  mergeAndAlignVars((*(this + 3) + *(this + 2)), this, &v4);
}

void mlir::getMultiAffineFunctionFromMap(uint64_t a1)
{
  v10[72] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v3 = 0;
  v2 = 0u;
  v4 = v6;
  v5 = 0;
  v6[166] = 0;
  v6[164] = &unk_286893110;
  v6[165] = 0;
  v7 = 0;
  v8 = v10;
  v9 = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

void mlir::FlatLinearConstraints::~FlatLinearConstraints(mlir::FlatLinearConstraints *this)
{
  mlir::presburger::IntegerRelation::~IntegerRelation(this);

  JUMPOUT(0x259C63180);
}

void mlir::FlatLinearValueConstraints::~FlatLinearValueConstraints(mlir::FlatLinearValueConstraints *this)
{
  mlir::presburger::IntegerRelation::~IntegerRelation(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::SemiAffineExprFlattener::~SemiAffineExprFlattener(_anonymous_namespace_::SemiAffineExprFlattener *this)
{
  *this = &unk_286892928;
  mlir::presburger::IntegerRelation::~IntegerRelation((this + 96));
  *this = &unk_2868995E0;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_286892928;
  mlir::presburger::IntegerRelation::~IntegerRelation((this + 96));
  *this = &unk_2868995E0;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::AffineExprFlattener::~AffineExprFlattener(_anonymous_namespace_::AffineExprFlattener *this)
{
  *this = &unk_286892928;
  mlir::presburger::IntegerRelation::~IntegerRelation((this + 96));
  *this = &unk_2868995E0;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_286892928;
  mlir::presburger::IntegerRelation::~IntegerRelation((this + 96));
  *this = &unk_2868995E0;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::AffineExprFlattener::AffineExprFlattener(_anonymous_namespace_::AffineExprFlattener *this, int a2, unsigned int a3)
{
  v6 = mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(this, a2, a3);
  *v6 = &unk_286892928;
  LODWORD(v7) = 0;
  DWORD1(v7) = a2;
  *(&v7 + 1) = a3;
  *(v6 + 12) = &unk_286893110;
  *(v6 + 120) = 0;
  *(v6 + 104) = v7;
  *(this + 16) = v6 + 144;
  *(this + 17) = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

void anonymous namespace::AffineExprFlattener::addLocalFloorDivId(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::SimpleAffineExprFlattener::addLocalFloorDivId(a1, a2, a3, a4, a5);

  mlir::presburger::IntegerRelation::addLocalFloorDiv((a1 + 96), a2, a3, a4);
}

uint64_t anonymous namespace::SemiAffineExprFlattener::addLocalIdSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v8[0] = a6;
  mlir::SimpleAffineExprFlattener::addLocalIdSemiAffine(a1, a2, a3, a4, a5, a6);
  if (mlir::AffineExpr::getKind(v8) == 2)
  {
    mlir::presburger::IntegerRelation::appendVar((a1 + 96), 1, 1);
    v8[1] = 0;
    LODWORD(v9) = 0;
    mlir::presburger::IntegerRelation::addBound(a1 + 96, 1);
  }

  return 0;
}

void mlir::presburger::IntegerRelation::addLocalFloorDiv(unsigned int *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  mlir::presburger::getDynamicAPIntVec(a2, a3, &v8);
  v6 = a4;
  v7 = 0;
  mlir::presburger::IntegerRelation::addLocalFloorDiv(a1, v8, v9, &v6);
}

void mlir::presburger::IntegerRelation::addBound(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v4[18] = *MEMORY[0x277D85DE8];
  mlir::presburger::getDynamicAPIntVec(a3, a4, v4);
  mlir::presburger::IntegerRelation::addBound();
}

void std::vector<llvm::SmallVector<long long,8u>>::__assign_with_size[abi:nn200100]<std::__wrap_iter<llvm::SmallVector<long long,8u>*>,std::__wrap_iter<llvm::SmallVector<long long,8u>*>>(void **a1, unsigned int *a2, unsigned int *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v13 = *(v10 - 10);
          v10 -= 10;
          v12 = v13;
          if (v10 + 2 != v13)
          {
            free(v12);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x333333333333333)
    {
      v23 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v24 = 2 * v23;
      if (2 * v23 <= a4)
      {
        v24 = a4;
      }

      if (v23 >= 0x199999999999999)
      {
        v25 = 0x333333333333333;
      }

      else
      {
        v25 = v24;
      }

      if (v25 <= 0x333333333333333)
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v14 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v8) >> 4) < a4)
  {
    v15 = (a2 + v14 - v8);
    if (v14 == v8)
    {
      v16 = a1[1];
      if (v15 != a3)
      {
LABEL_51:
        v26 = 0;
        do
        {
          v27 = &v14[v26 / 8];
          v28 = &v14[v26 / 8 + 2];
          *v27 = v28;
          v27[1] = 0x800000000;
          if (v14 != v15)
          {
            v29 = v15[v26 / 4 + 2];
            if (v15[v26 / 4 + 2])
            {
              if (v29 >= 9)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(v28, *&v15[v26 / 4], 8 * v15[v26 / 4 + 2]);
              *(v27 + 2) = v29;
            }
          }

          v26 += 80;
        }

        while (&v15[v26 / 4] != a3);
        v16 = &v14[v26 / 8];
      }

LABEL_64:
      a1[1] = v16;
      return;
    }

    while (1)
    {
      if (v5 == v8)
      {
        goto LABEL_13;
      }

      v17 = v5[2];
      v18 = *(v8 + 2);
      if (v18 >= v17)
      {
        if (v17)
        {
          memmove(*v8, *v5, 8 * v17);
        }

        goto LABEL_12;
      }

      if (*(v8 + 3) < v17)
      {
        *(v8 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v18)
      {
        memmove(*v8, *v5, 8 * v18);
        v19 = v5[2] - v18;
        if (v19)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v18 = 0;
        v19 = v5[2];
        if (v5[2])
        {
LABEL_24:
          memcpy(*v8 + 8 * v18, (*v5 + 8 * v18), 8 * v19);
        }
      }

LABEL_12:
      *(v8 + 2) = v17;
LABEL_13:
      v5 += 20;
      v8 += 10;
      if (v5 == v15)
      {
        v14 = a1[1];
        v16 = v14;
        if (v15 != a3)
        {
          goto LABEL_51;
        }

        goto LABEL_64;
      }
    }
  }

  if (a2 == a3)
  {
    goto LABEL_61;
  }

  do
  {
    if (v5 != v8)
    {
      v20 = v5[2];
      v21 = *(v8 + 2);
      if (v21 >= v20)
      {
        if (v20)
        {
          memmove(*v8, *v5, 8 * v20);
        }

        goto LABEL_27;
      }

      if (*(v8 + 3) < v20)
      {
        *(v8 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v21)
      {
        memmove(*v8, *v5, 8 * v21);
        v22 = v5[2] - v21;
        if (v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v21 = 0;
        v22 = v5[2];
        if (v5[2])
        {
LABEL_39:
          memcpy(*v8 + 8 * v21, (*v5 + 8 * v21), 8 * v22);
        }
      }

LABEL_27:
      *(v8 + 2) = v20;
    }

    v5 += 20;
    v8 += 10;
  }

  while (v5 != a3);
  v14 = a1[1];
LABEL_61:
  while (v14 != v8)
  {
    v31 = *(v14 - 10);
    v14 -= 10;
    v30 = v31;
    if (v14 + 2 != v31)
    {
      free(v30);
    }
  }

  a1[1] = v8;
}

uint64_t *llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(uint64_t *result, uint64_t **a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 2);
    v3 = *(result + 2);
    if (v3 < v2)
    {
      if (*(result + 3) < v2)
      {
        if (v3)
        {
          v4 = 16 * v3 + *result - 8;
          v5 = -16 * v3;
          v6 = v4;
          do
          {
            v8 = *v6;
            v6 -= 4;
            v7 = v8;
            if (v8 && v7 >= 0x41)
            {
              v9 = *(v4 - 8);
              if (v9)
              {
                v10 = result;
                MEMORY[0x259C63150](v9, 0x1000C8000313F17);
                result = v10;
              }
            }

            v4 = v6;
            v5 += 16;
          }

          while (v5);
        }

        *(result + 2) = 0;
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      if (v3)
      {
        v19 = *a2;
        v20 = *result;
        v21 = 16 * v3;
        do
        {
          while (*(v19 + 2))
          {
            v23 = result;
            v24 = a2;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v20, *(v19 + 2), v19);
            a2 = v24;
            result = v23;
            v19 += 2;
            v20 += 2;
            v21 -= 16;
            if (!v21)
            {
              goto LABEL_35;
            }
          }

          v22 = *v19;
          if (*(v20 + 2) > 0x40u && *v20)
          {
            v25 = result;
            v26 = a2;
            MEMORY[0x259C63150](*v20, 0x1000C8000313F17);
            a2 = v26;
            result = v25;
          }

          *v20 = v22;
          *(v20 + 2) = 0;
          v19 += 2;
          v20 += 2;
          v21 -= 16;
        }

        while (v21);
LABEL_35:
        v27 = *(a2 + 2);
        if (v3 == v27)
        {
          goto LABEL_50;
        }

        goto LABEL_36;
      }

      v3 = 0;
      v27 = *(a2 + 2);
      if (*(a2 + 2))
      {
LABEL_36:
        v28 = *a2;
        v29 = *result;
        v30 = 16 * v3;
        v31 = 16 * v27;
        do
        {
          v32 = v29 + v30;
          v33 = &v28[v30 / 8];
          *v32 = v28[v30 / 8];
          *(v32 + 8) = 0;
          v34 = v28[v30 / 8 + 1];
          if (v34)
          {
            *(v32 + 8) = v34;
            if (v34 > 0x40)
            {
              llvm::APInt::initSlowCase((v29 + v30), v33);
            }

            *v32 = *v33;
          }

          v29 += 16;
          v28 += 2;
          v31 -= 16;
        }

        while (v30 != v31);
      }

LABEL_50:
      *(result + 2) = v2;
      return result;
    }

    if (v2)
    {
      v11 = *a2;
      v12 = *result;
      v13 = 16 * v2;
      do
      {
        while (1)
        {
          v14 = *(v11 + 2);
          if (!v14)
          {
            break;
          }

          v16 = result;
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, v14, v11);
          result = v16;
          v11 += 2;
          v12 += 2;
          v13 -= 16;
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        v15 = *v11;
        if (*(v12 + 2) > 0x40u && *v12)
        {
          v17 = result;
          MEMORY[0x259C63150](*v12, 0x1000C8000313F17);
          result = v17;
        }

        *v12 = v15;
        *(v12 + 2) = 0;
        v11 += 2;
        v12 += 2;
        v13 -= 16;
      }

      while (v13);
LABEL_22:
      v18 = (*result + 16 * *(result + 2));
      if (v18 == v12)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v12 = *result;
      v18 = (*result + 16 * v3);
      if (v18 == *result)
      {
        goto LABEL_50;
      }
    }

    do
    {
      v35 = *(v18 - 2);
      v18 -= 2;
      if (v35 > 0x40 && *v18)
      {
        v36 = result;
        MEMORY[0x259C63150](*v18, 0x1000C8000313F17);
        result = v36;
      }
    }

    while (v18 != v12);
    goto LABEL_50;
  }

  return result;
}

unsigned int *llvm::detail::SlowDynamicAPInt::operator=(unsigned int *this, const llvm::APInt *a2)
{
  v2 = this;
  if (this[2] > 0x40 || *(a2 + 2) > 0x40u)
  {
    llvm::APInt::assignSlowCase(this, a2);
    return v2;
  }

  else
  {
    *this = *a2;
    this[2] = *(a2 + 2);
  }

  return this;
}

mlir::FlatLinearConstraints *mlir::FlatLinearConstraints::FlatLinearConstraints(mlir::FlatLinearConstraints *this, const mlir::presburger::IntegerPolyhedron *a2)
{
  *this = &unk_286893110;
  v4 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v4;
  *(this + 4) = this + 48;
  *(this + 5) = 0;
  if (this != a2 && *(a2 + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v5;
  *(this + 8) = this + 80;
  *(this + 9) = 0x1000000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 8, a2 + 8);
  }

  v6 = *(a2 + 42);
  *(this + 86) = *(a2 + 86);
  *(this + 42) = v6;
  *(this + 44) = this + 368;
  *(this + 45) = 0x1000000000;
  if (*(a2 + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 44, a2 + 44);
  }

  *this = &unk_286892830;
  return this;
}

uint64_t **llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(uint64_t **result, uint64_t ***a2)
{
  if (result != a2)
  {
    v3 = (a2 + 2);
    v2 = *a2;
    if (*a2 != (a2 + 2))
    {
      v4 = *result;
      v5 = *(result + 2);
      if (v5)
      {
        v6 = 2 * v5;
        v7 = &v4[v6 - 1];
        v8 = -(v6 * 8);
        v9 = v7;
        do
        {
          v11 = *v9;
          v9 -= 4;
          v10 = v11;
          if (v11)
          {
            if (v10 >= 0x41)
            {
              v12 = *(v7 - 8);
              if (v12)
              {
                v13 = result;
                v14 = a2;
                MEMORY[0x259C63150](v12, 0x1000C8000313F17);
                a2 = v14;
                result = v13;
              }
            }
          }

          v7 = v9;
          v8 += 16;
        }

        while (v8);
        v4 = *result;
      }

      if (v4 != (result + 2))
      {
        v15 = result;
        v16 = a2;
        free(v4);
        a2 = v16;
        result = v15;
      }

      *result = *a2;
      v17 = a2 + 1;
      result[1] = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_14;
    }

    v17 = a2 + 1;
    v18 = *(a2 + 2);
    v19 = *(result + 2);
    if (v19 < v18)
    {
      if (*(result + 3) < v18)
      {
        if (v19)
        {
          v20 = &(*result)[2 * v19 - 1];
          v21 = -16 * v19;
          v22 = v20;
          do
          {
            v24 = *v22;
            v22 -= 4;
            v23 = v24;
            if (v24)
            {
              if (v23 >= 0x41)
              {
                v25 = *(v20 - 8);
                if (v25)
                {
                  v26 = result;
                  MEMORY[0x259C63150](v25, 0x1000C8000313F17);
                  result = v26;
                }
              }
            }

            v20 = v22;
            v21 += 16;
          }

          while (v21);
        }

        *(result + 2) = 0;
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      if (v19)
      {
        v35 = *result;
        v36 = 16 * v19;
        do
        {
          while (*(v2 + 2))
          {
            v38 = result;
            v39 = a2;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v35, *(v2 + 2), v2);
            a2 = v39;
            result = v38;
            v2 += 2;
            v35 += 2;
            v36 -= 16;
            if (!v36)
            {
              goto LABEL_63;
            }
          }

          v37 = *v2;
          if (*(v35 + 2) > 0x40u && *v35)
          {
            v70 = result;
            v40 = a2;
            MEMORY[0x259C63150](*v35, 0x1000C8000313F17);
            a2 = v40;
            result = v70;
          }

          *v35 = v37;
          *(v35 + 2) = 0;
          v2 += 2;
          v35 += 2;
          v36 -= 16;
        }

        while (v36);
LABEL_63:
        v53 = result;
        v54 = *a2;
        v55 = *(a2 + 2);
        if (v19 == v55)
        {
LABEL_64:
          result = v53;
          *(v53 + 2) = v18;
          v56 = *v17;
          if (!v56)
          {
LABEL_14:
            *v17 = 0;
            return result;
          }

LABEL_75:
          v62 = 16 * v56;
          v63 = &v54[2 * v56 - 1];
          v64 = -v62;
          v65 = v63;
          do
          {
            v67 = *v65;
            v65 -= 4;
            v66 = v67;
            if (v67)
            {
              if (v66 >= 0x41)
              {
                v68 = *(v63 - 8);
                if (v68)
                {
                  v69 = result;
                  MEMORY[0x259C63150](v68, 0x1000C8000313F17);
                  result = v69;
                }
              }
            }

            v63 = v65;
            v64 += 16;
          }

          while (v64);
          goto LABEL_14;
        }
      }

      else
      {
        v53 = result;
        v19 = 0;
        v54 = *a2;
        v55 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          goto LABEL_64;
        }
      }

      result = v53;
      v57 = *v53;
      v58 = 16 * v19;
      v59 = 16 * v55;
      do
      {
        v60 = &v57[v58 / 8];
        *v60 = v54[v58 / 8];
        *(v60 + 2) = 0;
        v61 = v54[v58 / 8 + 1];
        if (v61)
        {
          *(v60 + 2) = v61;
          if (v61 > 0x40)
          {
            llvm::APInt::initSlowCase(&v57[v58 / 8], &v54[v58 / 8]);
          }

          *v60 = v54[v58 / 8];
        }

        v57 += 2;
        v54 += 2;
        v59 -= 16;
      }

      while (v58 != v59);
      v54 = *a2;
      *(result + 2) = v18;
      v56 = *v17;
      if (!v56)
      {
        goto LABEL_14;
      }

      goto LABEL_75;
    }

    v27 = *result;
    if (v18)
    {
      v28 = 16 * v18;
      do
      {
        while (*(v2 + 2))
        {
          v30 = result;
          v31 = a2;
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v27, *(v2 + 2), v2);
          a2 = v31;
          result = v30;
          v2 += 2;
          v27 += 2;
          v28 -= 16;
          if (!v28)
          {
            goto LABEL_36;
          }
        }

        v29 = *v2;
        if (*(v27 + 2) > 0x40u && *v27)
        {
          v32 = result;
          v33 = a2;
          MEMORY[0x259C63150](*v27, 0x1000C8000313F17);
          a2 = v33;
          result = v32;
        }

        *v27 = v29;
        *(v27 + 2) = 0;
        v2 += 2;
        v27 += 2;
        v28 -= 16;
      }

      while (v28);
LABEL_36:
      v34 = &(*result)[2 * *(result + 2)];
      if (v34 == v27)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v34 = &v27[2 * v19];
      if (v34 == v27)
      {
LABEL_55:
        *(result + 2) = v18;
        v44 = *(a2 + 2);
        if (v44)
        {
          v45 = 16 * v44;
          v46 = &(*a2)[2 * v44 - 1];
          v47 = -v45;
          v48 = v46;
          do
          {
            v50 = *v48;
            v48 -= 4;
            v49 = v50;
            if (v50)
            {
              if (v49 >= 0x41)
              {
                v51 = *(v46 - 8);
                if (v51)
                {
                  v52 = result;
                  MEMORY[0x259C63150](v51, 0x1000C8000313F17);
                  result = v52;
                }
              }
            }

            v46 = v48;
            v47 += 16;
          }

          while (v47);
        }

        goto LABEL_14;
      }
    }

    do
    {
      v41 = *(v34 - 2);
      v34 -= 2;
      if (v41 > 0x40 && *v34)
      {
        v42 = result;
        v43 = a2;
        MEMORY[0x259C63150](*v34, 0x1000C8000313F17);
        a2 = v43;
        result = v42;
      }
    }

    while (v34 != v27);
    goto LABEL_55;
  }

  return result;
}

mlir::presburger::MultiAffineFunction *mlir::presburger::MultiAffineFunction::MultiAffineFunction(mlir::presburger::MultiAffineFunction *this, mlir::presburger::MultiAffineFunction *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v6;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  if (this != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *a3;
  *(this + 12) = *(a3 + 2);
  *(this + 5) = v7;
  *(this + 7) = this + 72;
  *(this + 8) = 0x1000000000;
  if (*(a3 + 6))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 7, a3 + 2);
  }

  v8 = *a4;
  *(this + 84) = *(a4 + 2);
  *(this + 41) = v8;
  *(this + 43) = this + 360;
  *(this + 44) = 0x1000000000;
  if (*(a4 + 6))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 43, a4 + 2);
  }

  *(this + 77) = this + 632;
  *(this + 78) = 0x400000000;
  if (*(a4 + 74))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 77, a4 + 36);
  }

  mlir::presburger::MultiAffineFunction::assertIsConsistent(this);
  return this;
}

void mlir::presburger::MultiAffineFunction::~MultiAffineFunction(mlir::presburger::MultiAffineFunction *this)
{
  v2 = *(this + 77);
  v3 = *(this + 156);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = &v2[16 * v3 - 8];
    v6 = -v4;
    v7 = v5;
    do
    {
      v9 = *v7;
      v7 -= 4;
      v8 = v9;
      if (v9)
      {
        if (v8 >= 0x41)
        {
          v10 = *(v5 - 8);
          if (v10)
          {
            MEMORY[0x259C63150](v10, 0x1000C8000313F17);
          }
        }
      }

      v5 = v7;
      v6 += 16;
    }

    while (v6);
    v2 = *(this + 77);
  }

  if (v2 != this + 632)
  {
    free(v2);
  }

  v11 = *(this + 43);
  v12 = *(this + 88);
  if (v12)
  {
    v13 = 16 * v12;
    v14 = &v11[16 * v12 - 8];
    v15 = -v13;
    v16 = v14;
    do
    {
      v18 = *v16;
      v16 -= 4;
      v17 = v18;
      if (v18)
      {
        if (v17 >= 0x41)
        {
          v19 = *(v14 - 8);
          if (v19)
          {
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }
        }
      }

      v14 = v16;
      v15 += 16;
    }

    while (v15);
    v11 = *(this + 43);
  }

  if (v11 != this + 360)
  {
    free(v11);
  }

  v20 = *(this + 7);
  v21 = *(this + 16);
  if (v21)
  {
    v22 = 16 * v21;
    v23 = &v20[16 * v21 - 8];
    v24 = -v22;
    v25 = v23;
    do
    {
      v27 = *v25;
      v25 -= 4;
      v26 = v27;
      if (v27)
      {
        if (v26 >= 0x41)
        {
          v28 = *(v23 - 8);
          if (v28)
          {
            MEMORY[0x259C63150](v28, 0x1000C8000313F17);
          }
        }
      }

      v23 = v25;
      v24 += 16;
    }

    while (v24);
    v20 = *(this + 7);
  }

  if (v20 != this + 72)
  {
    free(v20);
  }

  v29 = *(this + 3);
  if (v29 != this + 40)
  {
    free(v29);
  }
}

void mlir::Liveness::Liveness(mlir::Liveness *this, mlir::Operation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  mlir::Liveness::build(this);
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  mlir::Liveness::build(this);
}

void mlir::Liveness::build(mlir::ForwardIterator **this)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v1 = *this;
  v63 = 0;
  *v62 = 0u;
  v64 = &v66;
  v65 = 0;
  v66 = &v59;
  v67 = v62;
  v2 = v65;
  if (!v65)
  {
LABEL_112:
    if (v64 != &v66)
    {
      free(v64);
    }

    llvm::deallocate_buffer(v62[0], (8 * v63));
  }

  while (1)
  {
    v3 = *(v64 + v2 - 1);
    v4 = v3 >> 4;
    if (v63)
    {
      v5 = (v4 ^ (v3 >> 9)) & (v63 - 1);
      v6 = *(v62[0] + v5);
      if (v3 == v6)
      {
LABEL_6:
        *(v62[0] + v5) = -8192;
        v62[1] = vadd_s32(v62[1], 0x1FFFFFFFFLL);
      }

      else
      {
        v56 = 1;
        while (v6 != -4096)
        {
          v57 = v5 + v56++;
          v5 = v57 & (v63 - 1);
          v6 = *(v62[0] + v5);
          if (v3 == v6)
          {
            goto LABEL_6;
          }
        }
      }
    }

    LODWORD(v65) = v2 - 1;
    v7 = v61;
    if (v61)
    {
      v8 = (v61 - 1) & (v4 ^ (v3 >> 9));
      v9 = (v59 + 656 * v8);
      v10 = *v9;
      if (*v9 == v3)
      {
        goto LABEL_24;
      }

      v11 = 0;
      v12 = 1;
      while (v10 != -4096)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == -8192;
        }

        if (v13)
        {
          v11 = v9;
        }

        v14 = v8 + v12++;
        v8 = v14 & (v61 - 1);
        v9 = (v59 + 656 * v8);
        v10 = *v9;
        if (*v9 == v3)
        {
          goto LABEL_24;
        }
      }

      if (v11)
      {
        v9 = v11;
      }
    }

    else
    {
      v9 = 0;
    }

    v66 = v9;
    if (4 * v60 + 4 >= 3 * v61)
    {
      break;
    }

    if (v61 + ~v60 - HIDWORD(v60) <= v61 >> 3)
    {
      goto LABEL_110;
    }

    LODWORD(v60) = v60 + 1;
    if (*v9 != -4096)
    {
      goto LABEL_22;
    }

LABEL_23:
    *v9 = v3;
    bzero(v9 + 1, 0x288uLL);
    v9[2] = (v9 + 6);
    v9[3] = (v9 + 6);
    *(v9 + 8) = 16;
    v9[22] = (v9 + 26);
    v9[23] = (v9 + 26);
    *(v9 + 48) = 16;
    v9[42] = (v9 + 46);
    v9[43] = (v9 + 46);
    *(v9 + 88) = 16;
    v9[62] = (v9 + 66);
    v9[63] = (v9 + 66);
    *(v9 + 128) = 16;
LABEL_24:
    v58 = v3;
    mlir::SuccessorRange::SuccessorRange(&v66, v9[1]);
    v15 = v67;
    if (v67)
    {
      v16 = 0;
      v17 = v66;
      while (1)
      {
        if (!v61)
        {
          goto LABEL_33;
        }

        v18 = v17[4 * v16 + 3];
        v19 = ((v18 >> 4) ^ (v18 >> 9)) & (v61 - 1);
        v20 = (v59 + 656 * v19);
        v21 = *v20;
        if (*v20 != v18)
        {
          break;
        }

LABEL_34:
        v25 = v20[2];
        v24 = v20[3];
        v26 = v20 + 2;
        if (v24 == v25)
        {
          v27 = 20;
        }

        else
        {
          v27 = 16;
        }

        v28 = *(v26 + v27);
        if (v28)
        {
          v29 = 8 * v28;
          v30 = v24;
          while (*v30 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v30;
            v29 -= 8;
            if (!v29)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v30 = v24;
        }

        v31 = &v24[v28];
        if (v30 != v31)
        {
          v32 = v9[22];
          v33 = v9[23];
          v34 = *v30;
          while (1)
          {
            if (v33 != v32)
            {
              goto LABEL_46;
            }

            v35 = *(v9 + 49);
            if (!v35)
            {
              break;
            }

            v36 = 0;
            while (*(v32 + v36) != v34)
            {
              v36 += 8;
              if (8 * v35 == v36)
              {
                goto LABEL_56;
              }
            }

            do
            {
LABEL_48:
              if (++v30 == v31)
              {
                goto LABEL_26;
              }

              v34 = *v30;
            }

            while (*v30 >= 0xFFFFFFFFFFFFFFFELL);
            if (v30 == v31)
            {
              goto LABEL_26;
            }
          }

LABEL_56:
          if (v35 >= *(v9 + 48))
          {
LABEL_46:
            llvm::SmallPtrSetImplBase::insert_imp_big((v9 + 22), v34);
          }

          else
          {
            *(v9 + 49) = v35 + 1;
            *(v32 + v35) = v34;
          }

          v32 = v9[22];
          v33 = v9[23];
          goto LABEL_48;
        }

LABEL_26:
        if (++v16 == v15)
        {
          goto LABEL_58;
        }
      }

      v22 = 1;
      while (v21 != -4096)
      {
        v23 = v19 + v22++;
        v19 = v23 & (v61 - 1);
        v20 = (v59 + 656 * v19);
        v21 = *v20;
        if (*v20 == v18)
        {
          goto LABEL_34;
        }
      }

LABEL_33:
      v20 = (v59 + 656 * v61);
      goto LABEL_34;
    }

LABEL_58:
    {
      v37 = *v58;
      if (*v58)
      {
        while (1)
        {
          v41 = mlir::PredecessorIterator::unwrap(v37);
          if (!v63)
          {
            goto LABEL_83;
          }

          v38 = ((v41 >> 4) ^ (v41 >> 9)) & (v63 - 1);
          v39 = v62[0] + 8 * v38;
          v40 = *v39;
          if (v41 != *v39)
          {
            break;
          }

LABEL_62:
          v37 = *v37;
          if (!v37)
          {
            goto LABEL_3;
          }
        }

        v42 = 0;
        v43 = 1;
        while (v40 != -4096)
        {
          if (v42)
          {
            v44 = 0;
          }

          else
          {
            v44 = v40 == -8192;
          }

          if (v44)
          {
            v42 = v39;
          }

          v45 = v38 + v43++;
          v38 = v45 & (v63 - 1);
          v39 = v62[0] + 8 * v38;
          v40 = *v39;
          if (v41 == *v39)
          {
            goto LABEL_62;
          }
        }

        if (v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v39;
        }

        if (4 * LODWORD(v62[1]) + 4 < 3 * v63)
        {
          if (v63 + ~LODWORD(v62[1]) - HIDWORD(v62[1]) > v63 >> 3)
          {
            ++LODWORD(v62[1]);
            if (*v46 == -4096)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          }

          v47 = v41;
          llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v62, v63);
          v48 = v63;
          if (v63)
          {
            goto LABEL_84;
          }
        }

        else
        {
LABEL_83:
          v47 = v41;
          llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(v62, 2 * v63);
          v48 = v63;
          if (v63)
          {
LABEL_84:
            v41 = v47;
            v49 = v48 - 1;
            v50 = (v48 - 1) & ((v47 >> 4) ^ (v47 >> 9));
            v46 = v62[0] + 8 * v50;
            v51 = *v46;
            if (v47 != *v46)
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
                  v52 = v46;
                }

                v55 = v50 + v53++;
                v50 = v55 & v49;
                v46 = v62[0] + 8 * (v55 & v49);
                v51 = *v46;
                if (v47 == *v46)
                {
                  goto LABEL_97;
                }
              }

              if (v52)
              {
                v46 = v52;
              }
            }

LABEL_97:
            ++LODWORD(v62[1]);
            if (*v46 == -4096)
            {
LABEL_68:
              *v46 = v41;
              if (v65 >= HIDWORD(v65))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v64 + v65) = v41;
              LODWORD(v65) = v65 + 1;
              goto LABEL_62;
            }

LABEL_67:
            --HIDWORD(v62[1]);
            goto LABEL_68;
          }
        }

        v46 = 0;
        v41 = v47;
        goto LABEL_97;
      }
    }

LABEL_3:
    v2 = v65;
    if (!v65)
    {
      goto LABEL_112;
    }
  }

  v7 = 2 * v61;
LABEL_110:
  v9 = v66;
  LODWORD(v60) = v60 + 1;
  if (*v66 == -4096)
  {
    goto LABEL_23;
  }

LABEL_22:
  --HIDWORD(v60);
  goto LABEL_23;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 336 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 336 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>,mlir::Block *,mlir::LivenessBlockInfo,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,mlir::LivenessBlockInfo>>::LookupBucketFor<mlir::Block *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 328) = 0;
  *(v5 + 8) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 16) = v5 + 48;
  *(v5 + 24) = v5 + 48;
  *(v5 + 32) = 16;
  *(v5 + 176) = v5 + 208;
  *(v5 + 184) = v5 + 208;
  *(v5 + 192) = 16;
  return v5 + 8;
}

void mlir::Liveness::resolveLiveness(uint64_t a1@<X0>, uint64_t **a2@<X1>, void **a3@<X8>)
{
  v85[8] = *MEMORY[0x277D85DE8];
  v80 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v75 = v79;
  v76 = v79;
  v77 = 32;
  v78 = 0;
  v83 = v85;
  v84 = 0x800000000;
  DefiningOp = mlir::Value::getDefiningOp(&v80);
  v6 = v80;
  if (DefiningOp)
  {
    v6 = DefiningOp;
  }

  v7 = v6[2];
  if (v84 >= HIDWORD(v84))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v83[v84] = v7;
  LODWORD(v84) = v84 + 1;
  if (v76 != v75)
  {
    goto LABEL_5;
  }

  v71 = HIDWORD(v77);
  if (HIDWORD(v77))
  {
    v72 = 8 * HIDWORD(v77);
    v73 = v75;
    while (*v73 != v7)
    {
      ++v73;
      v72 -= 8;
      if (!v72)
      {
        goto LABEL_121;
      }
    }
  }

  else
  {
LABEL_121:
    if (HIDWORD(v77) >= v77)
    {
LABEL_5:
      llvm::SmallPtrSetImplBase::insert_imp_big(&v75, v7);
      goto LABEL_6;
    }

    ++HIDWORD(v77);
    v75[v71] = v7;
  }

LABEL_6:
  v8 = *v80;
  if (*v80)
  {
    while (1)
    {
      v66 = *(v8[2] + 16);
      if (v76 == v75)
      {
        v68 = HIDWORD(v77);
        if (HIDWORD(v77))
        {
          v69 = 8 * HIDWORD(v77);
          v70 = v75;
          while (*v70 != v66)
          {
            ++v70;
            v69 -= 8;
            if (!v69)
            {
              goto LABEL_109;
            }
          }

          goto LABEL_101;
        }

LABEL_109:
        if (HIDWORD(v77) < v77)
        {
          break;
        }
      }

      llvm::SmallPtrSetImplBase::insert_imp_big(&v75, *(v8[2] + 16));
      if (v67)
      {
        goto LABEL_99;
      }

LABEL_101:
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    ++HIDWORD(v77);
    v75[v68] = v66;
LABEL_99:
    if (v84 >= HIDWORD(v84))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v83[v84] = v66;
    LODWORD(v84) = v84 + 1;
    goto LABEL_101;
  }

LABEL_7:
  v9 = v84;
  while (v84)
  {
    v10 = v83[v9 - 1];
    LODWORD(v84) = v9 - 1;
    v11 = *(a1 + 8);
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = (v12 - 1) & ((v10 >> 4) ^ (v10 >> 9));
      v14 = (v11 + 336 * v13);
      v15 = *v14;
      if (*v14 == v10)
      {
        goto LABEL_17;
      }

      v16 = 1;
      while (v15 != -4096)
      {
        v17 = v13 + v16++;
        v13 = v17 & (v12 - 1);
        v14 = (v11 + 336 * v13);
        v15 = *v14;
        if (*v14 == v10)
        {
          goto LABEL_17;
        }
      }
    }

    v14 = (v11 + 336 * v12);
LABEL_17:
    if (v14 == (v11 + 336 * v12))
    {
      v18 = 0;
    }

    else
    {
      v18 = (v14 + 1);
    }

    v81 = v80;
    ValuePtr = mlir::Value::getDefiningOp(&v81);
    v21 = v18 + 8;
    v20 = *(v18 + 8);
    v22 = *(v18 + 16);
    if (v22 == v20)
    {
      v25 = *(v18 + 28);
      if (v25)
      {
        v26 = 8 * v25;
        while (*v20 != v81)
        {
          ++v20;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v20 = &v22[v25];
      }

      v23 = *(v18 + 16);
    }

    else
    {
      v20 = llvm::SmallPtrSetImplBase::doFind((v18 + 8), v81);
      v22 = *(v18 + 8);
      v23 = *(v18 + 16);
      if (!v20)
      {
        v24 = 16;
        if (v23 == v22)
        {
          v24 = 20;
        }

        v20 = &v23[*(v21 + v24)];
      }
    }

    v28 = v23 == v22;
    v27 = 16;
    if (v28)
    {
      v27 = 20;
    }

    v28 = v20 != &v23[*(v21 + v27)] || ValuePtr == 0;
    if (v28)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(*v18 + 40));
    }

    v74 = ValuePtr;
    EndOperation = mlir::LivenessBlockInfo::getEndOperation(v18, v80, ValuePtr);
    std::vector<mlir::Operation *>::push_back[abi:nn200100](a3, &v74);
    v30 = v74;
    if (v74 != EndOperation)
    {
      while (1)
      {
        v31 = *(v30 + 8);
        if (v31 == *(v30 + 16) + 32)
        {
          v32 = 0;
          v74 = 0;
          v34 = a3[1];
          v33 = a3[2];
          if (v34 < v33)
          {
            goto LABEL_41;
          }

LABEL_46:
          v35 = *a3;
          v36 = v34 - *a3;
          v37 = (v36 >> 3) + 1;
          if (v37 >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v38 = v33 - v35;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            if (!(v39 >> 61))
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v40 = (8 * (v36 >> 3));
          *v40 = v32;
          v41 = v40 + 1;
          memcpy(0, v35, v36);
          *a3 = 0;
          a3[1] = v41;
          a3[2] = 0;
          if (v35)
          {
            operator delete(v35);
          }

          a3[1] = v41;
          v30 = v74;
          if (v74 == EndOperation)
          {
            break;
          }
        }

        else
        {
          v32 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v31);
          v74 = v32;
          v34 = a3[1];
          v33 = a3[2];
          if (v34 >= v33)
          {
            goto LABEL_46;
          }

LABEL_41:
          *v34 = v32;
          a3[1] = v34 + 1;
          v30 = v74;
          if (v74 == EndOperation)
          {
            break;
          }
        }
      }
    }

    mlir::SuccessorRange::SuccessorRange(&v81, v10);
    v42 = v82;
    if (v82)
    {
      v43 = 0;
      v44 = v81;
      while (1)
      {
        v45 = v44[4 * v43 + 3];
        v46 = *(a1 + 8);
        v47 = *(a1 + 24);
        if (!v47)
        {
          goto LABEL_70;
        }

        v48 = ((v45 >> 4) ^ (v45 >> 9)) & (v47 - 1);
        v49 = (v46 + 336 * v48);
        v50 = *v49;
        if (*v49 != v45)
        {
          break;
        }

LABEL_71:
        if (v49 == (v46 + 336 * v47))
        {
          v53 = 0;
        }

        else
        {
          v53 = v49 + 1;
        }

        v55 = v53 + 1;
        v54 = v53[1];
        v56 = v53[2];
        if (v56 == v54)
        {
          v59 = *(v53 + 7);
          if (v59)
          {
            v60 = 8 * v59;
            while (*v54 != v80)
            {
              ++v54;
              v60 -= 8;
              if (!v60)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
LABEL_83:
            v54 = &v56[v59];
          }

          v57 = v53[2];
        }

        else
        {
          v54 = llvm::SmallPtrSetImplBase::doFind((v53 + 1), v80);
          v56 = v53[1];
          v57 = v53[2];
          if (!v54)
          {
            v58 = 16;
            if (v57 == v56)
            {
              v58 = 20;
            }

            v54 = &v57[*(v55 + v58)];
          }
        }

        v28 = v57 == v56;
        v61 = 16;
        if (v28)
        {
          v61 = 20;
        }

        if (v54 == &v57[*(v55 + v61)])
        {
          goto LABEL_63;
        }

        if (v76 == v75)
        {
          v63 = HIDWORD(v77);
          if (HIDWORD(v77))
          {
            v64 = 8 * HIDWORD(v77);
            v65 = v75;
            while (*v65 != v45)
            {
              ++v65;
              v64 -= 8;
              if (!v64)
              {
                goto LABEL_95;
              }
            }

            goto LABEL_63;
          }

LABEL_95:
          if (HIDWORD(v77) < v77)
          {
            ++HIDWORD(v77);
            v75[v63] = v45;
LABEL_61:
            if (v84 >= HIDWORD(v84))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v83[v84] = v45;
            LODWORD(v84) = v84 + 1;
            goto LABEL_63;
          }
        }

        llvm::SmallPtrSetImplBase::insert_imp_big(&v75, v45);
        if (v62)
        {
          goto LABEL_61;
        }

LABEL_63:
        if (++v43 == v42)
        {
          goto LABEL_9;
        }
      }

      v51 = 1;
      while (v50 != -4096)
      {
        v52 = v48 + v51++;
        v48 = v52 & (v47 - 1);
        v49 = (v46 + 336 * v48);
        v50 = *v49;
        if (*v49 == v45)
        {
          goto LABEL_71;
        }
      }

LABEL_70:
      v49 = (v46 + 336 * v47);
      goto LABEL_71;
    }

LABEL_9:
    v9 = v84;
  }

  if (v83 != v85)
  {
    free(v83);
  }

  if (v76 != v75)
  {
    free(v76);
  }
}