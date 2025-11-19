uint64_t mlir::presburger::IntegerRelation::gaussianEliminate(mlir::presburger::IntegerRelation *this)
{
  v31 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::gcdTightenInequalities(this);
  v2 = (this + 48);
  v3 = *(this + 12);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = *(this + 3) + *(this + 2) + *(this + 4) + *(this + 5);
  v7 = (this + 336);
  v24 = 1;
LABEL_4:
  if (v5 < v6)
  {
    v8 = *v2;
    if (*v2)
    {
LABEL_6:
      v9 = 0;
      while (1)
      {
        v10 = (*(this + 8) + 16 * (v5 + *(this + 14) * v9));
        v11 = *v10;
        v25 = *v10;
        v12 = *(v10 + 2);
        if (v12)
        {
          LODWORD(v26) = *(v10 + 2);
          if (v12 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v25, v10);
          }

          v13 = llvm::detail::operator!=(&v25, 0);
          if (v26 >= 0x41 && v25)
          {
            v14 = v13;
            MEMORY[0x259C63150](v25, 0x1000C8000313F17);
            if (v14)
            {
              goto LABEL_22;
            }
          }

          else if (v13)
          {
LABEL_22:
            if (v9 > v4)
            {
              mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows();
            }

            v15 = ++v4;
            v24 = v4 < v3;
            if (v4 < v3)
            {
              do
              {
                eliminateFromConstraint(this, v15, v9, v5, 0, 1);
                mlir::presburger::IntMatrix::normalizeRow((this + 48), v15, &v29);
                if (v30 > 0x40 && v29)
                {
                  MEMORY[0x259C63150](v29, 0x1000C8000313F17);
                }

                ++v15;
              }

              while (v3 != v15);
            }

            v16 = *v7;
            if (*v7)
            {
              v17 = 0;
              do
              {
                eliminateFromConstraint(this, v17, v9, v5, 0, 0);
                mlir::presburger::IntMatrix::normalizeRow((this + 336), v17, &v27);
                if (v28 > 0x40 && v27)
                {
                  MEMORY[0x259C63150](v27, 0x1000C8000313F17);
                }

                ++v17;
              }

              while (v16 != v17);
            }

            mlir::presburger::IntegerRelation::gcdTightenInequalities(this);
            if (v4 == v3)
            {
              return 0;
            }

            goto LABEL_4;
          }
        }

        else if (v11)
        {
          goto LABEL_22;
        }

        if (v8 == ++v9)
        {
          while (++v5 < v6)
          {
            v8 = *v2;
            if (*v2)
            {
              goto LABEL_6;
            }
          }

          break;
        }
      }
    }
  }

  v18 = v3 - v4;
  if (v3 == v4)
  {
    return 0;
  }

  if (v3 > v4)
  {
    v20 = v4;
    do
    {
      v21 = *(this + 8) + 16 * (v6 + *(this + 14) * v20);
      if (*(v21 + 8))
      {
        v22 = v18;
        v23 = llvm::detail::operator==(v21, 0);
        v18 = v22;
        if (!v23)
        {
LABEL_46:
          mlir::presburger::IntegerRelation::getEmpty((this + 8), &v25);
        }
      }

      else if (*v21)
      {
        goto LABEL_46;
      }

      ++v20;
    }

    while (v3 != v20);
  }

  if (v24)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
  }

  return 1;
}

void mlir::presburger::IntegerRelation::removeRedundantInequalities(void **this)
{
  v18[10] = *MEMORY[0x277D85DE8];
  v2 = *(this + 84);
  v15[32] = v18;
  v17 = 32;
  if (v2 >= 0x21)
  {
    v16 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v2)
  {
    bzero(v18, v2);
  }

  v16 = v2;
  v4 = &unk_286893110;
  v5 = *(this + 1);
  v6 = *(this + 24);
  __dst = &v9;
  v8 = 0;
  if (&v4 != this && *(this + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = this + 42;
  v9 = this[6];
  v10 = *(this + 14);
  v11[0] = v12;
  v11[1] = 0x1000000000;
  if (*(this + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v11, this + 8);
  }

  v12[32] = *v3;
  v13 = *(this + 86);
  v14[0] = v15;
  v14[1] = 0x1000000000;
  if (*(this + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v14, this + 44);
  }

  if (*v3)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::negateRow();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically();
}

void mlir::presburger::IntegerRelation::removeRedundantConstraints(mlir::presburger::IntegerRelation *this)
{
  v3 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::gcdTightenInequalities(this);
  mlir::presburger::SimplexBase::SimplexBase(v2, vaddvq_s32(*(this + 8)), 0);
}

__n128 mlir::presburger::IntegerRelation::mergeAndAlignSymbols(mlir::presburger::IntegerRelation *this, mlir::presburger::IntegerRelation *a2)
{
  v4 = (this + 32);
  v5 = *(this + 4);
  v6 = (this + 8);
  VarKindOffset = mlir::presburger::PresburgerSpace::getVarKindOffset(this + 2, 0);
  v35 = v6;
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(v6, 0);
  if (NumVarKind)
  {
    v9 = 0;
    v10 = (v5 + 24 * VarKindOffset);
    v11 = (v10 + 24 * NumVarKind);
    do
    {
      while (1)
      {
        v13 = *v10;
        v39 = v10[1].n128_i64[0];
        v38 = v13;
        v14 = *(a2 + 4);
        v15 = v14 + 24 * mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, 0);
        mlir::presburger::PresburgerSpace::getNumVarKind(a2 + 2, 0);
        v16 = (v15 + 24 * v9);
        v17 = *(a2 + 4);
        v18 = v17 + 24 * mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, 0);
        v19 = (v18 + 24 * mlir::presburger::PresburgerSpace::getNumVarKind(a2 + 2, 0));
        v20 = v16;
        if (v16 != v19)
        {
          while (!mlir::presburger::Identifier::isEqual(v20, &v38))
          {
            v20 += 24;
            if (v20 == v19)
            {
              goto LABEL_13;
            }
          }
        }

        if (v20 == v19)
        {
          break;
        }

        v21 = v20 - v16;
        v22 = mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, 0);
        v23 = mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, 0);
        (*(*a2 + 48))(a2, (v22 + v9), v9 - 1431655765 * (v21 >> 3) + v23);
        ++v9;
        v10 = (v10 + 24);
        if (v10 == v11)
        {
          goto LABEL_20;
        }
      }

LABEL_13:
      (*(*a2 + 24))(a2, 0, v9, 1);
      v36 = v38;
      v37 = v39;
      if ((*(a2 + 24) & 1) == 0)
      {
        *(a2 + 10) = 0;
        v24 = *(a2 + 3) + *(a2 + 2);
        v25 = *(a2 + 4);
        v26 = (v24 + v25);
        if (v24 + v25)
        {
          if (*(a2 + 11) < v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v24 + v25)
          {
            bzero(*(a2 + 4), 24 * ((24 * v26 - 24) / 0x18uLL) + 24);
          }

          *(a2 + 10) = v26;
        }

        *(a2 + 24) = 1;
      }

      v12 = *(a2 + 4) + 24 * (mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, 0) + v9);
      *(v12 + 16) = v37;
      *v12 = v36;
      ++v9;
      v10 = (v10 + 24);
    }

    while (v10 != v11);
  }

  else
  {
    v9 = 0;
  }

LABEL_20:
  v27 = mlir::presburger::PresburgerSpace::getNumVarKind(a2 + 2, 0);
  if (v9 < v27)
  {
    v29 = v27;
    do
    {
      (*(*this + 24))(this, 0, v9, 1);
      if (*(a2 + 24))
      {
        v31 = *(a2 + 4) + 24 * (mlir::presburger::PresburgerSpace::getVarKindOffset(a2 + 2, 0) + v9);
        v38 = *v31;
        v39 = *(v31 + 16);
        if ((*(this + 24) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v38 = 0uLL;
        v39 = 0;
        if ((*(this + 24) & 1) == 0)
        {
LABEL_29:
          *(this + 10) = 0;
          v32 = *(this + 3) + *(this + 2);
          v33 = *(this + 4);
          v34 = (v32 + v33);
          if (v32 + v33)
          {
            if (*(this + 11) < v34)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v32 + v33)
            {
              bzero(*v4, 24 * ((24 * v34 - 24) / 0x18uLL) + 24);
            }

            *(this + 10) = v34;
          }

          *(this + 24) = 1;
        }
      }

      v30 = *v4 + 24 * mlir::presburger::PresburgerSpace::getVarKindOffset(v35, 0) + 24 * v9;
      *(v30 + 16) = v39;
      result = v38;
      *v30 = v38;
      v9 = (v9 + 1);
    }

    while (v29 != v9);
  }

  return result;
}

uint64_t mlir::presburger::IntegerRelation::simplify(mlir::presburger::IntegerRelation *this)
{
  do
  {
    result = mlir::presburger::IntegerRelation::isEmptyByGCDTest(this);
    if (result)
    {
      break;
    }

    result = mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 1);
    if (result)
    {
      break;
    }

    result = mlir::presburger::IntegerRelation::hasInvalidConstraint(void)const::$_0::operator()(this, 0);
    if (result)
    {
      break;
    }

    mlir::presburger::IntegerRelation::normalizeConstraintsByGCD(this);
    v3 = mlir::presburger::IntegerRelation::gaussianEliminate(this);
    result = mlir::presburger::IntegerRelation::removeDuplicateConstraints(this);
  }

  while ((v3 & 1) != 0 || (result & 1) != 0);
  return result;
}

uint64_t mlir::presburger::IntegerRelation::removeDuplicateConstraints(mlir::presburger::IntegerRelation *this)
{
  if (*(this + 84) >= 2u)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  return 0;
}

uint64_t mlir::presburger::IntegerRelation::convertVarKind(uint64_t result, int a2, unsigned int a3, unsigned int a4, int a5)
{
  if (a4 > a3)
  {
    v5 = result;
    mlir::presburger::PresburgerSpace::getVarKindOffset((result + 8), a2);
    mlir::presburger::PresburgerSpace::getVarKindOffset((v5 + 8), a5);
    mlir::presburger::Matrix<llvm::DynamicAPInt>::moveColumns();
  }

  return result;
}

void mlir::presburger::IntegerRelation::addBound(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::appendExtraRow();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::appendExtraRow();
}

void mlir::presburger::IntegerRelation::addLocalFloorDiv(unsigned int *a1, const llvm::APInt *a2, uint64_t a3, void *a4)
{
  v19[16] = *MEMORY[0x277D85DE8];
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(a1 + 2, 1);
  (*(*a1 + 24))(a1, 1, NumVarKind, 1);
  v17 = v19;
  v18 = 0x800000000;
  if (((16 * a3) >> 4) >= 9)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v9 = 0;
  v10 = v19;
  v11 = 16 * a3;
  if (a3)
  {
    v12 = v19;
    v13 = v11;
    do
    {
      *v12 = *a2;
      *(v12 + 2) = 0;
      v14 = *(a2 + 2);
      if (v14)
      {
        *(v12 + 2) = v14;
        if (v14 > 0x40)
        {
          llvm::APInt::initSlowCase(v12, a2);
        }

        *v12 = *a2;
      }

      a2 = (a2 + 16);
      v12 = (v12 + 16);
      v13 -= 16;
    }

    while (v13);
    v9 = v18;
    v10 = v17;
  }

  LODWORD(v18) = v9 + (v11 >> 4);
  v15 = 0;
  v16 = 0;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::insert_one_impl<llvm::DynamicAPInt>(&v17, &v10[2 * v18 - 2], &v15);
  if (v16 > 0x40)
  {
    if (v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  mlir::presburger::getDivLowerBound(v17, v18, a4, v18 - 2, &v15);
  mlir::presburger::IntegerRelation::addInequality();
}

uint64_t mlir::presburger::IntegerRelation::constantFoldVar(mlir::presburger::IntegerRelation *this, uint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  EqualityToConstant = findEqualityToConstant(this, a2, 0);
  if (EqualityToConstant != -1)
  {
    v5 = vaddvq_s32(*(this + 8));
    v6 = *(this + 8) + 16 * (v5 + *(this + 14) * EqualityToConstant);
    if (*(v6 + 8) || *v6 == 0x8000000000000000)
    {
      v10 = EqualityToConstant;
      mlir::presburger::operator-(*(this + 8) + 16 * (v5 + *(this + 14) * EqualityToConstant));
      v7 = *(this + 8) + 16 * (v2 + *(this + 14) * v10);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = -*v6;
      v18 = 0;
      v7 = *(this + 8) + 16 * (v2 + *(this + 14) * EqualityToConstant);
    }

    if (!*(v7 + 8))
    {
      v8 = *v7;
      if (v17 == 0x8000000000000000 && v8 == -1)
      {
        mlir::presburger::operator-(&v17);
      }

      else
      {
        v19 = v17 / v8;
        v20 = 0;
      }

      goto LABEL_9;
    }

LABEL_16:
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v17, &v13);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v7, &v11);
    llvm::detail::SlowDynamicAPInt::operator/(&v13, &v11, &v15);
    v20 = v16;
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase(&v19, &v15);
    }

    v19 = v15;
    if (v12 >= 0x41 && v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }

    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }

LABEL_9:
    if (v18 > 0x40)
    {
      if (v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }
    }

    mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn();
  }

  return 0;
}

uint64_t findEqualityToConstant(uint64_t result, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(result + 48);
  if (v3)
  {
    v4 = result;
    for (i = 0; i != v3; ++i)
    {
      v6 = *(v4 + 64) + 16 * (a2 + *(v4 + 56) * i);
      v7 = *v6;
      v36 = *v6;
      v37 = 0;
      v8 = *(v6 + 8);
      if (v8)
      {
        v21 = v4;
        v22 = result;
        v23 = a2;
        v24 = a3;
        v37 = *(v6 + 8);
        if (v8 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v36, v6);
        }

        v33 = v8;
        v32 = v7;
        v31 = v8;
        v30 = v36;
      }

      else
      {
        if ((v7 * v7) >> 64 == (v7 * v7) >> 63)
        {
          if (v7 * v7 == 1)
          {
            goto LABEL_6;
          }

          goto LABEL_47;
        }

        v21 = v4;
        v22 = result;
        v23 = a2;
        v24 = a3;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v36, &v32);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v36, &v30);
      }

      llvm::detail::SlowDynamicAPInt::operator*(&v32, &v30, &v38);
      v35 = v39;
      if (v39 > 0x40)
      {
        llvm::APInt::initSlowCase(&v34, &v38);
      }

      v34 = v38;
      if (v31 >= 0x41 && v30)
      {
        MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }

      if (v33 >= 0x41 && v32)
      {
        MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }

      if (v35)
      {
        v25 = llvm::detail::operator!=(&v34, 1);
        if (v35 >= 0x41 && v34)
        {
          MEMORY[0x259C63150](v34, 0x1000C8000313F17);
          a3 = v24;
          a2 = v23;
          result = v22;
          v4 = v21;
          if (!v25)
          {
            goto LABEL_6;
          }
        }

        else
        {
          a3 = v24;
          a2 = v23;
          result = v22;
          v4 = v21;
          if (!v25)
          {
LABEL_6:
            v9 = 0;
            if (a3)
            {
              v10 = *(v4 + 12) + *(v4 + 8);
            }

            else
            {
              v10 = *(v4 + 12) + *(v4 + 8) + *(v4 + 16) + *(v4 + 20);
            }

            if (v10)
            {
              do
              {
                if (a2 != v9)
                {
                  v11 = (*(v4 + 64) + 16 * (v9 + i * *(v4 + 56)));
                  v12 = *v11;
                  v38 = *v11;
                  v13 = *(v11 + 2);
                  if (v13)
                  {
                    v14 = v4;
                    v15 = result;
                    v16 = a2;
                    v17 = a3;
                    v39 = *(v11 + 2);
                    if (v13 >= 0x41)
                    {
                      llvm::APInt::initSlowCase(&v38, v11);
                    }

                    v18 = llvm::detail::operator!=(&v38, 0);
                    if (v39 >= 0x41 && v38)
                    {
                      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
                    }

                    a3 = v17;
                    a2 = v16;
                    result = v15;
                    v4 = v14;
                    if (v18)
                    {
                      goto LABEL_23;
                    }
                  }

                  else if (v12)
                  {
                    goto LABEL_23;
                  }
                }

                ++v9;
              }

              while (v10 != v9);
              v9 = v10;
            }

LABEL_23:
            v19 = v9 == v10;
            if (v9 == v10)
            {
              result = i;
            }

            else
            {
              result = result;
            }

            v20 = v37;
            if (!v37)
            {
              goto LABEL_48;
            }

LABEL_51:
            if (v20 >= 0x41)
            {
              if (v36)
              {
                v26 = result;
                v27 = v4;
                v28 = a2;
                v29 = a3;
                MEMORY[0x259C63150](v36, 0x1000C8000313F17);
                v4 = v27;
                result = v26;
                a2 = v28;
                a3 = v29;
              }
            }

            goto LABEL_48;
          }
        }
      }

      else
      {
        a3 = v24;
        a2 = v23;
        result = v22;
        v4 = v21;
        if (v34 == 1)
        {
          goto LABEL_6;
        }
      }

LABEL_47:
      v19 = 4;
      v20 = v37;
      if (v37)
      {
        goto LABEL_51;
      }

LABEL_48:
      if ((v19 | 4) != 4)
      {
        return result;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t mlir::presburger::IntegerRelation::constantFoldVarRange(uint64_t this, uint64_t a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = this;
    do
    {
      this = mlir::presburger::IntegerRelation::constantFoldVar(v5, v4);
      v4 = v4 + ((this & 1) == 0);
      --v3;
    }

    while (v3);
  }

  return this;
}

void mlir::presburger::IntegerRelation::getConstantBoundOnDimSize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X5>, _DWORD *a7@<X6>, uint64_t *a8@<X8>)
{
  v156 = *MEMORY[0x277D85DE8];
  v131 = a2;
  if (findEqualityToConstant(a1, a2, 1) != -1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  v11 = *(a1 + 336);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 352) + 16 * (v131 + *(a1 + 344) * v12);
      v14 = *v13;
      v139 = *v13;
      v15 = *(v13 + 8);
      if (v15)
      {
        LODWORD(v140) = *(v13 + 8);
        if (v15 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v139, v13);
        }

        v16 = llvm::detail::operator!=(&v139, 0);
        if (v140 >= 0x41 && v139)
        {
          v17 = v16;
          MEMORY[0x259C63150](v139, 0x1000C8000313F17);
          if (v17)
          {
            goto LABEL_18;
          }
        }

        else if (v16)
        {
          goto LABEL_18;
        }
      }

      else if (v14)
      {
        goto LABEL_18;
      }

      if (v11 == ++v12)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = 0;
LABEL_18:
  if (v12 == v11)
  {
LABEL_19:
    *a8 = 0;
    *(a8 + 16) = 0;
    return;
  }

  v122 = a7;
  v139 = v141;
  v140 = 0x400000000;
  v136 = v138;
  v137 = 0x400000000;
  mlir::presburger::IntegerRelation::getLowerAndUpperBoundIndices(a1, v131, &v139, &v136, 0);
  *a8 = 0;
  *(a8 + 16) = 0;
  if (v137)
  {
    v129 = 0;
    v130 = 0;
    v18 = v136;
    v125 = v136 + 4 * v137;
    while (1)
    {
      v126 = v18;
      if (v140)
      {
        break;
      }

LABEL_22:
      v18 = v126 + 1;
      if (v126 + 1 == v125)
      {
        goto LABEL_237;
      }
    }

    v19 = *v18;
    v20 = v139;
    v21 = v139 + 4 * v140;
LABEL_30:
    v23 = *v20;
    v24 = vaddvq_s32(*(a1 + 8));
    if (!v24)
    {
      v38 = 0;
      goto LABEL_81;
    }

    v25 = 0;
    while (1)
    {
      v26 = *(a1 + 344);
      v27 = *(a1 + 352);
      v28 = (v27 + 16 * (v25 + v26 * v19));
      v150 = *v28;
      v151 = 0;
      v29 = *(v28 + 2);
      if (v29)
      {
        v151 = *(v28 + 2);
        if (v29 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v150, v28);
        }
      }

      v30 = (v27 + 16 * (v25 + v26 * v23));
      v31 = *v30;
      v146 = *v30;
      v147 = 0;
      v32 = *(v30 + 2);
      if (v32)
      {
        v147 = *(v30 + 2);
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(&v146, v30);
        }

        v153 = v32;
        v152 = v31;
        llvm::detail::SlowDynamicAPInt::operator-(&v152, &v154);
        v149 = v155;
        if (v155 > 0x40)
        {
LABEL_56:
          llvm::APInt::initSlowCase(&v148, &v154);
        }
      }

      else
      {
        if (v31 != 0x8000000000000000)
        {
          v148 = -v31;
          v149 = 0;
          v33 = v151;
          if (v151)
          {
            goto LABEL_61;
          }

          goto LABEL_36;
        }

        v37 = llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v152, 0x8000000000000000);
        llvm::detail::SlowDynamicAPInt::operator-(v37, &v154);
        v149 = v155;
        if (v155 > 0x40)
        {
          goto LABEL_56;
        }
      }

      v148 = v154;
      if (v153 >= 0x41 && v152)
      {
        MEMORY[0x259C63150](v152, 0x1000C8000313F17);
      }

      v33 = v151;
      if (v151)
      {
LABEL_61:
        v155 = v33;
        if (v33 > 0x40)
        {
          llvm::APInt::initSlowCase(&v154, &v150);
        }

        v154 = v150;
        v36 = v149;
        if (!v149)
        {
LABEL_65:
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v152, v148);
          goto LABEL_66;
        }

LABEL_49:
        v153 = v36;
        if (v36 > 0x40)
        {
          llvm::APInt::initSlowCase(&v152, &v148);
        }

        v152 = v148;
LABEL_66:
        v34 = llvm::detail::SlowDynamicAPInt::operator!=(&v154, &v152);
        if (v153 >= 0x41 && v152)
        {
          MEMORY[0x259C63150](v152, 0x1000C8000313F17);
        }

        if (v155 >= 0x41 && v154)
        {
          MEMORY[0x259C63150](v154, 0x1000C8000313F17);
        }

        if (v149 >= 0x41 && v148)
        {
          MEMORY[0x259C63150](v148, 0x1000C8000313F17);
        }

        v35 = v147;
        if (!v147)
        {
          goto LABEL_38;
        }

LABEL_74:
        if (v35 >= 0x41 && v146)
        {
          MEMORY[0x259C63150](v146, 0x1000C8000313F17);
        }

        goto LABEL_38;
      }

LABEL_36:
      if (v149)
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v154, v150);
        v36 = v149;
        if (!v149)
        {
          goto LABEL_65;
        }

        goto LABEL_49;
      }

      v34 = v150 != v148;
      v35 = v147;
      if (v147)
      {
        goto LABEL_74;
      }

LABEL_38:
      if (v151 > 0x40 && v150)
      {
        MEMORY[0x259C63150](v150, 0x1000C8000313F17);
      }

      if (v34)
      {
        goto LABEL_80;
      }

      if (v24 == ++v25)
      {
        v25 = v24;
LABEL_80:
        v38 = vaddvq_s32(*(a1 + 8));
        if (v25 < v38)
        {
          goto LABEL_29;
        }

LABEL_81:
        v39 = *(a1 + 344);
        v40 = *(a1 + 352);
        v41 = v40 + 16 * (v38 + v39 * v19);
        v142 = *v41;
        v143 = 0;
        v42 = *(v41 + 8);
        if (v42)
        {
          v143 = *(v41 + 8);
          if (v42 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v142, v41);
          }
        }

        v43 = v40 + 16 * (v38 + v39 * v23);
        v134 = *v43;
        v135 = 0;
        v44 = *(v43 + 8);
        if (v44)
        {
          v135 = *(v43 + 8);
          if (v44 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v134, v43);
          }
        }

        if (v143)
        {
          v153 = v143;
          if (v143 > 0x40)
          {
            llvm::APInt::initSlowCase(&v152, &v142);
          }

          v152 = v142;
          v54 = v135;
          if (v135)
          {
            goto LABEL_164;
          }

LABEL_174:
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v150, v134);
          goto LABEL_175;
        }

        if (v135)
        {
          v45 = v142;
        }

        else
        {
          v45 = v142;
          if (!__OFADD__(v142, v134))
          {
            v144 = v142 + v134;
            v145 = 0;
            v148 = 1;
            v149 = 0;
            goto LABEL_87;
          }
        }

        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v152, v45);
        v54 = v135;
        if (!v135)
        {
          goto LABEL_174;
        }

LABEL_164:
        v151 = v54;
        if (v54 > 0x40)
        {
          llvm::APInt::initSlowCase(&v150, &v134);
        }

        v150 = v134;
LABEL_175:
        llvm::detail::SlowDynamicAPInt::operator+(&v152, &v150, &v154);
        v145 = v155;
        if (v155 > 0x40)
        {
          llvm::APInt::initSlowCase(&v144, &v154);
        }

        v144 = v154;
        if (v151 >= 0x41 && v150)
        {
          MEMORY[0x259C63150](v150, 0x1000C8000313F17);
        }

        if (v153 >= 0x41 && v152)
        {
          MEMORY[0x259C63150](v152, 0x1000C8000313F17);
        }

        v148 = 1;
        v149 = 0;
        if (v145)
        {
          v153 = v145;
          if (v145 > 0x40)
          {
            llvm::APInt::initSlowCase(&v152, &v144);
          }

          v152 = v144;
LABEL_191:
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v150, v148);
          goto LABEL_213;
        }

LABEL_87:
        if (__OFADD__(v144, 1))
        {
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v152, v144);
          if (!v149)
          {
            goto LABEL_191;
          }

          v151 = v149;
          if (v149 > 0x40)
          {
            llvm::APInt::initSlowCase(&v150, &v148);
          }

          v150 = v148;
LABEL_213:
          llvm::detail::SlowDynamicAPInt::operator+(&v152, &v150, &v154);
          v147 = v155;
          if (v155 > 0x40)
          {
            llvm::APInt::initSlowCase(&v146, &v154);
          }

          v146 = v154;
          if (v151 >= 0x41 && v150)
          {
            MEMORY[0x259C63150](v150, 0x1000C8000313F17);
          }

          if (v153 >= 0x41 && v152)
          {
            MEMORY[0x259C63150](v152, 0x1000C8000313F17);
          }
        }

        else
        {
          v146 = v144 + 1;
          v147 = 0;
        }

        if (v149 > 0x40 && v148)
        {
          MEMORY[0x259C63150](v148, 0x1000C8000313F17);
        }

        v46 = *(a1 + 352) + 16 * (v131 + *(a1 + 344) * v23);
        v132 = *v46;
        v133 = 0;
        v47 = *(v46 + 8);
        if (v47)
        {
          v133 = *(v46 + 8);
          if (v47 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v132, v46);
          }
        }

        if (v147)
        {
          v153 = v147;
          if (v147 > 0x40)
          {
            llvm::APInt::initSlowCase(&v152, &v146);
          }

          v152 = v146;
LABEL_193:
          if (v133)
          {
            v151 = v133;
            if (v133 > 0x40)
            {
              llvm::APInt::initSlowCase(&v150, &v132);
            }

            v150 = v132;
          }

          else
          {
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v150, v132);
          }

          llvm::detail::ceilDiv(&v152, &v150, &v154);
          v149 = v155;
          if (v155 > 0x40)
          {
            llvm::APInt::initSlowCase(&v148, &v154);
          }

          v148 = v154;
          if (v151 >= 0x41 && v150)
          {
            MEMORY[0x259C63150](v150, 0x1000C8000313F17);
          }

          if (v153 >= 0x41)
          {
            v59 = v152;
            if (v152)
            {
              goto LABEL_210;
            }
          }

          goto LABEL_103;
        }

        if (v133)
        {
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v152, v146);
          goto LABEL_193;
        }

        v48 = v146;
        if (v146 != 0x8000000000000000 || v132 != -1)
        {
          if (v146)
          {
            if ((v132 ^ v146) < 0)
            {
              v48 = v146 / v132;
            }

            else
            {
              if (v132 < 0)
              {
                v49 = v146 + 1;
              }

              else
              {
                v49 = v146 - 1;
              }

              v48 = v49 / v132 + 1;
            }
          }

          v148 = v48;
          v149 = 0;
          goto LABEL_103;
        }

        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v146, &v152);
        llvm::detail::SlowDynamicAPInt::operator-(&v152, &v154);
        v149 = v155;
        if (v155 > 0x40)
        {
          llvm::APInt::initSlowCase(&v148, &v154);
        }

        v148 = v154;
        if (v153 >= 0x41)
        {
          v59 = v152;
          if (v152)
          {
LABEL_210:
            MEMORY[0x259C63150](v59, 0x1000C8000313F17);
          }
        }

LABEL_103:
        if (v147 > 0x40 && v146)
        {
          MEMORY[0x259C63150](v146, 0x1000C8000313F17);
        }

        if (v145 > 0x40 && v144)
        {
          MEMORY[0x259C63150](v144, 0x1000C8000313F17);
        }

        if (v135 > 0x40 && v134)
        {
          MEMORY[0x259C63150](v134, 0x1000C8000313F17);
        }

        if (v143 > 0x40 && v142)
        {
          MEMORY[0x259C63150](v142, 0x1000C8000313F17);
        }

        v150 = 0;
        v151 = 0;
        if (!v149)
        {
          if (v148 >= 0)
          {
            v50 = v148;
          }

          else
          {
            v50 = v150;
          }

          goto LABEL_111;
        }

        v155 = v149;
        if (v149 > 0x40)
        {
          llvm::APInt::initSlowCase(&v154, &v148);
        }

        v154 = v148;
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v152, v150);
        v55 = llvm::detail::SlowDynamicAPInt::operator<(&v154, &v152);
        v56 = v55;
        if (v153 >= 0x41 && v152)
        {
          MEMORY[0x259C63150](v152, 0x1000C8000313F17);
        }

        if (v155 >= 0x41 && v154)
        {
          MEMORY[0x259C63150](v154, 0x1000C8000313F17);
        }

        v57 = v151;
        if (v56)
        {
          v58 = &v150;
        }

        else
        {
          v58 = &v148;
        }

        if (!v56)
        {
          v57 = v149;
        }

        if (v57)
        {
          if (v149)
          {
            llvm::detail::SlowDynamicAPInt::operator=(&v148, v58);
          }

          else
          {
            v149 = v57;
            if (v57 > 0x40)
            {
              llvm::APInt::initSlowCase(&v148, v58);
            }

            v148 = *v58;
          }

          v51 = v151;
          if (v151)
          {
LABEL_159:
            if (v51 >= 0x41 && v150)
            {
              MEMORY[0x259C63150](v150, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          v50 = *v58;
          if (v149 >= 0x41 && v148)
          {
            MEMORY[0x259C63150](v148, 0x1000C8000313F17);
            v148 = v50;
            v149 = 0;
            v51 = v151;
            if (v151)
            {
              goto LABEL_159;
            }
          }

          else
          {
LABEL_111:
            v148 = v50;
            v149 = 0;
            v51 = v151;
            if (v151)
            {
              goto LABEL_159;
            }
          }
        }

        if (*(a8 + 16) != 1)
        {
          goto LABEL_25;
        }

        if (std::operator<[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v148, a8))
        {
          if (a8[2])
          {
            v52 = v149;
            if (v149)
            {
              if (*(a8 + 2))
              {
                llvm::detail::SlowDynamicAPInt::operator=(a8, &v148);
              }

              else
              {
                *(a8 + 2) = v149;
                if (v52 > 0x40)
                {
                  llvm::APInt::initSlowCase(a8, &v148);
                }

                *a8 = v148;
              }
            }

            else
            {
              v53 = v148;
              if (*(a8 + 2) > 0x40u && *a8)
              {
                MEMORY[0x259C63150](*a8, 0x1000C8000313F17);
              }

              *a8 = v53;
              *(a8 + 2) = 0;
            }

            goto LABEL_27;
          }

LABEL_25:
          *a8 = v148;
          *(a8 + 2) = 0;
          v22 = v149;
          if (v149)
          {
            *(a8 + 2) = v149;
            if (v22 >= 0x41)
            {
              llvm::APInt::initSlowCase(a8, &v148);
            }
          }

          *(a8 + 16) = 1;
LABEL_27:
          v129 = v19;
          v130 = v23;
        }

        if (v149 > 0x40 && v148)
        {
          MEMORY[0x259C63150](v148, 0x1000C8000313F17);
        }

LABEL_29:
        if (++v20 == v21)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }
    }
  }

  v129 = 0;
  v130 = 0;
LABEL_237:
  v60 = a7;
  v61 = a3;
  if (a3 && *(a8 + 16) == 1)
  {
    v62 = (*(a1 + 16) + 1);
    v63 = *(a3 + 8);
    if (v63 != v62)
    {
      if (v63 <= v62)
      {
        if (*(a3 + 12) < v62)
        {
          llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
        }

        if (v63 != v62)
        {
          v71 = *a3 + 16 * v62;
          v72 = *a3 + 16 * v63;
          do
          {
            *v72 = 0;
            *(v72 + 8) = 0;
            v72 += 16;
          }

          while (v72 != v71);
        }
      }

      else
      {
        v64 = 16 * v63;
        v65 = 16 * v63 + *a3 - 8;
        v66 = 16 * v62 - v64;
        v67 = v65;
        do
        {
          v69 = *v67;
          v67 -= 4;
          v68 = v69;
          if (v69)
          {
            if (v68 >= 0x41)
            {
              v70 = *(v65 - 8);
              if (v70)
              {
                MEMORY[0x259C63150](v70, 0x1000C8000313F17);
              }
            }
          }

          v65 = v67;
          v66 += 16;
        }

        while (v66);
      }

      *(a3 + 8) = v62;
    }

    if (a5)
    {
      v73 = (*(a1 + 16) + 1);
      v74 = *(a5 + 8);
      if (v74 != v73)
      {
        if (v74 <= v73)
        {
          if (*(a5 + 12) < v73)
          {
            llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
          }

          if (v74 != v73)
          {
            v82 = *a5 + 16 * v73;
            v83 = *a5 + 16 * v74;
            do
            {
              *v83 = 0;
              *(v83 + 8) = 0;
              v83 += 16;
            }

            while (v83 != v82);
          }
        }

        else
        {
          v75 = 16 * v74;
          v76 = 16 * v74 + *a5 - 8;
          v77 = 16 * v73 - v75;
          v78 = v76;
          do
          {
            v80 = *v78;
            v78 -= 4;
            v79 = v80;
            if (v80)
            {
              if (v79 >= 0x41)
              {
                v81 = *(v76 - 8);
                if (v81)
                {
                  MEMORY[0x259C63150](v81, 0x1000C8000313F17);
                }
              }
            }

            v76 = v78;
            v77 += 16;
          }

          while (v77);
        }

        *(a5 + 8) = v73;
      }
    }

    v84 = (*(a1 + 352) + 16 * (v131 + *(a1 + 344) * v130));
    v85 = *v84;
    v154 = *v84;
    v155 = 0;
    v86 = *(v84 + 2);
    if (v86)
    {
      v155 = *(v84 + 2);
      if (v86 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v154, v84);
      }

      if (a4[2])
      {
        llvm::detail::SlowDynamicAPInt::operator=(a4, &v154);
        v61 = a3;
        v87 = v155;
        if (!v155)
        {
          goto LABEL_274;
        }
      }

      else
      {
        a4[2] = v86;
        *a4 = v154;
        v61 = a3;
        v87 = v155;
        if (!v155)
        {
          goto LABEL_274;
        }
      }
    }

    else if (a4[2] > 0x40 && *a4)
    {
      MEMORY[0x259C63150](*a4, 0x1000C8000313F17);
      *a4 = v85;
      a4[2] = 0;
      v87 = v155;
      if (!v155)
      {
        goto LABEL_274;
      }
    }

    else
    {
      *a4 = v85;
      a4[2] = 0;
      v87 = v155;
      if (!v155)
      {
        goto LABEL_274;
      }
    }

    if (v87 >= 0x41 && v154)
    {
      MEMORY[0x259C63150](v154, 0x1000C8000313F17);
    }

LABEL_274:
    v88 = *(a1 + 16);
    v89 = __CFADD__(v88, 1);
    v90 = v88 + 1;
    if (!v89)
    {
      v100 = 0;
      v101 = 0;
      v102 = 16 * v90;
      do
      {
        v103 = (*(a1 + 352) + 16 * (v101 + *(a1 + 8) + *(a1 + 12) + *(a1 + 344) * v130));
        v104 = *v103;
        v148 = *v103;
        v149 = 0;
        v105 = *(v103 + 2);
        if (v105)
        {
          v149 = *(v103 + 2);
          if (v105 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v148, v103);
          }
        }

        else if (v104 != 0x8000000000000000)
        {
          v150 = -v104;
          v151 = 0;
          v106 = *v61 + v100;
          v107 = -v104;
          v108 = *(v106 + 8);
          if (v108)
          {
            goto LABEL_319;
          }

          goto LABEL_297;
        }

        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v148, &v152);
        llvm::detail::SlowDynamicAPInt::operator-(&v152, &v154);
        v151 = v155;
        if (v155 > 0x40)
        {
          llvm::APInt::initSlowCase(&v150, &v154);
        }

        v150 = v154;
        if (v153 >= 0x41 && v152)
        {
          MEMORY[0x259C63150](v152, 0x1000C8000313F17);
        }

        v109 = v151;
        v110 = *v61;
        if (v151)
        {
          v111 = (v110 + v100);
          if (*(v110 + v100 + 8))
          {
            llvm::detail::SlowDynamicAPInt::operator=(v111, &v150);
          }

          else
          {
            v111[2] = v151;
            if (v109 > 0x40)
            {
              llvm::APInt::initSlowCase(v111, &v150);
            }

            *v111 = v150;
          }

          goto LABEL_298;
        }

        v106 = v110 + 16 * v101;
        v107 = v150;
        v108 = *(v106 + 8);
        if (v108)
        {
LABEL_319:
          if (v108 >= 0x41 && *v106)
          {
            MEMORY[0x259C63150](*v106, 0x1000C8000313F17);
          }
        }

LABEL_297:
        *v106 = v107;
        *(v106 + 8) = 0;
LABEL_298:
        if (v151 > 0x40 && v150)
        {
          MEMORY[0x259C63150](v150, 0x1000C8000313F17);
        }

        if (v149 > 0x40 && v148)
        {
          MEMORY[0x259C63150](v148, 0x1000C8000313F17);
        }

        ++v101;
        v100 += 16;
      }

      while (v102 != v100);
    }

    if (a5)
    {
      v91 = *(a1 + 16);
      v89 = __CFADD__(v91, 1);
      v92 = v91 + 1;
      if (!v89)
      {
        v112 = 0;
        v113 = 0;
        v114 = 16 * v92;
        do
        {
          v115 = (*(a1 + 352) + 16 * (v113 + *(a1 + 8) + *(a1 + 12) + *(a1 + 344) * v129));
          v116 = *v115;
          v154 = *v115;
          v155 = 0;
          v117 = *(v115 + 2);
          if (v117)
          {
            v155 = *(v115 + 2);
            if (v117 > 0x40)
            {
              llvm::APInt::initSlowCase(&v154, v115);
            }

            v119 = (*a5 + 16 * v113);
            if (v119[2])
            {
              llvm::detail::SlowDynamicAPInt::operator=(v119, &v154);
            }

            else
            {
              v119[2] = v117;
              *v119 = v154;
            }
          }

          else
          {
            v118 = *a5 + 16 * v113;
            if (*(v118 + 8) > 0x40u && *v118)
            {
              MEMORY[0x259C63150](*v118, 0x1000C8000313F17);
            }

            *v118 = v116;
            *(v118 + 8) = 0;
          }

          if (v155 > 0x40 && v154)
          {
            MEMORY[0x259C63150](v154, 0x1000C8000313F17);
          }

          ++v113;
          v112 += 16;
        }

        while (v114 != v112);
      }
    }

    v93 = (*(a1 + 352) + 16 * (v131 + *(a1 + 344) * v130));
    v94 = *v93;
    v144 = *v93;
    v145 = 0;
    v95 = *(v93 + 2);
    if (v95)
    {
      v145 = *(v93 + 2);
      if (v95 > 0x40)
      {
        llvm::APInt::initSlowCase(&v144, v93);
      }

      v148 = 1;
      v149 = 0;
    }

    else
    {
      v148 = 1;
      v149 = 0;
      v96 = __OFSUB__(v94, 1);
      v97 = v94 - 1;
      v60 = v122;
      if (!v96)
      {
        v146 = v97;
        v147 = 0;
        goto LABEL_282;
      }
    }

    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v144, &v152);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v148, &v150);
    llvm::detail::SlowDynamicAPInt::operator-(&v152, &v150, &v154);
    v147 = v155;
    if (v155 > 0x40)
    {
      llvm::APInt::initSlowCase(&v146, &v154);
    }

    v146 = v154;
    if (v151 >= 0x41 && v150)
    {
      MEMORY[0x259C63150](v150, 0x1000C8000313F17);
    }

    if (v153 >= 0x41 && v152)
    {
      MEMORY[0x259C63150](v152, 0x1000C8000313F17);
    }

    v60 = v122;
    v61 = a3;
    if (v149 > 0x40 && v148)
    {
      MEMORY[0x259C63150](v148, 0x1000C8000313F17);
    }

LABEL_282:
    v98 = (*v61 + 16 * *(a1 + 16));
    if (v98[2] | v147)
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*v61 + 16 * *(a1 + 16), &v150);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v146, &v148);
      llvm::detail::SlowDynamicAPInt::operator+(&v150, &v148, &v152);
      v120 = v153;
      v155 = v153;
      if (v153 > 0x40)
      {
        llvm::APInt::initSlowCase(&v154, &v152);
      }

      v154 = v152;
      if (v153)
      {
LABEL_368:
        if (v98[2])
        {
          llvm::detail::SlowDynamicAPInt::operator=(v98, &v154);
        }

        else
        {
          v98[2] = v120;
          if (v120 > 0x40)
          {
            llvm::APInt::initSlowCase(v98, &v154);
          }

          *v98 = v154;
        }

        goto LABEL_344;
      }
    }

    else
    {
      if (!__OFADD__(*v98, v146))
      {
        *v98 += v146;
        v99 = v147;
        if (!v147)
        {
LABEL_285:
          if (v145 > 0x40 && v144)
          {
            MEMORY[0x259C63150](v144, 0x1000C8000313F17);
          }

          goto LABEL_286;
        }

LABEL_355:
        if (v99 >= 0x41 && v146)
        {
          MEMORY[0x259C63150](v146, 0x1000C8000313F17);
        }

        goto LABEL_285;
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*v61 + 16 * *(a1 + 16), &v150);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v146, &v148);
      llvm::detail::SlowDynamicAPInt::operator+(&v150, &v148, &v152);
      v120 = v153;
      v155 = v153;
      if (v153 > 0x40)
      {
        llvm::APInt::initSlowCase(&v154, &v152);
      }

      v154 = v152;
      if (v153)
      {
        goto LABEL_368;
      }
    }

    v121 = v154;
    if (v98[2] > 0x40 && *v98)
    {
      MEMORY[0x259C63150](*v98, 0x1000C8000313F17);
    }

    *v98 = v121;
    v98[2] = 0;
LABEL_344:
    if (v155 > 0x40 && v154)
    {
      MEMORY[0x259C63150](v154, 0x1000C8000313F17);
    }

    if (v153 >= 0x41 && v152)
    {
      MEMORY[0x259C63150](v152, 0x1000C8000313F17);
    }

    if (v149 >= 0x41 && v148)
    {
      MEMORY[0x259C63150](v148, 0x1000C8000313F17);
    }

    if (v151 >= 0x41 && v150)
    {
      MEMORY[0x259C63150](v150, 0x1000C8000313F17);
    }

    v60 = v122;
    v99 = v147;
    if (!v147)
    {
      goto LABEL_285;
    }

    goto LABEL_355;
  }

LABEL_286:
  if (a6)
  {
    *a6 = v130;
  }

  if (v60)
  {
    *v60 = v129;
  }

  if (v136 != v138)
  {
    free(v136);
  }

  if (v139 != v141)
  {
    free(v139);
  }
}

uint64_t std::operator<[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  if (!(*(a1 + 8) | *(a2 + 8)))
  {
    return *a1 < *a2;
  }

  v12 = v2;
  v13 = v3;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v10);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a2, &v8);
  result = llvm::detail::SlowDynamicAPInt::operator<(&v10, &v8);
  if (v9 >= 0x41 && v8)
  {
    v6 = result;
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    result = v6;
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      v7 = result;
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      return v7;
    }
  }

  return result;
}

void *std::optional<llvm::DynamicAPInt>::operator=[abi:nn200100]<llvm::DynamicAPInt&,void>(void *result, llvm::APInt *a2)
{
  if (*(result + 16) == 1)
  {
    v3 = *(a2 + 2);
    if (v3)
    {
      v6 = result;
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(result, v3, a2);
      return v6;
    }

    else if (*(result + 2) > 0x40u && *result)
    {
      v5 = *a2;
      v7 = result;
      MEMORY[0x259C63150](*result, 0x1000C8000313F17);
      result = v7;
      *v7 = v5;
      *(v7 + 2) = 0;
    }

    else
    {
      *result = *a2;
      *(result + 2) = 0;
    }
  }

  else
  {
    *result = *a2;
    *(result + 2) = 0;
    v4 = *(a2 + 2);
    if (v4)
    {
      *(result + 2) = v4;
      if (v4 > 0x40)
      {
        llvm::APInt::initSlowCase(result, a2);
      }

      *result = *a2;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 1;
    }
  }

  return result;
}

void mlir::presburger::IntegerRelation::getConstantBound(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v32[32] = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    v18 = &unk_286893110;
    v19 = *(a1 + 8);
    v20 = *(a1 + 24);
    __dst = &v23;
    v22 = 0;
    if (&v18 != a1 && *(a1 + 40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = v27;
    v26 = 0x1000000000;
    if (*(a1 + 72))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v25, (a1 + 64));
    }

    v28 = *(a1 + 336);
    v29 = *(a1 + 344);
    v30 = v32;
    v31 = 0x1000000000;
    if (*(a1 + 360))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v30, (a1 + 352));
    }

    mlir::presburger::IntegerRelation::computeConstantLowerOrUpperBound<false>(&v18, a3, a4);
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    v18 = &unk_286893110;
    v19 = *(a1 + 8);
    v20 = *(a1 + 24);
    __dst = &v23;
    v22 = 0;
    if (&v18 != a1 && *(a1 + 40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = v27;
    v26 = 0x1000000000;
    if (*(a1 + 72))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v25, (a1 + 64));
    }

    v28 = *(a1 + 336);
    v29 = *(a1 + 344);
    v30 = v32;
    v31 = 0x1000000000;
    if (*(a1 + 360))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v30, (a1 + 352));
    }

    mlir::presburger::IntegerRelation::computeConstantLowerOrUpperBound<true>(&v18, a3, a4);
LABEL_19:
    mlir::presburger::IntegerRelation::~IntegerRelation(&v18);
    return;
  }

  v18 = &unk_286893110;
  v19 = *(a1 + 8);
  v20 = *(a1 + 24);
  __dst = &v23;
  v22 = 0;
  if (&v18 != a1 && *(a1 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (a1 + 48);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = v27;
  v26 = 0x1000000000;
  if (*(a1 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v25, (a1 + 64));
  }

  v28 = *(a1 + 336);
  v29 = *(a1 + 344);
  v30 = v32;
  v31 = 0x1000000000;
  if (*(a1 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v30, (a1 + 352));
  }

  mlir::presburger::IntegerRelation::computeConstantLowerOrUpperBound<true>(&v18, a3, &v15);
  mlir::presburger::IntegerRelation::~IntegerRelation(&v18);
  v18 = &unk_286893110;
  v19 = *(a1 + 8);
  v20 = *(a1 + 24);
  __dst = &v23;
  v22 = 0;
  if (&v18 != a1 && *(a1 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v23 = *v7;
  v24 = *(a1 + 56);
  v25 = v27;
  v26 = 0x1000000000;
  if (*(a1 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v25, (a1 + 64));
  }

  v28 = *(a1 + 336);
  v29 = *(a1 + 344);
  v30 = v32;
  v31 = 0x1000000000;
  if (*(a1 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v30, (a1 + 352));
  }

  mlir::presburger::IntegerRelation::computeConstantLowerOrUpperBound<false>(&v18, a3, &v12);
  mlir::presburger::IntegerRelation::~IntegerRelation(&v18);
  if (v17 == 1 && v14 == 1)
  {
    if (v16 | v13)
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v15, &v18);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v12, &v10);
      v8 = llvm::detail::SlowDynamicAPInt::operator==(&v18, &v10);
      if (v11 >= 0x41 && v10)
      {
        MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      }

      if (v19 >= 0x41 && v18)
      {
        MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }

      if (v8)
      {
        v9 = v13;
        *a4 = v12;
        *(a4 + 8) = 0;
        if (v9)
        {
          *(a4 + 8) = v9;
          if (v9 >= 0x41)
          {
            llvm::APInt::initSlowCase(a4, &v12);
          }
        }

        *(a4 + 16) = 1;
        if (v14 != 1)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    else if (v15 == v12)
    {
      *a4 = v15;
      *(a4 + 8) = 0;
      *(a4 + 16) = 1;
      if (v14 == 1)
      {
        goto LABEL_53;
      }

      goto LABEL_54;
    }
  }

  *a4 = 0;
  *(a4 + 16) = 0;
  if (v14 == 1)
  {
LABEL_53:
    if (v13 > 0x40 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

LABEL_54:
  if (v17 == 1 && v16 > 0x40 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }
}

void mlir::presburger::IntegerRelation::computeConstantLowerOrUpperBound<true>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::projectOut(a1, 0, a2);
  mlir::presburger::IntegerRelation::projectOut(a1, 1, vaddvq_s32(*(a1 + 8)) - 1);
  EqualityToConstant = findEqualityToConstant(a1, 0, 0);
  if (EqualityToConstant != -1)
  {
    v6 = vaddvq_s32(*(a1 + 8));
    v7 = *(a1 + 64) + 16 * (v6 + *(a1 + 56) * EqualityToConstant);
    if (*(v7 + 8) || *v7 == 0x8000000000000000)
    {
      v25 = EqualityToConstant;
      mlir::presburger::operator-(*(a1 + 64) + 16 * (v6 + *(a1 + 56) * EqualityToConstant));
      v8 = *(a1 + 64) + 16 * (*(a1 + 56) * v25);
      if (v33)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v32 = -*v7;
      v33 = 0;
      v8 = *(a1 + 64) + 16 * (*(a1 + 56) * EqualityToConstant);
    }

    if (!*(v8 + 8))
    {
      v9 = *v8;
      if (v32 == 0x8000000000000000 && v9 == -1)
      {
        mlir::presburger::operator-(&v32);
      }

      else
      {
        v34 = v32 / v9;
        v35 = 0;
      }

LABEL_9:
      *a3 = v34;
      *(a3 + 8) = 0;
      v10 = v35;
      if (v35)
      {
        *(a3 + 8) = v35;
        if (v10 > 0x40)
        {
          llvm::APInt::initSlowCase(a3, &v34);
        }
      }

      *(a3 + 16) = 1;
      if (v33 > 0x40)
      {
        if (v32)
        {
          MEMORY[0x259C63150](v32, 0x1000C8000313F17);
        }
      }

      return;
    }

LABEL_87:
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v32, &v28);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v8, &v26);
    llvm::detail::SlowDynamicAPInt::operator/(&v28, &v26, &v30);
    v35 = v31;
    if (v31 > 0x40)
    {
      llvm::APInt::initSlowCase(&v34, &v30);
    }

    v34 = v30;
    if (v27 >= 0x41 && v26)
    {
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }

    if (v29 >= 0x41 && v28)
    {
      MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }

    goto LABEL_9;
  }

  v11 = *(a1 + 336);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 352) + 16 * (*(a1 + 344) * v12);
      if (*(v13 + 8))
      {
        if (llvm::detail::operator!=(v13, 0))
        {
          goto LABEL_22;
        }
      }

      else if (*v13)
      {
        goto LABEL_22;
      }

      if (v11 == ++v12)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
LABEL_22:
  if (v12 == v11)
  {
LABEL_23:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  v14 = *(a1 + 336);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = *(a1 + 352) + 16 * (*(a1 + 344) * i);
      if (*(v16 + 8))
      {
        if (!llvm::detail::operator<=(v16, 0))
        {
LABEL_32:
          v17 = vaddvq_s32(*(a1 + 8));
          if (v17 >= 2)
          {
            for (j = 1; j != v17; ++j)
            {
              v19 = *(a1 + 352) + 16 * (j + i * *(a1 + 344));
              if (*(v19 + 8))
              {
                if (llvm::detail::operator!=(v19, 0))
                {
                  goto LABEL_39;
                }
              }

              else if (*v19)
              {
                goto LABEL_39;
              }
            }

            j = v17;
LABEL_39:
            v17 = vaddvq_s32(*(a1 + 8));
            if (j < v17)
            {
              continue;
            }
          }

          v20 = *(a1 + 352) + 16 * (v17 + *(a1 + 344) * i);
          if (!*(v20 + 8) && *v20 != 0x8000000000000000)
          {
            v32 = -*v20;
            v33 = 0;
            v21 = *(a1 + 352) + 16 * (*(a1 + 344) * i);
            goto LABEL_43;
          }

          llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v20, &v28);
          llvm::detail::SlowDynamicAPInt::operator-(&v28, &v30);
          v33 = v31;
          if (v31 > 0x40)
          {
            llvm::APInt::initSlowCase(&v32, &v30);
          }

          v32 = v30;
          if (v29 >= 0x41 && v28)
          {
            MEMORY[0x259C63150](v28, 0x1000C8000313F17);
          }

          v21 = *(a1 + 352) + 16 * (*(a1 + 344) * i);
          if (v33)
          {
LABEL_71:
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v32, &v28);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v21, &v26);
            llvm::detail::ceilDiv(&v28, &v26, &v30);
            v35 = v31;
            if (v31 > 0x40)
            {
              llvm::APInt::initSlowCase(&v34, &v30);
            }

            v34 = v30;
            if (v27 >= 0x41 && v26)
            {
              MEMORY[0x259C63150](v26, 0x1000C8000313F17);
            }

LABEL_80:
            if (v29 >= 0x41 && v28)
            {
              MEMORY[0x259C63150](v28, 0x1000C8000313F17);
            }
          }

          else
          {
LABEL_43:
            if (*(v21 + 8))
            {
              goto LABEL_71;
            }

            v22 = v32;
            v23 = *v21;
            if (v32 == 0x8000000000000000 && v23 == -1)
            {
              llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v32, &v28);
              llvm::detail::SlowDynamicAPInt::operator-(&v28, &v30);
              v35 = v31;
              if (v31 > 0x40)
              {
                llvm::APInt::initSlowCase(&v34, &v30);
              }

              v34 = v30;
              goto LABEL_80;
            }

            if (v32)
            {
              if ((v23 ^ v32) < 0)
              {
                v22 = v32 / v23;
              }

              else
              {
                if (v23 < 0)
                {
                  v24 = v32 + 1;
                }

                else
                {
                  v24 = v32 - 1;
                }

                v22 = v24 / v23 + 1;
              }
            }

            v34 = v22;
            v35 = 0;
          }

          if (v33 > 0x40 && v32)
          {
            MEMORY[0x259C63150](v32, 0x1000C8000313F17);
          }

          if (*(a3 + 16) != 1 || std::operator>[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v34, a3))
          {
            std::optional<llvm::DynamicAPInt>::operator=[abi:nn200100]<llvm::DynamicAPInt&,void>(a3, &v34);
          }

          if (v35 > 0x40 && v34)
          {
            MEMORY[0x259C63150](v34, 0x1000C8000313F17);
          }
        }
      }

      else if (*v16 >= 1)
      {
        goto LABEL_32;
      }
    }
  }
}

void mlir::presburger::IntegerRelation::computeConstantLowerOrUpperBound<false>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::projectOut(a1, 0, a2);
  mlir::presburger::IntegerRelation::projectOut(a1, 1, vaddvq_s32(*(a1 + 8)) - 1);
  EqualityToConstant = findEqualityToConstant(a1, 0, 0);
  if (EqualityToConstant != -1)
  {
    v6 = vaddvq_s32(*(a1 + 8));
    v7 = *(a1 + 64) + 16 * (v6 + *(a1 + 56) * EqualityToConstant);
    if (*(v7 + 8) || *v7 == 0x8000000000000000)
    {
      v26 = EqualityToConstant;
      mlir::presburger::operator-(*(a1 + 64) + 16 * (v6 + *(a1 + 56) * EqualityToConstant));
      v8 = *(a1 + 64) + 16 * (*(a1 + 56) * v26);
      if (v34)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v33 = -*v7;
      v34 = 0;
      v8 = *(a1 + 64) + 16 * (*(a1 + 56) * EqualityToConstant);
    }

    if (!*(v8 + 8))
    {
      v9 = *v8;
      if (v33 == 0x8000000000000000 && v9 == -1)
      {
        mlir::presburger::operator-(&v33);
      }

      else
      {
        v35 = v33 / v9;
        v36 = 0;
      }

LABEL_9:
      *a3 = v35;
      *(a3 + 8) = 0;
      v10 = v36;
      if (v36)
      {
        *(a3 + 8) = v36;
        if (v10 > 0x40)
        {
          llvm::APInt::initSlowCase(a3, &v35);
        }
      }

      *(a3 + 16) = 1;
      if (v34 > 0x40)
      {
        if (v33)
        {
          MEMORY[0x259C63150](v33, 0x1000C8000313F17);
        }
      }

      return;
    }

LABEL_85:
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v33, &v29);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v8, &v27);
    llvm::detail::SlowDynamicAPInt::operator/(&v29, &v27, &v31);
    v36 = v32;
    if (v32 > 0x40)
    {
      llvm::APInt::initSlowCase(&v35, &v31);
    }

    v35 = v31;
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }

    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }

    goto LABEL_9;
  }

  v11 = *(a1 + 336);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 352) + 16 * (*(a1 + 344) * v12);
      if (*(v13 + 8))
      {
        if (llvm::detail::operator!=(v13, 0))
        {
          goto LABEL_22;
        }
      }

      else if (*v13)
      {
        goto LABEL_22;
      }

      if (v11 == ++v12)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = 0;
LABEL_22:
  if (v12 == v11)
  {
LABEL_23:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  v14 = *(a1 + 336);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v16 = *(a1 + 352) + 16 * (*(a1 + 344) * i);
      if (*(v16 + 8))
      {
        if (!llvm::detail::operator>=(v16, 0))
        {
LABEL_32:
          v17 = vaddvq_s32(*(a1 + 8));
          if (v17 >= 2)
          {
            for (j = 1; j != v17; ++j)
            {
              v19 = *(a1 + 352) + 16 * (j + i * *(a1 + 344));
              if (*(v19 + 8))
              {
                if (llvm::detail::operator!=(v19, 0))
                {
                  goto LABEL_39;
                }
              }

              else if (*v19)
              {
                goto LABEL_39;
              }
            }

            j = v17;
LABEL_39:
            v17 = vaddvq_s32(*(a1 + 8));
            if (j < v17)
            {
              continue;
            }
          }

          v20 = *(a1 + 344) * i;
          v21 = *(a1 + 352);
          v22 = v21 + 16 * v20;
          if (*(v22 + 8) || *v22 == 0x8000000000000000)
          {
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v22, &v29);
            llvm::detail::SlowDynamicAPInt::operator-(&v29, &v31);
            v34 = v32;
            if (v32 > 0x40)
            {
              llvm::APInt::initSlowCase(&v33, &v31);
            }

            v33 = v31;
            if (v30 >= 0x41 && v29)
            {
              MEMORY[0x259C63150](v29, 0x1000C8000313F17);
            }
          }

          else
          {
            v33 = -*v22;
            v34 = 0;
          }

          v23 = v21 + 16 * (v20 + v17);
          if (*(v23 + 8) | v34)
          {
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v23, &v29);
            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v33, &v27);
            llvm::detail::floorDiv(&v29, &v27, &v31);
            v36 = v32;
            if (v32 > 0x40)
            {
              llvm::APInt::initSlowCase(&v35, &v31);
            }

            v35 = v31;
            if (v28 >= 0x41 && v27)
            {
              MEMORY[0x259C63150](v27, 0x1000C8000313F17);
            }
          }

          else
          {
            v24 = *v23;
            if (*v23 != 0x8000000000000000 || v33 != -1)
            {
              if (v24)
              {
                if ((v33 ^ v24) < 0)
                {
                  v24 = (((v33 >> 63) | 1) + v24) / v33 - 1;
                }

                else
                {
                  v24 /= v33;
                }
              }

              v35 = v24;
              v36 = 0;
LABEL_53:
              if (v34 > 0x40 && v33)
              {
                MEMORY[0x259C63150](v33, 0x1000C8000313F17);
              }

              if (*(a3 + 16) != 1 || std::operator<[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v35, a3))
              {
                std::optional<llvm::DynamicAPInt>::operator=[abi:nn200100]<llvm::DynamicAPInt&,void>(a3, &v35);
              }

              if (v36 > 0x40 && v35)
              {
                MEMORY[0x259C63150](v35, 0x1000C8000313F17);
              }

              continue;
            }

            llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v23, &v29);
            llvm::detail::SlowDynamicAPInt::operator-(&v29, &v31);
            v36 = v32;
            if (v32 > 0x40)
            {
              llvm::APInt::initSlowCase(&v35, &v31);
            }

            v35 = v31;
          }

          if (v30 >= 0x41 && v29)
          {
            MEMORY[0x259C63150](v29, 0x1000C8000313F17);
          }

          goto LABEL_53;
        }
      }

      else if ((*v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }
    }
  }
}

BOOL mlir::presburger::IntegerRelation::isHyperRectangular(mlir::presburger::IntegerRelation *this, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(this + 84);
  if (v3)
  {
    v4 = a3 + a2 > a2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v19 = 0;
    while (1)
    {
      v20 = 0;
      v21 = a3;
      v22 = a2;
      do
      {
        while (1)
        {
          v23 = (*(this + 44) + 16 * (v22 + v19 * *(this + 86)));
          v24 = *v23;
          v31 = *v23;
          v25 = *(v23 + 2);
          if (v25)
          {
            break;
          }

          v20 += v24 != 0;
          ++v22;
          if (!--v21)
          {
            goto LABEL_35;
          }
        }

        v26 = this;
        v27 = a2;
        v28 = a3;
        v32 = *(v23 + 2);
        if (v25 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v31, v23);
        }

        v29 = llvm::detail::operator!=(&v31, 0);
        if (v32 >= 0x41 && v31)
        {
          MEMORY[0x259C63150](v31, 0x1000C8000313F17);
        }

        a3 = v28;
        a2 = v27;
        this = v26;
        v20 += v29;
        ++v22;
        --v21;
      }

      while (v21);
LABEL_35:
      if (v20 >= 2)
      {
        return 0;
      }

      if (++v19 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = *(this + 12);
    if (v5)
    {
      if (a3 + a2 <= a2)
      {
        return 1;
      }

      else
      {
        v6 = 0;
        do
        {
          v9 = 0;
          v10 = a3;
          v11 = a2;
          do
          {
            while (1)
            {
              v12 = (*(this + 8) + 16 * (v11 + v6 * *(this + 14)));
              v13 = *v12;
              v31 = *v12;
              v14 = *(v12 + 2);
              if (v14)
              {
                break;
              }

              v9 += v13 != 0;
              ++v11;
              if (!--v10)
              {
                goto LABEL_8;
              }
            }

            v15 = this;
            v16 = a2;
            v17 = a3;
            v32 = *(v12 + 2);
            if (v14 >= 0x41)
            {
              llvm::APInt::initSlowCase(&v31, v12);
            }

            v18 = llvm::detail::operator!=(&v31, 0);
            if (v32 >= 0x41 && v31)
            {
              MEMORY[0x259C63150](v31, 0x1000C8000313F17);
            }

            a3 = v17;
            a2 = v16;
            this = v15;
            v9 += v18;
            ++v11;
            --v10;
          }

          while (v10);
LABEL_8:
          v7 = v9 < 2;
          ++v6;
        }

        while (v9 <= 1 && v6 != v5);
      }
    }

    else
    {
      return 1;
    }
  }

  return v7;
}

void mlir::presburger::IntegerRelation::removeTrivialRedundancy(mlir::presburger::IntegerRelation *this)
{
  v84 = *MEMORY[0x277D85DE8];
  mlir::presburger::IntegerRelation::gcdTightenInequalities(this);
  mlir::presburger::IntegerRelation::normalizeConstraintsByGCD(this);
  v79 = 1;
  v80 = xmmword_25736B6D0;
  v82 = xmmword_25736B6D0;
  v81 = xmmword_25736B6D0;
  v83 = xmmword_25736B6D0;
  v70 = 1;
  v71 = xmmword_25736B6D0;
  v72 = xmmword_25736B6D0;
  v73 = xmmword_25736B6D0;
  v74 = xmmword_25736B6D0;
  v75 = xmmword_25736B6D0;
  v76 = xmmword_25736B6D0;
  v77 = xmmword_25736B6D0;
  v78 = xmmword_25736B6D0;
  v2 = *(this + 84);
  v66 = v69;
  v68 = 256;
  if (v2 > 0x100)
  {
    v67 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (!v2)
  {
    v67 = v2;
    mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically();
  }

  bzero(v69, v2);
  v67 = v2;
  v3 = 0;
  v4 = v2;
  while (1)
  {
    v5 = *(this + 86) * v3;
    v6 = *(this + 44);
    v7 = (v6 + 16 * v5);
    v8 = *(this + 2);
    v9 = *(this + 3);
    v10 = *(this + 4);
    v11 = *(this + 5);
    v51[0] = v7;
    v51[1] = (v9 + v8 + v10 + v11 + 1);
    if (v9 + v8 + v10 + v11)
    {
      v12 = 0;
      v13 = v8 + v10 + v11 + v9;
      do
      {
        v14 = *(this + 44) + 16 * (v12 + v3 * *(this + 86));
        if (*(v14 + 8))
        {
          if (llvm::detail::operator!=(v14, 0))
          {
            goto LABEL_17;
          }
        }

        else if (*v14)
        {
          goto LABEL_17;
        }

        ++v12;
      }

      while (v13 != v12);
      v15 = *(this + 44) + 16 * (*(this + 86) * v3 + vaddvq_s32(*(this + 8)));
      if (!*(v15 + 8))
      {
LABEL_16:
        if ((*v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v15 = v6 + 16 * v5;
      if (!*(v15 + 8))
      {
        goto LABEL_16;
      }
    }

    if (llvm::detail::operator>=(v15, 0))
    {
LABEL_5:
      *(v66 + v3) = 1;
      goto LABEL_6;
    }

LABEL_17:
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v70, v51, &v59);
    if ((v61 & 1) == 0)
    {
      goto LABEL_5;
    }

    v16 = vaddvq_s32(*(this + 8));
    v17 = (*(this + 44) + 16 * (v16 + *(this + 86) * v3));
    v18 = *v17;
    v64 = *v17;
    v65 = 0;
    v19 = *(v17 + 2);
    if (v19)
    {
      v65 = *(v17 + 2);
      if (v19 > 0x40)
      {
        llvm::APInt::initSlowCase(&v64, v17);
      }

      v64 = *v17;
      LODWORD(v56) = v3;
      v58 = v19;
      v57 = v64;
      v59 = v7;
      v60 = v16;
      v61 = v3;
      v63 = v19;
      v62 = v64;
    }

    else
    {
      LODWORD(v56) = v3;
      v57 = v18;
      v58 = 0;
      v59 = v7;
      v60 = v16;
      v61 = v3;
      v62 = v18;
      v63 = 0;
    }

    if (v79)
    {
      v20 = 4;
      v21 = &v80;
    }

    else
    {
      v20 = DWORD2(v80);
      if (!DWORD2(v80))
      {
        v36 = 0;
        goto LABEL_65;
      }

      v21 = v80;
    }

    v22 = llvm::hashing::detail::hash_combine_range_impl<llvm::DynamicAPInt const*>(v59, (v59 + 16 * v60));
    v23 = 0;
    v24 = v20 - 1;
    v25 = (v20 - 1) & v22;
    v26 = 1;
    v27 = v21 + 5 * v25;
    v28 = v59;
    v29 = *v27;
    if (*v27 == -2)
    {
LABEL_55:
      if (v28 != -2)
      {
        v29 = -2;
        goto LABEL_57;
      }

LABEL_67:
      LOBYTE(v30) = 0;
    }

    else
    {
      while (2)
      {
        if (v29 != -1)
        {
          if (v60 != v27[1])
          {
            goto LABEL_57;
          }

          if (!v60)
          {
            goto LABEL_67;
          }

          v30 = 16 * v60;
          while (2)
          {
            v31 = *(v28 + 2);
            if (!(v31 | *(v29 + 8)))
            {
              if (*v28 != *v29)
              {
                goto LABEL_53;
              }

LABEL_34:
              v28 = (v28 + 16);
              v29 += 16;
              v30 -= 16;
              if (!v30)
              {
                goto LABEL_68;
              }

              continue;
            }

            break;
          }

          v49 = v23;
          v50 = v27;
          if (v31)
          {
            v55 = *(v28 + 2);
            if (v31 > 0x40)
            {
              llvm::APInt::initSlowCase(&v54, v28);
            }

            v54 = *v28;
            v32 = *(v29 + 8);
            if (!v32)
            {
LABEL_44:
              llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v52, *v29);
              goto LABEL_46;
            }
          }

          else
          {
            llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v54, *v28);
            v32 = *(v29 + 8);
            if (!v32)
            {
              goto LABEL_44;
            }
          }

          v53 = v32;
          if (v32 > 0x40)
          {
            llvm::APInt::initSlowCase(&v52, v29);
          }

          v52 = *v29;
LABEL_46:
          v33 = llvm::detail::SlowDynamicAPInt::operator==(&v54, &v52);
          if (v53 >= 0x41 && v52)
          {
            v47 = v33;
            MEMORY[0x259C63150](v52, 0x1000C8000313F17);
            v33 = v47;
          }

          if (v55 >= 0x41 && v54)
          {
            v48 = v33;
            MEMORY[0x259C63150](v54, 0x1000C8000313F17);
            v33 = v48;
          }

          v23 = v49;
          v27 = v50;
          if (!v33)
          {
LABEL_53:
            v29 = *v27;
            if (*v27 == -1)
            {
              goto LABEL_81;
            }

LABEL_57:
            if (v23)
            {
              v34 = 0;
            }

            else
            {
              v34 = v29 == -2;
            }

            if (v34)
            {
              v23 = v27;
            }

            v35 = v25 + v26++;
            v25 = v35 & v24;
            v27 = v21 + 5 * (v35 & v24);
            v28 = v59;
            v29 = *v27;
            if (*v27 == -2)
            {
              goto LABEL_55;
            }

            continue;
          }

          goto LABEL_34;
        }

        break;
      }

      if (v28 == -1)
      {
        goto LABEL_67;
      }

LABEL_81:
      if (v23)
      {
        v36 = v23;
      }

      else
      {
        v36 = v27;
      }

LABEL_65:
      v27 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::InsertIntoBucket<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>(&v79, v36, &v59, &v61);
      LOBYTE(v30) = 1;
    }

LABEL_68:
    if (v63 > 0x40 && v62)
    {
      v40 = v27;
      MEMORY[0x259C63150](v62, 0x1000C8000313F17);
      v27 = v40;
    }

    if (v58 > 0x40 && v57)
    {
      v41 = v27;
      MEMORY[0x259C63150](v57, 0x1000C8000313F17);
      v27 = v41;
    }

    if ((v30 & 1) == 0)
    {
      if (*(v27 + 8) | v65)
      {
        v42 = v27;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v27 + 3), &v59);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v64, &v56);
        v43 = llvm::detail::SlowDynamicAPInt::operator>(&v59, &v56);
        if (v57 >= 0x41 && v56)
        {
          MEMORY[0x259C63150](v56, 0x1000C8000313F17);
        }

        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x259C63150](v59, 0x1000C8000313F17);
        }

        v27 = v42;
        if (!v43)
        {
LABEL_97:
          *(v66 + v3) = 1;
          goto LABEL_98;
        }
      }

      else if (v27[3] <= v64)
      {
        goto LABEL_97;
      }

      *(v66 + *(v27 + 4)) = 1;
      LODWORD(v59) = v3;
      v60 = v64;
      v61 = 0;
      if (v65)
      {
        v61 = v65;
        v37 = v3;
        if (v65 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v60, &v64);
        }
      }

      else
      {
        v37 = v3;
      }

      *(v27 + 4) = v37;
      if (v61)
      {
        valueAt(v27 + 8, v61, &v60, (v27 + 3));
        v39 = v61;
        if (v61)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v38 = v60;
        if (*(v27 + 8) > 0x40u && v27[3])
        {
          v44 = v27;
          MEMORY[0x259C63150](v27[3], 0x1000C8000313F17);
          v44[3] = v38;
          *(v44 + 8) = 0;
          v39 = v61;
          if (v61)
          {
LABEL_78:
            if (v39 >= 0x41 && v60)
            {
              MEMORY[0x259C63150](v60, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          v27[3] = v60;
          *(v27 + 8) = 0;
          v39 = v61;
          if (v61)
          {
            goto LABEL_78;
          }
        }
      }
    }

LABEL_98:
    if (v65 > 0x40 && v64)
    {
      MEMORY[0x259C63150](v64, 0x1000C8000313F17);
    }

LABEL_6:
    if (++v3 == v4)
    {
      v45 = *(this + 84);
      if (v45)
      {
        for (i = 0; i != v45; ++i)
        {
          if ((*(v66 + i) & 1) == 0)
          {
            mlir::presburger::Matrix<llvm::DynamicAPInt>::copyRow();
          }
        }
      }

      mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically();
    }
  }
}

uint64_t mlir::presburger::IntegerRelation::isColZero(mlir::presburger::IntegerRelation *this, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 84);
  if (v2)
  {
    for (i = 0; v2 != i; ++i)
    {
      v4 = (*(this + 44) + 16 * (a2 + *(this + 86) * i));
      v5 = *v4;
      v19 = *v4;
      v6 = *(v4 + 2);
      if (v6)
      {
        v7 = this;
        v8 = a2;
        v20 = *(v4 + 2);
        if (v6 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v19, v4);
        }

        v9 = llvm::detail::operator!=(&v19, 0);
        if (v20 >= 0x41 && v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          a2 = v8;
          this = v7;
          if (v9)
          {
            return 0;
          }
        }

        else
        {
          a2 = v8;
          this = v7;
          if (v9)
          {
            return 0;
          }
        }
      }

      else if (v5)
      {
        return 0;
      }
    }
  }

  v10 = *(this + 12);
  if (v10)
  {
    for (j = 0; v10 != j; ++j)
    {
      v12 = (*(this + 8) + 16 * (a2 + *(this + 14) * j));
      v13 = *v12;
      v19 = *v12;
      v14 = *(v12 + 2);
      if (v14)
      {
        v15 = this;
        v16 = a2;
        v20 = *(v12 + 2);
        if (v14 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v19, v12);
        }

        v17 = llvm::detail::operator!=(&v19, 0);
        if (v20 >= 0x41 && v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          a2 = v16;
          this = v15;
          if (v17)
          {
            return 0;
          }
        }

        else
        {
          a2 = v16;
          this = v15;
          if (v17)
          {
            return 0;
          }
        }
      }

      else if (v13)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t mlir::presburger::IntegerRelation::projectOut(uint64_t this, uint64_t a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return this;
  }

  v5 = this;
  if (vaddvq_s32(*(this + 8)) <= a2)
  {
    v10 = a3;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = mlir::presburger::IntegerRelation::gaussianEliminateVars(v5, v7, v8 + v7);
      ++v7;
      v8 += ~v9;
      v6 += v9;
    }

    while (v7 < vaddvq_s32(*(v5 + 8)));
    v10 = a3 - v6;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = 0;
  v12 = a2 + 1;
  v33 = v10;
  while (2)
  {
    v13 = v10 - v11 + a2;
    v34 = v5;
    v14 = getBestVarToEliminate(mlir::presburger::IntegerRelation const&,unsigned int,unsigned int)::$_0::operator()(&v34, a2);
    if (v12 >= v13)
    {
      goto LABEL_12;
    }

    v15 = *(v5 + 336);
    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = a2;
LABEL_16:
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v20 = (*(v5 + 352) + 16 * (v12 + *(v5 + 344) * v18));
          v21 = *v20;
          v35 = *v20;
          v22 = *(v20 + 2);
          if (v22)
          {
            break;
          }

          if (v21 <= 0)
          {
            goto LABEL_20;
          }

LABEL_17:
          ++v17;
          if (v15 == ++v18)
          {
            goto LABEL_37;
          }
        }

        v29 = v16;
        v31 = v14;
        v36 = *(v20 + 2);
        if (v22 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v35, v20);
        }

        v26 = llvm::detail::operator>(&v35, 0);
        if (v36 >= 0x41 && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
          v16 = v29;
          v14 = v31;
          if (v26)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v16 = v29;
          v14 = v31;
          if (v26)
          {
            goto LABEL_17;
          }
        }

LABEL_20:
        v23 = (*(v5 + 352) + 16 * (v12 + *(v5 + 344) * v18));
        v24 = *v23;
        v35 = *v23;
        v25 = *(v23 + 2);
        if (v25)
        {
          break;
        }

        v19 += v24 >> 63;
        if (v15 == ++v18)
        {
          goto LABEL_37;
        }
      }

      v30 = v16;
      v32 = v14;
      v36 = *(v23 + 2);
      if (v25 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v35, v23);
      }

      v27 = llvm::detail::operator<(&v35, 0);
      if (v36 >= 0x41 && v35)
      {
        MEMORY[0x259C63150](v35, 0x1000C8000313F17);
      }

      v16 = v30;
      v14 = v32;
      v19 += v27;
      ++v18;
    }

    while (v15 != v18);
LABEL_37:
    v28 = v17 * v19;
    if (v17 * v19 < v14)
    {
      v16 = v12;
    }

    while (++v12 != v13)
    {
      if (v28 < v14)
      {
        v14 = v28;
      }

      v15 = *(v5 + 336);
      if (v15)
      {
        goto LABEL_16;
      }

      v28 = 0;
      if (v14)
      {
        v16 = v12;
      }
    }

    v12 = a2 + 1;
    v10 = v33;
LABEL_12:
    (*(*v5 + 64))(v5);
    if (++v11 != v10)
    {
      continue;
    }

    break;
  }

LABEL_8:
  mlir::presburger::IntegerRelation::gcdTightenInequalities(v5);
  return mlir::presburger::IntegerRelation::normalizeConstraintsByGCD(v5);
}

void mlir::presburger::IntegerRelation::unionBoundingBox(mlir::presburger::IntegerRelation *this, const mlir::presburger::IntegerRelation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0;
  *v9 = 0u;
  v11 = &v13;
  __src = 0;
  v4 = 0;
  v2 = &unk_286893110;
  v3 = 0;
  v5 = 0;
  __dst = &v8;
  v7 = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

void *std::vector<llvm::SmallVector<llvm::DynamicAPInt,8u>>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t anonymous namespace::compareBounds(llvm::APInt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 16 * a2;
  v7 = v6 - 16;
  if (v6 - 16 == a1)
  {
LABEL_5:
    v11 = a3 + 16 * a4;
    v12 = (v11 - 16);
    if (*(v6 - 2) || *(v11 - 8))
    {
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v6 - 16), &v19);
      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v11 - 16, &v17);
      v14 = llvm::detail::SlowDynamicAPInt::operator==(&v19, &v17);
      if (v18 >= 0x41 && v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }

      if (v20 >= 0x41 && v19)
      {
        MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }

      if (v14)
      {
        return 2;
      }

      if (*(v6 - 2))
      {
LABEL_21:
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt((v6 - 16), &v19);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v11 - 16, &v17);
        result = llvm::detail::SlowDynamicAPInt::operator<(&v19, &v17);
        if (v18 >= 0x41 && v17)
        {
          v15 = result;
          MEMORY[0x259C63150](v17, 0x1000C8000313F17);
          result = v15;
        }

        if (v20 >= 0x41)
        {
          if (v19)
          {
            v16 = result;
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
            return v16;
          }
        }

        return result;
      }
    }

    else if (*v7 == *v12)
    {
      return 2;
    }

    if (!*(v11 - 8))
    {
      return *v7 < *v12;
    }

    goto LABEL_21;
  }

  v8 = a1;
  v9 = 16 * a2 - 16;
  v10 = a3;
  while (std::__equal_to::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v19, v8, v10))
  {
    v8 = (v8 + 16);
    v10 += 16;
    v9 -= 16;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  return 3;
}

unsigned int *std::transform[abi:nn200100]<llvm::DynamicAPInt *,llvm::DynamicAPInt *,std::negate<llvm::DynamicAPInt>>(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 16)
    {
      std::negate<llvm::DynamicAPInt>::operator()[abi:nn200100](i, &v9);
      if (v10)
      {
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction(a3, v10, &v9);
        v7 = v10;
        if (v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = v9;
        if (a3[2] > 0x40 && *a3)
        {
          MEMORY[0x259C63150](*a3, 0x1000C8000313F17);
          *a3 = v6;
          a3[2] = 0;
          v7 = v10;
          if (v10)
          {
LABEL_12:
            if (v7 >= 0x41 && v9)
            {
              MEMORY[0x259C63150](v9, 0x1000C8000313F17);
            }
          }
        }

        else
        {
          *a3 = v9;
          a3[2] = 0;
          v7 = v10;
          if (v10)
          {
            goto LABEL_12;
          }
        }
      }

      a3 += 4;
    }
  }

  return a3;
}

void mlir::presburger::IntegerRelation::removeIndependentConstraints(mlir::presburger::IntegerRelation *this, unsigned int a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x400000000;
  v26 = v28;
  v27 = 0x400000000;
  v25 = 0;
  v4 = *(this + 84);
  if (v4)
  {
    if (a3)
    {
      v5 = 0;
      while (1)
      {
        while (1)
        {
          v6 = (*(this + 44) + 16 * (v5 + *(this + 86) * v25));
          v7 = *v6;
          v32 = *v6;
          v8 = *(v6 + 2);
          if (v8)
          {
            break;
          }

          if (v7)
          {
            goto LABEL_9;
          }

LABEL_18:
          if (++v5 == a3)
          {
LABEL_4:
            if (v30 >= HIDWORD(v30))
            {
              v12 = a3;
              llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(&v29, &v25);
              a3 = v12;
            }

            else
            {
              *(v29 + v30) = v25;
              LODWORD(v30) = v30 + 1;
            }

            goto LABEL_6;
          }
        }

        v9 = a3;
        v33 = *(v6 + 2);
        if (v8 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v32, v6);
        }

        v10 = llvm::detail::operator!=(&v32, 0);
        if (v33 >= 0x41 && v32)
        {
          v11 = v10;
          MEMORY[0x259C63150](v32, 0x1000C8000313F17);
          a3 = v9;
          if (!v11)
          {
            goto LABEL_18;
          }
        }

        else
        {
          a3 = v9;
          if (!v10)
          {
            goto LABEL_18;
          }
        }

LABEL_9:
        if (v5 == a3)
        {
          goto LABEL_4;
        }

LABEL_6:
        v5 = 0;
        if (++v25 >= v4)
        {
          goto LABEL_26;
        }
      }
    }

    for (i = 0; i < v4; v25 = i)
    {
      while (v30 < HIDWORD(v30))
      {
        *(v29 + v30) = i;
        LODWORD(v30) = v30 + 1;
        i = v25 + 1;
        v25 = i;
        if (i >= v4)
        {
          goto LABEL_26;
        }
      }

      v14 = a3;
      llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(&v29, &v25);
      a3 = v14;
      i = v25 + 1;
    }
  }

LABEL_26:
  v25 = 0;
  v15 = *(this + 12);
  if (v15)
  {
    if (a3)
    {
      v16 = 0;
      while (1)
      {
        while (1)
        {
          v17 = (*(this + 8) + 16 * (v16 + *(this + 14) * v25));
          v18 = *v17;
          v32 = *v17;
          v19 = *(v17 + 2);
          if (v19)
          {
            break;
          }

          if (v18)
          {
            goto LABEL_34;
          }

LABEL_43:
          if (++v16 == a3)
          {
LABEL_29:
            if (v27 >= HIDWORD(v27))
            {
              v23 = a3;
              llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(&v26, &v25);
              a3 = v23;
            }

            else
            {
              *(v26 + v27) = v25;
              LODWORD(v27) = v27 + 1;
            }

            goto LABEL_31;
          }
        }

        v20 = a3;
        v33 = *(v17 + 2);
        if (v19 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v32, v17);
        }

        v21 = llvm::detail::operator!=(&v32, 0);
        if (v33 >= 0x41 && v32)
        {
          v22 = v21;
          MEMORY[0x259C63150](v32, 0x1000C8000313F17);
          a3 = v20;
          if (!v22)
          {
            goto LABEL_43;
          }
        }

        else
        {
          a3 = v20;
          if (!v21)
          {
            goto LABEL_43;
          }
        }

LABEL_34:
        if (v16 == a3)
        {
          goto LABEL_29;
        }

LABEL_31:
        v16 = 0;
        if (++v25 >= v15)
        {
          goto LABEL_51;
        }
      }
    }

    for (j = 0; j < v15; v25 = j)
    {
      while (v27 < HIDWORD(v27))
      {
        *(v26 + v27) = j;
        LODWORD(v27) = v27 + 1;
        j = v25 + 1;
        v25 = j;
        if (j >= v15)
        {
          goto LABEL_51;
        }
      }

      llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(&v26, &v25);
      j = v25 + 1;
    }
  }

LABEL_51:
  if (v30)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRow();
  }

  if (v27)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRow();
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

void mlir::presburger::IntegerRelation::getDomainSet(void **this@<X0>, uint64_t a2@<X8>)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v6 = &unk_286893110;
  v7 = *(this + 1);
  v8 = *(this + 24);
  __dst = &v11;
  v10 = 0;
  if (&v6 != this && *(this + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = this[6];
  v12 = *(this + 14);
  v13[0] = v14;
  v13[1] = 0x1000000000;
  if (*(this + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v13, this + 8);
  }

  v14[32] = this[42];
  v15 = *(this + 86);
  v16[0] = v17;
  v16[1] = 0x1000000000;
  if (*(this + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v16, this + 44);
  }

  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(this + 2, 3);
  mlir::presburger::IntegerRelation::convertVarKind(&v6, 3, 0, NumVarKind, 1);
  v5 = mlir::presburger::PresburgerSpace::getNumVarKind(this + 2, 2);
  mlir::presburger::IntegerRelation::convertVarKind(&v6, 2, 0, v5, 3);
  mlir::presburger::IntegerPolyhedron::IntegerPolyhedron(a2, &v6);
  mlir::presburger::IntegerRelation::~IntegerRelation(&v6);
}

uint64_t mlir::presburger::IntegerRelation::convertVarKind(uint64_t a1, int a2, unsigned int a3, unsigned int a4, int a5)
{
  result = mlir::presburger::PresburgerSpace::getNumVarKind((a1 + 8), a5);
  if (a4 > a3)
  {
    mlir::presburger::PresburgerSpace::getVarKindOffset((a1 + 8), a2);
    mlir::presburger::PresburgerSpace::getVarKindOffset((a1 + 8), a5);
    mlir::presburger::Matrix<llvm::DynamicAPInt>::moveColumns();
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::try_emplace<unsigned int &>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(a1, a2, &v19);
  v9 = v19;
  if (result)
  {
    v10 = a1 + 8;
    if (*a1)
    {
      v11 = 4;
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
    }

    v15 = 0;
    v16 = v10 + 24 * v11;
    goto LABEL_17;
  }

  v20 = v19;
  v12 = *a1;
  v13 = *a1 >> 1;
  if (*a1)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(a1 + 16);
  }

  if (4 * v13 + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_19;
  }

  if (v14 + ~v13 - *(a1 + 4) <= v14 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::grow(a1, v14);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(a1, a2, &v20);
    v12 = *a1;
    v9 = v20;
  }

  *a1 = v12 + 2;
  if (*v9 != -1)
  {
    --*(a1 + 4);
  }

  *v9 = *a2;
  *(v9 + 4) = *a3;
  v17 = a1 + 8;
  if (*a1)
  {
    v18 = 4;
  }

  else
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
  }

  v16 = v17 + 24 * v18;
  v15 = 1;
LABEL_17:
  *a4 = v9;
  *(a4 + 8) = v16;
  *(a4 + 16) = v15;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::operator[](int *a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(a1, a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 2;
  }

  v11 = v10;
  v6 = *a1;
  v7 = *a1 >> 1;
  if (*a1)
  {
    v8 = 4;
  }

  else
  {
    v8 = a1[4];
  }

  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_12;
  }

  if (v8 + ~v7 - a1[1] <= v8 >> 3)
  {
LABEL_12:
    llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::grow(a1, v8);
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(a1, a2, &v11);
    v6 = *a1;
    v5 = v11;
  }

  *a1 = v6 + 2;
  if (*v5 != -1)
  {
    --a1[1];
  }

  *v5 = *a2;
  *(v5 + 4) = 0;
  return v5 + 2;
}

uint64_t llvm::SmallVectorImpl<llvm::DynamicAPInt>::assign<llvm::DynamicAPInt const*,void>(uint64_t result, const llvm::APInt *a2, char *a3)
{
  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    v7 = 16 * v6;
    v8 = 16 * v6 + *result - 8;
    v9 = -v7;
    v10 = v8;
    do
    {
      v12 = *v10;
      v10 -= 4;
      v11 = v12;
      if (v12)
      {
        if (v11 >= 0x41)
        {
          result = *(v8 - 8);
          if (result)
          {
            result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          }
        }
      }

      v8 = v10;
      v9 += 16;
    }

    while (v9);
  }

  *(v5 + 8) = 0;
  v13 = a3 - a2;
  if ((a3 - a2) >> 4 > *(v5 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  v14 = 0;
  if (a2 != a3)
  {
    v15 = *v5;
    do
    {
      *v15 = *a2;
      *(v15 + 2) = 0;
      v16 = *(a2 + 2);
      if (v16)
      {
        *(v15 + 2) = v16;
        if (v16 > 0x40)
        {
          llvm::APInt::initSlowCase(v15, a2);
        }

        *v15 = *a2;
      }

      a2 = (a2 + 16);
      v15 = (v15 + 16);
    }

    while (a2 != a3);
    v14 = *(v5 + 8);
  }

  *(v5 + 8) = v14 + (v13 >> 4);
  return result;
}

void mlir::presburger::IntegerRelation::getRangeSet(void **this@<X0>, uint64_t a2@<X8>)
{
  v16[32] = *MEMORY[0x277D85DE8];
  v5 = &unk_286893110;
  v6 = *(this + 1);
  v7 = *(this + 24);
  __dst = &v10;
  v9 = 0;
  if (&v5 != this && *(this + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = this[6];
  v11 = *(this + 14);
  v12[0] = v13;
  v12[1] = 0x1000000000;
  if (*(this + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, this + 8);
  }

  v13[32] = this[42];
  v14 = *(this + 86);
  v15[0] = v16;
  v15[1] = 0x1000000000;
  if (*(this + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v15, this + 44);
  }

  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(this + 2, 2);
  mlir::presburger::IntegerRelation::convertVarKind(&v5, 2, 0, NumVarKind, 1);
  mlir::presburger::IntegerPolyhedron::IntegerPolyhedron(a2, &v5);
  mlir::presburger::IntegerRelation::~IntegerRelation(&v5);
}

void mlir::presburger::IntegerRelation::intersectDomain(mlir::presburger::IntegerRelation *this, void **a2)
{
  v19[32] = *MEMORY[0x277D85DE8];
  v8 = &unk_286893110;
  v9 = *(a2 + 1);
  v10 = *(a2 + 24);
  __dst = &v13;
  v12 = 0;
  if (&v8 != a2 && *(a2 + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = a2[6];
  v14 = *(a2 + 14);
  v15[0] = v16;
  v15[1] = 0x1000000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v15, a2 + 8);
  }

  v16[32] = a2[42];
  v17 = *(a2 + 86);
  v18[0] = v19;
  v18[1] = 0x1000000000;
  if (*(a2 + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v18, a2 + 44);
  }

  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(&v9, 3);
  VarKindEnd = mlir::presburger::PresburgerSpace::getVarKindEnd(&v9, 2);
  mlir::presburger::IntegerRelation::convertVarKind(&v8, 2, 0, VarKindEnd, 3);
  mlir::presburger::IntegerRelation::convertVarKind(&v8, 3, 0, NumVarKind, 2);
  v6 = *(this + 3);
  v7 = mlir::presburger::PresburgerSpace::getNumVarKind(&v9, 3);
  v8[3](&v8, 3, v7, v6);
  mlir::presburger::mergeLocalVars(this, &v8);
}

uint64_t mlir::presburger::IntegerRelation::inverse(mlir::presburger::IntegerRelation *this)
{
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(this + 2, 3);
  VarKindEnd = mlir::presburger::PresburgerSpace::getVarKindEnd(this + 2, 2);
  mlir::presburger::IntegerRelation::convertVarKind(this, 2, 0, VarKindEnd, 3);

  return mlir::presburger::IntegerRelation::convertVarKind(this, 3, 0, NumVarKind, 2);
}

void mlir::presburger::IntegerRelation::intersectRange(mlir::presburger::IntegerRelation *this, void **a2)
{
  v17[32] = *MEMORY[0x277D85DE8];
  v6 = &unk_286893110;
  v7 = *(a2 + 1);
  v8 = *(a2 + 24);
  __dst = &v11;
  v10 = 0;
  if (&v6 != a2 && *(a2 + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = a2[6];
  v12 = *(a2 + 14);
  v13[0] = v14;
  v13[1] = 0x1000000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v13, a2 + 8);
  }

  v14[32] = a2[42];
  v15 = *(a2 + 86);
  v16[0] = v17;
  v16[1] = 0x1000000000;
  if (*(a2 + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v16, a2 + 44);
  }

  v4 = *(this + 2);
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(&v7, 2);
  v6[3](&v6, 2, NumVarKind, v4);
  mlir::presburger::mergeLocalVars(this, &v6);
}

void mlir::presburger::IntegerRelation::compose(mlir::presburger::IntegerRelation *this, void **a2)
{
  v19[32] = *MEMORY[0x277D85DE8];
  v8 = &unk_286893110;
  v9 = *(a2 + 1);
  v10 = *(a2 + 24);
  __dst = &v13;
  v12 = 0;
  if (&v8 != a2 && *(a2 + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = a2[6];
  v14 = *(a2 + 14);
  v15[0] = v16;
  v15[1] = 0x1000000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v15, a2 + 8);
  }

  v16[32] = a2[42];
  v17 = *(a2 + 86);
  v18[0] = v19;
  v18[1] = 0x1000000000;
  if (*(a2 + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v18, a2 + 44);
  }

  v4 = *(this + 3);
  v5 = DWORD1(v9);
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(this + 2, 3);
  (*(*this + 24))(this, 3, NumVarKind, v5);
  if (v4)
  {
    mlir::presburger::PresburgerSpace::getVarKindOffset(&v9, 2);
    mlir::presburger::PresburgerSpace::getVarKindOffset(&v9, 3);
    mlir::presburger::Matrix<llvm::DynamicAPInt>::moveColumns();
  }

  mlir::presburger::IntegerPolyhedron::IntegerPolyhedron(v7, &v8);
  mlir::presburger::IntegerRelation::intersectRange(this, v7);
}

void mlir::presburger::IntegerRelation::applyDomain(mlir::presburger::IntegerRelation *this, void **a2)
{
  NumVarKind = mlir::presburger::PresburgerSpace::getNumVarKind(this + 2, 3);
  VarKindEnd = mlir::presburger::PresburgerSpace::getVarKindEnd(this + 2, 2);
  mlir::presburger::IntegerRelation::convertVarKind(this, 2, 0, VarKindEnd, 3);
  mlir::presburger::IntegerRelation::convertVarKind(this, 3, 0, NumVarKind, 2);
  mlir::presburger::IntegerRelation::compose(this, a2);
}

llvm::raw_ostream *mlir::presburger::IntegerRelation::printSpace(mlir::presburger::IntegerRelation *this, llvm::raw_ostream *a2)
{
  mlir::presburger::PresburgerSpace::print((this + 8), a2);
  result = llvm::raw_ostream::operator<<(a2, (*(this + 12) + *(this + 84)));
  v5 = *(result + 4);
  if (*(result + 3) - v5 > 0xCuLL)
  {
    qmemcpy(v5, " constraints\n", 13);
    *(result + 4) += 13;
  }

  else
  {

    return llvm::raw_ostream::write(result, " constraints\n", 0xDuLL);
  }

  return result;
}

uint64_t mlir::presburger::IntegerRelation::removeTrivialEqualities(uint64_t this)
{
  if (*(this + 48) - 1 >= 0)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  return this;
}

uint64_t mlir::presburger::IntegerRelation::isFullDim(mlir::presburger::IntegerRelation *this)
{
  v4[136] = *MEMORY[0x277D85DE8];
  if (!(*(this + 3) + *(this + 2) + *(this + 4) + *(this + 5)))
  {
    return 1;
  }

  if ((mlir::presburger::IntegerRelation::isEmpty(this) & 1) == 0)
  {
    v3 = *(this + 12);
    if (v3 - 1 >= 0)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
    }

    if (!v3)
    {
      mlir::presburger::SimplexBase::SimplexBase(v4, vaddvq_s32(*(this + 8)), 0);
    }
  }

  return 0;
}

void mlir::presburger::IntegerRelation::mergeAndCompose(mlir::presburger::IntegerRelation *this, void **a2)
{
  v18[32] = *MEMORY[0x277D85DE8];
  v7 = &unk_286893110;
  v8 = *(a2 + 1);
  v9 = *(a2 + 24);
  __dst = &v12;
  v11 = 0;
  if (&v7 != a2 && *(a2 + 10))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = a2[6];
  v13 = *(a2 + 14);
  v14[0] = v15;
  v14[1] = 0x1000000000;
  if (*(a2 + 18))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v14, a2 + 8);
  }

  v15[32] = a2[42];
  v16 = *(a2 + 86);
  v17[0] = v18;
  v17[1] = 0x1000000000;
  if (*(a2 + 90))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v17, a2 + 44);
  }

  v4 = *(this + 2);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  (*(*this + 24))(this, 2, 0, v6);
  (*(*this + 24))(this, 3, 0, v5);
  mlir::presburger::PresburgerSpace::insertVar(&v8, 2, v6, v4);
  mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumns();
}

void mlir::presburger::IntegerRelation::print(mlir::presburger::IntegerRelation *this, llvm::raw_ostream *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  (*(*this + 80))(this);
  v62 = 0;
  v65 = 1;
  LOWORD(__p) = 45;
  v58 = *(this + 12);
  if (v58)
  {
    v3 = 0;
    while (1)
    {
      v60 = vaddvq_s32(*(this + 8));
      if (v60 != -1)
      {
        break;
      }

LABEL_3:
      v3 = (v3 + 1);
      if (v3 == v58)
      {
        goto LABEL_44;
      }
    }

    v4 = 0;
    while (1)
    {
      v5 = (*(this + 8) + 16 * (v4 + *(this + 14) * v3));
      v83 = *v5;
      v84 = 0;
      v6 = *(v5 + 2);
      if (v6)
      {
        v84 = *(v5 + 2);
        if (v6 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v83, v5);
        }
      }

      __s = 0;
      v75 = 0;
      v76 = 0;
      v67 = 0;
      v71 = 0;
      v72 = 1;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      v66 = &unk_2868A3EF8;
      p_s = &__s;
      llvm::raw_ostream::SetBufferAndMode(&v66, 0, 0, 0);
      llvm::DynamicAPInt::print(&v83, &v66);
      llvm::raw_ostream::~raw_ostream(&v66);
      v7 = SHIBYTE(v76);
      if ((SHIBYTE(v76) & 0x8000000000000000) == 0)
      {
        break;
      }

      v8 = __s;
      v9 = v75;
      if (v75)
      {
        goto LABEL_11;
      }

LABEL_35:
      operator delete(v8);
LABEL_36:
      if (v84 > 0x40 && v83)
      {
        MEMORY[0x259C63150](v83, 0x1000C8000313F17);
      }

      v21 = v4++ == v60;
      if (v21)
      {
        goto LABEL_3;
      }
    }

    if (!HIBYTE(v76))
    {
      goto LABEL_36;
    }

    v8 = &__s;
    v9 = SHIBYTE(v76);
LABEL_11:
    if (v65 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v65 >= 0)
    {
      v11 = v65;
    }

    else
    {
      v11 = v64;
    }

    if (v11)
    {
      v12 = v3;
      v13 = v8 + v9;
      if (v9 >= v11)
      {
        v16 = *p_p;
        v17 = v8;
        do
        {
          v18 = v9 - v11;
          if (v18 == -1)
          {
            break;
          }

          v19 = memchr(v17, v16, v18 + 1);
          if (!v19)
          {
            break;
          }

          v14 = v19;
          if (!memcmp(v19, p_p, v11))
          {
            goto LABEL_27;
          }

          v17 = v14 + 1;
          v9 = v13 - (v14 + 1);
        }

        while (v9 >= v11);
        v14 = v13;
      }

      else
      {
        v14 = v8 + v9;
      }

LABEL_27:
      if (v14 == v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14 - v8 + 1;
      }

      v3 = v12;
    }

    else
    {
      v15 = 1;
    }

    v20 = v75;
    if (v7 >= 0)
    {
      v20 = v7;
    }

    v62 = vmax_u32(v62, __PAIR64__(v20 - v15, v15));
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    v8 = __s;
    goto LABEL_35;
  }

LABEL_44:
  v59 = *(this + 84);
  if (v59)
  {
    v22 = 0;
    while (1)
    {
      v61 = vaddvq_s32(*(this + 8));
      if (v61 != -1)
      {
        break;
      }

LABEL_46:
      v22 = (v22 + 1);
      if (v22 == v59)
      {
        goto LABEL_87;
      }
    }

    v23 = 0;
    while (1)
    {
      v24 = (*(this + 44) + 16 * (v23 + *(this + 86) * v22));
      v81 = *v24;
      v82 = 0;
      v25 = *(v24 + 2);
      if (v25)
      {
        v82 = *(v24 + 2);
        if (v25 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v81, v24);
        }
      }

      __s = 0;
      v75 = 0;
      v76 = 0;
      v67 = 0;
      v71 = 0;
      v72 = 1;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      v66 = &unk_2868A3EF8;
      p_s = &__s;
      llvm::raw_ostream::SetBufferAndMode(&v66, 0, 0, 0);
      llvm::DynamicAPInt::print(&v81, &v66);
      llvm::raw_ostream::~raw_ostream(&v66);
      v26 = SHIBYTE(v76);
      if ((SHIBYTE(v76) & 0x8000000000000000) == 0)
      {
        break;
      }

      v27 = __s;
      v28 = v75;
      if (v75)
      {
        goto LABEL_54;
      }

LABEL_78:
      operator delete(v27);
LABEL_79:
      if (v82 > 0x40 && v81)
      {
        MEMORY[0x259C63150](v81, 0x1000C8000313F17);
      }

      v21 = v23++ == v61;
      if (v21)
      {
        goto LABEL_46;
      }
    }

    if (!HIBYTE(v76))
    {
      goto LABEL_79;
    }

    v27 = &__s;
    v28 = SHIBYTE(v76);
LABEL_54:
    if (v65 >= 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p;
    }

    if (v65 >= 0)
    {
      v30 = v65;
    }

    else
    {
      v30 = v64;
    }

    if (v30)
    {
      v31 = v22;
      v32 = v27 + v28;
      if (v28 >= v30)
      {
        v35 = *v29;
        v36 = v27;
        do
        {
          v37 = v28 - v30;
          if (v37 == -1)
          {
            break;
          }

          v38 = memchr(v36, v35, v37 + 1);
          if (!v38)
          {
            break;
          }

          v33 = v38;
          if (!memcmp(v38, v29, v30))
          {
            goto LABEL_70;
          }

          v36 = v33 + 1;
          v28 = v32 - (v33 + 1);
        }

        while (v28 >= v30);
        v33 = v32;
      }

      else
      {
        v33 = v27 + v28;
      }

LABEL_70:
      if (v33 == v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = v33 - v27 + 1;
      }

      v22 = v31;
    }

    else
    {
      v34 = 1;
    }

    v39 = v75;
    if (v26 >= 0)
    {
      v39 = v26;
    }

    v62 = vmax_u32(v62, __PAIR64__(v39 - v34, v34));
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    v27 = __s;
    goto LABEL_78;
  }

LABEL_87:
  v40 = *(this + 12);
  if (v40)
  {
    for (i = 0; i != v40; ++i)
    {
      while (1)
      {
        v42 = vaddvq_s32(*(this + 8));
        if (v42 != -1)
        {
          v43 = 0;
          v44 = v42 + 1;
          do
          {
            v45 = (*(this + 8) + 16 * (v43 + i * *(this + 14)));
            v79 = *v45;
            v80 = 0;
            v46 = *(v45 + 2);
            if (v46)
            {
              v80 = *(v45 + 2);
              if (v46 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v79, v45);
              }
            }

            mlir::presburger::printWithPrintMetrics<llvm::DynamicAPInt>(a2, &v79, 1, &v62);
            if (v80 > 0x40 && v79)
            {
              MEMORY[0x259C63150](v79, 0x1000C8000313F17);
            }

            ++v43;
          }

          while (v44 != v43);
        }

        v47 = *(a2 + 4);
        if ((*(a2 + 3) - v47) <= 5)
        {
          break;
        }

        *(v47 + 4) = 2608;
        *v47 = 540876832;
        *(a2 + 4) += 6;
        if (++i == v40)
        {
          goto LABEL_102;
        }
      }

      llvm::raw_ostream::write(a2, "  = 0\n", 6uLL);
    }
  }

LABEL_102:
  v48 = *(this + 84);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      while (1)
      {
        v50 = vaddvq_s32(*(this + 8));
        if (v50 != -1)
        {
          v51 = 0;
          v52 = v50 + 1;
          do
          {
            v53 = (*(this + 44) + 16 * (v51 + j * *(this + 86)));
            v77 = *v53;
            v78 = 0;
            v54 = *(v53 + 2);
            if (v54)
            {
              v78 = *(v53 + 2);
              if (v54 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v77, v53);
              }
            }

            mlir::presburger::printWithPrintMetrics<llvm::DynamicAPInt>(a2, &v77, 1, &v62);
            if (v78 > 0x40)
            {
              if (v77)
              {
                MEMORY[0x259C63150](v77, 0x1000C8000313F17);
              }
            }

            ++v51;
          }

          while (v52 != v51);
        }

        v55 = *(a2 + 4);
        if ((*(a2 + 3) - v55) <= 5)
        {
          break;
        }

        *(v55 + 4) = 2608;
        *v55 = 540884512;
        *(a2 + 4) += 6;
        if (++j == v48)
        {
          goto LABEL_117;
        }
      }

      llvm::raw_ostream::write(a2, " >= 0\n", 6uLL);
    }
  }

LABEL_117:
  v56 = *(a2 + 4);
  if (v56 >= *(a2 + 3))
  {
    llvm::raw_ostream::write(a2, 10);
    if ((v65 & 0x80000000) == 0)
    {
      return;
    }
  }

  else
  {
    *(a2 + 4) = v56 + 1;
    *v56 = 10;
    if ((v65 & 0x80000000) == 0)
    {
      return;
    }
  }

  operator delete(__p);
}

void mlir::presburger::printWithPrintMetrics<llvm::DynamicAPInt>(void *a1, llvm::DynamicAPInt *a2, int a3, uint64_t a4)
{
  __p = 0;
  v39 = 0;
  v40 = 0;
  v31 = 0;
  v35 = 0;
  v36 = 1;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v30, 0, 0, 0);
  llvm::DynamicAPInt::print(a2, &v30);
  llvm::raw_ostream::~raw_ostream(&v30);
  v8 = HIBYTE(v40);
  if ((SHIBYTE(v40) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v40))
    {
      v9 = &__p;
      v10 = SHIBYTE(v40);
      goto LABEL_6;
    }

LABEL_20:
    v16 = 0;
    v17 = a3;
    if (!(a3 + *a4))
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v10 = v39;
  if (!v39)
  {
    goto LABEL_20;
  }

  v9 = __p;
LABEL_6:
  v11 = *(a4 + 31);
  if (v11 >= 0)
  {
    v12 = (a4 + 8);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 31);
  }

  else
  {
    v13 = *(a4 + 16);
  }

  if (!v13)
  {
    v16 = 1;
    v17 = a3 - 1;
    if (!(a3 - 1 + *a4))
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v14 = &v9[v10];
  if (v10 >= v13)
  {
    v26 = *v12;
    v27 = v9;
    do
    {
      v28 = v10 - v13;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v15 = v29;
      if (!memcmp(v29, v12, v13))
      {
        goto LABEL_15;
      }

      v27 = v15 + 1;
      v10 = v14 - (v15 + 1);
    }

    while (v10 >= v13);
  }

  v15 = v14;
LABEL_15:
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 - v9 + 1;
  }

  v17 = a3 - v16;
  if (a3 - v16 + *a4)
  {
LABEL_23:
    v18 = 0;
    do
    {
      while (1)
      {
        v19 = a1[4];
        if (a1[3] != v19)
        {
          break;
        }

        llvm::raw_ostream::write(a1, " ", 1uLL);
        if (++v18 >= v17 + *a4)
        {
          goto LABEL_27;
        }
      }

      *v19 = 32;
      ++a1[4];
      ++v18;
    }

    while (v18 < v17 + *a4);
LABEL_27:
    v8 = HIBYTE(v40);
  }

LABEL_28:
  if ((v8 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v8 & 0x80u) == 0)
  {
    v21 = v8;
  }

  else
  {
    v21 = v39;
  }

  llvm::raw_ostream::write(a1, v20, v21);
  v22 = 0;
  v23 = SHIBYTE(v40);
  v24 = *(a4 + 4) + v16;
  if ((SHIBYTE(v40) & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (v24 - v39 > v22)
  {
    while (1)
    {
      v25 = a1[4];
      if (a1[3] == v25)
      {
        llvm::raw_ostream::write(a1, " ", 1uLL);
        v22 = (v22 + 1);
        v23 = SHIBYTE(v40);
        v24 = *(a4 + 4) + v16;
        if ((SHIBYTE(v40) & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v25 = 32;
        ++a1[4];
        v22 = (v22 + 1);
        v23 = SHIBYTE(v40);
        v24 = *(a4 + 4) + v16;
        if ((SHIBYTE(v40) & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_37:
      if (v24 - v23 <= v22)
      {
        return;
      }
    }
  }

  operator delete(__p);
}

void mlir::presburger::IntegerRelation::dump(mlir::presburger::IntegerRelation *this)
{
  v2 = llvm::errs(this);

  mlir::presburger::IntegerRelation::print(this, v2);
}

void mlir::presburger::IntegerPolyhedron::intersect(mlir::presburger::IntegerPolyhedron *this, void **a2)
{
  v17 = *MEMORY[0x277D85DE8];
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

  mlir::presburger::IntegerRelation::intersect(this, &v4, v16);
}

void mlir::presburger::IntegerPolyhedron::subtract(mlir::presburger::IntegerPolyhedron *this@<X0>, const mlir::presburger::PresburgerSet *a2@<X1>, mlir::presburger::PresburgerSet *a3@<X8>)
{
  v22[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::PresburgerRelation(v18, this);
  mlir::presburger::PresburgerRelation::subtract(v18, a2, v13);
  v5 = v20;
  if (v21)
  {
    v6 = -624 * v21;
    v7 = v20 + 624 * v21 - 624;
    v8 = v7;
    do
    {
      (**v8)(v8);
      v8 -= 78;
      v7 -= 624;
      v6 += 624;
    }

    while (v6);
    v5 = v20;
  }

  if (v5 != v22)
  {
    free(v5);
  }

  if (v19 != &v20)
  {
    free(v19);
  }

  mlir::presburger::PresburgerSet::PresburgerSet(a3, v13);
  v9 = v15;
  if (v16)
  {
    v10 = -624 * v16;
    v11 = v15 + 624 * v16 - 624;
    v12 = v11;
    do
    {
      (**v12)(v12);
      v12 -= 78;
      v11 -= 624;
      v10 += 624;
    }

    while (v10);
    v9 = v15;
  }

  if (v9 != &v17)
  {
    free(v9);
  }

  if (v14 != &v15)
  {
    free(v14);
  }
}

void mlir::presburger::IntegerPolyhedron::~IntegerPolyhedron(mlir::presburger::IntegerPolyhedron *this)
{
  mlir::presburger::IntegerRelation::~IntegerRelation(this);

  JUMPOUT(0x259C63180);
}

void mlir::presburger::LexSimplex::~LexSimplex(mlir::presburger::LexSimplex *this)
{
  mlir::presburger::SimplexBase::~SimplexBase(this);

  JUMPOUT(0x259C63180);
}

void mlir::presburger::SimplexBase::~SimplexBase(mlir::presburger::SimplexBase *this)
{
  *this = &unk_286893250;
  v2 = *(this + 122);
  if (v2 != this + 992)
  {
    free(v2);
  }

  v3 = *(this + 108);
  if (v3 != this + 880)
  {
    free(v3);
  }

  v4 = *(this + 102);
  if (v4 != this + 832)
  {
    free(v4);
  }

  v5 = *(this + 96);
  if (v5 != this + 784)
  {
    free(v5);
  }

  v6 = *(this + 46);
  v7 = *(this + 94);
  if (v7)
  {
    v8 = &v6[48 * v7 - 48];
    v9 = -48 * v7;
    do
    {
      if (v8 + 2 != *v8)
      {
        free(*v8);
      }

      v8 -= 6;
      v9 += 48;
    }

    while (v9);
    v6 = *(this + 46);
  }

  if (v6 != this + 384)
  {
    free(v6);
  }

  v10 = *(this + 40);
  if (v10 != this + 336)
  {
    free(v10);
  }

  v11 = *(this + 5);
  v12 = *(this + 12);
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
    v11 = *(this + 5);
  }

  if (v11 != this + 56)
  {
    free(v11);
  }
}

void mlir::presburger::MultiAffineFunction::MultiAffineFunction(mlir::presburger::MultiAffineFunction *this, const mlir::presburger::PresburgerSpace *a2, const mlir::presburger::IntMatrix *a3)
{
  v3 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v3;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  if (this != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *a3;
  *(this + 12) = *(a3 + 2);
  *(this + 5) = v4;
  *(this + 7) = this + 72;
  *(this + 8) = 0x1000000000;
  if (*(a3 + 6))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(this + 7, a3 + 2);
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

uint64_t getBestVarToEliminate(mlir::presburger::IntegerRelation const&,unsigned int,unsigned int)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 336);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      while (1)
      {
        v6 = (*(*a1 + 352) + 16 * (a2 + *(*a1 + 344) * v4));
        v7 = *v6;
        v19 = *v6;
        v8 = *(v6 + 2);
        if (!v8)
        {
          break;
        }

        v12 = a1;
        v13 = a2;
        v20 = *(v6 + 2);
        if (v8 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v19, v6);
        }

        v14 = llvm::detail::operator>(&v19, 0);
        if (v20 >= 0x41 && v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          a2 = v13;
          a1 = v12;
          if (!v14)
          {
            goto LABEL_6;
          }
        }

        else
        {
          a2 = v13;
          a1 = v12;
          if (!v14)
          {
            goto LABEL_6;
          }
        }

LABEL_3:
        ++v3;
        if (v2 == ++v4)
        {
          return (v3 * v5);
        }
      }

      if (v7 > 0)
      {
        goto LABEL_3;
      }

LABEL_6:
      v9 = (*(*a1 + 352) + 16 * (a2 + *(*a1 + 344) * v4));
      v10 = *v9;
      v19 = *v9;
      v11 = *(v9 + 2);
      if (v11)
      {
        v15 = a1;
        v16 = a2;
        v20 = *(v9 + 2);
        if (v11 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v19, v9);
        }

        v17 = llvm::detail::operator<(&v19, 0);
        if (v20 >= 0x41)
        {
          if (v19)
          {
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }
        }

        a2 = v16;
        a1 = v15;
        v5 += v17;
        if (v2 == ++v4)
        {
          return (v3 * v5);
        }
      }

      else
      {
        v5 += v10 >> 63;
        if (v2 == ++v4)
        {
          return (v3 * v5);
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::SmallVectorImpl<llvm::DynamicAPInt>::assign(uint64_t result, unint64_t a2, llvm::APInt *a3)
{
  if (*(result + 12) < a2)
  {

    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndAssign();
  }

  v4 = *(result + 8);
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(result + 8);
  }

  if (v5)
  {
    v6 = *result;
    do
    {
      while (1)
      {
        while (*(a3 + 2))
        {
          v8 = result;
          v9 = a2;
          v10 = a3;
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v6, *(a3 + 2), a3);
          a3 = v10;
          result = v8;
          a2 = v9;
          v6 += 2;
          if (!--v5)
          {
            goto LABEL_18;
          }
        }

        v7 = *a3;
        if (*(v6 + 2) > 0x40u)
        {
          if (*v6)
          {
            break;
          }
        }

        *v6 = v7;
        *(v6 + 2) = 0;
        v6 += 2;
        if (!--v5)
        {
          goto LABEL_18;
        }
      }

      v11 = result;
      v12 = a2;
      v13 = a3;
      MEMORY[0x259C63150](*v6, 0x1000C8000313F17);
      a3 = v13;
      result = v11;
      a2 = v12;
      *v6 = v7;
      *(v6 + 2) = 0;
      v6 += 2;
      --v5;
    }

    while (v5);
LABEL_18:
    v4 = *(result + 8);
  }

  v14 = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      v18 = 16 * v4;
      v19 = 16 * v4 + *result - 8;
      v20 = 16 * a2 - v18;
      v21 = v19;
      do
      {
        v23 = *v21;
        v21 -= 4;
        v22 = v23;
        if (v23)
        {
          if (v22 >= 0x41)
          {
            v24 = *(v19 - 8);
            if (v24)
            {
              v25 = result;
              v26 = a2;
              MEMORY[0x259C63150](v24, 0x1000C8000313F17, a3);
              result = v25;
              a2 = v26;
            }
          }
        }

        v19 = v21;
        v20 += 16;
      }

      while (v20);
    }
  }

  else
  {
    v15 = (*result + 16 * v4);
    do
    {
      *v15 = *a3;
      *(v15 + 2) = 0;
      v16 = *(a3 + 2);
      if (v16)
      {
        *(v15 + 2) = v16;
        if (v16 > 0x40)
        {
          llvm::APInt::initSlowCase(v15, a3);
        }

        *v15 = *a3;
      }

      v15 = (v15 + 16);
    }

    while (!__CFADD__(v14++, 1));
  }

  *(result + 8) = a2;
  return result;
}

uint64_t std::__less<void,void>::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(int a1, llvm::APInt *a2, uint64_t a3)
{
  if (!(*(a2 + 2) | *(a3 + 8)))
  {
    return *a2 < *a3;
  }

  v13 = v3;
  v14 = v4;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a2, &v11);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v9);
  result = llvm::detail::SlowDynamicAPInt::operator<(&v11, &v9);
  if (v10 >= 0x41 && v9)
  {
    v7 = result;
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    result = v7;
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      v8 = result;
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
      return v8;
    }
  }

  return result;
}

uint64_t std::__equal_to::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(int a1, llvm::APInt *a2, uint64_t a3)
{
  if (!(*(a2 + 2) | *(a3 + 8)))
  {
    return *a2 == *a3;
  }

  v13 = v3;
  v14 = v4;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a2, &v11);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a3, &v9);
  result = llvm::detail::SlowDynamicAPInt::operator==(&v11, &v9);
  if (v10 >= 0x41 && v9)
  {
    v7 = result;
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    result = v7;
  }

  if (v12 >= 0x41)
  {
    if (v11)
    {
      v8 = result;
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::presburger::IntegerPolyhedron::IntegerPolyhedron(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286893110;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 0;
  if (a1 != a2 && *(a2 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 0x1000000000;
  if (*(a2 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 64), (a2 + 64));
  }

  v6 = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 336) = v6;
  *(a1 + 352) = a1 + 368;
  *(a1 + 360) = 0x1000000000;
  if (*(a2 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 352), (a2 + 352));
  }

  *a1 = &unk_286893188;
  return a1;
}

uint64_t llvm::function_ref<BOOL ()(unsigned int,unsigned int)>::callback_fn<mlir::presburger::IntegerRelation::mergeLocalVars(mlir::presburger::IntegerRelation&)::$_0>(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= a3 || *(a1 + 4) > a3)
  {
    return 0;
  }

  (*(**a1 + 32))(*a1);
  (*(*a1[1] + 32))(a1[1], a2, a3);
  return 1;
}

unsigned int *llvm::SmallVectorImpl<llvm::DynamicAPInt>::insert_one_impl<llvm::DynamicAPInt>(uint64_t a1, unint64_t a2, llvm::APInt *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a1 + 16 * v4;
  if (v5 == a2)
  {
    if (v4 >= *(a1 + 12))
    {
      if (v3 > a3 || a2 <= a3)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v27 = (v3 + 16 * *(a1 + 8));
    *v27 = *a3;
    *(v27 + 2) = 0;
    v28 = *(a3 + 2);
    if (v28)
    {
      *(v27 + 2) = v28;
      if (v28 > 0x40)
      {
        llvm::APInt::initSlowCase(v27, a3);
      }

      *v27 = *a3;
    }

    v29 = *(a1 + 8) + 1;
    *(a1 + 8) = v29;
    return (*a1 + 16 * v29 - 16);
  }

  else
  {
    if (v4 >= *(a1 + 12))
    {
      if (v3 > a3 || v5 <= a3)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v6 = a2;
    v7 = (v3 + 16 * *(a1 + 8));
    *v7 = *(v7 - 2);
    v7[2] = 0;
    v8 = *(v7 - 2);
    if (v8)
    {
      v7[2] = v8;
      if (v8 >= 0x41)
      {
        llvm::APInt::initSlowCase(v7, (v7 - 4));
      }
    }

    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *a1 + 16 * v10;
    if (v11 - 16 != a2)
    {
      do
      {
        while (1)
        {
          v12 = (v11 - 16);
          v13 = *(v11 - 24);
          if (!v13)
          {
            break;
          }

          v15 = (v11 - 32);
          v16 = a1;
          v17 = v11;
          v18 = a3;
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::insert_one_impl<llvm::DynamicAPInt>(v17, v13, v15, v12);
          a3 = v18;
          a1 = v16;
          v11 = v12;
          if (v12 - 4 == v6)
          {
            goto LABEL_13;
          }
        }

        v14 = *(v11 - 32);
        if (*(v11 - 8) > 0x40u && *v12)
        {
          v19 = a1;
          v20 = a3;
          MEMORY[0x259C63150](*v12, 0x1000C8000313F17);
          a3 = v20;
          a1 = v19;
        }

        *(v11 - 16) = v14;
        *(v11 - 8) = 0;
        v11 -= 16;
      }

      while (v12 - 4 != v6);
LABEL_13:
      LODWORD(v10) = *(a1 + 8);
      v9 = *a1;
    }

    v21 = v10 + 1;
    *(a1 + 8) = v21;
    v22 = a3 < v9 + 16 * v21 && a3 >= v6;
    v23 = 16;
    if (!v22)
    {
      v23 = 0;
    }

    v24 = (a3 + v23);
    v25 = *(a3 + v23 + 8);
    if (v25)
    {
      if (v6[2])
      {
        llvm::detail::SlowDynamicAPInt::operator=(v6, v24);
      }

      else
      {
        v6[2] = v25;
        if (v25 > 0x40)
        {
          llvm::APInt::initSlowCase(v6, v24);
        }

        *v6 = *v24;
      }
    }

    else
    {
      v26 = *v24;
      if (v6[2] > 0x40 && *v6)
      {
        MEMORY[0x259C63150](*v6, 0x1000C8000313F17);
      }

      *v6 = v26;
      v6[2] = 0;
    }
  }

  return v6;
}

uint64_t std::operator>[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 1;
  }

  if (!(*(a1 + 8) | *(a2 + 8)))
  {
    return *a1 > *a2;
  }

  v12 = v2;
  v13 = v3;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a1, &v10);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a2, &v8);
  result = llvm::detail::SlowDynamicAPInt::operator>(&v10, &v8);
  if (v9 >= 0x41 && v8)
  {
    v6 = result;
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    result = v6;
  }

  if (v11 >= 0x41)
  {
    if (v10)
    {
      v7 = result;
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      return v7;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(a1, a2, &v17);
  v7 = v17;
  if (result)
  {
    v8 = a1 + 8;
    if (*a1)
    {
      v9 = 8;
    }

    else
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
    }

    v13 = 0;
    v14 = v8 + 16 * v9;
    goto LABEL_17;
  }

  v18 = v17;
  v10 = *a1;
  v11 = *a1 >> 1;
  if (*a1)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_19;
  }

  if (v12 + ~v11 - *(a1 + 4) <= v12 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(a1, a2, &v18);
    v10 = *a1;
    v7 = v18;
  }

  *a1 = v10 + 2;
  if (*v7 != -1)
  {
    --*(a1 + 4);
  }

  *v7 = *a2;
  v15 = a1 + 8;
  if (*a1)
  {
    v16 = 8;
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
  }

  v14 = v15 + 16 * v16;
  v13 = 1;
LABEL_17:
  *a3 = v7;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 8;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v11 = 0;
      result = 0;
      goto LABEL_27;
    }

    v5 = *(a1 + 8);
  }

  v7 = 0;
  v8 = v6 - 1;
  v9 = (v6 - 1) & llvm::hashing::detail::hash_combine_range_impl<llvm::DynamicAPInt const*>(*a2, (*a2 + 16 * a2[1]));
  v10 = 1;
  v11 = (v5 + 16 * v9);
  v12 = *a2;
  v13 = *v11;
  if (*v11 == -2)
  {
    goto LABEL_15;
  }

  while (v13 != -1)
  {
    v14 = a2[1];
    if (v14 != v11[1])
    {
      goto LABEL_17;
    }

    v19 = v9;
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = 16 * v14;
    while (std::__equal_to::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v20, v12, v13))
    {
      v12 = (v12 + 16);
      v13 += 16;
      v15 -= 16;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v13 = *v11;
    if (*v11 == -1)
    {
      goto LABEL_28;
    }

    v9 = v19;
LABEL_17:
    while (1)
    {
      if (!v7 && v13 == -2)
      {
        v7 = v11;
      }

      v17 = v9 + v10++;
      v9 = v17 & v8;
      v11 = (v5 + 16 * (v17 & v8));
      v12 = *a2;
      v13 = *v11;
      if (*v11 != -2)
      {
        break;
      }

LABEL_15:
      if (v12 == -2)
      {
        goto LABEL_26;
      }

      v13 = -2;
    }
  }

  if (v12 == -1)
  {
LABEL_26:
    result = 1;
    goto LABEL_27;
  }

LABEL_28:
  result = 0;
  if (v7)
  {
    v11 = v7;
  }

LABEL_27:
  *a3 = v11;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::DynamicAPInt const*>(uint64_t a1, const llvm::DynamicAPInt *a2)
{
  v109 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v35 = 0;
  }

  else
  {
    v5 = llvm::hash_value(a1, a2);
    v101 = v5;
    if ((a1 + 16) == a2)
    {
      v35 = 8;
    }

    else
    {
      v6 = v5;
      v8 = llvm::hash_value((a1 + 16), v4);
      v102 = v8;
      if ((a1 + 32) == a2)
      {
        v35 = 16;
      }

      else
      {
        v10 = llvm::hash_value((a1 + 32), v7);
        v103 = v10;
        if ((a1 + 48) == a2)
        {
          v35 = 24;
        }

        else
        {
          v12 = llvm::hash_value((a1 + 48), v9);
          v104 = v12;
          if ((a1 + 64) == a2)
          {
            v35 = 32;
          }

          else
          {
            v99 = v12;
            v14 = llvm::hash_value((a1 + 64), v11);
            v105 = v14;
            if ((a1 + 80) == a2)
            {
              v35 = 40;
            }

            else
            {
              v16 = llvm::hash_value((a1 + 80), v13);
              v106 = v16;
              if ((a1 + 96) == a2)
              {
                v35 = 48;
              }

              else
              {
                v18 = llvm::hash_value((a1 + 96), v15);
                v107 = v18;
                if ((a1 + 112) == a2)
                {
                  v35 = 56;
                }

                else
                {
                  v19 = llvm::hash_value((a1 + 112), v17);
                  v108 = v19;
                  v21 = (a1 + 128);
                  if (v21 != a2)
                  {
                    v97 = v19;
                    llvm::hash_value(v21, v20);
                    v23 = __ROR8__(v16 + v18 + v14 + 0x4BF62CB950C3753ALL, 44);
                    v24 = v18;
                    v25 = v16 + v18 + v14 + 0x4BF62CB950C3753ALL + v97;
                    v26 = v16 - 0x4B6D499041670D8DLL * __ROR8__(v24 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
                    v27 = v23 + v14 + 0x4BF62CB950C3753ALL + __ROR8__(v26 + v10 + v14 + 0x4BF62CB950C3753ALL + v97, 21);
                    v28 = v6 + 0x298DF016A9F64655;
                    v29 = v6 + 0x298DF016A9F64655 + v8 + v10;
                    v30 = v29 + v99;
                    v31 = (0xB492B66FBE98F273 * __ROR8__(v8 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
                    v32 = __ROR8__(v29, 44) + v28 + __ROR8__(v31 + v28 + v99 - 0xAE502812AB8D92, 21);
                    v96 = ~&v101;
                    v33 = 0x544962662A7EE1A4;
                    v34 = 64;
                    while (1)
                    {
                      v98 = v31;
                      v100 = v27;
                      v101 = llvm::hash_value(v21, v22);
                      v44 = (v21 + 16);
                      if ((v21 + 16) == a2)
                      {
                        v52 = &v102;
                        v53 = &v102;
                        v36 = 8;
                      }

                      else
                      {
                        v102 = llvm::hash_value(v44, v43);
                        v44 = (v21 + 32);
                        if ((v21 + 32) == a2)
                        {
                          v52 = &v103;
                          v53 = &v103;
                          v36 = 16;
                        }

                        else
                        {
                          v103 = llvm::hash_value(v44, v45);
                          v44 = (v21 + 48);
                          if ((v21 + 48) == a2)
                          {
                            v52 = &v104;
                            v53 = &v104;
                            v36 = 24;
                          }

                          else
                          {
                            v104 = llvm::hash_value(v44, v46);
                            v44 = (v21 + 64);
                            if ((v21 + 64) == a2)
                            {
                              v52 = &v105;
                              v53 = &v105;
                              v36 = 32;
                            }

                            else
                            {
                              v105 = llvm::hash_value(v44, v47);
                              v44 = (v21 + 80);
                              if ((v21 + 80) == a2)
                              {
                                v52 = &v106;
                                v53 = &v106;
                                v36 = 40;
                              }

                              else
                              {
                                v106 = llvm::hash_value(v44, v48);
                                v44 = (v21 + 96);
                                if ((v21 + 96) == a2)
                                {
                                  v52 = &v107;
                                  v53 = &v107;
                                  v36 = 48;
                                }

                                else
                                {
                                  v107 = llvm::hash_value(v44, v49);
                                  v44 = (v21 + 112);
                                  if ((v21 + 112) != a2)
                                  {
                                    v108 = llvm::hash_value(v44, v50);
                                    v44 = (v21 + 128);
                                    if ((v21 + 128) != a2)
                                    {
                                      llvm::hash_value(v44, v51);
                                      v44 = (v21 + 128);
                                    }

                                    v36 = 64;
                                    goto LABEL_19;
                                  }

                                  v52 = &v108;
                                  v53 = &v108;
                                  v36 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v54 = 64 - v36;
                      v55 = v36;
                      if (v36 != 64 - v36)
                      {
                        do
                        {
                          v62 = v55;
                          v55 = v54;
                          v54 = v62 % v54;
                        }

                        while (v54);
                        v63 = (&v101 + v55);
                        do
                        {
                          v65 = *(v63 - 1);
                          v63 = (v63 - 1);
                          v64 = v65;
                          v66 = &v63[v36 / 8];
                          v67 = v63;
                          do
                          {
                            v68 = v67;
                            v67 = v66;
                            *v68 = *v66;
                            v69 = (&v109 - v66);
                            v70 = __OFSUB__(v36, v69);
                            v72 = v36 - v69;
                            v71 = (v72 < 0) ^ v70;
                            v66 = (&v101 + v72);
                            if (v71)
                            {
                              v66 = &v67[v36 / 8];
                            }
                          }

                          while (v66 != v63);
                          *v67 = v64;
                        }

                        while (v63 != &v101);
                        goto LABEL_19;
                      }

                      v56 = v36 ^ 0x3F;
                      if (v52 + v96 < (v36 ^ 0x3FuLL))
                      {
                        v56 = v52 + v96;
                      }

                      v57 = &v101;
                      if (v56 < 3 || &v101 < (&v101 + v56 + v36 + 1) && v53 < (&v101 + v56 + 1))
                      {
                        v58 = v36;
                        goto LABEL_43;
                      }

                      v73 = v56 + 1;
                      if (v56 >= 0xF)
                      {
                        v74 = v73 & 0x70;
                        v75 = v101;
                        v76 = v102;
                        v77 = v53[1];
                        v101 = *(&v101 + v36);
                        v102 = v77;
                        *(&v101 + v36) = v75;
                        v53[1] = v76;
                        if (v74 != 16)
                        {
                          v78 = v103;
                          v79 = v104;
                          v80 = v53[3];
                          v103 = v53[2];
                          v104 = v80;
                          v53[2] = v78;
                          v53[3] = v79;
                          if (v74 != 32)
                          {
                            v81 = v105;
                            v82 = v106;
                            v83 = v53[5];
                            v105 = v53[4];
                            v106 = v83;
                            v53[4] = v81;
                            v53[5] = v82;
                            if (v74 != 48)
                            {
                              v84 = v107;
                              v85 = v108;
                              v86 = v53[7];
                              v107 = v53[6];
                              v108 = v86;
                              v53[6] = v84;
                              v53[7] = v85;
                            }
                          }
                        }

                        if (v73 == v74)
                        {
                          goto LABEL_19;
                        }

                        if ((v73 & 0xC) == 0)
                        {
                          v57 = (&v101 + v74);
                          v58 = v36 + v74;
LABEL_43:
                          v59 = (v57 + 1);
                          do
                          {
                            v60 = *(v59 - 1);
                            *(v59 - 1) = *(&v101 + v58);
                            *(&v101 + v58) = v60;
                            if (v59 == v52)
                            {
                              break;
                            }

                            v59 = (v59 + 1);
                          }

                          while (v58++ != 63);
                          goto LABEL_19;
                        }
                      }

                      else
                      {
                        v74 = 0;
                      }

                      v58 = v36 + (v73 & 0x7C);
                      v57 = (&v101 + (v73 & 0x7C));
                      v87 = (v53 + v74);
                      v88 = (&v101 + v74);
                      v89 = v74 - (v73 & 0x7C);
                      do
                      {
                        v90 = *v88;
                        *v88++ = *v87;
                        *v87++ = v90;
                        v89 += 4;
                      }

                      while (v89);
                      if (v73 != (v73 & 0x7C))
                      {
                        goto LABEL_43;
                      }

LABEL_19:
                      v37 = __ROR8__(v26 + v30 + v33 + v102, 37);
                      v26 = v106 + v30 - 0x4B6D499041670D8DLL * __ROR8__(v26 + v32 + v107, 42);
                      v38 = v101 - 0x4B6D499041670D8DLL * v32;
                      v22 = v104;
                      v39 = v38 + v102 + v103;
                      v40 = (0xB492B66FBE98F273 * v37) ^ v100;
                      v41 = __ROR8__(v98 + v25, 33);
                      v32 = __ROR8__(v39, 44) + v38 + __ROR8__(v40 + v25 + v38 + v104, 21);
                      v33 = 0xB492B66FBE98F273 * v41;
                      v42 = 0xB492B66FBE98F273 * v41 + v100 + v105;
                      v30 = v39 + v104;
                      v27 = __ROR8__(v26 + v103 + v42 + v108, 21) + v42 + __ROR8__(v106 + v107 + v42, 44);
                      v25 = v106 + v107 + v42 + v108;
                      v34 += v36;
                      v21 = v44;
                      v31 = v40;
                      if (v44 == a2)
                      {
                        v91 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v30 ^ v25)) >> 47) ^ (0x9DDFEA08EB382D69 * (v30 ^ v25)));
                        v92 = v40 - 0x4B6D499041670D8DLL * (v26 ^ (v26 >> 47)) - 0x622015F714C7D297 * (v91 ^ (v91 >> 47));
                        v93 = 0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v32 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v32 ^ v27)));
                        v94 = 0x9DDFEA08EB382D69 * (v93 ^ (v93 >> 47)) - 0x4B6D499041670D8DLL * ((v34 ^ (v34 >> 47)) + v41);
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v94 ^ ((0x9DDFEA08EB382D69 * (v94 ^ v92)) >> 47) ^ (0x9DDFEA08EB382D69 * (v94 ^ v92)))) ^ ((0x9DDFEA08EB382D69 * (v94 ^ ((0x9DDFEA08EB382D69 * (v94 ^ v92)) >> 47) ^ (0x9DDFEA08EB382D69 * (v94 ^ v92)))) >> 47));
                      }
                    }
                  }

                  v35 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v101, v35, 0xFF51AFD7ED558CCDLL);
}

uint64_t llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::grow(uint64_t result, unsigned int a2)
{
  v2 = result;
  v42[15] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
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

  if ((*result & 1) == 0)
  {
    v7 = (result + 8);
    v6 = *(result + 8);
    v8 = *(result + 16);
    if (a2 > 8)
    {
      v29 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(v2 + 8) = buffer;
      *(v2 + 16) = v29;
      v31 = *v2;
      v9 = (v6 + 16 * v8);
      *v2 = *v2 & 1;
      if (v31)
      {
        v10 = (v2 + 136);
        v11 = 112;
      }

      else
      {
        v10 = &buffer[v29];
        v7 = buffer;
        v11 = 16 * v29 - 16;
        if (v11 < 0x30)
        {
          v33 = buffer;
          goto LABEL_49;
        }
      }
    }

    else
    {
      v9 = (v6 + 16 * v8);
      *result = 1;
      v10 = (result + 136);
      v11 = 112;
    }

    v32 = (v11 >> 4) + 1;
    v33 = &v7[v32 & 0x1FFFFFFFFFFFFFFCLL];
    v34 = v7 + 2;
    v35 = v32 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v34 - 2) = xmmword_25736B6D0;
      *(v34 - 1) = xmmword_25736B6D0;
      *v34 = xmmword_25736B6D0;
      v34[1] = xmmword_25736B6D0;
      v34 += 4;
      v35 -= 4;
    }

    while (v35);
    if (v32 == (v32 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_50:
      if (v8)
      {
        v39 = v6;
        do
        {
          if (*v39 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *&v41 = 0;
            llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(v2, v39, &v41);
            *v41 = *v39;
            *v2 += 2;
          }

          v39 += 2;
        }

        while (v39 != v9);
      }

      llvm::deallocate_buffer(v6, (16 * v8));
    }

    do
    {
LABEL_49:
      *v33++ = xmmword_25736B6D0;
    }

    while (v33 != v10);
    goto LABEL_50;
  }

  v12 = (result + 8);
  v13 = &v41;
  if (*(result + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v41 = *v12;
    v13 = v42;
    v14 = (result + 24);
    if (*(result + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      v15 = (result + 40);
      if (*(result + 40) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v14 = (result + 24);
    if (*(result + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v13 = *v14;
  v13 += 2;
  v15 = (result + 40);
  if (*(result + 40) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    v16 = (result + 56);
    if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  *v13 = *v15;
  v13 += 2;
  v16 = (result + 56);
  if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    v17 = (result + 72);
    if (*(result + 72) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  *v13 = *v16;
  v13 += 2;
  v17 = (result + 72);
  if (*(result + 72) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_13:
    v18 = (result + 88);
    if (*(result + 88) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  *v13 = *v17;
  v13 += 2;
  v18 = (result + 88);
  if (*(result + 88) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_14:
    v19 = (result + 104);
    if (*(result + 104) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *v13 = *v18;
  v13 += 2;
  v19 = (result + 104);
  if (*(result + 104) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_15:
    v20 = (result + 120);
    if (*(result + 120) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *v13 = *v19;
  v13 += 2;
  v20 = (result + 120);
  if (*(result + 120) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_16:
    v21 = *result;
    if (a2 < 9)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  *v13 = *v20;
  v13 += 2;
  v21 = *result;
  if (a2 < 9)
  {
LABEL_17:
    *result = v21 & 1;
    if ((v21 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_39:
    v23 = (v2 + 136);
    v24 = 112;
    goto LABEL_20;
  }

LABEL_38:
  *result = v21 & 0xFFFFFFFE;
  v36 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(v2 + 8) = result;
  *(v2 + 16) = v36;
  v37 = *v2;
  *v2 = *v2 & 1;
  if (v37)
  {
    goto LABEL_39;
  }

LABEL_18:
  v22 = *(v2 + 16);
  if (!v22)
  {
    goto LABEL_42;
  }

  v12 = *(v2 + 8);
  v23 = &v12[v22];
  v24 = v23 - v12 - 16;
  if (v24 < 0x30)
  {
    v26 = *(v2 + 8);
    do
    {
LABEL_41:
      *v26 = xmmword_25736B6D0;
      v26 += 16;
    }

    while (v26 != v23);
    goto LABEL_42;
  }

LABEL_20:
  v25 = (v24 >> 4) + 1;
  v26 = &v12[v25 & 0x1FFFFFFFFFFFFFFCLL];
  v27 = v12 + 2;
  v28 = v25 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v27 - 2) = xmmword_25736B6D0;
    *(v27 - 1) = xmmword_25736B6D0;
    *v27 = xmmword_25736B6D0;
    v27[1] = xmmword_25736B6D0;
    v27 += 4;
    v28 -= 4;
  }

  while (v28);
  if (v25 != (v25 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_41;
  }

LABEL_42:
  if (&v41 != v13)
  {
    v38 = &v41;
    do
    {
      if (*v38 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = 0;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseSetPair<llvm::ArrayRef<llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(v2, v38, &v40);
        *v40 = *v38;
        *v2 += 2;
      }

      v38 += 2;
    }

    while (v38 != v13);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v11 = 0;
      result = 0;
      goto LABEL_27;
    }

    v5 = *(a1 + 8);
  }

  v7 = 0;
  v8 = v6 - 1;
  v9 = (v6 - 1) & llvm::hashing::detail::hash_combine_range_impl<llvm::DynamicAPInt const*>(*a2, (*a2 + 16 * a2[1]));
  v10 = 1;
  v11 = (v5 + 40 * v9);
  v12 = *a2;
  v13 = *v11;
  if (*v11 == -2)
  {
    goto LABEL_15;
  }

  while (v13 != -1)
  {
    v14 = a2[1];
    if (v14 != v11[1])
    {
      goto LABEL_17;
    }

    v19 = v9;
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = 16 * v14;
    while (std::__equal_to::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v20, v12, v13))
    {
      v12 = (v12 + 16);
      v13 += 16;
      v15 -= 16;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v13 = *v11;
    if (*v11 == -1)
    {
      goto LABEL_28;
    }

    v9 = v19;
LABEL_17:
    while (1)
    {
      if (!v7 && v13 == -2)
      {
        v7 = v11;
      }

      v17 = v9 + v10++;
      v9 = v17 & v8;
      v11 = (v5 + 40 * (v17 & v8));
      v12 = *a2;
      v13 = *v11;
      if (*v11 != -2)
      {
        break;
      }

LABEL_15:
      if (v12 == -2)
      {
        goto LABEL_26;
      }

      v13 = -2;
    }
  }

  if (v12 == -1)
  {
LABEL_26:
    result = 1;
    goto LABEL_27;
  }

LABEL_28:
  result = 0;
  if (v7)
  {
    v11 = v7;
  }

LABEL_27:
  *a3 = v11;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::InsertIntoBucket<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>(_DWORD *a1, uint64_t *a2, uint64_t *a3, llvm::APInt *a4)
{
  v4 = a2;
  v16 = a2;
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

  v13 = a1;
  v14 = a4;
  v15 = a3;
  llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(v13, v15, &v16);
  a1 = v13;
  a3 = v15;
  a4 = v14;
  v5 = *v13;
  v4 = v16;
LABEL_6:
  *a1 = v5 + 2;
  if (*v4 != -1)
  {
    --a1[1];
  }

  *v4 = *a3;
  *(v4 + 4) = *a4;
  v9 = *(a4 + 1);
  v8 = (a4 + 8);
  v4[3] = v9;
  v10 = (v4 + 3);
  *(v4 + 8) = 0;
  v11 = *(v8 + 2);
  if (!v11)
  {
    return v4;
  }

  *(v4 + 8) = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(v10, v8);
  }

  *v10 = *v8;
  return v4;
}

uint64_t llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::grow(uint64_t a1, unsigned int a2)
{
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
      v7 = a2;
      v8 = a1;
      buffer = llvm::allocate_buffer(40 * a2, 8uLL);
      a1 = v8;
      *(v8 + 8) = buffer;
      *(v8 + 16) = v7;
    }

    else
    {
      *a1 |= 1u;
    }

    v10 = 40 * v6;
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::moveFromOldBuckets(a1, v5, v5 + v10);

    llvm::deallocate_buffer(v5, v10);
  }

  return llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::grow(a1, a2);
}

{
  v22[16] = *MEMORY[0x277D85DE8];
  v4 = &v18;
  if (*(a1 + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = *(a1 + 32);
    v18 = *(a1 + 8);
    v19 = *(a1 + 24);
    v20 = v5;
    v21 = 0;
    v6 = *(a1 + 40);
    if (v6)
    {
      v21 = *(a1 + 40);
      if (v6 >= 0x41)
      {
        OUTLINED_FUNCTION_13_11(&v20, (a1 + 32), v16, v17);
      }
    }

    v4 = v22;
  }

  if (*(a1 + 48) < 0xFFFFFFFFFFFFFFFELL)
  {
    *v4 = *(a1 + 48);
    v7 = *(a1 + 72);
    *(v4 + 4) = *(a1 + 64);
    *(v4 + 3) = v7;
    *(v4 + 8) = 0;
    v8 = *(a1 + 80);
    if (v8)
    {
      *(v4 + 8) = v8;
      if (v8 > 0x40)
      {
        OUTLINED_FUNCTION_13_11((v4 + 24), (a1 + 72), v16, v17);
      }
    }

    v4 = (v4 + 40);
  }

  if (*(a1 + 88) < 0xFFFFFFFFFFFFFFFELL)
  {
    *v4 = *(a1 + 88);
    *(v4 + 4) = *(a1 + 104);
    v9 = OUTLINED_FUNCTION_11_10();
    if (v11)
    {
      *(v4 + 8) = v11;
      if (v11 > 0x40)
      {
        OUTLINED_FUNCTION_13_11(v9, v10, v16, v17);
      }

      *v9 = *v10;
      v4 = (v4 + 40);
      if (*(a1 + 120) >= 0x41u && *v10)
      {
        OUTLINED_FUNCTION_91_0();
      }
    }

    else
    {
      v4 = (v4 + 40);
    }
  }

  if (*(a1 + 128) < 0xFFFFFFFFFFFFFFFELL)
  {
    *v4 = *(a1 + 128);
    *(v4 + 4) = *(a1 + 144);
    v12 = OUTLINED_FUNCTION_11_10();
    if (v14)
    {
      *(v4 + 8) = v14;
      if (v14 > 0x40)
      {
        OUTLINED_FUNCTION_13_11(v12, v13, v16, v17);
      }

      *v12 = *v13;
      v4 = (v4 + 40);
      if (*(a1 + 160) >= 0x41u && *v13)
      {
        OUTLINED_FUNCTION_91_0();
      }
    }

    else
    {
      v4 = (v4 + 40);
    }
  }

  if (a2 >= 5)
  {
    *a1 &= ~1u;
    *(a1 + 8) = llvm::allocate_buffer(40 * a2, 8uLL);
    *(a1 + 16) = a2;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::moveFromOldBuckets(a1, &v18, v4);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = (result + 8);
    v9 = (result + 168);
    v10 = 120;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = *(result + 8);
    v9 = v8 + 40 * v7;
    v10 = v9 - v8 - 40;
    if (v10 < 0x28)
    {
      v12 = *(result + 8);
      do
      {
LABEL_10:
        *v12 = xmmword_25736B6D0;
        v12 += 40;
      }

      while (v12 != v9);
      goto LABEL_11;
    }
  }

  v11 = v10 / 0x28 + 1;
  v12 = v8 + 40 * (v11 & 0xFFFFFFFFFFFFFFELL);
  v13 = v11 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v8 = xmmword_25736B6D0;
    *(v8 + 40) = xmmword_25736B6D0;
    v8 += 5;
    v13 -= 2;
  }

  while (v13);
  if (v11 != (v11 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = 0;
        llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>,llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,std::pair<unsigned int,llvm::DynamicAPInt>>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(v5, v4, &v17);
        v14 = v17;
        *v17 = *v4;
        *(v14 + 4) = *(v4 + 16);
        v15 = (v4 + 24);
        v14[3] = *(v4 + 24);
        result = (v14 + 3);
        *(v14 + 8) = 0;
        v16 = *(v4 + 32);
        if (v16)
        {
          *(v14 + 8) = v16;
          if (v16 > 0x40)
          {
            llvm::APInt::initSlowCase(result, (v4 + 24));
          }

          *result = *v15;
        }

        *v5 += 2;
        if (*(v4 + 32) > 0x40u)
        {
          result = *v15;
          if (*v15)
          {
            result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          }
        }
      }

      v4 += 40;
    }

    while (v4 != a3);
  }

  return result;
}

void std::vector<llvm::SmallVector<llvm::DynamicAPInt,8u>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = v8 + 16;
      *(v8 + 8) = 0x800000000;
      if (*(v7 + 8))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v8, v7);
      }

      v7 += 144;
      v8 += 144;
    }

    while (v7 != v4);
    do
    {
      v9 = *v5;
      v10 = *(v5 + 8);
      if (v10)
      {
        v11 = 16 * v10;
        v12 = v9 + 16 * v10 - 8;
        v13 = -v11;
        v14 = v12;
        do
        {
          v16 = *v14;
          v14 -= 4;
          v15 = v16;
          if (v16)
          {
            if (v15 >= 0x41)
            {
              v17 = *(v12 - 8);
              if (v17)
              {
                MEMORY[0x259C63150](v17, 0x1000C8000313F17);
              }
            }
          }

          v12 = v14;
          v13 += 16;
        }

        while (v13);
        v9 = *v5;
      }

      if (v9 != (v5 + 16))
      {
        free(v9);
      }

      v5 += 144;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v18 = *a1;
  *a1 = v6;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
}

void std::negate<llvm::DynamicAPInt>::operator()[abi:nn200100](uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) || *a1 == 0x8000000000000000)
  {
    mlir::presburger::operator-(a1);
  }

  else
  {
    *a2 = -*a1;
    *(a2 + 8) = 0;
  }
}

uint64_t std::vector<llvm::SmallVector<llvm::DynamicAPInt,8u>>::__emplace_back_slow_path<llvm::SmallVector<llvm::DynamicAPInt,8u>&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v24 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = (144 * v2);
  __p = 0;
  v21 = v6;
  v23 = 0;
  *v6 = (v6 + 2);
  v6[1] = 0x800000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v6, a2);
  }

  v22 = v6 + 18;
  std::vector<llvm::SmallVector<llvm::DynamicAPInt,8u>>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  v8 = v21;
  for (i = v22; v22 != v8; i = v22)
  {
    v10 = *(i - 18);
    v22 = i - 18;
    v11 = *(i - 34);
    if (v11)
    {
      v12 = 16 * v11;
      v13 = &v10[2 * v11 - 1];
      v14 = -v12;
      v15 = v13;
      do
      {
        v17 = *v15;
        v15 -= 4;
        v16 = v17;
        if (v17)
        {
          if (v16 >= 0x41)
          {
            v18 = *(v13 - 8);
            if (v18)
            {
              MEMORY[0x259C63150](v18, 0x1000C8000313F17);
            }
          }
        }

        v13 = v15;
        v14 += 16;
      }

      while (v14);
      v10 = *(i - 18);
    }

    if (v10 != i - 16)
    {
      free(v10);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v11 = 0;
      result = 0;
      goto LABEL_27;
    }

    v5 = *(a1 + 8);
  }

  v7 = 0;
  v8 = v6 - 1;
  v9 = (v6 - 1) & llvm::hashing::detail::hash_combine_range_impl<llvm::DynamicAPInt const*>(*a2, (*a2 + 16 * a2[1]));
  v10 = 1;
  v11 = (v5 + 24 * v9);
  v12 = *a2;
  v13 = *v11;
  if (*v11 == -2)
  {
    goto LABEL_15;
  }

  while (v13 != -1)
  {
    v14 = a2[1];
    if (v14 != v11[1])
    {
      goto LABEL_17;
    }

    v19 = v9;
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = 16 * v14;
    while (std::__equal_to::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v20, v12, v13))
    {
      v12 = (v12 + 16);
      v13 += 16;
      v15 -= 16;
      if (!v15)
      {
        goto LABEL_26;
      }
    }

    v13 = *v11;
    if (*v11 == -1)
    {
      goto LABEL_28;
    }

    v9 = v19;
LABEL_17:
    while (1)
    {
      if (!v7 && v13 == -2)
      {
        v7 = v11;
      }

      v17 = v9 + v10++;
      v9 = v17 & v8;
      v11 = (v5 + 24 * (v17 & v8));
      v12 = *a2;
      v13 = *v11;
      if (*v11 != -2)
      {
        break;
      }

LABEL_15:
      if (v12 == -2)
      {
        goto LABEL_26;
      }

      v13 = -2;
    }
  }

  if (v12 == -1)
  {
LABEL_26:
    result = 1;
    goto LABEL_27;
  }

LABEL_28:
  result = 0;
  if (v7)
  {
    v11 = v7;
  }

LABEL_27:
  *a3 = v11;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::grow(uint64_t result, unsigned int a2)
{
  v2 = result;
  v39[10] = *MEMORY[0x277D85DE8];
  v3 = (a2 - 1) | ((a2 - 1) >> 1);
  v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
  v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
  if ((v5 + 1) > 0x40)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 64;
  }

  if (a2 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  if ((*result & 1) == 0)
  {
    v9 = (result + 8);
    v8 = *(result + 8);
    v10 = *(result + 16);
    if (v7 > 4)
    {
      buffer = llvm::allocate_buffer(8 * (v7 + 2 * v7), 8uLL);
      *(v2 + 8) = buffer;
      *(v2 + 16) = v7;
      v27 = *v2;
      v11 = (v8 + 24 * v10);
      *v2 = *v2 & 1;
      if (v27)
      {
        v12 = (v2 + 104);
        v13 = 72;
      }

      else
      {
        v12 = (buffer + 24 * v7);
        v9 = buffer;
        v13 = 24 * v7 - 24;
        if (v13 < 0x18)
        {
          v29 = buffer;
          goto LABEL_43;
        }
      }
    }

    else
    {
      v11 = (v8 + 24 * v10);
      *result = 1;
      v12 = (result + 104);
      v13 = 72;
    }

    v28 = v13 / 0x18 + 1;
    v29 = (v9 + 24 * (v28 & 0x1FFFFFFFFFFFFFFELL));
    v30 = v28 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v9 = xmmword_25736B6D0;
      *(v9 + 24) = xmmword_25736B6D0;
      v9 += 3;
      v30 -= 2;
    }

    while (v30);
    if (v28 == (v28 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_44:
      if (v10)
      {
        v34 = v8;
        do
        {
          if (*v34 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *&v37 = 0;
            llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(v2, v34, &v37);
            v35 = v37;
            *v37 = *v34;
            *(v35 + 16) = *(v34 + 4);
            *v2 += 2;
          }

          v34 = (v34 + 24);
        }

        while (v34 != v11);
      }

      llvm::deallocate_buffer(v8, (24 * v10));
    }

    do
    {
LABEL_43:
      *v29 = xmmword_25736B6D0;
      v29 = (v29 + 24);
    }

    while (v29 != v12);
    goto LABEL_44;
  }

  v14 = (result + 8);
  v15 = &v37;
  if (*(result + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = *v14;
    v38 = *(result + 24);
    v15 = v39;
    v16 = (result + 32);
    if (*(result + 32) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_12:
      v17 = (result + 56);
      if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v16 = (result + 32);
    if (*(result + 32) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }
  }

  *v15 = *v16;
  *(v15 + 4) = *(result + 48);
  v15 = (v15 + 24);
  v17 = (result + 56);
  if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_13:
    v18 = (result + 80);
    if (*(result + 80) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *v15 = *v17;
  *(v15 + 4) = *(result + 72);
  v15 = (v15 + 24);
  v18 = (result + 80);
  if (*(result + 80) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_14:
    v19 = *result;
    if (v7 < 5)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *v15 = *v18;
  *(v15 + 4) = *(result + 96);
  v15 = (v15 + 24);
  v19 = *result;
  if (v7 < 5)
  {
LABEL_15:
    *result = v19 & 1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    v21 = (v2 + 104);
    v22 = 72;
    goto LABEL_18;
  }

LABEL_32:
  *result = v19 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * (v7 + 2 * v7), 8uLL);
  *(v2 + 8) = result;
  *(v2 + 16) = v7;
  v31 = *v2;
  *v2 = *v2 & 1;
  if (v31)
  {
    goto LABEL_33;
  }

LABEL_16:
  v20 = *(v2 + 16);
  if (!v20)
  {
    goto LABEL_36;
  }

  v14 = *(v2 + 8);
  v21 = v14 + 24 * v20;
  v22 = v21 - v14 - 24;
  if (v22 < 0x18)
  {
    v24 = *(v2 + 8);
    do
    {
LABEL_35:
      *v24 = xmmword_25736B6D0;
      v24 += 24;
    }

    while (v24 != v21);
    goto LABEL_36;
  }

LABEL_18:
  v23 = v22 / 0x18 + 1;
  v24 = v14 + 24 * (v23 & 0x1FFFFFFFFFFFFFFELL);
  v25 = v23 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *v14 = xmmword_25736B6D0;
    *(v14 + 24) = xmmword_25736B6D0;
    v14 += 3;
    v25 -= 2;
  }

  while (v25);
  if (v23 != (v23 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_35;
  }

LABEL_36:
  if (&v37 != v15)
  {
    v32 = &v37;
    do
    {
      if (*v32 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = 0;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,4u,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>,llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int,llvm::DenseMapInfo<llvm::ArrayRef<llvm::DynamicAPInt>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<llvm::DynamicAPInt>,unsigned int>>::LookupBucketFor<llvm::ArrayRef<llvm::DynamicAPInt>>(v2, v32, &v36);
        v33 = v36;
        *v36 = *v32;
        *(v33 + 4) = *(v32 + 4);
        *v2 += 2;
      }

      v32 = (v32 + 24);
    }

    while (v32 != v15);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{
  *(v1 + 24) = v0;
  result = v1 + 24;
  *(v1 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_13_11(llvm::APInt *a1@<X0>, const llvm::APInt *a2@<X8>, uint64_t a3, uint64_t a4)
{

  llvm::APInt::initSlowCase(a1, a2);
}

uint64_t mlir::presburger::LinearTransform::LinearTransform(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  *(result + 16) = result + 32;
  *(result + 24) = 0x1000000000;
  if (*(a2 + 6))
  {
    v3 = result;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((result + 16), a2 + 2);
    return v3;
  }

  return result;
}

{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  *(result + 16) = result + 32;
  *(result + 24) = 0x1000000000;
  if (*(a2 + 6))
  {
    v3 = result;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((result + 16), a2 + 2);
    return v3;
  }

  return result;
}

uint64_t mlir::presburger::LinearTransform::LinearTransform(uint64_t this, const mlir::presburger::IntMatrix *a2)
{
  v2 = *a2;
  *(this + 8) = *(a2 + 2);
  *this = v2;
  *(this + 16) = this + 32;
  *(this + 24) = 0x1000000000;
  if (*(a2 + 6))
  {
    v3 = this;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((this + 16), a2 + 2);
    return v3;
  }

  return this;
}

{
  v2 = *a2;
  *(this + 8) = *(a2 + 2);
  *this = v2;
  *(this + 16) = this + 32;
  *(this + 24) = 0x1000000000;
  if (*(a2 + 6))
  {
    v3 = this;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((this + 16), a2 + 2);
    return v3;
  }

  return this;
}

void mlir::presburger::LinearTransform::makeTransformToColumnEchelon(mlir::presburger::LinearTransform *this@<X0>, uint64_t a2@<X8>)
{
  v46[32] = *MEMORY[0x277D85DE8];
  mlir::presburger::IntMatrix::computeHermiteNormalForm(this, v37);
  v5 = *(this + 1);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *this;
      if (!*this)
      {
        goto LABEL_13;
      }

      v8 = 0;
      while (1)
      {
        v9 = v39 + 16 * (v6 + v38 * v8);
        if (*(v9 + 2))
        {
          break;
        }

        if (*v9)
        {
          goto LABEL_10;
        }

LABEL_7:
        if (v7 == ++v8)
        {
          goto LABEL_13;
        }
      }

      if (!llvm::detail::operator!=(v9, 0))
      {
        goto LABEL_7;
      }

LABEL_10:
      if (++v6 == v5)
      {
        v6 = v5;
        goto LABEL_13;
      }
    }
  }

  v6 = 0;
LABEL_13:
  v32 = v42;
  v33 = v43;
  v34 = v36;
  v35 = 0x1000000000;
  if (v45)
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v34, &v44);
    *a2 = v6;
    *(a2 + 8) = v32;
    v10 = v35;
    *(a2 + 16) = v33;
    *(a2 + 24) = a2 + 40;
    *(a2 + 32) = 0x1000000000;
    if (v10)
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a2 + 24), &v34);
      v11 = v34;
      if (!v35)
      {
        goto LABEL_25;
      }

      v12 = (v34 + 16 * v35 - 8);
      v13 = -16 * v35;
      v14 = v12;
      do
      {
        v16 = *v14;
        v14 -= 4;
        v15 = v16;
        if (v16)
        {
          if (v15 >= 0x41)
          {
            v17 = *(v12 - 1);
            if (v17)
            {
              MEMORY[0x259C63150](v17, 0x1000C8000313F17);
            }
          }
        }

        v12 = v14;
        v13 += 16;
      }

      while (v13);
    }
  }

  else
  {
    *a2 = v6;
    *(a2 + 8) = v42;
    *(a2 + 16) = v43;
    *(a2 + 24) = a2 + 40;
    *(a2 + 32) = 0x1000000000;
  }

  v11 = v34;
LABEL_25:
  if (v11 != v36)
  {
    free(v11);
  }

  v18 = v44;
  if (v45)
  {
    v19 = (v44 + 16 * v45 - 8);
    v20 = -16 * v45;
    v21 = v19;
    do
    {
      v23 = *v21;
      v21 -= 4;
      v22 = v23;
      if (v23)
      {
        if (v22 >= 0x41)
        {
          v24 = *(v19 - 1);
          if (v24)
          {
            MEMORY[0x259C63150](v24, 0x1000C8000313F17);
          }
        }
      }

      v19 = v21;
      v20 += 16;
    }

    while (v20);
    v18 = v44;
  }

  if (v18 != v46)
  {
    free(v18);
  }

  v25 = v39;
  if (v40)
  {
    v26 = (v39 + 16 * v40 - 8);
    v27 = -16 * v40;
    v28 = v26;
    do
    {
      v30 = *v28;
      v28 -= 4;
      v29 = v30;
      if (v30)
      {
        if (v29 >= 0x41)
        {
          v31 = *(v26 - 1);
          if (v31)
          {
            MEMORY[0x259C63150](v31, 0x1000C8000313F17);
          }
        }
      }

      v26 = v28;
      v27 += 16;
    }

    while (v27);
    v25 = v39;
  }

  if (v25 != &v41)
  {
    free(v25);
  }
}

unsigned int *mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix(unsigned int *result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  *result = a2;
  result[1] = a3;
  if (a3 <= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a3;
  }

  result[2] = v5;
  v6 = (result + 8);
  *(result + 2) = result + 8;
  v7 = v5 * a2;
  *(result + 3) = 0x1000000000;
  if (v7)
  {
    if (v7 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v9 = &v6[4 * v7];
    do
    {
      *v6 = 0;
      v6[2] = 0;
      v6 += 4;
    }

    while (v6 != v9);
    result[6] = v7;
    if (*result <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = *result;
    }

    if (result[7] < v10 * result[2])
    {
LABEL_18:
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  else
  {
    if (a2 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a2;
    }

    if (v8 * v5 > 0x10)
    {
      goto LABEL_18;
    }
  }

  return result;
}

{
  *result = a2;
  result[1] = a3;
  if (a3 <= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a3;
  }

  result[2] = v5;
  v6 = (result + 8);
  *(result + 2) = result + 8;
  v7 = v5 * a2;
  *(result + 3) = 0x1000000000;
  if (v7)
  {
    if (v7 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v9 = &v6[4 * v7];
    do
    {
      *v6 = 0;
      v6[2] = 0;
      v6 += 4;
    }

    while (v6 != v9);
    result[6] = v7;
    if (*result <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = *result;
    }

    if (result[7] < v10 * result[2])
    {
LABEL_18:
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  else
  {
    if (a2 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a2;
    }

    if (v8 * v5 > 0x10)
    {
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::identity@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = result;
  *(a2 + 4) = result;
  *(a2 + 8) = result;
  v4 = a2 + 32;
  *(a2 + 16) = v4;
  v5 = (result * result);
  *(a2 + 24) = 0x1000000000;
  if (v5)
  {
    if (v5 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    if (result * result)
    {
      v6 = v4 + 16 * v5;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v6);
    }

    *(a2 + 24) = v5;
    if (*(a2 + 28) < (*a2 * *(a2 + 8)))
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  if (result)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + 16) + 16 * (v7 + v7 * *(a2 + 8));
      if (*(v8 + 8) > 0x40u)
      {
        result = *v8;
        if (*v8)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      *v8 = 1;
      *(v8 + 8) = 0;
      ++v7;
    }

    while (v2 != v7);
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::at@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, llvm::APInt *a4@<X8>)
{
  v4 = (*(result + 16) + 16 * (a3 + *(result + 8) * a2));
  *a4 = *v4;
  *(a4 + 2) = 0;
  v5 = *(v4 + 2);
  if (v5)
  {
    *(a4 + 2) = v5;
    if (v5 >= 0x41)
    {
      llvm::APInt::initSlowCase(a4, v4);
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::operator()@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, llvm::APInt *a4@<X8>)
{
  v4 = (*(result + 16) + 16 * (a3 + *(result + 8) * a2));
  *a4 = *v4;
  *(a4 + 2) = 0;
  v5 = *(v4 + 2);
  if (v5)
  {
    *(a4 + 2) = v5;
    if (v5 >= 0x41)
    {
      llvm::APInt::initSlowCase(a4, v4);
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::operator==(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  if (a1[1] != *(a2 + 4))
  {
    return 0;
  }

  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v8 = a1[1];
      if (v8 != *(a2 + 4))
      {
        break;
      }

      if (v8)
      {
        v9 = (*(a1 + 2) + 16 * a1[2] * v7);
        v10 = *(a2 + 16) + 16 * (*(a2 + 8) * v7);
        v11 = 16 * v8 - 16;
        do
        {
          result = std::__equal_to::operator()[abi:nn200100]<llvm::DynamicAPInt,llvm::DynamicAPInt>(&v14, v9, v10);
          if (!result)
          {
            break;
          }

          v9 = (v9 + 16);
          v10 += 16;
          v13 = v11;
          v11 -= 16;
        }

        while (v13);
        if (!result)
        {
          return result;
        }

        v4 = *a1;
      }

      if (++v7 >= v4)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow(uint64_t a1, int a2)
{
  return *(a1 + 16) + 16 * (*(a1 + 8) * a2);
}

{
  return *(a1 + 16) + 16 * (*(a1 + 8) * a2);
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::swapColumns(uint64_t a1, int a2, int a3)
{
  if (a2 != a3 && *a1)
  {
    v6 = 0;
    do
    {
      std::swap[abi:nn200100]<llvm::DynamicAPInt>((*(a1 + 16) + 16 * (*(a1 + 8) * v6 + a2)), *(a1 + 16) + 16 * (*(a1 + 8) * v6 + a3));
      ++v6;
    }

    while (v6 < *a1);
  }
}

void std::swap[abi:nn200100]<llvm::DynamicAPInt>(llvm::APInt *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = 0;
  v2 = *(a1 + 2);
  if (v2)
  {
    v11 = *(a1 + 2);
    if (v2 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v10, a1);
    }
  }

  if (*(a2 + 8))
  {
    v6 = a2;
    std::swap[abi:nn200100]<llvm::DynamicAPInt>(a1 + 2, *(a2 + 8), a2, a1);
    a2 = v6;
    v4 = v11;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = *a2;
    if (*(a1 + 2) > 0x40u && *a1)
    {
      v8 = a2;
      MEMORY[0x259C63150](*a1, 0x1000C8000313F17);
      a2 = v8;
      *a1 = v3;
      *(a1 + 2) = 0;
      v4 = v11;
      if (v11)
      {
LABEL_11:
        std::swap[abi:nn200100]<llvm::DynamicAPInt>((a2 + 8), v4, &v10, a2);
        v5 = v11;
        if (!v11)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      *a1 = v3;
      *(a1 + 2) = 0;
      v4 = v11;
      if (v11)
      {
        goto LABEL_11;
      }
    }
  }

  if (*(a2 + 8) > 0x40u && *a2)
  {
    v9 = a2;
    MEMORY[0x259C63150](*a2, 0x1000C8000313F17);
    *v9 = v10;
    *(v9 + 8) = 0;
    v5 = v11;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    *a2 = v10;
    *(a2 + 8) = 0;
    v5 = v11;
    if (!v11)
    {
      return;
    }
  }

LABEL_18:
  if (v5 >= 0x41)
  {
    if (v10)
    {
      MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::swapRows(uint64_t a1, int a2, int a3)
{
  if (a2 != a3 && *(a1 + 4))
  {
    v6 = 0;
    do
    {
      std::swap[abi:nn200100]<llvm::DynamicAPInt>((*(a1 + 16) + 16 * (v6 + *(a1 + 8) * a2)), *(a1 + 16) + 16 * (v6 + *(a1 + 8) * a3));
      ++v6;
    }

    while (v6 < *(a1 + 4));
  }
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::reserveRows(uint64_t result, int a2)
{
  if (*(result + 28) < (*(result + 8) * a2))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::setRow(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(result + 4);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      while (1)
      {
        v5 = *(result + 16);
        v6 = v5 + 16 * (i + *(result + 8) * a2);
        if (!*(a3 + 2))
        {
          break;
        }

        v8 = result;
        v9 = a2;
        v10 = a3;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v5 + 16 * (i + *(result + 8) * a2)), *(a3 + 2), a3);
        result = v8;
        a2 = v9;
        ++i;
        a3 = v10 + 2;
        if (v3 == i)
        {
          return result;
        }
      }

      v7 = *a3;
      if (*(v6 + 8) > 0x40u)
      {
        if (*v6)
        {
          v11 = result;
          v12 = a2;
          v13 = a3;
          MEMORY[0x259C63150](*v6, 0x1000C8000313F17);
          result = v11;
          a2 = v12;
          a3 = v13;
        }
      }

      *v6 = v7;
      *(v6 + 8) = 0;
      a3 += 2;
    }
  }

  return result;
}

int *mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumns(int *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    v4 = *result;
    v5 = (result[1] + a3);
    if (v5 > v3)
    {
      v6 = v5 | (v5 >> 1) | ((v5 | (v5 >> 1)) >> 2);
      v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
      LODWORD(v7) = ((v7 >> 16) | v7) + 1;
      result[2] = v7;
      v8 = (v4 * v7);
      v9 = result[6];
      if (v9 != v8)
      {
        if (v9 <= v8)
        {
          if (result[7] < v8)
          {
            llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
          }

          if (v9 != v8)
          {
            v19 = *(result + 2);
            v20 = v19 + 16 * v8;
            v21 = v19 + 16 * v9;
            do
            {
              *v21 = 0;
              *(v21 + 8) = 0;
              v21 += 16;
            }

            while (v21 != v20);
          }
        }

        else
        {
          v10 = 16 * v9 + *(result + 2) - 8;
          v11 = 16 * v8 - 16 * v9;
          v12 = v10;
          do
          {
            v14 = *v12;
            v12 -= 4;
            v13 = v14;
            if (v14)
            {
              if (v13 >= 0x41)
              {
                v15 = *(v10 - 8);
                if (v15)
                {
                  v16 = result;
                  v17 = a2;
                  v18 = a3;
                  MEMORY[0x259C63150](v15, 0x1000C8000313F17);
                  a2 = v17;
                  a3 = v18;
                  result = v16;
                }
              }
            }

            v10 = v12;
            v11 += 16;
          }

          while (v11);
        }

        result[6] = v8;
        v4 = *result;
        LODWORD(v5) = result[1] + a3;
      }
    }

    result[1] = v5;
    v22 = v4 - 1;
    if (v4 - 1 >= 0)
    {
      v23 = (a3 + a2);
      v24 = a2;
      v25 = v3 * v22;
      v26 = v3 * v22 - a3;
      v27 = 0x1000C8000313F17;
      while (1)
      {
        v29 = (result[2] - 1);
        if (v29 >= 0)
        {
          break;
        }

LABEL_20:
        v25 -= v3;
        v26 -= v3;
        if (v22-- <= 0)
        {
          return result;
        }
      }

      v30 = v29 + 1;
      while (1)
      {
        v31 = v30 - 1;
        v32 = result[2];
        v33 = *(result + 2);
        v34 = (v33 + 16 * (v30 + v22 * v32 - 1));
        if (v30 - 1 >= result[1])
        {
          goto LABEL_29;
        }

        if (v31 >= v23)
        {
          v35 = (v33 + 16 * (v26 + v30 - 1));
          v36 = *(v35 + 2);
          if (!v36)
          {
            goto LABEL_33;
          }

LABEL_41:
          v39 = result;
          v40 = v27;
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v33 + 16 * (v30 + v22 * v32 - 1)), v36, v35);
          v27 = v40;
          result = v39;
          v30 = v31;
          if (v31 <= 0)
          {
            goto LABEL_20;
          }
        }

        else if (v31 >= v24)
        {
LABEL_29:
          if (*(v34 + 2) > 0x40u && *v34)
          {
            v41 = result;
            v38 = v27;
            MEMORY[0x259C63150](*v34, v27);
            v27 = v38;
            result = v41;
          }

          *v34 = 0;
          *(v34 + 2) = 0;
          v30 = v31;
          if (v31 <= 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v32 == v3)
          {
            goto LABEL_20;
          }

          v35 = (v33 + 16 * (v25 + v30 - 1));
          v36 = *(v35 + 2);
          if (v36)
          {
            goto LABEL_41;
          }

LABEL_33:
          v37 = *v35;
          if (*(v34 + 2) > 0x40u && *v34)
          {
            v42 = result;
            MEMORY[0x259C63150](*v34, v27);
            v27 = 0x1000C8000313F17;
            result = v42;
            *v34 = v37;
            *(v34 + 2) = 0;
            v30 = v31;
            if (v31 <= 0)
            {
              goto LABEL_20;
            }
          }

          else
          {
            *v34 = v37;
            *(v34 + 2) = 0;
            --v30;
            if (v31 <= 0)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

  return result;
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumn()
{
  mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumns();
}

{
    ;
  }
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::insertRows(uint64_t result, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = *result + a3;
    *result = v5;
    v6 = (*(result + 8) * v5);
    v7 = *(result + 24);
    if (v7 != v6)
    {
      if (v7 <= v6)
      {
        if (*(result + 28) < v6)
        {
          llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
        }

        if (v7 != v6)
        {
          v15 = *(result + 16);
          v16 = v15 + 16 * v7;
          do
          {
            *v16 = 0;
            *(v16 + 8) = 0;
            v16 += 16;
          }

          while (v16 != v15 + 16 * v6);
        }
      }

      else
      {
        v8 = 16 * v7;
        v9 = 16 * v7 + *(result + 16) - 8;
        v10 = 16 * v6 - v8;
        v11 = v9;
        do
        {
          v13 = *v11;
          v11 -= 4;
          v12 = v13;
          if (v13)
          {
            if (v12 >= 0x41)
            {
              result = *(v9 - 8);
              if (result)
              {
                v14 = a3;
                result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
                a3 = v14;
              }
            }
          }

          v9 = v11;
          v10 += 16;
        }

        while (v10);
      }

      *(v4 + 24) = v6;
      v5 = *v4;
    }

    v17 = a3 + a2;
    if (v5 - 1 >= a3 + a2)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::copyRow();
    }

    if (v17 > a2 && *(v4 + 4))
    {
      v18 = v17 - 1;
      v19 = 1;
      do
      {
        if (v19)
        {
          for (i = 0; i < v19; ++i)
          {
            v21 = *(v4 + 16) + 16 * (i + v18 * *(v4 + 8));
            if (*(v21 + 8) > 0x40u)
            {
              result = *v21;
              if (*v21)
              {
                result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
              }
            }

            *v21 = 0;
            *(v21 + 8) = 0;
            v19 = *(v4 + 4);
          }
        }

        --v18;
      }

      while (v18 >= a2);
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeVertically(uint64_t result, int a2)
{
  *result = a2;
  v2 = (*(result + 8) * a2);
  v3 = *(result + 24);
  if (v3 != v2)
  {
    if (v3 <= v2)
    {
      if (*(result + 28) < v2)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      if (v3 != v2)
      {
        v12 = *(result + 16);
        v13 = v12 + 16 * v3;
        do
        {
          *v13 = 0;
          *(v13 + 8) = 0;
          v13 += 16;
        }

        while (v13 != v12 + 16 * v2);
      }
    }

    else
    {
      v4 = 16 * v3;
      v5 = 16 * v3 + *(result + 16) - 8;
      v6 = 16 * v2 - v4;
      v7 = v5;
      do
      {
        v9 = *v7;
        v7 -= 4;
        v8 = v9;
        if (v9 && v8 >= 0x41)
        {
          v10 = *(v5 - 8);
          if (v10)
          {
            v11 = result;
            MEMORY[0x259C63150](v10, 0x1000C8000313F17);
            result = v11;
          }
        }

        v5 = v7;
        v6 += 16;
      }

      while (v6);
    }

    *(result + 24) = v2;
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::copyRow(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3 && *(result + 4))
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(result + 8);
        v5 = *(result + 16);
        v6 = (v5 + 16 * (v3 + v4 * a2));
        v7 = v5 + 16 * (v3 + v4 * a3);
        if (!*(v6 + 2))
        {
          break;
        }

        v9 = result;
        v10 = a2;
        v11 = a3;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v5 + 16 * (v3 + v4 * a3)), *(v6 + 2), v6);
        result = v9;
        a2 = v10;
        a3 = v11;
        if (++v3 >= *(v9 + 4))
        {
          return result;
        }
      }

      v8 = *v6;
      if (*(v7 + 8) > 0x40u)
      {
        if (*v7)
        {
          v12 = result;
          v13 = a2;
          v14 = a3;
          MEMORY[0x259C63150](*v7, 0x1000C8000313F17);
          result = v12;
          a2 = v13;
          a3 = v14;
        }
      }

      *v7 = v8;
      *(v7 + 8) = 0;
      ++v3;
    }

    while (v3 < *(result + 4));
  }

  return result;
}